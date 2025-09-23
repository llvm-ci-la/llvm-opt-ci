	.file	"main.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN6miniFE11is_neighborERK3BoxS2_ # -- Begin function _ZN6miniFE11is_neighborERK3BoxS2_
	.p2align	5
	.type	_ZN6miniFE11is_neighborERK3BoxS2_,@function
_ZN6miniFE11is_neighborERK3BoxS2_:      # @_ZN6miniFE11is_neighborERK3BoxS2_
# %bb.0:
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a1, 0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	bne	$a4, $a5, .LBB0_4
.LBB0_1:                                # %.thread
	ld.w	$a4, $a0, 12
	ld.w	$a6, $a1, 8
	bne	$a4, $a6, .LBB0_14
.LBB0_2:                                # %.thread94
	ld.w	$a5, $a0, 20
	ld.w	$a6, $a1, 16
	ori	$a4, $zero, 1
	bne	$a5, $a6, .LBB0_24
.LBB0_3:                                # %.thread97
	and	$a0, $a3, $a2
	and	$a0, $a0, $a4
	ret
.LBB0_4:
	ld.w	$a6, $a1, 4
	ori	$a3, $zero, 1
	beq	$a4, $a6, .LBB0_1
# %bb.5:
	ld.w	$a7, $a0, 0
	ori	$a3, $zero, 1
	beq	$a7, $a5, .LBB0_1
# %bb.6:
	ori	$a3, $zero, 1
	beq	$a7, $a6, .LBB0_1
# %bb.7:
	bge	$a5, $a7, .LBB0_9
# %bb.8:
	ori	$a3, $zero, 1
	blt	$a4, $a6, .LBB0_1
.LBB0_9:
	slt	$t0, $a7, $a5
	slt	$a3, $a6, $a4
	and	$t1, $t0, $a3
	ori	$a3, $zero, 1
	bnez	$t1, .LBB0_1
# %bb.10:
	slt	$a3, $a5, $a7
	slt	$t1, $a7, $a6
	and	$t1, $a3, $t1
	ori	$a3, $zero, 1
	bnez	$t1, .LBB0_1
# %bb.11:
	slt	$a3, $a5, $a4
	and	$t0, $a3, $t0
	ori	$a3, $zero, 1
	bnez	$t0, .LBB0_1
# %bb.12:
	addi.w	$a5, $a5, -1
	ori	$a3, $zero, 1
	beq	$a4, $a5, .LBB0_1
# %bb.13:
	addi.w	$a3, $a6, 1
	xor	$a3, $a7, $a3
	sltui	$a3, $a3, 1
	b	.LBB0_1
.LBB0_14:
	ld.w	$a5, $a1, 12
	beq	$a4, $a5, .LBB0_2
# %bb.15:
	ld.w	$a7, $a0, 8
	beq	$a7, $a6, .LBB0_2
# %bb.16:
	beq	$a7, $a5, .LBB0_2
# %bb.17:
	bge	$a6, $a7, .LBB0_19
# %bb.18:
	blt	$a4, $a5, .LBB0_2
.LBB0_19:
	slt	$t0, $a7, $a6
	slt	$t1, $a5, $a4
	and	$t1, $t0, $t1
	bnez	$t1, .LBB0_2
# %bb.20:
	slt	$t1, $a6, $a7
	slt	$t2, $a7, $a5
	and	$t1, $t1, $t2
	bnez	$t1, .LBB0_2
# %bb.21:
	slt	$t1, $a6, $a4
	and	$t0, $t1, $t0
	bnez	$t0, .LBB0_2
# %bb.22:
	addi.w	$a6, $a6, -1
	beq	$a4, $a6, .LBB0_2
# %bb.23:
	addi.w	$a2, $a5, 1
	xor	$a2, $a7, $a2
	sltui	$a2, $a2, 1
	b	.LBB0_2
.LBB0_24:
	ld.w	$a1, $a1, 20
	beq	$a5, $a1, .LBB0_3
# %bb.25:
	ld.w	$a0, $a0, 16
	beq	$a0, $a6, .LBB0_3
# %bb.26:
	beq	$a0, $a1, .LBB0_3
# %bb.27:
	bge	$a6, $a0, .LBB0_29
# %bb.28:
	blt	$a5, $a1, .LBB0_3
.LBB0_29:
	slt	$a7, $a0, $a6
	slt	$t0, $a1, $a5
	and	$t0, $a7, $t0
	bnez	$t0, .LBB0_3
# %bb.30:
	slt	$t0, $a6, $a0
	slt	$t1, $a0, $a1
	and	$t0, $t0, $t1
	bnez	$t0, .LBB0_3
# %bb.31:
	slt	$t0, $a6, $a5
	and	$a7, $t0, $a7
	bnez	$a7, .LBB0_3
# %bb.32:
	addi.w	$a6, $a6, -1
	beq	$a5, $a6, .LBB0_3
# %bb.33:
	addi.w	$a1, $a1, 1
	xor	$a0, $a0, $a1
	sltui	$a4, $a0, 1
	b	.LBB0_3
.Lfunc_end0:
	.size	_ZN6miniFE11is_neighborERK3BoxS2_, .Lfunc_end0-_ZN6miniFE11is_neighborERK3BoxS2_
                                        # -- End function
	.globl	_ZN6miniFE18decide_how_to_growERK3BoxS2_ # -- Begin function _ZN6miniFE18decide_how_to_growERK3BoxS2_
	.p2align	5
	.type	_ZN6miniFE18decide_how_to_growERK3BoxS2_,@function
_ZN6miniFE18decide_how_to_growERK3BoxS2_: # @_ZN6miniFE18decide_how_to_growERK3BoxS2_
# %bb.0:
	ld.w	$a3, $a1, 20
	ld.w	$a4, $a0, 20
	ori	$a2, $zero, 2
	bge	$a3, $a4, .LBB1_2
.LBB1_1:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB1_2:
	ld.w	$a3, $a1, 16
	ld.w	$a4, $a0, 16
	bge	$a4, $a3, .LBB1_4
# %bb.3:
	move	$a0, $a2
	ret
.LBB1_4:
	ld.w	$a3, $a1, 12
	ld.w	$a4, $a0, 12
	ori	$a2, $zero, 1
	blt	$a3, $a4, .LBB1_1
# %bb.5:
	ld.w	$a3, $a1, 8
	ld.w	$a4, $a0, 8
	bge	$a4, $a3, .LBB1_7
# %bb.6:
	move	$a0, $a2
	ret
.LBB1_7:
	ld.w	$a2, $a1, 4
	ld.w	$a3, $a0, 4
	bge	$a2, $a3, .LBB1_9
# %bb.8:
	move	$a2, $zero
	b	.LBB1_1
.LBB1_9:
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	xori	$a1, $a0, 1
	ori	$a2, $zero, 3
	masknez	$a2, $a2, $a0
	slli.d	$a0, $a1, 32
	or	$a0, $a2, $a0
	ret
.Lfunc_end1:
	.size	_ZN6miniFE18decide_how_to_growERK3BoxS2_, .Lfunc_end1-_ZN6miniFE18decide_how_to_growERK3BoxS2_
                                        # -- End function
	.globl	_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_ # -- Begin function _ZN6miniFE20decide_how_to_shrinkERK3BoxS2_
	.p2align	5
	.type	_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_,@function
_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_: # @_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_
# %bb.0:
	ld.w	$a4, $a1, 20
	ld.w	$a5, $a0, 20
	ld.w	$a2, $a1, 16
	sub.w	$a3, $a4, $a2
	bge	$a4, $a5, .LBB2_2
# %bb.1:
	ori	$a2, $zero, 2
	bge	$a2, $a3, .LBB2_5
	b	.LBB2_14
.LBB2_2:
	ld.w	$a4, $a0, 16
	bge	$a4, $a2, .LBB2_5
# %bb.3:
	ori	$a2, $zero, 2
	bge	$a2, $a3, .LBB2_5
# %bb.4:
	ori	$a2, $zero, 2
	move	$a0, $a2
	ret
.LBB2_5:                                # %.thread
	ld.w	$a4, $a1, 12
	ld.w	$a5, $a0, 12
	ld.w	$a3, $a1, 8
	sub.w	$a2, $a4, $a3
	bge	$a4, $a5, .LBB2_8
# %bb.6:
	ori	$a3, $zero, 2
	bge	$a3, $a2, .LBB2_11
# %bb.7:
	ori	$a2, $zero, 1
	b	.LBB2_14
.LBB2_8:
	ld.w	$a4, $a0, 8
	bge	$a4, $a3, .LBB2_11
# %bb.9:
	ori	$a3, $zero, 2
	bge	$a3, $a2, .LBB2_11
# %bb.10:
	ori	$a2, $zero, 1
	move	$a0, $a2
	ret
.LBB2_11:                               # %.thread49
	ld.w	$a2, $a1, 4
	ld.w	$a4, $a0, 4
	ld.w	$a1, $a1, 0
	sub.w	$a3, $a2, $a1
	bge	$a2, $a4, .LBB2_15
# %bb.12:
	ori	$a4, $zero, 2
	ori	$a2, $zero, 1
	bge	$a4, $a3, .LBB2_16
# %bb.13:
	move	$a2, $zero
.LBB2_14:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB2_15:                               # %._crit_edge
	slti	$a2, $a3, 3
.LBB2_16:
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	or	$a0, $a0, $a2
	andi	$a1, $a0, 1
	slli.d	$a0, $a1, 32
	ori	$a2, $zero, 3
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	ret
.Lfunc_end2:
	.size	_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_, .Lfunc_end2-_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI3_0:
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	1                               # 0x1
.LCPI3_1:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -992
	.cfi_def_cfa_offset 992
	st.d	$ra, $sp, 984                   # 8-byte Folded Spill
	st.d	$fp, $sp, 976                   # 8-byte Folded Spill
	st.d	$s0, $sp, 968                   # 8-byte Folded Spill
	st.d	$s1, $sp, 960                   # 8-byte Folded Spill
	st.d	$s2, $sp, 952                   # 8-byte Folded Spill
	st.d	$s3, $sp, 944                   # 8-byte Folded Spill
	st.d	$s4, $sp, 936                   # 8-byte Folded Spill
	st.d	$s5, $sp, 928                   # 8-byte Folded Spill
	st.d	$s6, $sp, 920                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 912                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 904                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	.cfi_offset 57, -88
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI3_0)
	move	$fp, $a1
	move	$s0, $a0
	vst	$vr0, $sp, 800
	st.d	$zero, $sp, 816
	st.w	$zero, $sp, 824
	addi.d	$s2, $sp, 848
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_1)
	st.d	$s2, $sp, 832
	st.d	$zero, $sp, 840
	st.b	$zero, $sp, 848
	vst	$vr0, $sp, 864
	ori	$a0, $zero, 2
	lu32i.d	$a0, 9999
	st.d	$a0, $sp, 880
	ori	$s1, $zero, 1
	st.w	$s1, $sp, 888
.Ltmp0:                                 # EH_LABEL
	addi.d	$a2, $sp, 800
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE14get_parametersEiPPcRNS_10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	st.w	$s1, $sp, 796
	st.w	$zero, $sp, 792
.Ltmp3:                                 # EH_LABEL
	addi.d	$a2, $sp, 796
	addi.d	$a3, $sp, 792
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE14initialize_mpiEiPPcRiS2_)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.3:
.Ltmp8:                                 # EH_LABEL
	fmov.d	$fs0, $fa0
	addi.d	$a0, $sp, 800
	pcaddu18i	$ra, %call36(_ZN6miniFE20broadcast_parametersERNS_10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.4:
	ld.w	$a0, $sp, 800
	st.w	$zero, $sp, 768
	st.w	$a0, $sp, 772
	ld.w	$a0, $sp, 804
	ld.w	$a1, $sp, 808
	ld.w	$s0, $sp, 796
	st.w	$zero, $sp, 776
	st.w	$a0, $sp, 780
	st.w	$zero, $sp, 784
	st.w	$a1, $sp, 788
	bltz	$s0, .LBB3_67
# %bb.5:                                # %_ZNSt6vectorI3BoxSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
	beqz	$s0, .LBB3_10
# %bb.6:
	slli.d	$a0, $s0, 4
	alsl.d	$s1, $s0, $a0, 3
.Ltmp11:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.7:                                # %.noexc51
	move	$fp, $a0
	add.d	$s3, $a0, $s1
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	ori	$a0, $zero, 1
	vst	$vr0, $fp, 0
	beq	$s0, $a0, .LBB3_11
# %bb.8:
	ori	$a0, $zero, 24
	mul.d	$a1, $s0, $a0
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph.i.i.i.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $fp, 0
	vstx	$vr0, $fp, $a0
	ld.d	$a2, $fp, 16
	add.d	$a3, $fp, $a0
	addi.d	$a0, $a0, 24
	st.d	$a2, $a3, 16
	bne	$a1, $a0, .LBB3_9
	b	.LBB3_11
.LBB3_10:
	move	$s3, $zero
	move	$fp, $zero
.LBB3_11:                               # %_ZNSt6vectorI3BoxSaIS0_EEC2EmRKS1_.exit
.Ltmp13:                                # EH_LABEL
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 768
	move	$a0, $zero
	move	$a1, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.12:
	ld.w	$a0, $sp, 792
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s0, $fp, $a0
	ld.w	$a1, $s0, 4
	ldx.w	$a0, $fp, $a0
	ld.w	$a2, $s0, 12
	ld.w	$a3, $s0, 8
	ld.w	$a4, $s0, 20
	ld.w	$a5, $s0, 16
	sub.w	$a0, $a1, $a0
	sub.w	$a1, $a2, $a3
	sub.w	$a2, $a4, $a5
	sltu	$a0, $zero, $a0
	sltu	$a1, $zero, $a1
	and	$a0, $a1, $a0
	sltu	$a1, $zero, $a2
	and	$a0, $a0, $a1
	beqz	$a0, .LBB3_27
# %bb.13:
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.14:
.Ltmp19:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 392
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.15:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
	ld.w	$a1, $sp, 800
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.16:
.Ltmp23:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.17:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
	ld.w	$a1, $sp, 804
.Ltmp25:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.18:
.Ltmp27:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.19:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
	ld.w	$a1, $sp, 808
.Ltmp29:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.20:
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 392
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.21:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
	ld.d	$a2, $sp, 840
	beqz	$a2, .LBB3_24
# %bb.22:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	ld.d	$a1, $sp, 832
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.23:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp35:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
.LBB3_24:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
	addi.d	$s1, $sp, 160
	st.d	$s1, $sp, 144
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.w	$a1, $a0, 0
	ld.h	$a0, $a0, 4
	st.w	$a1, $sp, 160
	st.h	$a0, $sp, 164
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 152
	st.b	$zero, $sp, 166
	addi.d	$s4, $sp, 128
	st.d	$s4, $sp, 112
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ld.h	$a1, $a0, 0
	ld.b	$a0, $a0, 2
	st.h	$a1, $sp, 128
	st.b	$a0, $sp, 130
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 120
	st.b	$zero, $sp, 131
	addi.d	$s5, $sp, 96
	st.d	$s5, $sp, 80
	ori	$a0, $zero, 46
	st.h	$a0, $sp, 96
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 88
	ld.d	$a0, $sp, 440
	addi.d	$s6, $sp, 64
	st.d	$s6, $sp, 48
	st.d	$zero, $sp, 56
	st.b	$zero, $sp, 64
	beqz	$a0, .LBB3_31
# %bb.25:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
	ld.d	$a1, $sp, 424
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB3_31
# %bb.26:
	ld.d	$a3, $sp, 432
	sub.d	$a4, $a0, $a3
.Ltmp38:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
	b	.LBB3_32
.LBB3_27:
.Ltmp69:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 74
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.28:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_69
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_59
# %bb.30:
	ld.bu	$a0, $s0, 67
	b	.LBB3_61
.LBB3_31:
	addi.d	$a1, $sp, 472
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
.LBB3_32:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
.Ltmp43:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 144
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 80
	addi.d	$a4, $sp, 48
	pcaddu18i	$ra, %call36(_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.33:
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB3_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 80
	beq	$a0, $s5, .LBB3_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
	ld.d	$a0, $sp, 112
	beq	$a0, $s4, .LBB3_39
# %bb.38:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_39:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
	ld.d	$a0, $sp, 144
	beq	$a0, $s1, .LBB3_41
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
	ld.w	$a0, $sp, 792
	bnez	$a0, .LBB3_45
# %bb.42:
.Ltmp46:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 800
	pcaddu18i	$ra, %call36(_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.43:
	ld.w	$a1, $sp, 796
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_Z25add_configuration_to_yamlR8YAML_Docii)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.44:
.Ltmp50:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_Z22add_timestring_to_yamlR8YAML_Doc)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
.LBB3_45:
.Ltmp53:                                # EH_LABEL
	addi.d	$a0, $sp, 768
	addi.d	$a2, $sp, 800
	addi.d	$a3, $sp, 176
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.46:
.Ltmp56:                                # EH_LABEL
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.47:
	ld.w	$a0, $sp, 792
	bnez	$a0, .LBB3_55
# %bb.48:                               # %.noexc.i96
	fmov.d	$fs1, $fa0
	st.d	$s1, $sp, 144
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 112
.Ltmp58:                                # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.49:                               # %.noexc97
	ld.d	$a1, $sp, 112
	fsub.d	$fa0, $fs1, $fs0
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr1, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr1, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
.Ltmp61:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.50:
	ld.d	$a0, $sp, 144
	beq	$a0, $s1, .LBB3_52
# %bb.51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_52:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
.Ltmp64:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 176
	pcaddu18i	$ra, %call36(_ZN8YAML_Doc12generateYAMLB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.53:
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	beq	$a0, $a1, .LBB3_55
# %bb.54:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_55:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
.Ltmp66:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE12finalize_mpiEv)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.56:
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN8YAML_DocD1Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 392
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 392
	stx.d	$a0, $a1, $a2
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 472
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 488
	st.d	$a1, $sp, 400
	beq	$a0, $a2, .LBB3_58
# %bb.57:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_58:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 400
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 504
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB3_64
.LBB3_59:
.Ltmp71:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.60:                               # %.noexc115
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp73:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp74:                                # EH_LABEL
.LBB3_61:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp75:                                # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.62:                               # %.noexc117
.Ltmp77:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.63:                               # %_ZNSolsEPFRSoS_E.exit
	ori	$s0, $zero, 1
.Ltmp79:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE12finalize_mpiEv)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
.LBB3_64:                               # %_ZNSt6vectorI3BoxSaIS0_EED2Ev.exit
	sub.d	$a1, $s3, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 832
	beq	$a0, $s2, .LBB3_66
# %bb.65:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 848
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_66:                               # %_ZN6miniFE10ParametersD2Ev.exit
	move	$a0, $s0
	fld.d	$fs1, $sp, 904                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 912                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 968                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 984                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 992
	ret
.LBB3_67:
.Ltmp84:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.68:                               # %.noexc
.LBB3_69:
.Ltmp81:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.70:                               # %.noexc114
.LBB3_71:
.Ltmp63:                                # EH_LABEL
	ld.d	$a2, $sp, 144
	move	$s0, $a0
	beq	$a2, $s1, .LBB3_92
# %bb.72:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
	ld.d	$a0, $sp, 160
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_92
.LBB3_73:
.Ltmp60:                                # EH_LABEL
	b	.LBB3_91
.LBB3_74:
.Ltmp55:                                # EH_LABEL
	b	.LBB3_91
.LBB3_75:
.Ltmp45:                                # EH_LABEL
	b	.LBB3_77
.LBB3_76:
.Ltmp42:                                # EH_LABEL
.LBB3_77:
	ld.d	$a2, $sp, 48
	move	$s0, $a0
	bne	$a2, $s6, .LBB3_81
# %bb.78:                               # %.body
	ld.d	$a0, $sp, 80
	bne	$a0, $s5, .LBB3_82
.LBB3_79:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
	ld.d	$a0, $sp, 112
	bne	$a0, $s4, .LBB3_83
.LBB3_80:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
	ld.d	$a0, $sp, 144
	bne	$a0, $s1, .LBB3_84
	b	.LBB3_98
.LBB3_81:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
	ld.d	$a0, $sp, 64
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	beq	$a0, $s5, .LBB3_79
.LBB3_82:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	beq	$a0, $s4, .LBB3_80
.LBB3_83:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	beq	$a0, $s1, .LBB3_98
.LBB3_84:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_98
.LBB3_85:
.Ltmp18:                                # EH_LABEL
	b	.LBB3_96
.LBB3_86:
.Ltmp52:                                # EH_LABEL
	b	.LBB3_91
.LBB3_87:
.Ltmp15:                                # EH_LABEL
	b	.LBB3_96
.LBB3_88:
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB3_100
.LBB3_89:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB3_100
.LBB3_90:
.Ltmp68:                                # EH_LABEL
.LBB3_91:
	move	$s0, $a0
.LBB3_92:
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN8YAML_DocD1Ev)
	jirl	$ra, $ra, 0
	b	.LBB3_98
.LBB3_93:
.Ltmp86:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB3_100
.LBB3_94:
.Ltmp10:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB3_100
.LBB3_95:
.Ltmp83:                                # EH_LABEL
.LBB3_96:                               # %_ZNSt6vectorI3BoxSaIS0_EED2Ev.exit109
	move	$s0, $a0
	b	.LBB3_99
.LBB3_97:
.Ltmp37:                                # EH_LABEL
	move	$s0, $a0
.LBB3_98:
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB3_99:                               # %_ZNSt6vectorI3BoxSaIS0_EED2Ev.exit109
	sub.d	$a1, $s3, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_100:
	ld.d	$a0, $sp, 832
	beq	$a0, $s2, .LBB3_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110
	ld.d	$a1, $sp, 848
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_102:                              # %_ZN6miniFE10ParametersD2Ev.exit112
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp36-.Ltmp19                #   Call between .Ltmp19 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp51-.Ltmp46                #   Call between .Ltmp46 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin0          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp64-.Ltmp62                #   Call between .Ltmp62 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp71-.Ltmp67                #   Call between .Ltmp67 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp80-.Ltmp71                #   Call between .Ltmp71 and .Ltmp80
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp84-.Ltmp80                #   Call between .Ltmp80 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Lfunc_end3-.Ltmp82            #   Call between .Ltmp82 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE # -- Begin function _Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE
	.p2align	5
	.type	_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE,@function
_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE: # @_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %.noexc.i
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
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
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$s1, $sp, 96
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp87:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.1:                                # %.noexc
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$s5, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $s5, 0
	ld.d	$s4, $s5, 13
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
	addi.d	$s2, $sp, 64
	st.d	$s2, $sp, 48
	st.d	$zero, $sp, 56
	st.b	$zero, $sp, 64
.Ltmp90:                                # EH_LABEL
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.2:
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp93:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.7:                                # %.noexc96
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp96:                                # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.8:                                # %._crit_edge.i.i98
	st.d	$s2, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ld.d	$s6, $a1, 0
	ld.h	$s7, $a1, 8
	st.d	$s6, $sp, 64
	st.h	$s7, $sp, 72
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 74
	addi.d	$s3, $sp, 32
	st.d	$s3, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
.Ltmp99:                                # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.9:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_13
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp102:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.16:                               # %.noexc117
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp105:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.17:                               # %._crit_edge.i.i119
	st.d	$s2, $sp, 48
	st.d	$s6, $sp, 64
	st.h	$s7, $sp, 72
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 74
.Ltmp108:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.18:                               # %._crit_edge.i.i123
	st.d	$s3, $sp, 16
	lu12i.w	$s8, 7
	ori	$a1, $s8, 2158
	st.h	$a1, $sp, 32
	ld.w	$a2, $s0, 0
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 34
.Ltmp111:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.19:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.26:                               # %.noexc138
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp117:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.27:                               # %._crit_edge.i.i140
	st.d	$s2, $sp, 48
	st.d	$s6, $sp, 64
	st.h	$s7, $sp, 72
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 74
.Ltmp120:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.28:                               # %._crit_edge.i.i144
	st.d	$s3, $sp, 16
	ori	$a1, $s8, 2414
	st.h	$a1, $sp, 32
	ld.w	$a2, $s0, 4
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 34
.Ltmp123:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.29:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_31
# %bb.30:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_31:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_33
# %bb.32:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.36:                               # %.noexc159
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp129:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.37:                               # %._crit_edge.i.i161
	st.d	$s2, $sp, 48
	st.d	$s6, $sp, 64
	st.h	$s7, $sp, 72
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 74
.Ltmp132:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.38:                               # %._crit_edge.i.i165
	st.d	$s3, $sp, 16
	ori	$a1, $s8, 2670
	st.h	$a1, $sp, 32
	ld.w	$a2, $s0, 8
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 34
.Ltmp135:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.39:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_41
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.46:                               # %.noexc180
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp141:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.47:                               # %._crit_edge.i.i182
	st.d	$s2, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$a2, $sp, 64
	st.d	$a1, $sp, 70
	fld.s	$fa0, $s0, 24
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 78
	fcvt.d.s	$fa0, $fa0
.Ltmp144:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.48:
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_50
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_50:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_52
# %bb.51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_52:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
	ld.w	$a0, $s0, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_57
# %bb.53:                               # %._crit_edge.i.i192
	st.d	$s1, $sp, 80
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 96
	st.w	$a0, $sp, 99
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 88
	st.b	$zero, $sp, 103
	st.d	$s2, $sp, 48
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 16
.Ltmp159:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.54:                               # %.noexc198
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp162:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.55:                               # %.noexc.i201
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 112
.Ltmp165:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.56:                               # %.noexc202
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp168:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
	b	.LBB4_61
.LBB4_57:                               # %._crit_edge.i.i270
	st.d	$s1, $sp, 80
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ld.w	$a1, $a0, 0
	ld.h	$a0, $a0, 4
	st.w	$a1, $sp, 96
	st.h	$a0, $sp, 100
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 88
	st.b	$zero, $sp, 102
	st.d	$s2, $sp, 48
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 16
.Ltmp147:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.58:                               # %.noexc276
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp150:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.59:                               # %.noexc.i279
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 112
.Ltmp153:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.60:                               # %.noexc280
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp156:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
.LBB4_61:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_63
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_63:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_65:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_67
# %bb.66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_67:
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB4_68:
.Ltmp158:                               # EH_LABEL
	b	.LBB4_92
.LBB4_69:
.Ltmp170:                               # EH_LABEL
	b	.LBB4_92
.LBB4_70:
.Ltmp155:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_71:
.Ltmp167:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_72:
.Ltmp152:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_73:
.Ltmp164:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_74:
.Ltmp149:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_75:
.Ltmp161:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_76:
.Ltmp146:                               # EH_LABEL
	b	.LBB4_103
.LBB4_77:
.Ltmp143:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_78:
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_79:
.Ltmp137:                               # EH_LABEL
	b	.LBB4_92
.LBB4_80:
.Ltmp134:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_81:
.Ltmp131:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_82:
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_83:
.Ltmp125:                               # EH_LABEL
	b	.LBB4_92
.LBB4_84:
.Ltmp122:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_85:
.Ltmp119:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_86:
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_87:
.Ltmp113:                               # EH_LABEL
	b	.LBB4_92
.LBB4_88:
.Ltmp110:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_89:
.Ltmp107:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_90:
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_91:
.Ltmp101:                               # EH_LABEL
.LBB4_92:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s3, .LBB4_94
# %bb.93:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_94:
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_97
# %bb.95:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
.LBB4_96:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_97:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_99
# %bb.98:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_99:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_100:
.Ltmp98:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_101:
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_102:
.Ltmp92:                                # EH_LABEL
.LBB4_103:
	ld.d	$a2, $sp, 48
	move	$fp, $a0
	beq	$a2, $s2, .LBB4_97
# %bb.104:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
	ld.d	$a0, $sp, 64
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB4_96
.LBB4_105:
.Ltmp89:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE, .Lfunc_end4-_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin1          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin1          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp93-.Ltmp91                #   Call between .Ltmp91 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin1          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin1          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin1         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp102-.Ltmp100              #   Call between .Ltmp100 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin1         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin1         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin1         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin1         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp114-.Ltmp112              #   Call between .Ltmp112 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin1         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin1         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin1         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin1         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin1         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin1         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin1         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin1         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp138-.Ltmp136              #   Call between .Ltmp136 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin1         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin1         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin1         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp159-.Ltmp145              #   Call between .Ltmp145 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin1         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin1         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin1         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Lfunc_end4-.Ltmp157           #   Call between .Ltmp157 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z25add_configuration_to_yamlR8YAML_Docii
.LCPI5_0:
	.dword	8                               # 0x8
	.dword	7886488383309048912             # 0x6d726f6674616c50
.LCPI5_1:
	.dword	8                               # 0x8
	.dword	7308604897320202088             # 0x656d616e74736f68
.LCPI5_2:
	.dword	8                               # 0x8
	.dword	6000836824347990083             # 0x5347414c46585843
	.text
	.globl	_Z25add_configuration_to_yamlR8YAML_Docii
	.p2align	5
	.type	_Z25add_configuration_to_yamlR8YAML_Docii,@function
_Z25add_configuration_to_yamlR8YAML_Docii: # @_Z25add_configuration_to_yamlR8YAML_Docii
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %.noexc.i
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
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
	addi.d	$s2, $sp, 120
	st.d	$s2, $sp, 104
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 72
.Ltmp171:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 72
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.1:                                # %.noexc
	ld.d	$a1, $sp, 72
	st.d	$a0, $sp, 104
	st.d	$a1, $sp, 120
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 104
	st.d	$a1, $sp, 112
	stx.b	$zero, $a0, $a1
.Ltmp174:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.2:                                # %.noexc.i94
	move	$s1, $a0
	addi.d	$s3, $sp, 88
	st.d	$s3, $sp, 72
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 40
.Ltmp177:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.3:                                # %.noexc95
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 72
	st.d	$a1, $sp, 88
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 72
	st.d	$a1, $sp, 80
	stx.b	$zero, $a0, $a1
.Ltmp180:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.4:
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	st.d	$s2, $sp, 104
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
	st.d	$s3, $sp, 72
	st.d	$zero, $sp, 80
	st.b	$zero, $sp, 88
.Ltmp183:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.9:
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_13
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
	st.d	$s2, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
.Ltmp186:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.14:                               # %._crit_edge.i.i118
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_1)
	st.d	$s3, $sp, 72
	vst	$vr0, $sp, 80
	st.b	$zero, $sp, 96
	addi.d	$s0, $sp, 56
	st.d	$s0, $sp, 40
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	ld.w	$s1, $a1, 0
	ld.w	$s4, $a1, 3
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp189:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.15:
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
	st.d	$s2, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
.Ltmp192:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.22:                               # %._crit_edge.i.i139
	st.d	$s3, $sp, 72
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$a2, $sp, 88
	st.w	$a1, $sp, 95
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 80
	st.b	$zero, $sp, 99
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp195:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.23:
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_25:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_27:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_29
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_29:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
	st.d	$s2, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
.Ltmp198:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.30:                               # %._crit_edge.i.i160
	st.d	$s3, $sp, 72
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$a2, $sp, 88
	st.d	$a1, $sp, 94
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 80
	st.b	$zero, $sp, 102
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp201:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.31:
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_33
# %bb.32:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
	st.d	$s2, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
.Ltmp204:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.38:                               # %._crit_edge.i.i181
	st.d	$s3, $sp, 72
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	st.d	$a2, $sp, 88
	st.b	$a1, $sp, 96
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 80
	st.b	$zero, $sp, 97
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp207:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.39:
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_41
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
	st.d	$s2, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ld.w	$s5, $a0, 0
	ld.b	$s6, $a0, 4
	st.w	$s5, $sp, 120
	st.b	$s6, $sp, 124
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 125
	st.d	$s3, $sp, 72
	st.d	$zero, $sp, 80
	st.b	$zero, $sp, 88
.Ltmp210:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.46:
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_48
# %bb.47:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_48:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_50
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_50:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
	st.d	$s2, $sp, 104
	st.w	$s5, $sp, 120
	st.b	$s6, $sp, 124
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 125
.Ltmp213:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.51:                               # %._crit_edge.i.i216
	st.d	$s3, $sp, 72
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 88
	st.b	$a1, $sp, 90
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 80
	st.b	$zero, $sp, 91
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp216:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
# %bb.52:
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_54
# %bb.53:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_54:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_58
# %bb.57:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
	st.d	$s2, $sp, 104
	st.w	$s5, $sp, 120
	st.b	$s6, $sp, 124
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 125
.Ltmp219:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.59:                               # %._crit_edge.i.i237
	pcalau12i	$a1, %pc_hi20(.LCPI5_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_2)
	st.d	$s3, $sp, 72
	vst	$vr0, $sp, 80
	st.b	$zero, $sp, 96
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp222:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.60:
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_62
# %bb.61:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_64
# %bb.63:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_64:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_66
# %bb.65:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_66:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
	st.d	$s2, $sp, 104
	lu12i.w	$a0, 6
	ori	$a0, $a0, 3950
	st.h	$a0, $sp, 120
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 122
	st.d	$s3, $sp, 72
	st.w	$s5, $sp, 88
	st.b	$s6, $sp, 92
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 80
	st.b	$zero, $sp, 93
.Ltmp225:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.67:                               # %._crit_edge.i.i262
	st.d	$s0, $sp, 40
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	st.d	$a2, $sp, 56
	st.b	$a1, $sp, 64
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 65
.Ltmp228:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 104
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.68:
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_70
# %bb.69:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_70:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_72
# %bb.71:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_72:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_74
# %bb.73:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_74:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB5_75:
.Ltmp230:                               # EH_LABEL
	b	.LBB5_89
.LBB5_76:
.Ltmp227:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_91
.LBB5_77:
.Ltmp224:                               # EH_LABEL
	b	.LBB5_89
.LBB5_78:
.Ltmp221:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_79:
.Ltmp218:                               # EH_LABEL
	b	.LBB5_89
.LBB5_80:
.Ltmp215:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_81:
.Ltmp212:                               # EH_LABEL
	b	.LBB5_96
.LBB5_82:
.Ltmp209:                               # EH_LABEL
	b	.LBB5_89
.LBB5_83:
.Ltmp206:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_84:
.Ltmp203:                               # EH_LABEL
	b	.LBB5_89
.LBB5_85:
.Ltmp200:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_86:
.Ltmp197:                               # EH_LABEL
	b	.LBB5_89
.LBB5_87:
.Ltmp194:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_88:
.Ltmp191:                               # EH_LABEL
.LBB5_89:
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s0, .LBB5_91
# %bb.90:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_91:
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_99
# %bb.92:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	b	.LBB5_98
.LBB5_93:
.Ltmp188:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_94:
.Ltmp185:                               # EH_LABEL
	b	.LBB5_96
.LBB5_95:
.Ltmp182:                               # EH_LABEL
.LBB5_96:
	ld.d	$a2, $sp, 72
	move	$fp, $a0
	beq	$a2, $s3, .LBB5_99
# %bb.97:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
	ld.d	$a0, $sp, 88
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB5_98:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_99:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_101
# %bb.100:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_101:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_102:
.Ltmp179:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_103:
.Ltmp176:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_104:
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z25add_configuration_to_yamlR8YAML_Docii, .Lfunc_end5-_Z25add_configuration_to_yamlR8YAML_Docii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp171-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin2         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin2         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin2         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin2         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp183-.Ltmp181              #   Call between .Ltmp181 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin2         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp186-.Ltmp184              #   Call between .Ltmp184 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin2         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin2         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp192-.Ltmp190              #   Call between .Ltmp190 and .Ltmp192
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin2         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin2         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp198-.Ltmp196              #   Call between .Ltmp196 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin2         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin2         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp204-.Ltmp202              #   Call between .Ltmp202 and .Ltmp204
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin2         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin2         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp210-.Ltmp208              #   Call between .Ltmp208 and .Ltmp210
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin2         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp213-.Ltmp211              #   Call between .Ltmp211 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin2         #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin2         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp219-.Ltmp217              #   Call between .Ltmp217 and .Ltmp219
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin2         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin2         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp225-.Ltmp223              #   Call between .Ltmp223 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin2         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Lfunc_end5-.Ltmp229           #   Call between .Ltmp229 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z22add_timestring_to_yamlR8YAML_Doc # -- Begin function _Z22add_timestring_to_yamlR8YAML_Doc
	.p2align	5
	.type	_Z22add_timestring_to_yamlR8YAML_Doc,@function
_Z22add_timestring_to_yamlR8YAML_Doc:   # @_Z22add_timestring_to_yamlR8YAML_Doc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -496
	.cfi_def_cfa_offset 496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 72
	addi.d	$s1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	add.d	$s2, $s1, $a0
	ld.bu	$a0, $s2, 225
	bnez	$a0, .LBB6_6
# %bb.1:
	ld.d	$s1, $s2, 240
	beqz	$s1, .LBB6_29
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	ld.bu	$a0, $s1, 56
	bnez	$a0, .LBB6_5
# %bb.3:
.Ltmp231:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.4:                                # %.noexc14
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp233:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp234:                               # EH_LABEL
.LBB6_5:                                # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s2, 225
.LBB6_6:                                # %._crit_edge.i.i
	ld.w	$a0, $s0, 20
	ori	$a1, $zero, 48
	st.b	$a1, $s2, 224
	addi.w	$a1, $a0, 1900
.Ltmp237:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.7:
.Ltmp239:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.8:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 72
	ld.w	$a2, $s0, 16
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 2
	st.d	$a1, $a0, 16
	addi.w	$a1, $a2, 1
.Ltmp241:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.9:
.Ltmp243:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.10:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 72
	ld.w	$a1, $s0, 12
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	st.d	$a2, $a0, 16
.Ltmp245:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.11:
.Ltmp247:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	ori	$s1, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.12:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s0, 8
	addi.d	$a2, $sp, 72
	add.d	$a0, $a2, $a0
	st.d	$s1, $a0, 16
.Ltmp249:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.13:
.Ltmp251:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 72
	ld.w	$a1, $s0, 4
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	st.d	$a2, $a0, 16
.Ltmp253:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.15:
.Ltmp255:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 72
	ld.w	$a1, $s0, 0
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	st.d	$a2, $a0, 16
.Ltmp257:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp258:                               # EH_LABEL
# %bb.17:
	ld.d	$a0, $sp, 120
	addi.d	$s0, $sp, 56
	st.d	$s0, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $sp, 56
	beqz	$a0, .LBB6_20
# %bb.18:
	ld.d	$a1, $sp, 104
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB6_20
# %bb.19:
	ld.d	$a3, $sp, 112
	sub.d	$a4, $a0, $a3
.Ltmp260:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp261:                               # EH_LABEL
	b	.LBB6_21
.LBB6_20:
	addi.d	$a1, $sp, 152
.Ltmp262:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp263:                               # EH_LABEL
.LBB6_21:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	addi.d	$s1, $sp, 24
	st.d	$s1, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
.Ltmp265:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
# %bb.22:
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB6_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB6_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_26:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 72
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 72
	stx.d	$a0, $a1, $a2
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 152
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 168
	st.d	$a1, $sp, 80
	beq	$a0, $a2, .LBB6_28
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_28:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 80
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB6_29:
.Ltmp235:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.30:                               # %.noexc
.LBB6_31:
.Ltmp267:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s1, .LBB6_33
# %bb.32:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB6_39
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	b	.LBB6_37
.LBB6_35:
.Ltmp264:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s0, .LBB6_39
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB6_37:                               # %.body
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_39
.LBB6_38:
.Ltmp259:                               # EH_LABEL
	move	$fp, $a0
.LBB6_39:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z22add_timestring_to_yamlR8YAML_Doc, .Lfunc_end6-_Z22add_timestring_to_yamlR8YAML_Doc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp231-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp258-.Ltmp231              #   Call between .Ltmp231 and .Ltmp258
	.uleb128 .Ltmp259-.Lfunc_begin3         #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp263-.Ltmp260              #   Call between .Ltmp260 and .Ltmp263
	.uleb128 .Ltmp264-.Lfunc_begin3         #     jumps to .Ltmp264
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin3         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp235-.Ltmp266              #   Call between .Ltmp266 and .Ltmp235
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp259-.Lfunc_begin3         #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Lfunc_end6-.Ltmp236           #   Call between .Ltmp236 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
.LCPI7_0:
	.dword	0x3faeb851eb851eb8              # double 0.059999999999999998
.LCPI7_2:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI7_3:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
.LCPI7_4:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_1:
	.dword	8                               # 0x8
	.dword	7311150271011243843             # 0x65766c6f73204743
.LCPI7_5:
	.dword	8                               # 0x8
	.dword	7308613580332748612             # 0x656d695420544f44
	.section	.text._ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,"axG",@progbits,_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,comdat
	.weak	_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
	.p2align	5
	.type	_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,@function
_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc: # @_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -816
	.cfi_def_cfa_offset 816
	st.d	$ra, $sp, 808                   # 8-byte Folded Spill
	st.d	$fp, $sp, 800                   # 8-byte Folded Spill
	st.d	$s0, $sp, 792                   # 8-byte Folded Spill
	st.d	$s1, $sp, 784                   # 8-byte Folded Spill
	st.d	$s2, $sp, 776                   # 8-byte Folded Spill
	st.d	$s3, $sp, 768                   # 8-byte Folded Spill
	st.d	$s4, $sp, 760                   # 8-byte Folded Spill
	st.d	$s5, $sp, 752                   # 8-byte Folded Spill
	st.d	$s6, $sp, 744                   # 8-byte Folded Spill
	st.d	$s7, $sp, 736                   # 8-byte Folded Spill
	st.d	$s8, $sp, 728                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 720                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 712                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 704                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 696                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 688                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	move	$s0, $a0
	ld.w	$a0, $a0, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $s0, 12
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $s0, 20
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a1
	st.w	$zero, $sp, 684
	st.w	$zero, $sp, 680
	addi.d	$a2, $sp, 684
	addi.d	$a3, $sp, 680
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 488
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.1:
.Ltmp271:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
# %bb.2:
	st.b	$zero, $sp, 352
	addi.d	$a0, $sp, 360
	ori	$a2, $zero, 124
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
# %bb.3:
.Ltmp276:                               # EH_LABEL
	fmov.d	$fs1, $fa0
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 352
	pcaddu18i	$ra, %call36(_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.4:
.Ltmp278:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp279:                               # EH_LABEL
# %bb.5:
	fmov.d	$fs3, $fa0
	ld.d	$a1, $sp, 368
	ld.d	$a0, $sp, 360
	sub.d	$a1, $a1, $a0
	srli.d	$s4, $a1, 2
	addi.w	$a1, $s4, 0
	blez	$a1, .LBB7_13
# %bb.6:                                # %.noexc7.i
	ld.w	$s7, $a0, 0
	st.w	$s7, $sp, 320
	st.w	$s4, $sp, 324
	bstrpick.d	$s5, $s4, 30, 0
	slli.d	$s0, $s5, 3
.Ltmp283:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp284:                               # EH_LABEL
# %bb.7:                                # %.noexc298
	st.d	$a0, $sp, 328
	alsl.d	$a1, $s5, $a0, 3
	st.d	$a1, $sp, 344
	st.d	$zero, $a0, 0
	addi.d	$s3, $a0, 8
	addi.d	$s6, $s5, -1
	slli.d	$s2, $s6, 3
	beqz	$s6, .LBB7_9
# %bb.8:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
	move	$s8, $a0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	alsl.d	$s3, $s6, $s3, 3
.LBB7_9:                                # %.noexc7.i301
	st.d	$s3, $sp, 336
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s7, $sp, 288
	st.w	$s4, $sp, 292
.Ltmp286:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
# %bb.10:                               # %.noexc308
	st.d	$a0, $sp, 296
	alsl.d	$a1, $s5, $a0, 3
	st.d	$a1, $sp, 312
	st.d	$zero, $a0, 0
	addi.d	$s3, $a0, 8
	beqz	$s6, .LBB7_12
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i302
	move	$s4, $a0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	alsl.d	$s3, $s6, $s3, 3
.LBB7_12:                               # %.lr.ph.i304
	st.d	$s3, $sp, 304
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB7_15
.LBB7_13:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 320
	st.w	$s4, $sp, 324
	bltz	$a1, .LBB7_241
# %bb.14:
	st.d	$zero, $sp, 344
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 328
	st.w	$a0, $sp, 288
	st.d	$zero, $sp, 292
	vst	$vr0, $sp, 300
	st.w	$zero, $sp, 316
.LBB7_15:                               # %_ZN6miniFE6VectorIdiiEC2Eii.exit309
.Ltmp289:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.16:
.Ltmp291:                               # EH_LABEL
	fmov.d	$fs0, $fa0
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 320
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp292:                               # EH_LABEL
# %bb.17:
.Ltmp293:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.18:                               # %.noexc.i310
	fmov.d	$fs2, $fa0
	addi.d	$s2, $sp, 208
	st.d	$s2, $sp, 192
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 256
.Ltmp296:                               # EH_LABEL
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 256
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.19:                               # %.noexc311
	ld.d	$a1, $sp, 256
	st.d	$a0, $sp, 192
	st.d	$a1, $sp, 208
	pcalau12i	$a2, %pc_hi20(.L.str.34)
	addi.d	$s3, $a2, %pc_lo12(.L.str.34)
	vld	$vr0, $s3, 0
	ld.w	$s0, $s3, 23
	ld.d	$s4, $s3, 16
	vst	$vr0, $a0, 0
	st.w	$s0, $a0, 23
	st.d	$s4, $a0, 16
	ld.d	$a0, $sp, 192
	st.d	$a1, $sp, 200
	stx.b	$zero, $a0, $a1
	addi.d	$s5, $sp, 272
	st.d	$s5, $sp, 256
	st.d	$zero, $sp, 264
	st.b	$zero, $sp, 272
.Ltmp299:                               # EH_LABEL
	addi.d	$a1, $sp, 192
	addi.d	$a2, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp300:                               # EH_LABEL
# %bb.20:
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_22:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
	st.d	$s2, $sp, 192
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 256
.Ltmp302:                               # EH_LABEL
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 256
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp303:                               # EH_LABEL
# %bb.25:                               # %.noexc321
	ld.d	$a1, $sp, 256
	vld	$vr0, $s3, 0
	st.d	$a0, $sp, 192
	st.d	$a1, $sp, 208
	vst	$vr0, $a0, 0
	st.w	$s0, $a0, 23
	st.d	$s4, $a0, 16
	ld.d	$a0, $sp, 192
	st.d	$a1, $sp, 200
	stx.b	$zero, $a0, $a1
.Ltmp305:                               # EH_LABEL
	addi.d	$a1, $sp, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp306:                               # EH_LABEL
# %bb.26:                               # %.noexc.i324
	move	$s0, $a0
	st.d	$s5, $sp, 256
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 160
.Ltmp308:                               # EH_LABEL
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 160
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.27:                               # %.noexc325
	ld.d	$a1, $sp, 160
	fsub.d	$fa0, $fs3, $fs1
	st.d	$a0, $sp, 256
	st.d	$a1, $sp, 272
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a2, $a2, %pc_lo12(.L.str.35)
	vld	$vr1, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr1, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 256
	st.d	$a1, $sp, 264
	stx.b	$zero, $a0, $a1
.Ltmp311:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.28:
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_30:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_32
# %bb.31:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_32:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332
	st.d	$s2, $sp, 192
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ld.d	$s0, $a0, 0
	ld.w	$s3, $a0, 7
	st.d	$s0, $sp, 208
	st.w	$s3, $sp, 215
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 200
	st.b	$zero, $sp, 219
	st.d	$s5, $sp, 256
	st.d	$zero, $sp, 264
	st.b	$zero, $sp, 272
.Ltmp314:                               # EH_LABEL
	addi.d	$a1, $sp, 192
	addi.d	$a2, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp315:                               # EH_LABEL
# %bb.33:
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346
	st.d	$s2, $sp, 192
	st.d	$s0, $sp, 208
	st.w	$s3, $sp, 215
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 200
	st.b	$zero, $sp, 219
.Ltmp317:                               # EH_LABEL
	addi.d	$a1, $sp, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.38:                               # %.noexc.i352
	move	$s0, $a0
	st.d	$s5, $sp, 256
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 160
.Ltmp320:                               # EH_LABEL
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 160
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.39:                               # %.noexc353
	ld.d	$a1, $sp, 160
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	vld	$vr0, $a2, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 256
	st.d	$a1, $sp, 272
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 256
	fsub.d	$fa0, $fs2, $fs0
	st.d	$a1, $sp, 264
	stx.b	$zero, $a0, $a1
.Ltmp323:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp324:                               # EH_LABEL
# %bb.40:
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_42
# %bb.41:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_42:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_44
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_44:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
.Ltmp326:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.45:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s3, $a0, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$s4, $a0, 1
.Ltmp328:                               # EH_LABEL
	movgr2fr.d	$fs0, $zero
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	addi.d	$a5, $sp, 488
	fmov.d	$fa0, $fs0
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.46:
.Ltmp330:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp331:                               # EH_LABEL
# %bb.47:
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.48:
	addi.d	$a5, $sp, 536
.Ltmp335:                               # EH_LABEL
	vldi	$vr0, -912
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.49:
.Ltmp337:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.50:
.Ltmp340:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.51:
	ld.d	$a0, $sp, 368
	ld.d	$a1, $sp, 360
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	st.w	$a0, $sp, 480
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 352
.Ltmp342:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
# %bb.52:
.Ltmp345:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.53:
	move	$s2, $a0
	st.w	$zero, $sp, 252
	st.d	$zero, $sp, 240
	lu52i.d	$a0, $zero, 971
	st.d	$a0, $sp, 232
.Ltmp348:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp349:                               # EH_LABEL
# %bb.54:
	ld.w	$s0, $s1, 16
.Ltmp351:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s3, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	ori	$a2, $zero, 23
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.55:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB7_239
# %bb.56:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB7_58
# %bb.57:
	ld.bu	$a0, $s3, 67
	b	.LBB7_60
.LBB7_58:
.Ltmp353:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp354:                               # EH_LABEL
# %bb.59:                               # %.noexc803
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp355:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp356:                               # EH_LABEL
.LBB7_60:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp357:                               # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.61:                               # %.noexc805
.Ltmp359:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.62:                               # %_ZNSolsEPFRSoS_E.exit
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB7_65
# %bb.63:
.Ltmp390:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_)
	jirl	$ra, $ra, 0
.Ltmp391:                               # EH_LABEL
# %bb.64:
.Ltmp392:                               # EH_LABEL
	addi.d	$a3, $sp, 192
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	addi.d	$a2, $sp, 288
	ori	$a4, $zero, 200
	addi.d	$a5, $sp, 232
	addi.d	$a6, $sp, 252
	addi.d	$a7, $sp, 240
	st.d	$a3, $sp, 0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd)
	jirl	$ra, $ra, 0
.Ltmp393:                               # EH_LABEL
	b	.LBB7_80
.LBB7_65:
.Ltmp361:                               # EH_LABEL
	addi.d	$a3, $sp, 192
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	addi.d	$a2, $sp, 288
	ori	$a4, $zero, 200
	addi.d	$a5, $sp, 232
	addi.d	$a6, $sp, 252
	addi.d	$a7, $sp, 240
	st.d	$a3, $sp, 0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.66:
.Ltmp363:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
# %bb.67:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit388
	fld.d	$fa0, $sp, 240
.Ltmp365:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.68:                               # %_ZNSolsEd.exit
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB7_239
# %bb.69:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i808
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB7_71
# %bb.70:
	ld.bu	$a0, $s4, 67
	b	.LBB7_73
.LBB7_71:
.Ltmp367:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.72:                               # %.noexc813
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp369:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp370:                               # EH_LABEL
.LBB7_73:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i810
.Ltmp371:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.74:                               # %.noexc815
.Ltmp373:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.75:                               # %_ZNSolsEPFRSoS_E.exit391
	ld.w	$a0, $s1, 72
	blez	$a0, .LBB7_80
# %bb.76:
.Ltmp375:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 43
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.77:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB7_243
# %bb.78:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i819
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB7_81
# %bb.79:
	ld.bu	$a0, $s1, 67
	b	.LBB7_83
.LBB7_80:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	b	.LBB7_87
.LBB7_81:
.Ltmp377:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.82:                               # %.noexc824
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp379:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp380:                               # EH_LABEL
.LBB7_83:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i821
.Ltmp381:                               # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.84:                               # %.noexc826
.Ltmp383:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp384:                               # EH_LABEL
# %bb.85:                               # %_ZNSolsEPFRSoS_E.exit395
.Ltmp385:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_0)
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.86:
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
.LBB7_87:                               # %._crit_edge.i.i396
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI7_1)
	st.d	$s5, $sp, 256
	vst	$vr0, $sp, 264
	st.b	$zero, $sp, 280
	addi.d	$s4, $sp, 176
	st.d	$s4, $sp, 160
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 128
.Ltmp394:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp395:                               # EH_LABEL
# %bb.88:                               # %.noexc402
	ld.d	$a1, $sp, 128
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$s1, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $s1, 0
	ld.d	$s0, $s1, 13
	vst	$vr0, $a0, 0
	st.d	$s0, $a0, 13
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
.Ltmp397:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.89:                               # %._crit_edge.i.i404
	addi.d	$s6, $sp, 144
	st.d	$s6, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 144
	st.h	$a1, $sp, 152
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 154
	addi.d	$s7, $sp, 112
	st.d	$s7, $sp, 96
	pcalau12i	$a1, %pc_hi20(.L.str.119)
	addi.d	$a1, $a1, %pc_lo12(.L.str.119)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	st.w	$a2, $sp, 112
	st.h	$a1, $sp, 116
	ori	$a1, $zero, 6
	st.d	$a1, $sp, 104
	st.b	$zero, $sp, 118
.Ltmp400:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 96
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.90:
	ld.d	$a0, $sp, 96
	beq	$a0, $s7, .LBB7_92
# %bb.91:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_92:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_94
# %bb.93:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_94:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_96
# %bb.95:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_96:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420
	st.d	$s4, $sp, 160
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 128
.Ltmp403:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp404:                               # EH_LABEL
# %bb.97:                               # %.noexc423
	ld.d	$a1, $sp, 128
	vld	$vr0, $s1, 0
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	vst	$vr0, $a0, 0
	st.d	$s0, $a0, 13
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
.Ltmp406:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp407:                               # EH_LABEL
# %bb.98:                               # %.noexc.i426
	move	$s3, $a0
	st.d	$s6, $sp, 128
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 96
.Ltmp409:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
# %bb.99:                               # %.noexc427
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	pcalau12i	$a2, %pc_hi20(.L.str.44)
	addi.d	$a2, $a2, %pc_lo12(.L.str.44)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
	st.d	$s7, $sp, 96
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	ld.h	$s5, $a0, 0
	ld.b	$s8, $a0, 2
	st.h	$s5, $sp, 112
	st.b	$s8, $sp, 114
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 104
	st.b	$zero, $sp, 115
.Ltmp412:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 96
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp413:                               # EH_LABEL
# %bb.100:
	ld.d	$a0, $sp, 96
	beq	$a0, $s7, .LBB7_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_102:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_104
# %bb.103:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_104:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_106
# %bb.105:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_106:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
	st.d	$s4, $sp, 160
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 128
.Ltmp415:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp416:                               # EH_LABEL
# %bb.107:                              # %.noexc444
	ld.d	$a1, $sp, 128
	vld	$vr0, $s1, 0
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	vst	$vr0, $a0, 0
	st.d	$s0, $a0, 13
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
.Ltmp418:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp419:                               # EH_LABEL
# %bb.108:                              # %.noexc.i447
	move	$s3, $a0
	st.d	$s6, $sp, 128
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 96
.Ltmp421:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp422:                               # EH_LABEL
# %bb.109:                              # %.noexc448
	ld.d	$a1, $sp, 96
	pcalau12i	$a2, %pc_hi20(.L.str.45)
	vld	$vr0, $a2, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
	st.d	$s7, $sp, 96
	st.h	$s5, $sp, 112
	st.b	$s8, $sp, 114
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 104
	st.b	$zero, $sp, 115
.Ltmp424:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 96
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp425:                               # EH_LABEL
# %bb.110:
	ld.d	$a0, $sp, 96
	addi.d	$s5, $sp, 272
	beq	$a0, $s7, .LBB7_112
# %bb.111:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_112:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_114
# %bb.113:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_114:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_116
# %bb.115:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_116:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
	st.d	$s4, $sp, 160
	st.d	$zero, $sp, 168
	st.b	$zero, $sp, 176
.Ltmp427:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp428:                               # EH_LABEL
# %bb.117:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_119
# %bb.118:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_119:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469
.Ltmp430:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
# %bb.120:                              # %._crit_edge.i.i470
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.h	$a1, $sp, 184
	ld.w	$a2, $sp, 252
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 186
.Ltmp432:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp433:                               # EH_LABEL
# %bb.121:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_123
# %bb.122:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_123:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476
.Ltmp435:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.124:                              # %.noexc.i478
	move	$s3, $a0
	st.d	$s4, $sp, 160
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 128
.Ltmp438:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
# %bb.125:                              # %.noexc479
	ld.d	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.47)
	vld	$vr0, $a2, %pc_lo12(.L.str.47)
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
	fld.d	$fa0, $sp, 240
.Ltmp441:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp442:                               # EH_LABEL
# %bb.126:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_128
# %bb.127:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_128:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $s2, 32
	pcalau12i	$a2, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_2)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a1, 275200
	bstrins.d	$s2, $a1, 63, 32
	movgr2fr.d	$fa1, $s2
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $sp, 252
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa2, $fa1, $fa1
	vldi	$vr3, -1016
	addi.d	$a1, $a0, 1
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	fmul.d	$fs2, $fa0, $fa4
	slli.d	$a1, $a0, 1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa4, $fa0
	fld.d	$fa6, $sp, 208
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_3)
	alsl.d	$a0, $a0, $a0, 1
	addi.d	$a0, $a0, 2
	movgr2fr.w	$fa5, $a0
	fcmp.cule.d	$fcc0, $fa6, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	bcnez	$fcc0, .LBB7_130
# %bb.129:
	fld.d	$fa7, $a0, %pc_lo12(.LCPI7_4)
	fdiv.d	$fa6, $fs2, $fa6
	fmul.d	$fa6, $fa6, $fa7
	b	.LBB7_131
.LBB7_130:
	vldi	$vr6, -784
.LBB7_131:
	vst	$vr6, $sp, 48                   # 16-byte Folded Spill
	fld.d	$fa6, $sp, 200
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fs3, $fa2, $fa4
	fcmp.cule.d	$fcc0, $fa6, $fa0
	ffint.d.w	$fa2, $fa5
	bcnez	$fcc0, .LBB7_133
# %bb.132:
	fld.d	$fa3, $a0, %pc_lo12(.LCPI7_4)
	fdiv.d	$fa4, $fs3, $fa6
	fmul.d	$fa3, $fa4, $fa3
	b	.LBB7_134
.LBB7_133:
	vldi	$vr3, -784
.LBB7_134:
	vst	$vr3, $sp, 64                   # 16-byte Folded Spill
	fld.d	$fa3, $sp, 192
	fmul.d	$fs4, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa3, $fa0
	fadd.d	$fa1, $fs2, $fs3
	bcnez	$fcc0, .LBB7_136
# %bb.135:
	fld.d	$fa2, $a0, %pc_lo12(.LCPI7_4)
	fdiv.d	$fa3, $fs4, $fa3
	fmul.d	$fa2, $fa3, $fa2
	b	.LBB7_137
.LBB7_136:
	vldi	$vr2, -784
.LBB7_137:
	vst	$vr2, $sp, 80                   # 16-byte Folded Spill
	fld.d	$fa2, $sp, 224
	fcmp.cule.d	$fcc0, $fa2, $fa0
	fadd.d	$fs1, $fa1, $fs4
	bcnez	$fcc0, .LBB7_139
# %bb.138:
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_4)
	fdiv.d	$fa1, $fs1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	b	.LBB7_140
.LBB7_139:
	vldi	$vr0, -784
.LBB7_140:
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
.Ltmp444:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.141:                              # %._crit_edge.i.i520
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.h	$a1, $sp, 184
	fld.d	$fa0, $sp, 192
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 186
.Ltmp446:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp447:                               # EH_LABEL
# %bb.142:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_144
# %bb.143:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_144:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526
.Ltmp449:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp450:                               # EH_LABEL
# %bb.145:                              # %._crit_edge.i.i527
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 183
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 187
.Ltmp451:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp452:                               # EH_LABEL
# %bb.146:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_148
# %bb.147:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_148:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_153
# %bb.149:
.Ltmp459:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.150:                              # %._crit_edge.i.i550
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 184
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 188
	st.d	$s6, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 144
	st.b	$a1, $sp, 146
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 147
.Ltmp461:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp462:                               # EH_LABEL
# %bb.151:
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_155
# %bb.152:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i558
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_155
.LBB7_153:
.Ltmp454:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp455:                               # EH_LABEL
# %bb.154:                              # %._crit_edge.i.i534
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 184
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 188
.Ltmp456:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
.LBB7_155:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_157
# %bb.156:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_157:
.Ltmp464:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp465:                               # EH_LABEL
# %bb.158:                              # %._crit_edge.i.i570
	pcalau12i	$a1, %pc_hi20(.LCPI7_5)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_5)
	fld.d	$fa0, $sp, 200
	st.d	$s4, $sp, 160
	vst	$vr1, $sp, 168
	st.b	$zero, $sp, 184
.Ltmp466:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp467:                               # EH_LABEL
# %bb.159:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_161
# %bb.160:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_161:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576
.Ltmp469:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp470:                               # EH_LABEL
# %bb.162:                              # %._crit_edge.i.i577
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.b	$a1, $sp, 184
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 185
.Ltmp471:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp472:                               # EH_LABEL
# %bb.163:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_165
# %bb.164:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_165:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_170
# %bb.166:
.Ltmp479:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp480:                               # EH_LABEL
# %bb.167:                              # %._crit_edge.i.i600
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.h	$a1, $sp, 184
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 186
	st.d	$s6, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 144
	st.b	$a1, $sp, 146
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 147
.Ltmp481:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp482:                               # EH_LABEL
# %bb.168:
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_172
# %bb.169:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_172
.LBB7_170:
.Ltmp474:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp475:                               # EH_LABEL
# %bb.171:                              # %._crit_edge.i.i584
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.h	$a1, $sp, 184
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 186
.Ltmp476:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp477:                               # EH_LABEL
.LBB7_172:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_174
# %bb.173:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_174:
.Ltmp484:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp485:                               # EH_LABEL
# %bb.175:                              # %._crit_edge.i.i620
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 183
	fld.d	$fa0, $sp, 208
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 187
.Ltmp486:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp487:                               # EH_LABEL
# %bb.176:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_178
# %bb.177:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_178:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626
.Ltmp489:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.179:                              # %._crit_edge.i.i627
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a1, $a1, %pc_lo12(.L.str.56)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 184
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 188
.Ltmp491:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp492:                               # EH_LABEL
# %bb.180:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_182
# %bb.181:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_182:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_187
# %bb.183:
.Ltmp499:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp500:                               # EH_LABEL
# %bb.184:                              # %._crit_edge.i.i650
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$a2, $sp, 176
	st.d	$a1, $sp, 181
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 189
	st.d	$s6, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 144
	st.b	$a1, $sp, 146
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 147
.Ltmp501:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.185:
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_189
# %bb.186:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_189
.LBB7_187:
.Ltmp494:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp495:                               # EH_LABEL
# %bb.188:                              # %._crit_edge.i.i634
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$a2, $sp, 176
	st.d	$a1, $sp, 181
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 189
.Ltmp496:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp497:                               # EH_LABEL
.LBB7_189:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_191
# %bb.190:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_191:
.Ltmp504:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp505:                               # EH_LABEL
# %bb.192:                              # %._crit_edge.i.i670
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ld.w	$s0, $a1, 0
	ld.b	$s1, $a1, 4
	st.w	$s0, $sp, 176
	st.b	$s1, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
	st.d	$s6, $sp, 128
	st.d	$zero, $sp, 136
	st.b	$zero, $sp, 144
.Ltmp506:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp507:                               # EH_LABEL
# %bb.193:
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_195
# %bb.194:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_195:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_197
# %bb.196:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_197:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683
.Ltmp509:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp510:                               # EH_LABEL
# %bb.198:                              # %._crit_edge.i.i684
	st.d	$s4, $sp, 160
	st.w	$s0, $sp, 176
	st.b	$s1, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
.Ltmp511:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp512:                               # EH_LABEL
# %bb.199:                              # %._crit_edge.i.i688
	st.d	$s6, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$a2, $sp, 144
	st.d	$a1, $sp, 149
	fld.d	$fa0, $sp, 224
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 157
.Ltmp514:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp515:                               # EH_LABEL
# %bb.200:
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_202
# %bb.201:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_202:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_204
# %bb.203:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i695
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_204:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697
.Ltmp517:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp518:                               # EH_LABEL
# %bb.205:                              # %._crit_edge.i.i698
	st.d	$s4, $sp, 160
	st.w	$s0, $sp, 176
	st.b	$s1, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
.Ltmp519:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp520:                               # EH_LABEL
# %bb.206:                              # %._crit_edge.i.i702
	st.d	$s6, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$a2, $sp, 144
	st.d	$a1, $sp, 150
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 158
.Ltmp522:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp523:                               # EH_LABEL
# %bb.207:
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_209
# %bb.208:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i706
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_209:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_211
# %bb.210:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i709
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_211:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_217
# %bb.212:
.Ltmp533:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp534:                               # EH_LABEL
# %bb.213:                              # %._crit_edge.i.i750
	st.d	$s4, $sp, 160
	st.w	$s0, $sp, 176
	st.b	$s1, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
.Ltmp535:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp536:                               # EH_LABEL
# %bb.214:                              # %._crit_edge.i.i754
	st.d	$s6, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 7
	st.d	$a2, $sp, 144
	st.d	$a1, $sp, 151
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 159
	st.d	$s7, $sp, 96
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 112
	st.b	$a1, $sp, 114
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 104
	st.b	$zero, $sp, 115
.Ltmp538:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 96
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp539:                               # EH_LABEL
# %bb.215:
	ld.d	$a0, $sp, 96
	beq	$a0, $s7, .LBB7_220
# %bb.216:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i762
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_220
.LBB7_217:
.Ltmp525:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
# %bb.218:                              # %._crit_edge.i.i712
	st.d	$s4, $sp, 160
	st.w	$s0, $sp, 176
	st.b	$s1, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
.Ltmp527:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp528:                               # EH_LABEL
# %bb.219:                              # %._crit_edge.i.i716
	st.d	$s6, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 7
	st.d	$a2, $sp, 144
	st.d	$a1, $sp, 151
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 159
.Ltmp530:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp531:                               # EH_LABEL
.LBB7_220:
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_222
# %bb.221:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_222:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_224
# %bb.223:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_224:
.Ltmp541:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp542:                               # EH_LABEL
# %bb.225:                              # %.noexc.i781
	move	$fp, $a0
	st.d	$s4, $sp, 160
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp544:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp545:                               # EH_LABEL
# %bb.226:                              # %.noexc782
	ld.d	$a1, $sp, 128
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.62)
	addi.d	$a2, $a2, %pc_lo12(.L.str.62)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
	ld.w	$a0, $sp, 252
	fld.d	$fa0, $sp, 224
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.Ltmp547:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp548:                               # EH_LABEL
# %bb.227:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_229
# %bb.228:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_229:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_231
# %bb.230:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i787
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_231:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit789
	ld.d	$a0, $sp, 296
	beqz	$a0, .LBB7_233
# %bb.232:
	ld.d	$a1, $sp, 312
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_233:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB7_235
# %bb.234:
	ld.d	$a1, $sp, 344
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_235:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit791
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(_ZN6miniFE9CSRMatrixIdiiED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 600
	addi.d	$a0, $sp, 584
.Ltmp550:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp551:                               # EH_LABEL
# %bb.236:                              # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit.i
	ld.d	$a1, $sp, 552
.Ltmp553:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp554:                               # EH_LABEL
# %bb.237:                              # %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit.i
	ld.d	$a1, $sp, 504
.Ltmp556:                               # EH_LABEL
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp557:                               # EH_LABEL
# %bb.238:                              # %_ZN6miniFE23simple_mesh_descriptionIiED2Ev.exit
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 688                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 696                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 712                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 720                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 792                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 800                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 808                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 816
	ret
.LBB7_239:                              # %.invoke
.Ltmp559:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp560:                               # EH_LABEL
# %bb.240:                              # %.cont
.LBB7_241:                              # %.noexc.i
.Ltmp281:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp282:                               # EH_LABEL
# %bb.242:                              # %.noexc
.LBB7_243:
.Ltmp387:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
# %bb.244:                              # %.noexc823
.LBB7_245:
.Ltmp532:                               # EH_LABEL
	b	.LBB7_266
.LBB7_246:
.Ltmp540:                               # EH_LABEL
	b	.LBB7_289
.LBB7_247:
.Ltmp529:                               # EH_LABEL
	b	.LBB7_296
.LBB7_248:
.Ltmp537:                               # EH_LABEL
	b	.LBB7_296
.LBB7_249:
.Ltmp498:                               # EH_LABEL
	b	.LBB7_278
.LBB7_250:
.Ltmp503:                               # EH_LABEL
	b	.LBB7_266
.LBB7_251:
.Ltmp478:                               # EH_LABEL
	b	.LBB7_278
.LBB7_252:
.Ltmp483:                               # EH_LABEL
	b	.LBB7_266
.LBB7_253:
.Ltmp458:                               # EH_LABEL
	b	.LBB7_278
.LBB7_254:
.Ltmp463:                               # EH_LABEL
	b	.LBB7_266
.LBB7_255:
.Ltmp288:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_334
.LBB7_256:
.Ltmp558:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_257:
.Ltmp555:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_258:
.Ltmp552:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_259:
.Ltmp549:                               # EH_LABEL
	b	.LBB7_278
.LBB7_260:
.Ltmp546:                               # EH_LABEL
	b	.LBB7_328
.LBB7_261:
.Ltmp524:                               # EH_LABEL
	b	.LBB7_266
.LBB7_262:
.Ltmp521:                               # EH_LABEL
	b	.LBB7_296
.LBB7_263:
.Ltmp516:                               # EH_LABEL
	b	.LBB7_266
.LBB7_264:
.Ltmp513:                               # EH_LABEL
	b	.LBB7_296
.LBB7_265:
.Ltmp508:                               # EH_LABEL
.LBB7_266:
	ld.d	$a2, $sp, 128
	move	$fp, $a0
	beq	$a2, $s6, .LBB7_294
# %bb.267:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB7_293
.LBB7_268:
.Ltmp493:                               # EH_LABEL
	b	.LBB7_278
.LBB7_269:
.Ltmp488:                               # EH_LABEL
	b	.LBB7_278
.LBB7_270:
.Ltmp473:                               # EH_LABEL
	b	.LBB7_278
.LBB7_271:
.Ltmp468:                               # EH_LABEL
	b	.LBB7_278
.LBB7_272:
.Ltmp453:                               # EH_LABEL
	b	.LBB7_278
.LBB7_273:
.Ltmp448:                               # EH_LABEL
	b	.LBB7_278
.LBB7_274:
.Ltmp443:                               # EH_LABEL
	b	.LBB7_278
.LBB7_275:
.Ltmp440:                               # EH_LABEL
	b	.LBB7_328
.LBB7_276:
.Ltmp434:                               # EH_LABEL
	b	.LBB7_278
.LBB7_277:
.Ltmp429:                               # EH_LABEL
.LBB7_278:
	ld.d	$a2, $sp, 160
	move	$fp, $a0
	beq	$a2, $s4, .LBB7_329
# %bb.279:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i792
	ld.d	$a0, $sp, 176
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB7_298
.LBB7_280:
.Ltmp426:                               # EH_LABEL
	b	.LBB7_289
.LBB7_281:
.Ltmp423:                               # EH_LABEL
	b	.LBB7_296
.LBB7_282:
.Ltmp420:                               # EH_LABEL
	b	.LBB7_296
.LBB7_283:
.Ltmp417:                               # EH_LABEL
	b	.LBB7_328
.LBB7_284:
.Ltmp414:                               # EH_LABEL
	b	.LBB7_289
.LBB7_285:
.Ltmp411:                               # EH_LABEL
	b	.LBB7_296
.LBB7_286:
.Ltmp408:                               # EH_LABEL
	b	.LBB7_296
.LBB7_287:
.Ltmp405:                               # EH_LABEL
	b	.LBB7_328
.LBB7_288:
.Ltmp402:                               # EH_LABEL
.LBB7_289:
	ld.d	$a2, $sp, 96
	move	$fp, $a0
	beq	$a2, $s7, .LBB7_291
# %bb.290:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484
	ld.d	$a0, $sp, 112
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_291:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB7_294
# %bb.292:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
.LBB7_293:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_294:
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_329
	b	.LBB7_297
.LBB7_295:
.Ltmp399:                               # EH_LABEL
.LBB7_296:
	move	$fp, $a0
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_329
.LBB7_297:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
.LBB7_298:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_329
.LBB7_299:
.Ltmp396:                               # EH_LABEL
	b	.LBB7_328
.LBB7_300:
.Ltmp350:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_301:
.Ltmp347:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_302:
.Ltmp325:                               # EH_LABEL
	b	.LBB7_311
.LBB7_303:
.Ltmp322:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_313
.LBB7_304:
.Ltmp319:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_313
.LBB7_305:
.Ltmp316:                               # EH_LABEL
	b	.LBB7_311
.LBB7_306:
.Ltmp313:                               # EH_LABEL
	b	.LBB7_311
.LBB7_307:
.Ltmp310:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_313
.LBB7_308:
.Ltmp307:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_313
.LBB7_309:
.Ltmp304:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_310:
.Ltmp301:                               # EH_LABEL
.LBB7_311:
	ld.d	$a2, $sp, 256
	move	$fp, $a0
	beq	$a2, $s5, .LBB7_313
# %bb.312:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361
	ld.d	$a0, $sp, 272
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_313:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_332
# %bb.314:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
	ld.d	$a1, $sp, 208
	b	.LBB7_331
.LBB7_315:
.Ltmp298:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_316:
.Ltmp285:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_336
.LBB7_317:
.Ltmp273:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_337
.LBB7_318:
.Ltmp270:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_337
.LBB7_319:
.Ltmp389:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_320:
.Ltmp437:                               # EH_LABEL
	b	.LBB7_328
.LBB7_321:
.Ltmp344:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_322:
.Ltmp339:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_323:
.Ltmp332:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_324:
.Ltmp295:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_325:
.Ltmp280:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_336
.LBB7_326:
.Ltmp561:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_332
.LBB7_327:
.Ltmp543:                               # EH_LABEL
.LBB7_328:
	move	$fp, $a0
.LBB7_329:
	ld.d	$a0, $sp, 256
	addi.d	$a1, $sp, 272
	beq	$a0, $a1, .LBB7_332
# %bb.330:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i795
	ld.d	$a1, $sp, 272
.LBB7_331:
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_332:
	ld.d	$a0, $sp, 296
	beqz	$a0, .LBB7_334
# %bb.333:
	ld.d	$a1, $sp, 312
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_334:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit799
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB7_336
# %bb.335:
	ld.d	$a1, $sp, 344
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_336:
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(_ZN6miniFE9CSRMatrixIdiiED2Ev)
	jirl	$ra, $ra, 0
.LBB7_337:
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZN6miniFE23simple_mesh_descriptionIiED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc, .Lfunc_end7-_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,"aG",@progbits,_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp268-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp268
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin4         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin4         #     jumps to .Ltmp273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp274-.Ltmp272              #   Call between .Ltmp272 and .Ltmp274
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp279-.Ltmp274              #   Call between .Ltmp274 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin4         #     jumps to .Ltmp280
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin4         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp286-.Ltmp284              #   Call between .Ltmp284 and .Ltmp286
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin4         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp289-.Ltmp287              #   Call between .Ltmp287 and .Ltmp289
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp294-.Ltmp289              #   Call between .Ltmp289 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin4         #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin4         #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin4         #     jumps to .Ltmp301
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp302-.Ltmp300              #   Call between .Ltmp300 and .Ltmp302
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin4         #     jumps to .Ltmp304
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin4         #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin4         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin4         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp314-.Ltmp312              #   Call between .Ltmp312 and .Ltmp314
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin4         #     jumps to .Ltmp316
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp317-.Ltmp315              #   Call between .Ltmp315 and .Ltmp317
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin4         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp321-.Ltmp320              #   Call between .Ltmp320 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin4         #     jumps to .Ltmp322
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin4         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp326-.Ltmp324              #   Call between .Ltmp324 and .Ltmp326
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp331-.Ltmp326              #   Call between .Ltmp326 and .Ltmp331
	.uleb128 .Ltmp332-.Lfunc_begin4         #     jumps to .Ltmp332
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp333-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp338-.Ltmp333              #   Call between .Ltmp333 and .Ltmp338
	.uleb128 .Ltmp339-.Lfunc_begin4         #     jumps to .Ltmp339
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp343-.Ltmp340              #   Call between .Ltmp340 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin4         #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp347-.Lfunc_begin4         #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin4         #     jumps to .Ltmp350
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp374-.Ltmp351              #   Call between .Ltmp351 and .Ltmp374
	.uleb128 .Ltmp561-.Lfunc_begin4         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp375-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp386-.Ltmp375              #   Call between .Ltmp375 and .Ltmp386
	.uleb128 .Ltmp389-.Lfunc_begin4         #     jumps to .Ltmp389
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin4         #     jumps to .Ltmp396
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin4         #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp401-.Ltmp400              #   Call between .Ltmp400 and .Ltmp401
	.uleb128 .Ltmp402-.Lfunc_begin4         #     jumps to .Ltmp402
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp403-.Ltmp401              #   Call between .Ltmp401 and .Ltmp403
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp404-.Ltmp403              #   Call between .Ltmp403 and .Ltmp404
	.uleb128 .Ltmp405-.Lfunc_begin4         #     jumps to .Ltmp405
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp406-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp407-.Ltmp406              #   Call between .Ltmp406 and .Ltmp407
	.uleb128 .Ltmp408-.Lfunc_begin4         #     jumps to .Ltmp408
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp410-.Ltmp409              #   Call between .Ltmp409 and .Ltmp410
	.uleb128 .Ltmp411-.Lfunc_begin4         #     jumps to .Ltmp411
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp412-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp413-.Ltmp412              #   Call between .Ltmp412 and .Ltmp413
	.uleb128 .Ltmp414-.Lfunc_begin4         #     jumps to .Ltmp414
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp413-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp415-.Ltmp413              #   Call between .Ltmp413 and .Ltmp415
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp415-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp416-.Ltmp415              #   Call between .Ltmp415 and .Ltmp416
	.uleb128 .Ltmp417-.Lfunc_begin4         #     jumps to .Ltmp417
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp419-.Ltmp418              #   Call between .Ltmp418 and .Ltmp419
	.uleb128 .Ltmp420-.Lfunc_begin4         #     jumps to .Ltmp420
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp421-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp422-.Ltmp421              #   Call between .Ltmp421 and .Ltmp422
	.uleb128 .Ltmp423-.Lfunc_begin4         #     jumps to .Ltmp423
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Ltmp425-.Ltmp424              #   Call between .Ltmp424 and .Ltmp425
	.uleb128 .Ltmp426-.Lfunc_begin4         #     jumps to .Ltmp426
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin4         # >> Call Site 45 <<
	.uleb128 .Ltmp427-.Ltmp425              #   Call between .Ltmp425 and .Ltmp427
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin4         # >> Call Site 46 <<
	.uleb128 .Ltmp428-.Ltmp427              #   Call between .Ltmp427 and .Ltmp428
	.uleb128 .Ltmp429-.Lfunc_begin4         #     jumps to .Ltmp429
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin4         # >> Call Site 47 <<
	.uleb128 .Ltmp430-.Ltmp428              #   Call between .Ltmp428 and .Ltmp430
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp430-.Lfunc_begin4         # >> Call Site 48 <<
	.uleb128 .Ltmp431-.Ltmp430              #   Call between .Ltmp430 and .Ltmp431
	.uleb128 .Ltmp437-.Lfunc_begin4         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin4         # >> Call Site 49 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp434-.Lfunc_begin4         #     jumps to .Ltmp434
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin4         # >> Call Site 50 <<
	.uleb128 .Ltmp435-.Ltmp433              #   Call between .Ltmp433 and .Ltmp435
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin4         # >> Call Site 51 <<
	.uleb128 .Ltmp436-.Ltmp435              #   Call between .Ltmp435 and .Ltmp436
	.uleb128 .Ltmp437-.Lfunc_begin4         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin4         # >> Call Site 52 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp440-.Lfunc_begin4         #     jumps to .Ltmp440
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp441-.Lfunc_begin4         # >> Call Site 53 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.uleb128 .Ltmp443-.Lfunc_begin4         #     jumps to .Ltmp443
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp442-.Lfunc_begin4         # >> Call Site 54 <<
	.uleb128 .Ltmp444-.Ltmp442              #   Call between .Ltmp442 and .Ltmp444
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin4         # >> Call Site 55 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin4         # >> Call Site 56 <<
	.uleb128 .Ltmp447-.Ltmp446              #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin4         #     jumps to .Ltmp448
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin4         # >> Call Site 57 <<
	.uleb128 .Ltmp449-.Ltmp447              #   Call between .Ltmp447 and .Ltmp449
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin4         # >> Call Site 58 <<
	.uleb128 .Ltmp450-.Ltmp449              #   Call between .Ltmp449 and .Ltmp450
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp451-.Lfunc_begin4         # >> Call Site 59 <<
	.uleb128 .Ltmp452-.Ltmp451              #   Call between .Ltmp451 and .Ltmp452
	.uleb128 .Ltmp453-.Lfunc_begin4         #     jumps to .Ltmp453
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp452-.Lfunc_begin4         # >> Call Site 60 <<
	.uleb128 .Ltmp459-.Ltmp452              #   Call between .Ltmp452 and .Ltmp459
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin4         # >> Call Site 61 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin4         # >> Call Site 62 <<
	.uleb128 .Ltmp462-.Ltmp461              #   Call between .Ltmp461 and .Ltmp462
	.uleb128 .Ltmp463-.Lfunc_begin4         #     jumps to .Ltmp463
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin4         # >> Call Site 63 <<
	.uleb128 .Ltmp454-.Ltmp462              #   Call between .Ltmp462 and .Ltmp454
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp454-.Lfunc_begin4         # >> Call Site 64 <<
	.uleb128 .Ltmp455-.Ltmp454              #   Call between .Ltmp454 and .Ltmp455
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin4         # >> Call Site 65 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin4         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp457-.Lfunc_begin4         # >> Call Site 66 <<
	.uleb128 .Ltmp464-.Ltmp457              #   Call between .Ltmp457 and .Ltmp464
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp464-.Lfunc_begin4         # >> Call Site 67 <<
	.uleb128 .Ltmp465-.Ltmp464              #   Call between .Ltmp464 and .Ltmp465
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp466-.Lfunc_begin4         # >> Call Site 68 <<
	.uleb128 .Ltmp467-.Ltmp466              #   Call between .Ltmp466 and .Ltmp467
	.uleb128 .Ltmp468-.Lfunc_begin4         #     jumps to .Ltmp468
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin4         # >> Call Site 69 <<
	.uleb128 .Ltmp469-.Ltmp467              #   Call between .Ltmp467 and .Ltmp469
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp469-.Lfunc_begin4         # >> Call Site 70 <<
	.uleb128 .Ltmp470-.Ltmp469              #   Call between .Ltmp469 and .Ltmp470
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin4         # >> Call Site 71 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp473-.Lfunc_begin4         #     jumps to .Ltmp473
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp472-.Lfunc_begin4         # >> Call Site 72 <<
	.uleb128 .Ltmp479-.Ltmp472              #   Call between .Ltmp472 and .Ltmp479
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp479-.Lfunc_begin4         # >> Call Site 73 <<
	.uleb128 .Ltmp480-.Ltmp479              #   Call between .Ltmp479 and .Ltmp480
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp481-.Lfunc_begin4         # >> Call Site 74 <<
	.uleb128 .Ltmp482-.Ltmp481              #   Call between .Ltmp481 and .Ltmp482
	.uleb128 .Ltmp483-.Lfunc_begin4         #     jumps to .Ltmp483
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp482-.Lfunc_begin4         # >> Call Site 75 <<
	.uleb128 .Ltmp474-.Ltmp482              #   Call between .Ltmp482 and .Ltmp474
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin4         # >> Call Site 76 <<
	.uleb128 .Ltmp475-.Ltmp474              #   Call between .Ltmp474 and .Ltmp475
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin4         # >> Call Site 77 <<
	.uleb128 .Ltmp477-.Ltmp476              #   Call between .Ltmp476 and .Ltmp477
	.uleb128 .Ltmp478-.Lfunc_begin4         #     jumps to .Ltmp478
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin4         # >> Call Site 78 <<
	.uleb128 .Ltmp484-.Ltmp477              #   Call between .Ltmp477 and .Ltmp484
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp484-.Lfunc_begin4         # >> Call Site 79 <<
	.uleb128 .Ltmp485-.Ltmp484              #   Call between .Ltmp484 and .Ltmp485
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin4         # >> Call Site 80 <<
	.uleb128 .Ltmp487-.Ltmp486              #   Call between .Ltmp486 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin4         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp487-.Lfunc_begin4         # >> Call Site 81 <<
	.uleb128 .Ltmp489-.Ltmp487              #   Call between .Ltmp487 and .Ltmp489
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin4         # >> Call Site 82 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp491-.Lfunc_begin4         # >> Call Site 83 <<
	.uleb128 .Ltmp492-.Ltmp491              #   Call between .Ltmp491 and .Ltmp492
	.uleb128 .Ltmp493-.Lfunc_begin4         #     jumps to .Ltmp493
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin4         # >> Call Site 84 <<
	.uleb128 .Ltmp499-.Ltmp492              #   Call between .Ltmp492 and .Ltmp499
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp499-.Lfunc_begin4         # >> Call Site 85 <<
	.uleb128 .Ltmp500-.Ltmp499              #   Call between .Ltmp499 and .Ltmp500
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin4         # >> Call Site 86 <<
	.uleb128 .Ltmp502-.Ltmp501              #   Call between .Ltmp501 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin4         #     jumps to .Ltmp503
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp502-.Lfunc_begin4         # >> Call Site 87 <<
	.uleb128 .Ltmp494-.Ltmp502              #   Call between .Ltmp502 and .Ltmp494
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp494-.Lfunc_begin4         # >> Call Site 88 <<
	.uleb128 .Ltmp495-.Ltmp494              #   Call between .Ltmp494 and .Ltmp495
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin4         # >> Call Site 89 <<
	.uleb128 .Ltmp497-.Ltmp496              #   Call between .Ltmp496 and .Ltmp497
	.uleb128 .Ltmp498-.Lfunc_begin4         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp497-.Lfunc_begin4         # >> Call Site 90 <<
	.uleb128 .Ltmp504-.Ltmp497              #   Call between .Ltmp497 and .Ltmp504
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin4         # >> Call Site 91 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp506-.Lfunc_begin4         # >> Call Site 92 <<
	.uleb128 .Ltmp507-.Ltmp506              #   Call between .Ltmp506 and .Ltmp507
	.uleb128 .Ltmp508-.Lfunc_begin4         #     jumps to .Ltmp508
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin4         # >> Call Site 93 <<
	.uleb128 .Ltmp509-.Ltmp507              #   Call between .Ltmp507 and .Ltmp509
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp509-.Lfunc_begin4         # >> Call Site 94 <<
	.uleb128 .Ltmp510-.Ltmp509              #   Call between .Ltmp509 and .Ltmp510
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp511-.Lfunc_begin4         # >> Call Site 95 <<
	.uleb128 .Ltmp512-.Ltmp511              #   Call between .Ltmp511 and .Ltmp512
	.uleb128 .Ltmp513-.Lfunc_begin4         #     jumps to .Ltmp513
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp514-.Lfunc_begin4         # >> Call Site 96 <<
	.uleb128 .Ltmp515-.Ltmp514              #   Call between .Ltmp514 and .Ltmp515
	.uleb128 .Ltmp516-.Lfunc_begin4         #     jumps to .Ltmp516
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp515-.Lfunc_begin4         # >> Call Site 97 <<
	.uleb128 .Ltmp517-.Ltmp515              #   Call between .Ltmp515 and .Ltmp517
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp517-.Lfunc_begin4         # >> Call Site 98 <<
	.uleb128 .Ltmp518-.Ltmp517              #   Call between .Ltmp517 and .Ltmp518
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin4         # >> Call Site 99 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp521-.Lfunc_begin4         #     jumps to .Ltmp521
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp522-.Lfunc_begin4         # >> Call Site 100 <<
	.uleb128 .Ltmp523-.Ltmp522              #   Call between .Ltmp522 and .Ltmp523
	.uleb128 .Ltmp524-.Lfunc_begin4         #     jumps to .Ltmp524
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp523-.Lfunc_begin4         # >> Call Site 101 <<
	.uleb128 .Ltmp533-.Ltmp523              #   Call between .Ltmp523 and .Ltmp533
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin4         # >> Call Site 102 <<
	.uleb128 .Ltmp534-.Ltmp533              #   Call between .Ltmp533 and .Ltmp534
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp535-.Lfunc_begin4         # >> Call Site 103 <<
	.uleb128 .Ltmp536-.Ltmp535              #   Call between .Ltmp535 and .Ltmp536
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp538-.Lfunc_begin4         # >> Call Site 104 <<
	.uleb128 .Ltmp539-.Ltmp538              #   Call between .Ltmp538 and .Ltmp539
	.uleb128 .Ltmp540-.Lfunc_begin4         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp539-.Lfunc_begin4         # >> Call Site 105 <<
	.uleb128 .Ltmp525-.Ltmp539              #   Call between .Ltmp539 and .Ltmp525
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin4         # >> Call Site 106 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin4         # >> Call Site 107 <<
	.uleb128 .Ltmp528-.Ltmp527              #   Call between .Ltmp527 and .Ltmp528
	.uleb128 .Ltmp529-.Lfunc_begin4         #     jumps to .Ltmp529
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp530-.Lfunc_begin4         # >> Call Site 108 <<
	.uleb128 .Ltmp531-.Ltmp530              #   Call between .Ltmp530 and .Ltmp531
	.uleb128 .Ltmp532-.Lfunc_begin4         #     jumps to .Ltmp532
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin4         # >> Call Site 109 <<
	.uleb128 .Ltmp541-.Ltmp531              #   Call between .Ltmp531 and .Ltmp541
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin4         # >> Call Site 110 <<
	.uleb128 .Ltmp542-.Ltmp541              #   Call between .Ltmp541 and .Ltmp542
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp544-.Lfunc_begin4         # >> Call Site 111 <<
	.uleb128 .Ltmp545-.Ltmp544              #   Call between .Ltmp544 and .Ltmp545
	.uleb128 .Ltmp546-.Lfunc_begin4         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin4         # >> Call Site 112 <<
	.uleb128 .Ltmp548-.Ltmp547              #   Call between .Ltmp547 and .Ltmp548
	.uleb128 .Ltmp549-.Lfunc_begin4         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp548-.Lfunc_begin4         # >> Call Site 113 <<
	.uleb128 .Ltmp550-.Ltmp548              #   Call between .Ltmp548 and .Ltmp550
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp550-.Lfunc_begin4         # >> Call Site 114 <<
	.uleb128 .Ltmp551-.Ltmp550              #   Call between .Ltmp550 and .Ltmp551
	.uleb128 .Ltmp552-.Lfunc_begin4         #     jumps to .Ltmp552
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp553-.Lfunc_begin4         # >> Call Site 115 <<
	.uleb128 .Ltmp554-.Ltmp553              #   Call between .Ltmp553 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin4         #     jumps to .Ltmp555
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp556-.Lfunc_begin4         # >> Call Site 116 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin4         #     jumps to .Ltmp558
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp559-.Lfunc_begin4         # >> Call Site 117 <<
	.uleb128 .Ltmp560-.Ltmp559              #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp561-.Lfunc_begin4         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin4         # >> Call Site 118 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp285-.Lfunc_begin4         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin4         # >> Call Site 119 <<
	.uleb128 .Ltmp388-.Ltmp387              #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp389-.Lfunc_begin4         #     jumps to .Ltmp389
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin4         # >> Call Site 120 <<
	.uleb128 .Lfunc_end7-.Ltmp388           #   Call between .Ltmp388 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
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
.Lfunc_end8:
	.size	__clang_call_terminate, .Lfunc_end8-__clang_call_terminate
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
.LCPI9_0:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI9_1:
	.word	0x42c80000                      # float 100
	.section	.text._ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,"axG",@progbits,_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,comdat
	.weak	_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
	.p2align	5
	.type	_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,@function
_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb: # @_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %_ZN6miniFE18get_global_min_maxIiEEvT_RS1_S2_RiS2_S3_.exit
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
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
	ld.w	$a0, $a1, 4
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a1, 12
	ld.w	$t0, $a1, 8
	ld.w	$t1, $a1, 20
	ld.w	$a1, $a1, 16
	sub.d	$a0, $a0, $a6
	sub.d	$a6, $a7, $t0
	sub.w	$a1, $t1, $a1
	mulw.d.w	$a0, $a6, $a0
	mul.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI9_0)
	ffint.s.w	$fa0, $fa0
	fabs.s	$fa2, $fa0
	fcvt.d.s	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fa1
	move	$s0, $a4
	move	$fp, $a3
	move	$s1, $a2
	bcnez	$fcc0, .LBB9_3
# %bb.1:                                # %_ZN6miniFE21percentage_differenceIfEET_S1_S1_.exit47
	alsl.w	$a1, $a0, $a0, 2
	addi.w	$a0, $a0, 0
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI9_1)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI9_1)
	fsub.s	$fa1, $fa1, $fa0
	fabs.s	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fmul.s	$fa1, $fa1, $fa2
	movgr2fr.w	$fa3, $a0
	ffint.s.w	$fa3, $fa3
	fsub.s	$fa3, $fa3, $fa0
	fabs.s	$fa3, $fa3
	fdiv.s	$fa0, $fa3, $fa0
	fmul.s	$fa0, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_4
# %bb.2:                                # %.sink.split
	fmov.s	$fa1, $fa0
	b	.LBB9_4
.LBB9_3:
	vldi	$vr1, -1040
.LBB9_4:
	fst.s	$fa1, $s1, 0
	st.w	$zero, $fp, 0
	beqz	$a5, .LBB9_26
# %bb.5:                                # %.noexc.i
	addi.d	$s3, $sp, 56
	st.d	$s3, $sp, 40
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 8
.Ltmp562:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp563:                               # EH_LABEL
# %bb.6:                                # %.noexc
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.63)
	addi.d	$s6, $a2, %pc_lo12(.L.str.63)
	vld	$vr0, $s6, 0
	ld.w	$s5, $s6, 24
	ld.d	$s7, $s6, 16
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 24
	st.d	$s7, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	addi.d	$s4, $sp, 24
	st.d	$s4, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
.Ltmp565:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp566:                               # EH_LABEL
# %bb.7:
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB9_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
	st.d	$s3, $sp, 40
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 8
.Ltmp568:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp569:                               # EH_LABEL
# %bb.12:                               # %.noexc57
	ld.d	$a1, $sp, 8
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 24
	st.d	$s7, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
.Ltmp571:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
# %bb.13:                               # %.noexc.i60
	move	$s2, $a0
	st.d	$s4, $sp, 8
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 72
.Ltmp574:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 72
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp575:                               # EH_LABEL
# %bb.14:                               # %.noexc61
	ld.d	$a1, $sp, 72
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.64)
	addi.d	$a2, $a2, %pc_lo12(.L.str.64)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	fld.s	$fa0, $s1, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp577:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp578:                               # EH_LABEL
# %bb.15:
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB9_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
	st.d	$s3, $sp, 40
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 8
.Ltmp580:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp581:                               # EH_LABEL
# %bb.20:                               # %.noexc71
	ld.d	$a1, $sp, 8
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 24
	st.d	$s7, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
.Ltmp583:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp584:                               # EH_LABEL
# %bb.21:                               # %._crit_edge.i.i73
	st.d	$s4, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$a2, $sp, 24
	st.w	$a1, $sp, 31
	fld.s	$fa0, $fp, 0
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 16
	st.b	$zero, $sp, 35
	fcvt.d.s	$fa0, $fa0
.Ltmp586:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp587:                               # EH_LABEL
# %bb.22:
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB9_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_26:
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
.LBB9_27:
.Ltmp588:                               # EH_LABEL
	b	.LBB9_37
.LBB9_28:
.Ltmp585:                               # EH_LABEL
	b	.LBB9_33
.LBB9_29:
.Ltmp582:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_30:
.Ltmp579:                               # EH_LABEL
	b	.LBB9_37
.LBB9_31:
.Ltmp576:                               # EH_LABEL
	b	.LBB9_33
.LBB9_32:
.Ltmp573:                               # EH_LABEL
.LBB9_33:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_39
.LBB9_34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_35:
.Ltmp570:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_36:
.Ltmp567:                               # EH_LABEL
.LBB9_37:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	bne	$a2, $s4, .LBB9_40
# %bb.38:
	ld.d	$a0, $sp, 40
	bne	$a0, $s3, .LBB9_34
.LBB9_39:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_39
	b	.LBB9_34
.LBB9_41:
.Ltmp564:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb, .Lfunc_end9-_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,"aG",@progbits,_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp562-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp563-.Ltmp562              #   Call between .Ltmp562 and .Ltmp563
	.uleb128 .Ltmp564-.Lfunc_begin5         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp565-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp566-.Ltmp565              #   Call between .Ltmp565 and .Ltmp566
	.uleb128 .Ltmp567-.Lfunc_begin5         #     jumps to .Ltmp567
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp568-.Ltmp566              #   Call between .Ltmp566 and .Ltmp568
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp569-.Ltmp568              #   Call between .Ltmp568 and .Ltmp569
	.uleb128 .Ltmp570-.Lfunc_begin5         #     jumps to .Ltmp570
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp571-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp572-.Ltmp571              #   Call between .Ltmp571 and .Ltmp572
	.uleb128 .Ltmp573-.Lfunc_begin5         #     jumps to .Ltmp573
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp575-.Ltmp574              #   Call between .Ltmp574 and .Ltmp575
	.uleb128 .Ltmp576-.Lfunc_begin5         #     jumps to .Ltmp576
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp578-.Ltmp577              #   Call between .Ltmp577 and .Ltmp578
	.uleb128 .Ltmp579-.Lfunc_begin5         #     jumps to .Ltmp579
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp578-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp580-.Ltmp578              #   Call between .Ltmp578 and .Ltmp580
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp581-.Ltmp580              #   Call between .Ltmp580 and .Ltmp581
	.uleb128 .Ltmp582-.Lfunc_begin5         #     jumps to .Ltmp582
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp583-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp584-.Ltmp583              #   Call between .Ltmp583 and .Ltmp584
	.uleb128 .Ltmp585-.Lfunc_begin5         #     jumps to .Ltmp585
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp587-.Ltmp586              #   Call between .Ltmp586 and .Ltmp587
	.uleb128 .Ltmp588-.Lfunc_begin5         #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp587-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Lfunc_end9-.Ltmp587           #   Call between .Ltmp587 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,"axG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,comdat
	.weak	_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_ # -- Begin function _ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_
	.p2align	5
	.type	_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,@function
_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_: # @_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
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
	ld.w	$a3, $a1, 0
	move	$fp, $a0
	st.w	$a3, $a0, 144
	ld.w	$a6, $a1, 4
	st.w	$a6, $a0, 148
	ld.w	$a0, $a2, 0
	addi.d	$s0, $fp, 8
	st.w	$zero, $fp, 8
	st.w	$a0, $fp, 168
	ld.w	$a0, $a2, 4
	st.d	$zero, $fp, 16
	st.d	$s0, $fp, 24
	st.d	$s0, $fp, 32
	st.w	$a0, $fp, 172
	ld.w	$a3, $a1, 8
	st.d	$zero, $fp, 40
	addi.d	$a4, $fp, 104
	ld.w	$a5, $a2, 0
	st.w	$a3, $fp, 152
	ld.w	$a7, $a1, 12
	st.d	$a4, $fp, 120
	st.d	$a4, $fp, 128
	st.w	$a5, $sp, 176
	st.w	$a7, $fp, 156
	ld.w	$a3, $a2, 8
	slt	$a4, $a5, $a0
	xor	$a5, $a0, $a6
	sltui	$a5, $a5, 1
	st.w	$a3, $fp, 176
	ld.w	$a3, $a2, 12
	and	$a4, $a4, $a5
	addi.d	$t0, $fp, 56
	add.d	$a0, $a0, $a4
	st.w	$a3, $fp, 180
	ld.w	$a4, $a2, 8
	st.w	$a0, $sp, 180
	ld.w	$a0, $a1, 16
	st.w	$zero, $fp, 56
	st.w	$a4, $sp, 184
	slt	$a4, $a4, $a3
	st.w	$a0, $fp, 160
	ld.w	$a5, $a1, 20
	xor	$a0, $a3, $a7
	sltui	$a0, $a0, 1
	and	$a0, $a4, $a0
	st.w	$a5, $fp, 164
	ld.w	$a1, $a2, 16
	st.d	$zero, $fp, 64
	st.d	$t0, $fp, 72
	st.d	$t0, $sp, 136                   # 8-byte Folded Spill
	st.d	$t0, $fp, 80
	st.w	$a1, $fp, 184
	ld.w	$a1, $a2, 20
	st.d	$zero, $fp, 88
	st.w	$zero, $fp, 104
	st.d	$zero, $fp, 112
	st.w	$a1, $fp, 188
	ld.w	$a2, $a2, 16
	st.d	$zero, $fp, 136
	add.d	$a0, $a3, $a0
	st.w	$a0, $sp, 188
	st.w	$a2, $sp, 192
	slt	$a0, $a2, $a1
	xor	$a2, $a1, $a5
	sltui	$a2, $a2, 1
	and	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 196
	addi.d	$a4, $fp, 96
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	addi.w	$a0, $a6, 1
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	addi.w	$a1, $a7, 1
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a2, $a5, 1
.Ltmp589:                               # EH_LABEL
	addi.d	$a3, $sp, 176
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE)
	jirl	$ra, $ra, 0
.Ltmp590:                               # EH_LABEL
# %bb.1:
	ld.w	$a0, $fp, 144
	ld.w	$a1, $fp, 168
	bne	$a0, $a1, .LBB10_20
# %bb.2:
	ld.w	$a0, $sp, 192
	ld.w	$a1, $sp, 196
	slt	$a2, $zero, $a0
	sub.w	$s1, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$s1, $a0, .LBB10_20
# %bb.3:
	ld.w	$a0, $sp, 184
	ld.w	$a1, $sp, 188
	slt	$a2, $zero, $a0
	sub.w	$a0, $a0, $a2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $s8, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s2, $zero, 24
	ori	$s4, $zero, 16
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_4:                               # %._crit_edge
                                        #   in Loop: Header=BB10_5 Depth=1
	addi.w	$s1, $s1, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$s1, $a0, .LBB10_20
.LBB10_5:                               # %.preheader483
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_11 Depth 2
                                        #       Child Loop BB10_13 Depth 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB10_4
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $s1
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	and	$a1, $a1, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $s1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	masknez	$a0, $s8, $a1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_11
	.p2align	4, , 16
.LBB10_7:                               #   in Loop: Header=BB10_11 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s6, $s3, $a0
.LBB10_8:                               # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i
                                        #   in Loop: Header=BB10_11 Depth=2
.Ltmp594:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp595:                               # EH_LABEL
# %bb.9:                                # %.noexc
                                        #   in Loop: Header=BB10_11 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s6
	move	$a2, $s5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
.LBB10_10:                              #   in Loop: Header=BB10_11 Depth=2
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB10_4
.LBB10_11:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_13 Depth 3
	or	$a0, $s7, $s1
	slt	$a0, $s8, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slt	$a1, $a1, $s7
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $s7, $a2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	or	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s8, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s8, $a0
	or	$a0, $a1, $a0
.Ltmp592:                               # EH_LABEL
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp593:                               # EH_LABEL
# %bb.12:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit
                                        #   in Loop: Header=BB10_11 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s5, $s0
	beqz	$a1, .LBB10_15
	.p2align	4, , 16
.LBB10_13:                              # %.lr.ph.i.i
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_13
# %bb.14:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB10_11 Depth=2
	bge	$s3, $a0, .LBB10_17
.LBB10_15:                              # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB10_11 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_18
# %bb.16:                               #   in Loop: Header=BB10_11 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_17:                              #   in Loop: Header=BB10_11 Depth=2
	bge	$a0, $s3, .LBB10_10
.LBB10_18:                              # %select.unfold.i
                                        #   in Loop: Header=BB10_11 Depth=2
	bne	$s5, $s0, .LBB10_7
# %bb.19:                               #   in Loop: Header=BB10_11 Depth=2
	ori	$s6, $zero, 1
	b	.LBB10_8
.LBB10_20:                              # %.loopexit484
	ld.w	$a0, $fp, 152
	ld.w	$a1, $fp, 176
	bne	$a0, $a1, .LBB10_55
# %bb.21:
	ld.w	$a0, $sp, 192
	ld.w	$a1, $sp, 196
	slt	$a2, $zero, $a0
	sub.w	$s5, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bge	$s5, $a0, .LBB10_55
# %bb.22:                               # %.preheader480.lr.ph
	ld.w	$a0, $sp, 176
	ld.w	$a1, $sp, 180
	slt	$a2, $zero, $a0
	sub.w	$a0, $a0, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s4, $zero, -1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slt	$a0, $s4, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s2, $zero, 24
	ori	$s1, $zero, 16
	b	.LBB10_24
	.p2align	4, , 16
.LBB10_23:                              # %._crit_edge501
                                        #   in Loop: Header=BB10_24 Depth=1
	addi.w	$s5, $s5, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bge	$s5, $a0, .LBB10_55
.LBB10_24:                              # %.preheader480
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_27 Depth 2
                                        #       Child Loop BB10_45 Depth 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB10_23
# %bb.25:                               # %.lr.ph500
                                        #   in Loop: Header=BB10_24 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $s5
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $s5
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	masknez	$a0, $s4, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	b	.LBB10_27
	.p2align	4, , 16
.LBB10_26:                              #   in Loop: Header=BB10_27 Depth=2
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB10_23
.LBB10_27:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit241
                                        #   Parent Loop BB10_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_45 Depth 3
	or	$a0, $s7, $s5
	slt	$a0, $s4, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a1, $s7
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.w	$a2, $s7, $a2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	or	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s4, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$s3, $a1, $a0
.Ltmp597:                               # EH_LABEL
	move	$a0, $s3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp598:                               # EH_LABEL
# %bb.28:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit242
                                        #   in Loop: Header=BB10_27 Depth=2
	move	$s8, $a0
	bgez	$a0, .LBB10_44
# %bb.29:                               #   in Loop: Header=BB10_27 Depth=2
.Ltmp599:                               # EH_LABEL
	ori	$a2, $zero, 21
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp600:                               # EH_LABEL
# %bb.30:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
                                        #   in Loop: Header=BB10_27 Depth=2
.Ltmp601:                               # EH_LABEL
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp602:                               # EH_LABEL
# %bb.31:                               #   in Loop: Header=BB10_27 Depth=2
.Ltmp603:                               # EH_LABEL
	move	$s6, $a0
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
# %bb.32:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
                                        #   in Loop: Header=BB10_27 Depth=2
.Ltmp605:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp606:                               # EH_LABEL
# %bb.33:                               #   in Loop: Header=BB10_27 Depth=2
.Ltmp607:                               # EH_LABEL
	move	$s6, $a0
	ori	$a2, $zero, 30
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp608:                               # EH_LABEL
# %bb.34:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244
                                        #   in Loop: Header=BB10_27 Depth=2
.Ltmp609:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp610:                               # EH_LABEL
# %bb.35:                               #   in Loop: Header=BB10_27 Depth=2
.Ltmp611:                               # EH_LABEL
	move	$s6, $a0
	ori	$a2, $zero, 13
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp612:                               # EH_LABEL
# %bb.36:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245
                                        #   in Loop: Header=BB10_27 Depth=2
.Ltmp613:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp614:                               # EH_LABEL
# %bb.37:                               #   in Loop: Header=BB10_27 Depth=2
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB10_132
# %bb.38:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB10_27 Depth=2
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB10_40
# %bb.39:                               #   in Loop: Header=BB10_27 Depth=2
	ld.bu	$a0, $s6, 67
	b	.LBB10_42
.LBB10_40:                              #   in Loop: Header=BB10_27 Depth=2
.Ltmp615:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.41:                               # %.noexc311
                                        #   in Loop: Header=BB10_27 Depth=2
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp617:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp618:                               # EH_LABEL
.LBB10_42:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB10_27 Depth=2
.Ltmp619:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp620:                               # EH_LABEL
# %bb.43:                               # %.noexc313
                                        #   in Loop: Header=BB10_27 Depth=2
.Ltmp621:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp622:                               # EH_LABEL
.LBB10_44:                              # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB10_27 Depth=2
	ld.d	$a1, $fp, 16
	move	$s3, $s0
	beqz	$a1, .LBB10_47
	.p2align	4, , 16
.LBB10_45:                              # %.lr.ph.i.i317
                                        #   Parent Loop BB10_24 Depth=1
                                        #     Parent Loop BB10_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s8, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s3, $a1
	bnez	$a1, .LBB10_45
# %bb.46:                               # %._crit_edge.i.i323
                                        #   in Loop: Header=BB10_27 Depth=2
	bge	$s8, $a0, .LBB10_49
.LBB10_47:                              # %._crit_edge.thread.i.i334
                                        #   in Loop: Header=BB10_27 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s3, $a0, .LBB10_50
# %bb.48:                               #   in Loop: Header=BB10_27 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_49:                              #   in Loop: Header=BB10_27 Depth=2
	bge	$a0, $s8, .LBB10_26
.LBB10_50:                              # %select.unfold.i331
                                        #   in Loop: Header=BB10_27 Depth=2
	beq	$s3, $s0, .LBB10_52
# %bb.51:                               #   in Loop: Header=BB10_27 Depth=2
	ld.w	$a0, $s3, 32
	slt	$s6, $s8, $a0
	b	.LBB10_53
	.p2align	4, , 16
.LBB10_52:                              #   in Loop: Header=BB10_27 Depth=2
	ori	$s6, $zero, 1
.LBB10_53:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i
                                        #   in Loop: Header=BB10_27 Depth=2
.Ltmp623:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp624:                               # EH_LABEL
# %bb.54:                               # %.noexc339
                                        #   in Loop: Header=BB10_27 Depth=2
	st.w	$s8, $a1, 32
	move	$a0, $s6
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_26
.LBB10_55:                              # %.loopexit482
	ld.w	$a0, $fp, 160
	ld.w	$a1, $fp, 184
	bne	$a0, $a1, .LBB10_74
# %bb.56:
	ld.w	$a0, $sp, 184
	ld.w	$a1, $sp, 188
	slt	$a2, $zero, $a0
	sub.w	$s1, $a0, $a2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$s1, $a0, .LBB10_74
# %bb.57:                               # %.preheader478.lr.ph
	ld.w	$a0, $sp, 176
	ld.w	$a1, $sp, 180
	slt	$a2, $zero, $a0
	sub.w	$a0, $a0, $a2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $s8, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s2, $zero, 24
	ori	$s4, $zero, 16
	b	.LBB10_59
	.p2align	4, , 16
.LBB10_58:                              # %._crit_edge507
                                        #   in Loop: Header=BB10_59 Depth=1
	addi.w	$s1, $s1, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$s1, $a0, .LBB10_74
.LBB10_59:                              # %.preheader478
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_62 Depth 2
                                        #       Child Loop BB10_64 Depth 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB10_58
# %bb.60:                               # %.lr.ph506
                                        #   in Loop: Header=BB10_59 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slt	$a0, $a0, $s1
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	and	$a1, $a0, $a1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a0, $s1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	masknez	$a0, $s8, $a1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_62
	.p2align	4, , 16
.LBB10_61:                              #   in Loop: Header=BB10_62 Depth=2
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB10_58
.LBB10_62:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit258
                                        #   Parent Loop BB10_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_64 Depth 3
	or	$a0, $s7, $s1
	slt	$a0, $s8, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a1, $s7
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $s7, $a2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	or	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s8, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s8, $a0
	or	$a0, $a1, $a0
.Ltmp626:                               # EH_LABEL
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp627:                               # EH_LABEL
# %bb.63:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit259
                                        #   in Loop: Header=BB10_62 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s5, $s0
	beqz	$a1, .LBB10_66
	.p2align	4, , 16
.LBB10_64:                              # %.lr.ph.i.i342
                                        #   Parent Loop BB10_59 Depth=1
                                        #     Parent Loop BB10_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_64
# %bb.65:                               # %._crit_edge.i.i348
                                        #   in Loop: Header=BB10_62 Depth=2
	bge	$s3, $a0, .LBB10_68
.LBB10_66:                              # %._crit_edge.thread.i.i360
                                        #   in Loop: Header=BB10_62 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_69
# %bb.67:                               #   in Loop: Header=BB10_62 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_68:                              #   in Loop: Header=BB10_62 Depth=2
	bge	$a0, $s3, .LBB10_61
.LBB10_69:                              # %select.unfold.i356
                                        #   in Loop: Header=BB10_62 Depth=2
	beq	$s5, $s0, .LBB10_71
# %bb.70:                               #   in Loop: Header=BB10_62 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s6, $s3, $a0
	b	.LBB10_72
	.p2align	4, , 16
.LBB10_71:                              #   in Loop: Header=BB10_62 Depth=2
	ori	$s6, $zero, 1
.LBB10_72:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i359
                                        #   in Loop: Header=BB10_62 Depth=2
.Ltmp628:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp629:                               # EH_LABEL
# %bb.73:                               # %.noexc365
                                        #   in Loop: Header=BB10_62 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s6
	move	$a2, $s5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_61
.LBB10_74:                              # %.loopexit479
	ld.w	$a0, $fp, 148
	ld.w	$a1, $fp, 172
	bne	$a0, $a1, .LBB10_93
# %bb.75:
	ld.w	$a0, $sp, 184
	ld.w	$a1, $sp, 188
	slt	$a2, $zero, $a0
	sub.w	$s1, $a0, $a2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$s1, $a0, .LBB10_93
# %bb.76:                               # %.preheader476.lr.ph
	ld.w	$a0, $sp, 192
	ld.w	$a1, $sp, 196
	slt	$a2, $zero, $a0
	sub.w	$a0, $a0, $a2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
	ori	$s2, $zero, 24
	ori	$s4, $zero, 16
	b	.LBB10_78
	.p2align	4, , 16
.LBB10_77:                              # %._crit_edge512
                                        #   in Loop: Header=BB10_78 Depth=1
	addi.w	$s1, $s1, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$s1, $a0, .LBB10_93
.LBB10_78:                              # %.preheader476
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_81 Depth 2
                                        #       Child Loop BB10_83 Depth 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB10_77
# %bb.79:                               # %.lr.ph511
                                        #   in Loop: Header=BB10_78 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	or	$a0, $s1, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slt	$a0, $a0, $s1
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	masknez	$a0, $s8, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_81
	.p2align	4, , 16
.LBB10_80:                              #   in Loop: Header=BB10_81 Depth=2
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB10_77
.LBB10_81:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit273
                                        #   Parent Loop BB10_78 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_83 Depth 3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	or	$a0, $a0, $s7
	slt	$a0, $s8, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slt	$a1, $a1, $s7
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a2, $s7, $a2
	add.d	$a2, $a2, $s1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s8, $a1
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s8, $a0
	or	$a0, $a1, $a0
.Ltmp631:                               # EH_LABEL
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp632:                               # EH_LABEL
# %bb.82:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit274
                                        #   in Loop: Header=BB10_81 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 64
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	beqz	$a1, .LBB10_85
	.p2align	4, , 16
.LBB10_83:                              # %.lr.ph.i.i369
                                        #   Parent Loop BB10_78 Depth=1
                                        #     Parent Loop BB10_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_83
# %bb.84:                               # %._crit_edge.i.i375
                                        #   in Loop: Header=BB10_81 Depth=2
	bge	$s3, $a0, .LBB10_87
.LBB10_85:                              # %._crit_edge.thread.i.i387
                                        #   in Loop: Header=BB10_81 Depth=2
	ld.d	$a0, $fp, 72
	beq	$s5, $a0, .LBB10_88
# %bb.86:                               #   in Loop: Header=BB10_81 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_87:                              #   in Loop: Header=BB10_81 Depth=2
	bge	$a0, $s3, .LBB10_80
.LBB10_88:                              # %select.unfold.i383
                                        #   in Loop: Header=BB10_81 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB10_90
# %bb.89:                               #   in Loop: Header=BB10_81 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s6, $s3, $a0
	b	.LBB10_91
	.p2align	4, , 16
.LBB10_90:                              #   in Loop: Header=BB10_81 Depth=2
	ori	$s6, $zero, 1
.LBB10_91:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i386
                                        #   in Loop: Header=BB10_81 Depth=2
.Ltmp633:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp634:                               # EH_LABEL
# %bb.92:                               # %.noexc392
                                        #   in Loop: Header=BB10_81 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s6
	move	$a2, $s5
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
	b	.LBB10_80
.LBB10_93:                              # %.loopexit477
	ld.w	$a0, $fp, 156
	ld.w	$a1, $fp, 180
	bne	$a0, $a1, .LBB10_112
# %bb.94:
	ld.w	$a0, $sp, 176
	ld.w	$a1, $sp, 180
	slt	$a2, $zero, $a0
	sub.w	$s1, $a0, $a2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$s1, $a0, .LBB10_112
# %bb.95:                               # %.preheader474.lr.ph
	ld.w	$a0, $sp, 192
	ld.w	$a1, $sp, 196
	slt	$a2, $zero, $a0
	sub.w	$a0, $a0, $a2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
	ori	$s2, $zero, 24
	ori	$s6, $zero, 16
	b	.LBB10_97
	.p2align	4, , 16
.LBB10_96:                              # %._crit_edge516
                                        #   in Loop: Header=BB10_97 Depth=1
	addi.w	$s1, $s1, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$s1, $a0, .LBB10_112
.LBB10_97:                              # %.preheader474
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_103 Depth 2
                                        #       Child Loop BB10_105 Depth 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB10_96
# %bb.98:                               # %.lr.ph515
                                        #   in Loop: Header=BB10_97 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	or	$a0, $s1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $a0, $s1
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	masknez	$a0, $s8, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_103
	.p2align	4, , 16
.LBB10_99:                              #   in Loop: Header=BB10_103 Depth=2
	ld.w	$a0, $s4, 32
	slt	$s5, $s3, $a0
.LBB10_100:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i413
                                        #   in Loop: Header=BB10_103 Depth=2
.Ltmp638:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp639:                               # EH_LABEL
# %bb.101:                              # %.noexc419
                                        #   in Loop: Header=BB10_103 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s5
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
.LBB10_102:                             #   in Loop: Header=BB10_103 Depth=2
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB10_96
.LBB10_103:                             # %_ZN6miniFE6get_idIiEET_iiiiii.exit288
                                        #   Parent Loop BB10_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_105 Depth 3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a0, $s7
	slt	$a0, $s8, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slt	$a1, $a1, $s7
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a2, $s7, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	add.w	$a2, $a2, $s1
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s8, $a1
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s8, $a0
	or	$a0, $a1, $a0
.Ltmp636:                               # EH_LABEL
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp637:                               # EH_LABEL
# %bb.104:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit289
                                        #   in Loop: Header=BB10_103 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s4, $s0
	beqz	$a1, .LBB10_107
	.p2align	4, , 16
.LBB10_105:                             # %.lr.ph.i.i396
                                        #   Parent Loop BB10_97 Depth=1
                                        #     Parent Loop BB10_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s4, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s4, $a1
	bnez	$a1, .LBB10_105
# %bb.106:                              # %._crit_edge.i.i402
                                        #   in Loop: Header=BB10_103 Depth=2
	bge	$s3, $a0, .LBB10_109
.LBB10_107:                             # %._crit_edge.thread.i.i414
                                        #   in Loop: Header=BB10_103 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s4, $a0, .LBB10_110
# %bb.108:                              #   in Loop: Header=BB10_103 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_109:                             #   in Loop: Header=BB10_103 Depth=2
	bge	$a0, $s3, .LBB10_102
.LBB10_110:                             # %select.unfold.i410
                                        #   in Loop: Header=BB10_103 Depth=2
	bne	$s4, $s0, .LBB10_99
# %bb.111:                              #   in Loop: Header=BB10_103 Depth=2
	ori	$s5, $zero, 1
	b	.LBB10_100
.LBB10_112:                             # %.loopexit475
	ld.w	$a0, $fp, 164
	ld.w	$a1, $fp, 188
	bne	$a0, $a1, .LBB10_131
# %bb.113:
	ld.w	$a0, $sp, 176
	ld.w	$a1, $sp, 180
	slt	$a2, $zero, $a0
	sub.w	$s1, $a0, $a2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$s1, $a0, .LBB10_131
# %bb.114:                              # %.preheader.lr.ph
	ld.w	$a0, $sp, 184
	ld.w	$a1, $sp, 188
	slt	$a2, $zero, $a0
	sub.w	$a0, $a0, $a2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s2, $zero, -1
	ori	$s6, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB10_116
	.p2align	4, , 16
.LBB10_115:                             # %._crit_edge520
                                        #   in Loop: Header=BB10_116 Depth=1
	addi.w	$s1, $s1, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$s1, $a0, .LBB10_131
.LBB10_116:                             # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_119 Depth 2
                                        #       Child Loop BB10_121 Depth 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB10_115
# %bb.117:                              # %.lr.ph519
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	or	$a0, $s1, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $a0, $s1
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	masknez	$a0, $s2, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_119
	.p2align	4, , 16
.LBB10_118:                             #   in Loop: Header=BB10_119 Depth=2
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB10_115
.LBB10_119:                             # %_ZN6miniFE6get_idIiEET_iiiiii.exit303
                                        #   Parent Loop BB10_116 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_121 Depth 3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	or	$a0, $a0, $s7
	slt	$a0, $s2, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slt	$a1, $a1, $s7
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $s7, $a2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	add.w	$a2, $a2, $s1
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s2, $a1
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s2, $a0
	or	$a0, $a1, $a0
.Ltmp641:                               # EH_LABEL
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp642:                               # EH_LABEL
# %bb.120:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit304
                                        #   in Loop: Header=BB10_119 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s4, $s0
	beqz	$a1, .LBB10_123
	.p2align	4, , 16
.LBB10_121:                             # %.lr.ph.i.i423
                                        #   Parent Loop BB10_116 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s4, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s4, $a1
	bnez	$a1, .LBB10_121
# %bb.122:                              # %._crit_edge.i.i429
                                        #   in Loop: Header=BB10_119 Depth=2
	bge	$s3, $a0, .LBB10_125
.LBB10_123:                             # %._crit_edge.thread.i.i441
                                        #   in Loop: Header=BB10_119 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s4, $a0, .LBB10_126
# %bb.124:                              #   in Loop: Header=BB10_119 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_125:                             #   in Loop: Header=BB10_119 Depth=2
	bge	$a0, $s3, .LBB10_118
.LBB10_126:                             # %select.unfold.i437
                                        #   in Loop: Header=BB10_119 Depth=2
	beq	$s4, $s0, .LBB10_128
# %bb.127:                              #   in Loop: Header=BB10_119 Depth=2
	ld.w	$a0, $s4, 32
	slt	$s5, $s3, $a0
	b	.LBB10_129
	.p2align	4, , 16
.LBB10_128:                             #   in Loop: Header=BB10_119 Depth=2
	ori	$s5, $zero, 1
.LBB10_129:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i440
                                        #   in Loop: Header=BB10_119 Depth=2
.Ltmp643:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp644:                               # EH_LABEL
# %bb.130:                              # %.noexc446
                                        #   in Loop: Header=BB10_119 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s5
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_118
.LBB10_131:                             # %.loopexit
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
.LBB10_132:
.Ltmp646:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp647:                               # EH_LABEL
# %bb.133:                              # %.noexc310
.LBB10_134:
.Ltmp591:                               # EH_LABEL
	b	.LBB10_142
.LBB10_135:                             # %.loopexit.split-lp
.Ltmp648:                               # EH_LABEL
	b	.LBB10_142
.LBB10_136:
.Ltmp645:                               # EH_LABEL
	b	.LBB10_142
.LBB10_137:
.Ltmp640:                               # EH_LABEL
	b	.LBB10_142
.LBB10_138:
.Ltmp635:                               # EH_LABEL
	b	.LBB10_142
.LBB10_139:
.Ltmp630:                               # EH_LABEL
	b	.LBB10_142
.LBB10_140:
.Ltmp596:                               # EH_LABEL
	b	.LBB10_142
.LBB10_141:                             # %.loopexit481
.Ltmp625:                               # EH_LABEL
.LBB10_142:
	move	$s0, $a0
	addi.d	$s2, $fp, 48
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt3setIiSt4lessIiESaIiEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3setIiSt4lessIiESaIiEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_, .Lfunc_end10-_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,"aG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp589-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp590-.Ltmp589              #   Call between .Ltmp589 and .Ltmp590
	.uleb128 .Ltmp591-.Lfunc_begin6         #     jumps to .Ltmp591
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin6         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp595-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp592-.Ltmp595              #   Call between .Ltmp595 and .Ltmp592
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp592-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp593-.Ltmp592              #   Call between .Ltmp592 and .Ltmp593
	.uleb128 .Ltmp596-.Lfunc_begin6         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp593-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp597-.Ltmp593              #   Call between .Ltmp593 and .Ltmp597
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp597-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp622-.Ltmp597              #   Call between .Ltmp597 and .Ltmp622
	.uleb128 .Ltmp625-.Lfunc_begin6         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp622-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp623-.Ltmp622              #   Call between .Ltmp622 and .Ltmp623
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp623-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp624-.Ltmp623              #   Call between .Ltmp623 and .Ltmp624
	.uleb128 .Ltmp625-.Lfunc_begin6         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp626-.Ltmp624              #   Call between .Ltmp624 and .Ltmp626
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp626-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp627-.Ltmp626              #   Call between .Ltmp626 and .Ltmp627
	.uleb128 .Ltmp630-.Lfunc_begin6         #     jumps to .Ltmp630
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp628-.Ltmp627              #   Call between .Ltmp627 and .Ltmp628
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp628-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp629-.Ltmp628              #   Call between .Ltmp628 and .Ltmp629
	.uleb128 .Ltmp630-.Lfunc_begin6         #     jumps to .Ltmp630
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp629-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp631-.Ltmp629              #   Call between .Ltmp629 and .Ltmp631
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp631-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp632-.Ltmp631              #   Call between .Ltmp631 and .Ltmp632
	.uleb128 .Ltmp635-.Lfunc_begin6         #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp632-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp633-.Ltmp632              #   Call between .Ltmp632 and .Ltmp633
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp635-.Lfunc_begin6         #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp634-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp638-.Ltmp634              #   Call between .Ltmp634 and .Ltmp638
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp638-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp639-.Ltmp638              #   Call between .Ltmp638 and .Ltmp639
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp636-.Ltmp639              #   Call between .Ltmp639 and .Ltmp636
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp637-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp641-.Ltmp637              #   Call between .Ltmp637 and .Ltmp641
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp642-.Ltmp641              #   Call between .Ltmp641 and .Ltmp642
	.uleb128 .Ltmp645-.Lfunc_begin6         #     jumps to .Ltmp645
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp643-.Ltmp642              #   Call between .Ltmp642 and .Ltmp643
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp643-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp644-.Ltmp643              #   Call between .Ltmp643 and .Ltmp644
	.uleb128 .Ltmp645-.Lfunc_begin6         #     jumps to .Ltmp645
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp644-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp646-.Ltmp644              #   Call between .Ltmp644 and .Ltmp646
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp646-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp647-.Ltmp646              #   Call between .Ltmp646 and .Ltmp647
	.uleb128 .Ltmp648-.Lfunc_begin6         #     jumps to .Ltmp648
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp647-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Lfunc_end10-.Ltmp647          #   Call between .Ltmp647 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
.LCPI11_0:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.section	.text._ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,"axG",@progbits,_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,comdat
	.weak	_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
	.p2align	5
	.type	_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,@function
_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_: # @_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -1088
	.cfi_def_cfa_offset 1088
	st.d	$ra, $sp, 1080                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1000                  # 8-byte Folded Spill
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
	move	$s4, $a1
	move	$s0, $a0
	ld.w	$s8, $a0, 148
	ld.w	$a5, $a0, 156
	ld.w	$a6, $a0, 164
	ld.w	$s7, $a0, 168
	ld.w	$a0, $a0, 172
	ld.w	$s3, $s0, 176
	ld.w	$a1, $s0, 180
	ld.w	$a7, $s0, 184
	ld.w	$a2, $s0, 188
	slt	$a3, $s7, $a0
	xor	$a4, $a0, $s8
	sltui	$a4, $a4, 1
	and	$a3, $a3, $a4
	add.w	$a4, $a0, $a3
	slt	$a0, $s3, $a1
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	xor	$a3, $a1, $a5
	sltui	$a3, $a3, 1
	and	$a0, $a0, $a3
	add.w	$a3, $a1, $a0
	slt	$a0, $a7, $a2
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	xor	$a1, $a2, $a6
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	add.w	$a2, $a2, $a0
	st.d	$a4, $sp, 536                   # 8-byte Folded Spill
	sub.d	$a0, $a4, $s7
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a1, $a3, $s3
	move	$s5, $a7
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $a7
	mul.d	$a0, $a1, $a0
	mul.w	$s1, $a0, $a2
.Ltmp649:                               # EH_LABEL
	ori	$a2, $zero, 27
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj)
	jirl	$ra, $ra, 0
.Ltmp650:                               # EH_LABEL
# %bb.1:
	bltz	$s1, .LBB11_38
# %bb.2:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	beqz	$s1, .LBB11_6
# %bb.3:
	slli.d	$a0, $s1, 2
.Ltmp675:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp676:                               # EH_LABEL
# %bb.4:                                # %.noexc98
	st.d	$a0, $sp, 592
	alsl.d	$a1, $s1, $a0, 2
	st.d	$a1, $sp, 608
	st.w	$zero, $a0, 0
	addi.d	$fp, $s1, -1
	addi.d	$s2, $a0, 4
	beqz	$fp, .LBB11_7
# %bb.5:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	slli.d	$a2, $fp, 2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s2, $fp, $s2, 2
	b	.LBB11_7
.LBB11_6:                               # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
	move	$s2, $zero
	st.d	$zero, $sp, 608
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 592
.LBB11_7:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i99
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600
	addi.w	$fp, $s1, 1
	st.d	$zero, $sp, 576
	slli.d	$a0, $fp, 2
.Ltmp677:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp678:                               # EH_LABEL
# %bb.8:                                # %.noexc106
	st.d	$a0, $sp, 568
	alsl.d	$a1, $fp, $a0, 2
	st.d	$a1, $sp, 584
	st.w	$zero, $a0, 0
	addi.d	$s3, $a0, 4
	slli.d	$s2, $s1, 2
	beqz	$s1, .LBB11_11
# %bb.9:
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s1, $s3, 2
	st.d	$a0, $sp, 576
	alsl.w	$fp, $s1, $s1, 1
	slli.d	$s3, $fp, 2
.Ltmp680:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp681:                               # EH_LABEL
# %bb.10:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i110
	st.d	$a0, $sp, 544
	alsl.d	$fp, $fp, $a0, 2
	st.d	$fp, $sp, 560
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s3, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB11_12
.LBB11_11:                              # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i113
	move	$fp, $zero
	st.d	$s3, $sp, 576
	st.d	$zero, $sp, 560
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 544
.LBB11_12:
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a5, $s8, 1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a3, $a1, 1
	mul.d	$a0, $a2, $a5
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	mul.w	$a3, $a0, $a3
	st.d	$fp, $sp, 552
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	bge	$s5, $a0, .LBB11_23
# %bb.13:                               # %.preheader179.lr.ph
	move	$s1, $s5
	move	$fp, $zero
	move	$s2, $zero
	addi.d	$a0, $s0, 96
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr0, $a1
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a2
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a5
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a3
	vst	$vr0, $sp, 336                  # 16-byte Folded Spill
	mul.d	$a0, $s5, $a2
	add.d	$a0, $s3, $a0
	mul.d	$s6, $a0, $a5
	mul.d	$a0, $a2, $a5
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI11_0)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	addi.w	$s4, $zero, -1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$s7, $sp, 184                   # 8-byte Folded Spill
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	b	.LBB11_15
	.p2align	4, , 16
.LBB11_14:                              # %._crit_edge200
                                        #   in Loop: Header=BB11_15 Depth=1
	addi.w	$s1, $s1, 1
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s6, $s6, $a0
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB11_24
.LBB11_15:                              # %.preheader179
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_19 Depth 2
                                        #       Child Loop BB11_21 Depth 3
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	bge	$s3, $a1, .LBB11_14
# %bb.16:                               # %.preheader178.lr.ph
                                        #   in Loop: Header=BB11_15 Depth=1
	vreplgr2vr.w	$vr0, $s1
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vmul.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 272                  # 16-byte Folded Spill
	vsle.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	slt	$a0, $a0, $s1
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_17:                              #   in Loop: Header=BB11_19 Depth=2
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
.LBB11_18:                              # %._crit_edge
                                        #   in Loop: Header=BB11_19 Depth=2
	add.d	$s6, $s6, $a5
	move	$s3, $a6
	beq	$a6, $a1, .LBB11_14
.LBB11_19:                              # %.preheader178
                                        #   Parent Loop BB11_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_21 Depth 3
	addi.w	$a6, $s3, 1
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB11_18
# %bb.20:                               # %.lr.ph
                                        #   in Loop: Header=BB11_19 Depth=2
	or	$a0, $s3, $s1
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	slt	$a0, $a3, $s3
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	and	$a1, $a0, $a1
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	addi.w	$a1, $s3, -1
	slt	$a2, $a3, $a1
	xori	$a2, $a2, 1
	slt	$a3, $s3, $a3
	vreplgr2vr.w	$vr0, $a1
	vreplgr2vr.w	$vr1, $a2
	vreplgr2vr.w	$vr2, $s3
	vreplgr2vr.w	$vr3, $a0
	st.d	$a6, $sp, 296                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr4, $a6
	vreplgr2vr.w	$vr5, $a3
	vld	$vr6, $sp, 272                  # 16-byte Folded Reload
	vor.v	$vr7, $vr0, $vr6
	vst	$vr7, $sp, 496                  # 16-byte Folded Spill
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
	vand.v	$vr1, $vr1, $vr8
	vst	$vr1, $sp, 480                  # 16-byte Folded Spill
	vld	$vr7, $sp, 256                  # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr7
	vld	$vr1, $sp, 192                  # 16-byte Folded Reload
	vmul.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 464                  # 16-byte Folded Spill
	vor.v	$vr0, $vr2, $vr6
	vst	$vr0, $sp, 448                  # 16-byte Folded Spill
	vand.v	$vr0, $vr3, $vr8
	vst	$vr0, $sp, 432                  # 16-byte Folded Spill
	vadd.w	$vr0, $vr2, $vr7
	vmul.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 416                  # 16-byte Folded Spill
	vor.v	$vr0, $vr4, $vr6
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	vand.v	$vr0, $vr5, $vr8
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	vadd.w	$vr0, $vr4, $vr7
	vmul.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 368                  # 16-byte Folded Spill
	alsl.w	$s0, $s2, $s2, 1
	.p2align	4, , 16
.LBB11_21:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   Parent Loop BB11_15 Depth=1
                                        #     Parent Loop BB11_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	or	$a0, $a0, $s7
	slt	$a0, $s4, $a0
	slt	$a1, $s8, $s7
	xori	$s5, $a1, 1
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	and	$a1, $s5, $a1
	andi	$a1, $a1, 1
	add.w	$a2, $s6, $s7
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s4, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$a0, $a1, $a0
.Ltmp683:                               # EH_LABEL
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp684:                               # EH_LABEL
# %bb.22:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit
                                        #   in Loop: Header=BB11_21 Depth=3
	ld.d	$a1, $sp, 592
	slli.d	$a2, $s2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	stx.w	$a0, $a1, $a2
	ld.d	$a0, $sp, 544
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$s7, $a0, $a1
	addi.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$s3, $a0, $a1
	addi.d	$a1, $s0, 2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$s1, $a0, $a1
	ld.d	$a0, $sp, 568
	stx.w	$fp, $a0, $a2
	addi.w	$a0, $s7, 1
	slt	$a1, $s8, $a0
	xori	$a1, $a1, 1
	addi.w	$a2, $s7, -1
	slt	$a3, $s8, $a2
	xori	$a3, $a3, 1
	vld	$vr6, $sp, 320                  # 16-byte Folded Reload
	vinsgr2vr.w	$vr6, $fp, 0
	vreplgr2vr.w	$vr4, $a2
	vreplgr2vr.w	$vr5, $a3
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a1
	vreplgr2vr.w	$vr2, $s7
	vreplgr2vr.w	$vr3, $s5
	vld	$vr11, $sp, 496                 # 16-byte Folded Reload
	vor.v	$vr7, $vr11, $vr4
	vld	$vr10, $sp, 304                 # 16-byte Folded Reload
	vslt.w	$vr7, $vr10, $vr7
	vld	$vr12, $sp, 480                 # 16-byte Folded Reload
	vand.v	$vr8, $vr5, $vr12
	vand.v	$vr7, $vr7, $vr8
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vld	$vr13, $sp, 464                 # 16-byte Folded Reload
	vadd.w	$vr8, $vr4, $vr13
	vbitsel.v	$vr7, $vr10, $vr8, $vr7
	vslt.w	$vr8, $vr10, $vr7
	vld	$vr9, $sp, 336                  # 16-byte Folded Reload
	vslt.w	$vr7, $vr7, $vr9
	vand.v	$vr7, $vr7, $vr8
	vsub.w	$vr6, $vr6, $vr7
	vor.v	$vr7, $vr11, $vr2
	vslt.w	$vr7, $vr10, $vr7
	vand.v	$vr8, $vr3, $vr12
	vand.v	$vr7, $vr7, $vr8
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vadd.w	$vr8, $vr2, $vr13
	vbitsel.v	$vr7, $vr10, $vr8, $vr7
	vslt.w	$vr8, $vr10, $vr7
	vslt.w	$vr7, $vr7, $vr9
	vand.v	$vr7, $vr7, $vr8
	vsub.w	$vr6, $vr6, $vr7
	vor.v	$vr7, $vr11, $vr0
	vslt.w	$vr7, $vr10, $vr7
	vand.v	$vr8, $vr1, $vr12
	vand.v	$vr7, $vr7, $vr8
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vadd.w	$vr8, $vr0, $vr13
	vbitsel.v	$vr7, $vr10, $vr8, $vr7
	vslt.w	$vr8, $vr10, $vr7
	vslt.w	$vr7, $vr7, $vr9
	vand.v	$vr7, $vr7, $vr8
	vsub.w	$vr6, $vr6, $vr7
	vld	$vr11, $sp, 448                 # 16-byte Folded Reload
	vor.v	$vr7, $vr11, $vr4
	vslt.w	$vr7, $vr10, $vr7
	vld	$vr12, $sp, 432                 # 16-byte Folded Reload
	vand.v	$vr8, $vr5, $vr12
	vand.v	$vr7, $vr7, $vr8
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vld	$vr13, $sp, 416                 # 16-byte Folded Reload
	vadd.w	$vr8, $vr4, $vr13
	vbitsel.v	$vr7, $vr10, $vr8, $vr7
	vslt.w	$vr8, $vr10, $vr7
	vslt.w	$vr7, $vr7, $vr9
	vand.v	$vr7, $vr7, $vr8
	vsub.w	$vr6, $vr6, $vr7
	vor.v	$vr7, $vr11, $vr2
	vslt.w	$vr7, $vr10, $vr7
	vand.v	$vr8, $vr3, $vr12
	vand.v	$vr7, $vr7, $vr8
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vadd.w	$vr8, $vr2, $vr13
	vbitsel.v	$vr7, $vr10, $vr8, $vr7
	vslt.w	$vr8, $vr10, $vr7
	vslt.w	$vr7, $vr7, $vr9
	vand.v	$vr7, $vr7, $vr8
	vsub.w	$vr6, $vr6, $vr7
	vor.v	$vr7, $vr11, $vr0
	vslt.w	$vr7, $vr10, $vr7
	vand.v	$vr8, $vr1, $vr12
	vand.v	$vr7, $vr7, $vr8
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vadd.w	$vr8, $vr0, $vr13
	vbitsel.v	$vr7, $vr10, $vr8, $vr7
	vslt.w	$vr8, $vr10, $vr7
	vslt.w	$vr7, $vr7, $vr9
	vand.v	$vr7, $vr7, $vr8
	vsub.w	$vr6, $vr6, $vr7
	vld	$vr8, $sp, 400                  # 16-byte Folded Reload
	vor.v	$vr7, $vr8, $vr4
	vslt.w	$vr7, $vr10, $vr7
	vld	$vr11, $sp, 384                 # 16-byte Folded Reload
	vand.v	$vr5, $vr5, $vr11
	vand.v	$vr5, $vr7, $vr5
	vslli.w	$vr5, $vr5, 31
	vsrai.w	$vr5, $vr5, 31
	vld	$vr7, $sp, 368                  # 16-byte Folded Reload
	vadd.w	$vr4, $vr4, $vr7
	vbitsel.v	$vr4, $vr10, $vr4, $vr5
	vslt.w	$vr5, $vr10, $vr4
	vslt.w	$vr4, $vr4, $vr9
	vand.v	$vr4, $vr4, $vr5
	vsub.w	$vr4, $vr6, $vr4
	vor.v	$vr5, $vr8, $vr2
	vslt.w	$vr5, $vr10, $vr5
	vand.v	$vr3, $vr3, $vr11
	vand.v	$vr3, $vr5, $vr3
	vslli.w	$vr3, $vr3, 31
	vsrai.w	$vr3, $vr3, 31
	vadd.w	$vr2, $vr2, $vr7
	vbitsel.v	$vr2, $vr10, $vr2, $vr3
	vslt.w	$vr3, $vr10, $vr2
	vslt.w	$vr2, $vr2, $vr9
	vand.v	$vr2, $vr2, $vr3
	vsub.w	$vr2, $vr4, $vr2
	vor.v	$vr3, $vr8, $vr0
	vslt.w	$vr3, $vr10, $vr3
	vand.v	$vr1, $vr1, $vr11
	vand.v	$vr1, $vr3, $vr1
	vslli.w	$vr1, $vr1, 31
	vsrai.w	$vr1, $vr1, 31
	vadd.w	$vr0, $vr0, $vr7
	vbitsel.v	$vr0, $vr10, $vr0, $vr1
	vslt.w	$vr1, $vr10, $vr0
	vslt.w	$vr0, $vr0, $vr9
	vand.v	$vr0, $vr0, $vr1
	vsub.w	$vr0, $vr2, $vr0
	vinsgr2vr.w	$vr0, $zero, 3
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$fp, $vr0, 0
	addi.w	$s2, $s2, 1
	addi.w	$s0, $s0, 3
	move	$s7, $a0
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB11_21
	b	.LBB11_17
.LBB11_23:
	move	$s2, $zero
	move	$fp, $zero
.LBB11_24:                              # %._crit_edge206
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bne	$s2, $a0, .LBB11_40
# %bb.25:
	ld.d	$a0, $sp, 568
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	stx.w	$fp, $a0, $a1
.Ltmp691:                               # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 624
	addi.d	$a1, $sp, 592
	addi.d	$a2, $sp, 568
	addi.d	$a3, $sp, 544
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	st.d	$a4, $sp, 0
	move	$a4, $a5
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_)
	jirl	$ra, $ra, 0
.Ltmp692:                               # EH_LABEL
# %bb.26:                               # %.noexc128
	ld.w	$a0, $sp, 696
	blez	$a0, .LBB11_30
# %bb.27:                               # %.lr.ph.i.preheader
	move	$fp, $zero
	.p2align	4, , 16
.LBB11_28:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp694:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi)
	jirl	$ra, $ra, 0
.Ltmp695:                               # EH_LABEL
# %bb.29:                               # %.noexc129
                                        #   in Loop: Header=BB11_28 Depth=1
	ld.w	$a0, $sp, 696
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB11_28
.LBB11_30:                              # %.loopexit176
	ld.d	$a0, $sp, 544
	beqz	$a0, .LBB11_32
# %bb.31:
	ld.d	$a1, $sp, 560
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_32:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 568
	beqz	$a0, .LBB11_34
# %bb.33:
	ld.d	$a1, $sp, 584
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_34:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit131
	ld.d	$a0, $sp, 592
	beqz	$a0, .LBB11_36
# %bb.35:
	ld.d	$a1, $sp, 608
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_36:
	move	$a0, $zero
.LBB11_37:
	ld.d	$s8, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1080                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1088
	ret
.LBB11_38:
.Ltmp697:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp698:                               # EH_LABEL
# %bb.39:                               # %.noexc
.LBB11_40:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp686:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13runtime_errorC1EPKc)
	jirl	$ra, $ra, 0
.Ltmp687:                               # EH_LABEL
# %bb.41:
.Ltmp689:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZTISt13runtime_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt13runtime_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt13runtime_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt13runtime_errorD1Ev)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp690:                               # EH_LABEL
	b	.LBB11_54
.LBB11_42:
.Ltmp688:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
	b	.LBB11_70
.LBB11_43:
.Ltmp682:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_72
.LBB11_44:
.Ltmp679:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_74
.LBB11_45:
.Ltmp651:                               # EH_LABEL
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 2
	move	$fp, $a0
	bne	$a1, $a2, .LBB11_76
# %bb.46:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp652:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
.Ltmp653:                               # EH_LABEL
# %bb.47:
.Ltmp655:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	addi.d	$a0, $sp, 624
	ori	$a2, $zero, 99
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp656:                               # EH_LABEL
# %bb.48:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp657:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp658:                               # EH_LABEL
# %bb.49:
.Ltmp659:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.77)
	addi.d	$a1, $a1, %pc_lo12(.L.str.77)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp660:                               # EH_LABEL
# %bb.50:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a1, $a0
.Ltmp661:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp662:                               # EH_LABEL
# %bb.51:
.Ltmp664:                               # EH_LABEL
	addi.d	$a0, $sp, 592
	addi.d	$a1, $sp, 624
	pcaddu18i	$ra, %call36(_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv)
	jirl	$ra, $ra, 0
.Ltmp665:                               # EH_LABEL
# %bb.52:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp667:                               # EH_LABEL
	addi.d	$a1, $sp, 592
	pcaddu18i	$ra, %call36(_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp668:                               # EH_LABEL
# %bb.53:
.Ltmp670:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZTISt13runtime_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt13runtime_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt13runtime_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt13runtime_errorD1Ev)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp671:                               # EH_LABEL
.LBB11_54:
.LBB11_55:
.Ltmp672:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_57
.LBB11_56:
.Ltmp669:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
.LBB11_57:
	ld.d	$a0, $sp, 592
	addi.d	$a1, $sp, 608
	beq	$a0, $a1, .LBB11_62
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 608
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_62
.LBB11_59:
.Ltmp666:                               # EH_LABEL
	b	.LBB11_61
.LBB11_60:
.Ltmp663:                               # EH_LABEL
.LBB11_61:
	move	$fp, $a0
.LBB11_62:
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	b	.LBB11_64
.LBB11_63:
.Ltmp654:                               # EH_LABEL
	move	$fp, $a0
.LBB11_64:
.Ltmp673:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp674:                               # EH_LABEL
	b	.LBB11_76
.LBB11_65:                              # %.loopexit.split-lp
.Ltmp693:                               # EH_LABEL
	b	.LBB11_69
.LBB11_66:
.Ltmp699:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_76
.LBB11_67:                              # %.loopexit
.Ltmp696:                               # EH_LABEL
	b	.LBB11_69
.LBB11_68:
.Ltmp685:                               # EH_LABEL
.LBB11_69:
	move	$fp, $a0
.LBB11_70:
	ld.d	$a0, $sp, 544
	beqz	$a0, .LBB11_72
# %bb.71:
	ld.d	$a1, $sp, 560
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_72:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit135
	ld.d	$a0, $sp, 568
	beqz	$a0, .LBB11_74
# %bb.73:
	ld.d	$a1, $sp, 584
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_74:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit137
	ld.d	$a0, $sp, 592
	beqz	$a0, .LBB11_76
# %bb.75:
	ld.d	$a1, $sp, 608
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_76:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp700:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.79)
	addi.d	$a1, $a1, %pc_lo12(.L.str.79)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp701:                               # EH_LABEL
# %bb.77:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
.Ltmp702:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp703:                               # EH_LABEL
# %bb.78:
.Ltmp704:                               # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	ori	$a2, $zero, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp705:                               # EH_LABEL
# %bb.79:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB11_87
# %bb.80:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB11_82
# %bb.81:
	ld.bu	$a0, $s0, 67
	b	.LBB11_84
.LBB11_82:
.Ltmp706:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp707:                               # EH_LABEL
# %bb.83:                               # %.noexc147
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp708:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp709:                               # EH_LABEL
.LBB11_84:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp710:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp711:                               # EH_LABEL
# %bb.85:                               # %.noexc149
.Ltmp712:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp713:                               # EH_LABEL
# %bb.86:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB11_37
.LBB11_87:
.Ltmp714:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp715:                               # EH_LABEL
# %bb.88:                               # %.noexc146
.LBB11_89:
.Ltmp716:                               # EH_LABEL
	move	$fp, $a0
.Ltmp717:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp718:                               # EH_LABEL
# %bb.90:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_91:
.Ltmp719:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_, .Lfunc_end11-_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,"aG",@progbits,_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp649-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp650-.Ltmp649              #   Call between .Ltmp649 and .Ltmp650
	.uleb128 .Ltmp651-.Lfunc_begin7         #     jumps to .Ltmp651
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp675-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp699-.Lfunc_begin7         #     jumps to .Ltmp699
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp676-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp677-.Ltmp676              #   Call between .Ltmp676 and .Ltmp677
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp677-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp678-.Ltmp677              #   Call between .Ltmp677 and .Ltmp678
	.uleb128 .Ltmp679-.Lfunc_begin7         #     jumps to .Ltmp679
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp678-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp680-.Ltmp678              #   Call between .Ltmp678 and .Ltmp680
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp680-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp681-.Ltmp680              #   Call between .Ltmp680 and .Ltmp681
	.uleb128 .Ltmp682-.Lfunc_begin7         #     jumps to .Ltmp682
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp681-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp683-.Ltmp681              #   Call between .Ltmp681 and .Ltmp683
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp683-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp684-.Ltmp683              #   Call between .Ltmp683 and .Ltmp684
	.uleb128 .Ltmp685-.Lfunc_begin7         #     jumps to .Ltmp685
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp691-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp692-.Ltmp691              #   Call between .Ltmp691 and .Ltmp692
	.uleb128 .Ltmp693-.Lfunc_begin7         #     jumps to .Ltmp693
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp694-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp695-.Ltmp694              #   Call between .Ltmp694 and .Ltmp695
	.uleb128 .Ltmp696-.Lfunc_begin7         #     jumps to .Ltmp696
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp695-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp697-.Ltmp695              #   Call between .Ltmp695 and .Ltmp697
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp697-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp698-.Ltmp697              #   Call between .Ltmp697 and .Ltmp698
	.uleb128 .Ltmp699-.Lfunc_begin7         #     jumps to .Ltmp699
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp698-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp686-.Ltmp698              #   Call between .Ltmp698 and .Ltmp686
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp686-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp687-.Ltmp686              #   Call between .Ltmp686 and .Ltmp687
	.uleb128 .Ltmp688-.Lfunc_begin7         #     jumps to .Ltmp688
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp689-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Ltmp690-.Ltmp689              #   Call between .Ltmp689 and .Ltmp690
	.uleb128 .Ltmp693-.Lfunc_begin7         #     jumps to .Ltmp693
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp690-.Lfunc_begin7         # >> Call Site 16 <<
	.uleb128 .Ltmp652-.Ltmp690              #   Call between .Ltmp690 and .Ltmp652
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp652-.Lfunc_begin7         # >> Call Site 17 <<
	.uleb128 .Ltmp653-.Ltmp652              #   Call between .Ltmp652 and .Ltmp653
	.uleb128 .Ltmp654-.Lfunc_begin7         #     jumps to .Ltmp654
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp655-.Lfunc_begin7         # >> Call Site 18 <<
	.uleb128 .Ltmp660-.Ltmp655              #   Call between .Ltmp655 and .Ltmp660
	.uleb128 .Ltmp663-.Lfunc_begin7         #     jumps to .Ltmp663
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp660-.Lfunc_begin7         # >> Call Site 19 <<
	.uleb128 .Ltmp661-.Ltmp660              #   Call between .Ltmp660 and .Ltmp661
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp661-.Lfunc_begin7         # >> Call Site 20 <<
	.uleb128 .Ltmp662-.Ltmp661              #   Call between .Ltmp661 and .Ltmp662
	.uleb128 .Ltmp663-.Lfunc_begin7         #     jumps to .Ltmp663
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp664-.Lfunc_begin7         # >> Call Site 21 <<
	.uleb128 .Ltmp665-.Ltmp664              #   Call between .Ltmp664 and .Ltmp665
	.uleb128 .Ltmp666-.Lfunc_begin7         #     jumps to .Ltmp666
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp665-.Lfunc_begin7         # >> Call Site 22 <<
	.uleb128 .Ltmp667-.Ltmp665              #   Call between .Ltmp665 and .Ltmp667
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp667-.Lfunc_begin7         # >> Call Site 23 <<
	.uleb128 .Ltmp668-.Ltmp667              #   Call between .Ltmp667 and .Ltmp668
	.uleb128 .Ltmp669-.Lfunc_begin7         #     jumps to .Ltmp669
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp670-.Lfunc_begin7         # >> Call Site 24 <<
	.uleb128 .Ltmp671-.Ltmp670              #   Call between .Ltmp670 and .Ltmp671
	.uleb128 .Ltmp672-.Lfunc_begin7         #     jumps to .Ltmp672
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp671-.Lfunc_begin7         # >> Call Site 25 <<
	.uleb128 .Ltmp673-.Ltmp671              #   Call between .Ltmp671 and .Ltmp673
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp673-.Lfunc_begin7         # >> Call Site 26 <<
	.uleb128 .Ltmp674-.Ltmp673              #   Call between .Ltmp673 and .Ltmp674
	.uleb128 .Ltmp719-.Lfunc_begin7         #     jumps to .Ltmp719
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp674-.Lfunc_begin7         # >> Call Site 27 <<
	.uleb128 .Ltmp700-.Ltmp674              #   Call between .Ltmp674 and .Ltmp700
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp700-.Lfunc_begin7         # >> Call Site 28 <<
	.uleb128 .Ltmp713-.Ltmp700              #   Call between .Ltmp700 and .Ltmp713
	.uleb128 .Ltmp716-.Lfunc_begin7         #     jumps to .Ltmp716
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp713-.Lfunc_begin7         # >> Call Site 29 <<
	.uleb128 .Ltmp714-.Ltmp713              #   Call between .Ltmp713 and .Ltmp714
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp714-.Lfunc_begin7         # >> Call Site 30 <<
	.uleb128 .Ltmp715-.Ltmp714              #   Call between .Ltmp714 and .Ltmp715
	.uleb128 .Ltmp716-.Lfunc_begin7         #     jumps to .Ltmp716
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp717-.Lfunc_begin7         # >> Call Site 31 <<
	.uleb128 .Ltmp718-.Ltmp717              #   Call between .Ltmp717 and .Ltmp718
	.uleb128 .Ltmp719-.Lfunc_begin7         #     jumps to .Ltmp719
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp718-.Lfunc_begin7         # >> Call Site 32 <<
	.uleb128 .Lfunc_end11-.Ltmp718          #   Call between .Ltmp718 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp720:                               # TypeInfo 2
	.word	.L_ZTISt9exception.DW.stub-.Ltmp720
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE,"axG",@progbits,_ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE,comdat
	.weak	_ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE # -- Begin function _ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE
	.p2align	5
	.type	_ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE,@function
_ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE: # @_ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a4, $a3
	move	$a3, $a2
	move	$a2, $a1
	ld.w	$a6, $a0, 148
	vld	$vr0, $a0, 168
	ld.w	$t1, $a0, 184
	ld.w	$a7, $a0, 156
	ld.w	$a1, $a0, 164
	vst	$vr0, $sp, 0
	st.w	$t1, $sp, 16
	ld.w	$a5, $a0, 188
	vpickve2gr.w	$t4, $vr0, 0
	vpickve2gr.w	$t2, $vr0, 1
	sub.d	$t5, $t2, $t4
	vpickve2gr.w	$t3, $vr0, 2
	vpickve2gr.w	$t0, $vr0, 3
	sub.d	$t6, $t0, $t3
	sub.d	$t7, $a5, $t1
	mul.d	$t5, $t6, $t5
	mul.w	$t5, $t5, $t7
	st.w	$a5, $sp, 20
	blez	$t5, .LBB12_12
# %bb.1:
	blez	$t4, .LBB12_3
# %bb.2:
	addi.d	$t4, $t4, -1
	st.w	$t4, $sp, 0
.LBB12_3:
	blez	$t3, .LBB12_5
# %bb.4:
	addi.d	$t3, $t3, -1
	st.w	$t3, $sp, 8
.LBB12_5:
	blez	$t1, .LBB12_7
# %bb.6:
	addi.d	$t1, $t1, -1
	st.w	$t1, $sp, 16
.LBB12_7:
	blt	$t2, $a6, .LBB12_13
# %bb.8:
	blt	$t0, $a7, .LBB12_14
.LBB12_9:
	bge	$a5, $a1, .LBB12_11
.LBB12_10:
	addi.d	$a1, $a5, 1
	st.w	$a1, $sp, 20
.LBB12_11:
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE)
	jirl	$ra, $ra, 0
.LBB12_12:
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_13:
	addi.d	$a6, $t2, 1
	st.w	$a6, $sp, 4
	bge	$t0, $a7, .LBB12_9
.LBB12_14:
	addi.d	$a6, $t0, 1
	st.w	$a6, $sp, 12
	blt	$a5, $a1, .LBB12_10
	b	.LBB12_11
.Lfunc_end12:
	.size	_ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE, .Lfunc_end12-_ZN6miniFE16assemble_FE_dataINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS6_RT0_RNS_10ParametersE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE,"axG",@progbits,_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE,comdat
	.weak	_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE # -- Begin function _ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE
	.p2align	5
	.type	_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE,@function
_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE: # @_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	move	$fp, $a0
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 8
	move	$s1, $a5
	move	$s0, $a1
	fmov.d	$fs0, $fa0
	beq	$a2, $a3, .LBB13_2
# %bb.1:
	ld.w	$s3, $a3, 0
	ld.w	$s4, $a2, -4
	b	.LBB13_3
.LBB13_2:
	move	$s3, $zero
	addi.w	$s4, $zero, -1
.LBB13_3:                               # %.thread
	ld.d	$a0, $s1, 24
	addi.d	$s2, $s1, 8
	bne	$a0, $s2, .LBB13_6
# %bb.4:                                # %.preheader
	bne	$a2, $a3, .LBB13_10
	b	.LBB13_36
	.p2align	4, , 16
.LBB13_5:                               #   in Loop: Header=BB13_6 Depth=1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB13_9
.LBB13_6:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 32
	blt	$a1, $s3, .LBB13_5
# %bb.7:                                #   in Loop: Header=BB13_6 Depth=1
	blt	$s4, $a1, .LBB13_5
# %bb.8:                                #   in Loop: Header=BB13_6 Depth=1
	ld.d	$a2, $s0, 8
	sub.w	$a3, $a1, $s3
	slli.d	$a3, $a3, 3
	fstx.d	$fs0, $a2, $a3
	move	$s5, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	b	.LBB13_5
.LBB13_9:                               # %.preheader.loopexit
	ld.d	$a2, $fp, 16
	ld.d	$a3, $fp, 8
	beq	$a2, $a3, .LBB13_36
.LBB13_10:                              # %.lr.ph82
	move	$a0, $zero
	sub.d	$a1, $a2, $a3
	srai.d	$a1, $a1, 2
	ld.d	$a4, $s1, 16
	ld.d	$a5, $fp, 32
	ld.d	$a6, $fp, 80
	ld.d	$a7, $fp, 104
	ld.d	$t0, $s0, 8
	movgr2fr.d	$fa0, $zero
	ori	$t1, $zero, 16
	ori	$t2, $zero, 24
	b	.LBB13_13
	.p2align	4, , 16
.LBB13_11:                              # %._crit_edge
                                        #   in Loop: Header=BB13_13 Depth=1
	slli.d	$t3, $a0, 3
	fldx.d	$fa2, $t0, $t3
	fmul.d	$fa1, $fs0, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $t0, $t3
.LBB13_12:                              #   in Loop: Header=BB13_13 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB13_36
.LBB13_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_15 Depth 2
                                        #     Child Loop BB13_22 Depth 2
                                        #     Child Loop BB13_30 Depth 2
                                        #       Child Loop BB13_32 Depth 3
	slli.d	$t3, $a0, 2
	ldx.w	$t3, $a3, $t3
	beqz	$a4, .LBB13_18
# %bb.14:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB13_13 Depth=1
	move	$t5, $a4
	move	$t4, $s2
	.p2align	4, , 16
.LBB13_15:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, 32
	slt	$t6, $t6, $t3
	masknez	$t7, $t5, $t6
	masknez	$t8, $t1, $t6
	maskeqz	$fp, $t2, $t6
	or	$t8, $fp, $t8
	ldx.d	$t5, $t5, $t8
	maskeqz	$t4, $t4, $t6
	or	$t4, $t4, $t7
	bnez	$t5, .LBB13_15
# %bb.16:                               # %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i
                                        #   in Loop: Header=BB13_13 Depth=1
	beq	$t4, $s2, .LBB13_18
# %bb.17:                               # %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit
                                        #   in Loop: Header=BB13_13 Depth=1
	ld.w	$t4, $t4, 32
	bge	$t3, $t4, .LBB13_12
.LBB13_18:                              # %.critedge
                                        #   in Loop: Header=BB13_13 Depth=1
	ld.w	$t4, $a3, 0
	sub.w	$t4, $t3, $t4
	bgeu	$t4, $a1, .LBB13_20
# %bb.19:                               #   in Loop: Header=BB13_13 Depth=1
	slli.d	$t5, $t4, 2
	ldx.w	$t5, $a3, $t5
	beq	$t5, $t3, .LBB13_27
.LBB13_20:                              #   in Loop: Header=BB13_13 Depth=1
	blez	$a1, .LBB13_24
# %bb.21:                               # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader
                                        #   in Loop: Header=BB13_13 Depth=1
	move	$t5, $a1
	move	$t4, $a3
	.p2align	4, , 16
.LBB13_22:                              # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
                                        #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t6, $t5, 1
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $t4, $t7
	alsl.d	$t8, $t6, $t4, 2
	slt	$t7, $t7, $t3
	addi.d	$t8, $t8, 4
	nor	$fp, $t6, $zero
	add.d	$t5, $t5, $fp
	maskeqz	$t8, $t8, $t7
	masknez	$t4, $t4, $t7
	maskeqz	$t5, $t5, $t7
	masknez	$t6, $t6, $t7
	or	$t5, $t5, $t6
	or	$t4, $t8, $t4
	bgtz	$t5, .LBB13_22
# %bb.23:                               # %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i
                                        #   in Loop: Header=BB13_13 Depth=1
	fmov.d	$fa1, $fa0
	bne	$a2, $t4, .LBB13_25
	b	.LBB13_11
	.p2align	4, , 16
.LBB13_24:                              #   in Loop: Header=BB13_13 Depth=1
	move	$t4, $a3
	fmov.d	$fa1, $fa0
	beq	$a2, $t4, .LBB13_11
.LBB13_25:                              #   in Loop: Header=BB13_13 Depth=1
	ld.w	$t5, $t4, 0
	fmov.d	$fa1, $fa0
	bne	$t5, $t3, .LBB13_11
# %bb.26:                               #   in Loop: Header=BB13_13 Depth=1
	sub.d	$t3, $t4, $a3
	srai.d	$t4, $t3, 2
.LBB13_27:                              # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit
                                        #   in Loop: Header=BB13_13 Depth=1
	alsl.d	$t3, $t4, $a5, 2
	slli.d	$t5, $t4, 2
	ld.w	$t4, $t3, 4
	ldx.w	$t6, $a5, $t5
	fmov.d	$fa1, $fa0
	beq	$t4, $t6, .LBB13_11
# %bb.28:                               # %.lr.ph80.preheader
                                        #   in Loop: Header=BB13_13 Depth=1
	move	$t3, $zero
	sub.w	$t4, $t4, $t6
	alsl.d	$t5, $t6, $a6, 2
	alsl.d	$t6, $t6, $a7, 3
	fmov.d	$fa1, $fa0
	b	.LBB13_30
	.p2align	4, , 16
.LBB13_29:                              # %.critedge75
                                        #   in Loop: Header=BB13_30 Depth=2
	addi.d	$t3, $t3, 1
	beq	$t3, $t4, .LBB13_11
.LBB13_30:                              # %.lr.ph80
                                        #   Parent Loop BB13_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_32 Depth 3
	beqz	$a4, .LBB13_29
# %bb.31:                               # %.lr.ph.i.i.i46
                                        #   in Loop: Header=BB13_30 Depth=2
	slli.d	$t7, $t3, 2
	ldx.w	$t7, $t5, $t7
	move	$fp, $a4
	move	$t8, $s2
	.p2align	4, , 16
.LBB13_32:                              #   Parent Loop BB13_13 Depth=1
                                        #     Parent Loop BB13_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s0, $fp, 32
	slt	$s0, $s0, $t7
	masknez	$s1, $fp, $s0
	masknez	$s3, $t1, $s0
	maskeqz	$s4, $t2, $s0
	or	$s3, $s4, $s3
	ldx.d	$fp, $fp, $s3
	maskeqz	$t8, $t8, $s0
	or	$t8, $t8, $s1
	bnez	$fp, .LBB13_32
# %bb.33:                               # %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i54
                                        #   in Loop: Header=BB13_30 Depth=2
	beq	$t8, $s2, .LBB13_29
# %bb.34:                               # %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit58
                                        #   in Loop: Header=BB13_30 Depth=2
	ld.w	$t8, $t8, 32
	blt	$t7, $t8, .LBB13_29
# %bb.35:                               #   in Loop: Header=BB13_30 Depth=2
	slli.d	$t7, $t3, 3
	fldx.d	$fa2, $t6, $t7
	fadd.d	$fa1, $fa1, $fa2
	stx.d	$zero, $t6, $t7
	b	.LBB13_29
.LBB13_36:                              # %._crit_edge83
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.Lfunc_end13:
	.size	_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE, .Lfunc_end13-_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
.LCPI14_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI14_1:
	.dword	0x43e0000000000000              # double 9.2233720368547758E+18
.LCPI14_2:
	.dword	0x3e10000000000000              # double 9.3132257461547852E-10
	.section	.text._ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,"axG",@progbits,_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,comdat
	.weak	_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
	.p2align	5
	.type	_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,@function
_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc: # @_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %_ZN6miniFE18get_global_min_maxIiEEvT_RS1_S2_RiS2_S3_.exit
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	ld.d	$a4, $a0, 40
	ld.w	$a4, $a4, -4
	move	$s0, $a3
	srli.d	$a3, $a4, 32
	pcalau12i	$a5, %pc_hi20(.LCPI14_0)
	fld.d	$fs3, $a5, %pc_lo12(.LCPI14_0)
	lu52i.d	$s7, $zero, 1107
	or	$a3, $a3, $s7
	movgr2fr.d	$fa0, $a3
	fsub.d	$fa0, $fa0, $fs3
	lu12i.w	$s6, 275200
	pcalau12i	$a3, %pc_hi20(.LCPI14_1)
	fld.d	$fs1, $a3, %pc_lo12(.LCPI14_1)
	bstrins.d	$a4, $s6, 63, 32
	movgr2fr.d	$fa1, $a4
	fadd.d	$fs0, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a3, $fa0
	movcf2gr	$a4, $fcc0
	maskeqz	$a3, $a3, $a4
	fsub.d	$fa0, $fs0, $fs1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a5, $fa0
	lu52i.d	$a6, $zero, -2048
	xor	$a5, $a5, $a6
	masknez	$a4, $a5, $a4
	or	$fp, $a3, $a4
	bnez	$a1, .LBB14_85
# %bb.1:                                # %.noexc.i
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s1, $a0, 16
	ld.d	$s2, $a0, 8
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp721:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp722:                               # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	pcalau12i	$a2, %pc_hi20(.L.str.93)
	addi.d	$s5, $a2, %pc_lo12(.L.str.93)
	vld	$vr0, $s5, 0
	ld.b	$s4, $s5, 16
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
	addi.d	$s3, $sp, 32
	st.d	$s3, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
.Ltmp724:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp725:                               # EH_LABEL
# %bb.3:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_5:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB14_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_7:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp727:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp728:                               # EH_LABEL
# %bb.8:                                # %.noexc131
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp730:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp731:                               # EH_LABEL
# %bb.9:                                # %._crit_edge.i.i133
	sub.d	$s8, $s1, $s2
	slli.d	$a1, $s8, 30
	srai.d	$a2, $a1, 32
	st.d	$s3, $sp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.94)
	addi.d	$a1, $a1, %pc_lo12(.L.str.94)
	ld.d	$a3, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a3, $sp, 32
	st.w	$a1, $sp, 40
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 44
.Ltmp733:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp734:                               # EH_LABEL
# %bb.10:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB14_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp736:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp737:                               # EH_LABEL
# %bb.15:                               # %.noexc145
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp739:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp740:                               # EH_LABEL
# %bb.16:                               # %._crit_edge.i.i147
	st.d	$s3, $sp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.95)
	addi.d	$a1, $a1, %pc_lo12(.L.str.95)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 32
	st.h	$a1, $sp, 40
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 42
.Ltmp742:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp743:                               # EH_LABEL
# %bb.17:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_19:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB14_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_21:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp745:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp746:                               # EH_LABEL
# %bb.22:                               # %.noexc159
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp748:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp749:                               # EH_LABEL
# %bb.23:                               # %.noexc.i162
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 80
.Ltmp751:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp752:                               # EH_LABEL
# %bb.24:                               # %.noexc163
	pcalau12i	$a1, %pc_hi20(.LCPI14_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI14_2)
	srli.d	$s2, $s8, 2
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fs2, $fa1
	fmul.d	$fa1, $fs2, $fa0
	vldi	$vr2, -1008
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa1
	srli.d	$a1, $fp, 32
	or	$a1, $a1, $s7
	movgr2fr.d	$fa3, $a1
	fsub.d	$fa3, $fa3, $fs3
	move	$a1, $fp
	bstrins.d	$a1, $s6, 63, 32
	movgr2fr.d	$fa4, $a1
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa0, $fa3, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fadd.d	$fa1, $fa1, $fa2
	vldi	$vr2, -992
	ld.d	$a1, $sp, 80
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa1
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.96)
	addi.d	$a2, $a2, %pc_lo12(.L.str.96)
	vld	$vr1, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr1, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp754:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp755:                               # EH_LABEL
# %bb.25:
	ld.d	$a0, $sp, 16
	addi.d	$s6, $sp, 64
	beq	$a0, $s3, .LBB14_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_27:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB14_29
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_29:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp757:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp758:                               # EH_LABEL
# %bb.30:                               # %.noexc173
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp760:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp761:                               # EH_LABEL
# %bb.31:                               # %.noexc.i176
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 80
.Ltmp763:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp764:                               # EH_LABEL
# %bb.32:                               # %.noexc177
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.97)
	addi.d	$a2, $a2, %pc_lo12(.L.str.97)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp766:                               # EH_LABEL
	movgr2fr.d	$fa0, $zero
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp767:                               # EH_LABEL
# %bb.33:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_35:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB14_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_37:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp769:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp770:                               # EH_LABEL
# %bb.38:                               # %.noexc187
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp772:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp773:                               # EH_LABEL
# %bb.39:                               # %.noexc.i190
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp775:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp776:                               # EH_LABEL
# %bb.40:                               # %.noexc191
	add.w	$a1, $s8, $s2
	addi.w	$s2, $s2, 0
	slt	$a2, $a1, $s2
	maskeqz	$a1, $a1, $a2
	ld.d	$a3, $sp, 80
	masknez	$a2, $s2, $a2
	or	$a2, $a1, $a2
	st.d	$a0, $sp, 16
	st.d	$a3, $sp, 32
	pcalau12i	$a1, %pc_hi20(.L.str.98)
	addi.d	$a1, $a1, %pc_lo12(.L.str.98)
	vld	$vr0, $a1, 0
	ld.b	$a1, $a1, 16
	vst	$vr0, $a0, 0
	st.b	$a1, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a3, $sp, 24
	stx.b	$zero, $a0, $a3
.Ltmp778:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp779:                               # EH_LABEL
# %bb.41:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_43:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB14_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_45:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp781:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp782:                               # EH_LABEL
# %bb.46:                               # %.noexc201
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp784:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp785:                               # EH_LABEL
# %bb.47:                               # %.noexc.i204
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp787:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp788:                               # EH_LABEL
# %bb.48:                               # %.noexc205
	ld.d	$a1, $sp, 80
	srai.d	$a2, $s2, 63
	andn	$a2, $s2, $a2
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a3, %pc_hi20(.L.str.99)
	addi.d	$a3, $a3, %pc_lo12(.L.str.99)
	vld	$vr0, $a3, 0
	ld.b	$a3, $a3, 16
	vst	$vr0, $a0, 0
	st.b	$a3, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp790:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp791:                               # EH_LABEL
# %bb.49:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_51
# %bb.50:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_51:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB14_53
# %bb.52:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_53:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp793:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp794:                               # EH_LABEL
# %bb.54:                               # %.noexc215
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp796:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp797:                               # EH_LABEL
# %bb.55:                               # %.noexc.i218
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp799:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp800:                               # EH_LABEL
# %bb.56:                               # %.noexc219
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a1
	ld.d	$a1, $sp, 80
	ffint.d.w	$fs3, $fa0
	fdiv.d	$fa0, $fs2, $fs3
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.100)
	addi.d	$a2, $a2, %pc_lo12(.L.str.100)
	vld	$vr1, $a2, 0
	ld.b	$a2, $a2, 16
	vst	$vr1, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp802:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp803:                               # EH_LABEL
# %bb.57:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_59
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_59:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB14_61
# %bb.60:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_61:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp805:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp806:                               # EH_LABEL
# %bb.62:                               # %.noexc229
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp808:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp809:                               # EH_LABEL
# %bb.63:                               # %.noexc.i232
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp811:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp812:                               # EH_LABEL
# %bb.64:                               # %.noexc233
	vldi	$vr0, -1004
	fmul.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fa0
	fsel	$fa0, $fa0, $fs0, $fcc0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	fsub.d	$fa1, $fa0, $fs1
	ftintrz.l.d	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	lu52i.d	$a3, $zero, -2048
	xor	$a1, $a1, $a3
	ld.d	$a3, $sp, 80
	pcalau12i	$a4, %pc_hi20(.L.str.101)
	vld	$vr0, $a4, %pc_lo12(.L.str.101)
	movcf2gr	$a4, $fcc0
	maskeqz	$a2, $a2, $a4
	st.d	$a0, $sp, 16
	st.d	$a3, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	masknez	$a1, $a1, $a4
	or	$a2, $a2, $a1
	st.d	$a3, $sp, 24
	stx.b	$zero, $a0, $a3
.Ltmp814:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp815:                               # EH_LABEL
# %bb.65:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_67
# %bb.66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_67:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB14_69
# %bb.68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_69:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp817:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp818:                               # EH_LABEL
# %bb.70:                               # %.noexc243
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp820:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp821:                               # EH_LABEL
# %bb.71:                               # %.noexc.i246
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp823:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp824:                               # EH_LABEL
# %bb.72:                               # %.noexc247
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.102)
	vld	$vr0, $a2, %pc_lo12(.L.str.102)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp826:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp827:                               # EH_LABEL
# %bb.73:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_75
# %bb.74:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_75:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB14_77
# %bb.76:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_77:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp829:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp830:                               # EH_LABEL
# %bb.78:                               # %.noexc257
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp832:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp833:                               # EH_LABEL
# %bb.79:                               # %.noexc.i260
	move	$s0, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp835:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp836:                               # EH_LABEL
# %bb.80:                               # %.noexc261
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.103)
	vld	$vr0, $a2, %pc_lo12(.L.str.103)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	fdiv.d	$fa0, $fs0, $fs3
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp838:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp839:                               # EH_LABEL
# %bb.81:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB14_83
# %bb.82:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_83:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB14_85
# %bb.84:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_85:
	move	$a0, $fp
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB14_86:
.Ltmp840:                               # EH_LABEL
	b	.LBB14_125
.LBB14_87:
.Ltmp837:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_88:
.Ltmp834:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_89:
.Ltmp831:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_90:
.Ltmp828:                               # EH_LABEL
	b	.LBB14_125
.LBB14_91:
.Ltmp825:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_92:
.Ltmp822:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_93:
.Ltmp819:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_94:
.Ltmp816:                               # EH_LABEL
	b	.LBB14_125
.LBB14_95:
.Ltmp813:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_96:
.Ltmp810:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_97:
.Ltmp807:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_98:
.Ltmp804:                               # EH_LABEL
	b	.LBB14_125
.LBB14_99:
.Ltmp801:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_100:
.Ltmp798:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_101:
.Ltmp795:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_102:
.Ltmp792:                               # EH_LABEL
	b	.LBB14_125
.LBB14_103:
.Ltmp789:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_104:
.Ltmp786:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_105:
.Ltmp783:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_106:
.Ltmp780:                               # EH_LABEL
	b	.LBB14_125
.LBB14_107:
.Ltmp777:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_108:
.Ltmp774:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_109:
.Ltmp771:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_110:
.Ltmp768:                               # EH_LABEL
	b	.LBB14_125
.LBB14_111:
.Ltmp765:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_112:
.Ltmp762:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_113:
.Ltmp759:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_114:
.Ltmp756:                               # EH_LABEL
	b	.LBB14_125
.LBB14_115:
.Ltmp753:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_116:
.Ltmp750:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_117:
.Ltmp747:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_118:
.Ltmp744:                               # EH_LABEL
	b	.LBB14_125
.LBB14_119:
.Ltmp741:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_120:
.Ltmp738:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_121:
.Ltmp735:                               # EH_LABEL
	b	.LBB14_125
.LBB14_122:
.Ltmp732:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB14_127
.LBB14_123:
.Ltmp729:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_124:
.Ltmp726:                               # EH_LABEL
.LBB14_125:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s3, .LBB14_127
# %bb.126:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_127:
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB14_129
# %bb.128:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_129:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_130:
.Ltmp723:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc, .Lfunc_end14-_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,"aG",@progbits,_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp721-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp722-.Ltmp721              #   Call between .Ltmp721 and .Ltmp722
	.uleb128 .Ltmp723-.Lfunc_begin8         #     jumps to .Ltmp723
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp724-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp725-.Ltmp724              #   Call between .Ltmp724 and .Ltmp725
	.uleb128 .Ltmp726-.Lfunc_begin8         #     jumps to .Ltmp726
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp725-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp727-.Ltmp725              #   Call between .Ltmp725 and .Ltmp727
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp727-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp728-.Ltmp727              #   Call between .Ltmp727 and .Ltmp728
	.uleb128 .Ltmp729-.Lfunc_begin8         #     jumps to .Ltmp729
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp730-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp731-.Ltmp730              #   Call between .Ltmp730 and .Ltmp731
	.uleb128 .Ltmp732-.Lfunc_begin8         #     jumps to .Ltmp732
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp733-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp734-.Ltmp733              #   Call between .Ltmp733 and .Ltmp734
	.uleb128 .Ltmp735-.Lfunc_begin8         #     jumps to .Ltmp735
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp734-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp736-.Ltmp734              #   Call between .Ltmp734 and .Ltmp736
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp736-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp737-.Ltmp736              #   Call between .Ltmp736 and .Ltmp737
	.uleb128 .Ltmp738-.Lfunc_begin8         #     jumps to .Ltmp738
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp739-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp740-.Ltmp739              #   Call between .Ltmp739 and .Ltmp740
	.uleb128 .Ltmp741-.Lfunc_begin8         #     jumps to .Ltmp741
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp742-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp743-.Ltmp742              #   Call between .Ltmp742 and .Ltmp743
	.uleb128 .Ltmp744-.Lfunc_begin8         #     jumps to .Ltmp744
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp743-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp745-.Ltmp743              #   Call between .Ltmp743 and .Ltmp745
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp745-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp746-.Ltmp745              #   Call between .Ltmp745 and .Ltmp746
	.uleb128 .Ltmp747-.Lfunc_begin8         #     jumps to .Ltmp747
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp748-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp749-.Ltmp748              #   Call between .Ltmp748 and .Ltmp749
	.uleb128 .Ltmp750-.Lfunc_begin8         #     jumps to .Ltmp750
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp751-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Ltmp752-.Ltmp751              #   Call between .Ltmp751 and .Ltmp752
	.uleb128 .Ltmp753-.Lfunc_begin8         #     jumps to .Ltmp753
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp754-.Lfunc_begin8         # >> Call Site 15 <<
	.uleb128 .Ltmp755-.Ltmp754              #   Call between .Ltmp754 and .Ltmp755
	.uleb128 .Ltmp756-.Lfunc_begin8         #     jumps to .Ltmp756
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp755-.Lfunc_begin8         # >> Call Site 16 <<
	.uleb128 .Ltmp757-.Ltmp755              #   Call between .Ltmp755 and .Ltmp757
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp757-.Lfunc_begin8         # >> Call Site 17 <<
	.uleb128 .Ltmp758-.Ltmp757              #   Call between .Ltmp757 and .Ltmp758
	.uleb128 .Ltmp759-.Lfunc_begin8         #     jumps to .Ltmp759
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp760-.Lfunc_begin8         # >> Call Site 18 <<
	.uleb128 .Ltmp761-.Ltmp760              #   Call between .Ltmp760 and .Ltmp761
	.uleb128 .Ltmp762-.Lfunc_begin8         #     jumps to .Ltmp762
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp763-.Lfunc_begin8         # >> Call Site 19 <<
	.uleb128 .Ltmp764-.Ltmp763              #   Call between .Ltmp763 and .Ltmp764
	.uleb128 .Ltmp765-.Lfunc_begin8         #     jumps to .Ltmp765
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp766-.Lfunc_begin8         # >> Call Site 20 <<
	.uleb128 .Ltmp767-.Ltmp766              #   Call between .Ltmp766 and .Ltmp767
	.uleb128 .Ltmp768-.Lfunc_begin8         #     jumps to .Ltmp768
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp767-.Lfunc_begin8         # >> Call Site 21 <<
	.uleb128 .Ltmp769-.Ltmp767              #   Call between .Ltmp767 and .Ltmp769
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp769-.Lfunc_begin8         # >> Call Site 22 <<
	.uleb128 .Ltmp770-.Ltmp769              #   Call between .Ltmp769 and .Ltmp770
	.uleb128 .Ltmp771-.Lfunc_begin8         #     jumps to .Ltmp771
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp772-.Lfunc_begin8         # >> Call Site 23 <<
	.uleb128 .Ltmp773-.Ltmp772              #   Call between .Ltmp772 and .Ltmp773
	.uleb128 .Ltmp774-.Lfunc_begin8         #     jumps to .Ltmp774
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp775-.Lfunc_begin8         # >> Call Site 24 <<
	.uleb128 .Ltmp776-.Ltmp775              #   Call between .Ltmp775 and .Ltmp776
	.uleb128 .Ltmp777-.Lfunc_begin8         #     jumps to .Ltmp777
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp778-.Lfunc_begin8         # >> Call Site 25 <<
	.uleb128 .Ltmp779-.Ltmp778              #   Call between .Ltmp778 and .Ltmp779
	.uleb128 .Ltmp780-.Lfunc_begin8         #     jumps to .Ltmp780
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp779-.Lfunc_begin8         # >> Call Site 26 <<
	.uleb128 .Ltmp781-.Ltmp779              #   Call between .Ltmp779 and .Ltmp781
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp781-.Lfunc_begin8         # >> Call Site 27 <<
	.uleb128 .Ltmp782-.Ltmp781              #   Call between .Ltmp781 and .Ltmp782
	.uleb128 .Ltmp783-.Lfunc_begin8         #     jumps to .Ltmp783
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp784-.Lfunc_begin8         # >> Call Site 28 <<
	.uleb128 .Ltmp785-.Ltmp784              #   Call between .Ltmp784 and .Ltmp785
	.uleb128 .Ltmp786-.Lfunc_begin8         #     jumps to .Ltmp786
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp787-.Lfunc_begin8         # >> Call Site 29 <<
	.uleb128 .Ltmp788-.Ltmp787              #   Call between .Ltmp787 and .Ltmp788
	.uleb128 .Ltmp789-.Lfunc_begin8         #     jumps to .Ltmp789
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp790-.Lfunc_begin8         # >> Call Site 30 <<
	.uleb128 .Ltmp791-.Ltmp790              #   Call between .Ltmp790 and .Ltmp791
	.uleb128 .Ltmp792-.Lfunc_begin8         #     jumps to .Ltmp792
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp791-.Lfunc_begin8         # >> Call Site 31 <<
	.uleb128 .Ltmp793-.Ltmp791              #   Call between .Ltmp791 and .Ltmp793
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp793-.Lfunc_begin8         # >> Call Site 32 <<
	.uleb128 .Ltmp794-.Ltmp793              #   Call between .Ltmp793 and .Ltmp794
	.uleb128 .Ltmp795-.Lfunc_begin8         #     jumps to .Ltmp795
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp796-.Lfunc_begin8         # >> Call Site 33 <<
	.uleb128 .Ltmp797-.Ltmp796              #   Call between .Ltmp796 and .Ltmp797
	.uleb128 .Ltmp798-.Lfunc_begin8         #     jumps to .Ltmp798
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp799-.Lfunc_begin8         # >> Call Site 34 <<
	.uleb128 .Ltmp800-.Ltmp799              #   Call between .Ltmp799 and .Ltmp800
	.uleb128 .Ltmp801-.Lfunc_begin8         #     jumps to .Ltmp801
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp802-.Lfunc_begin8         # >> Call Site 35 <<
	.uleb128 .Ltmp803-.Ltmp802              #   Call between .Ltmp802 and .Ltmp803
	.uleb128 .Ltmp804-.Lfunc_begin8         #     jumps to .Ltmp804
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp803-.Lfunc_begin8         # >> Call Site 36 <<
	.uleb128 .Ltmp805-.Ltmp803              #   Call between .Ltmp803 and .Ltmp805
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp805-.Lfunc_begin8         # >> Call Site 37 <<
	.uleb128 .Ltmp806-.Ltmp805              #   Call between .Ltmp805 and .Ltmp806
	.uleb128 .Ltmp807-.Lfunc_begin8         #     jumps to .Ltmp807
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin8         # >> Call Site 38 <<
	.uleb128 .Ltmp809-.Ltmp808              #   Call between .Ltmp808 and .Ltmp809
	.uleb128 .Ltmp810-.Lfunc_begin8         #     jumps to .Ltmp810
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp811-.Lfunc_begin8         # >> Call Site 39 <<
	.uleb128 .Ltmp812-.Ltmp811              #   Call between .Ltmp811 and .Ltmp812
	.uleb128 .Ltmp813-.Lfunc_begin8         #     jumps to .Ltmp813
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp814-.Lfunc_begin8         # >> Call Site 40 <<
	.uleb128 .Ltmp815-.Ltmp814              #   Call between .Ltmp814 and .Ltmp815
	.uleb128 .Ltmp816-.Lfunc_begin8         #     jumps to .Ltmp816
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp815-.Lfunc_begin8         # >> Call Site 41 <<
	.uleb128 .Ltmp817-.Ltmp815              #   Call between .Ltmp815 and .Ltmp817
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp817-.Lfunc_begin8         # >> Call Site 42 <<
	.uleb128 .Ltmp818-.Ltmp817              #   Call between .Ltmp817 and .Ltmp818
	.uleb128 .Ltmp819-.Lfunc_begin8         #     jumps to .Ltmp819
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp820-.Lfunc_begin8         # >> Call Site 43 <<
	.uleb128 .Ltmp821-.Ltmp820              #   Call between .Ltmp820 and .Ltmp821
	.uleb128 .Ltmp822-.Lfunc_begin8         #     jumps to .Ltmp822
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp823-.Lfunc_begin8         # >> Call Site 44 <<
	.uleb128 .Ltmp824-.Ltmp823              #   Call between .Ltmp823 and .Ltmp824
	.uleb128 .Ltmp825-.Lfunc_begin8         #     jumps to .Ltmp825
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp826-.Lfunc_begin8         # >> Call Site 45 <<
	.uleb128 .Ltmp827-.Ltmp826              #   Call between .Ltmp826 and .Ltmp827
	.uleb128 .Ltmp828-.Lfunc_begin8         #     jumps to .Ltmp828
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp827-.Lfunc_begin8         # >> Call Site 46 <<
	.uleb128 .Ltmp829-.Ltmp827              #   Call between .Ltmp827 and .Ltmp829
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp829-.Lfunc_begin8         # >> Call Site 47 <<
	.uleb128 .Ltmp830-.Ltmp829              #   Call between .Ltmp829 and .Ltmp830
	.uleb128 .Ltmp831-.Lfunc_begin8         #     jumps to .Ltmp831
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp832-.Lfunc_begin8         # >> Call Site 48 <<
	.uleb128 .Ltmp833-.Ltmp832              #   Call between .Ltmp832 and .Ltmp833
	.uleb128 .Ltmp834-.Lfunc_begin8         #     jumps to .Ltmp834
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp835-.Lfunc_begin8         # >> Call Site 49 <<
	.uleb128 .Ltmp836-.Ltmp835              #   Call between .Ltmp835 and .Ltmp836
	.uleb128 .Ltmp837-.Lfunc_begin8         #     jumps to .Ltmp837
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp838-.Lfunc_begin8         # >> Call Site 50 <<
	.uleb128 .Ltmp839-.Ltmp838              #   Call between .Ltmp838 and .Ltmp839
	.uleb128 .Ltmp840-.Lfunc_begin8         #     jumps to .Ltmp840
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp839-.Lfunc_begin8         # >> Call Site 51 <<
	.uleb128 .Lfunc_end14-.Ltmp839          #   Call between .Ltmp839 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,"axG",@progbits,_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,comdat
	.weak	_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_ # -- Begin function _ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_
	.p2align	5
	.type	_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,@function
_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_: # @_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
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
	move	$s2, $a0
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	sub.d	$s4, $a1, $a2
	srai.d	$s3, $s4, 1
	srli.d	$a0, $s3, 61
	bnez	$a0, .LBB15_87
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	srai.d	$s8, $s4, 2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	beq	$a1, $a2, .LBB15_23
# %bb.2:
	slli.d	$s0, $s4, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $fp, 0
	addi.d	$a0, $fp, 4
	addi.d	$s1, $s0, -4
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp841:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp842:                               # EH_LABEL
# %bb.3:                                # %.lr.ph
	move	$s0, $a0
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.w	$zero, $s0, 0
	addi.d	$a0, $s0, 4
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 104
	ld.d	$a1, $s2, 80
	move	$s5, $zero
	move	$a7, $zero
	ld.d	$a2, $s2, 32
	addi.d	$a3, $a0, 8
	addi.d	$a4, $a1, 4
	ori	$a5, $zero, 2
	ori	$a6, $zero, 1
	b	.LBB15_5
	.p2align	4, , 16
.LBB15_4:                               # %_ZSt11lower_boundIPimET_S1_S1_RKT0_.exit
                                        #   in Loop: Header=BB15_5 Depth=1
	alsl.d	$t3, $a7, $a2, 2
	ld.w	$t3, $t3, 0
	add.d	$t5, $fp, $t1
	alsl.d	$a7, $a7, $s0, 3
	add.d	$t1, $s0, $t1
	alsl.d	$t3, $t3, $t4, 2
	sub.d	$t2, $t3, $t2
	ld.w	$t1, $t1, 0
	srli.d	$t2, $t2, 2
	st.w	$t2, $t5, 0
	st.w	$t2, $a7, 0
	add.d	$a7, $t1, $s5
	sub.w	$s5, $a7, $t2
	move	$a7, $t0
	beq	$t0, $s8, .LBB15_15
.LBB15_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_9 Depth 2
                                        #       Child Loop BB15_10 Depth 3
                                        #     Child Loop BB15_14 Depth 2
	slli.d	$t0, $a7, 2
	ldx.w	$t5, $a2, $t0
	addi.d	$t0, $a7, 1
	slli.d	$t2, $t0, 2
	ldx.w	$t3, $a2, $t2
	slli.d	$t4, $a7, 3
	stx.w	$t5, $fp, $t4
	ldx.w	$t6, $a2, $t2
	addi.d	$t1, $t4, 4
	stx.w	$t6, $fp, $t1
	stx.w	$t6, $s0, $t4
	ldx.w	$t4, $a2, $t2
	alsl.d	$t2, $t5, $a1, 2
	sub.d	$t3, $t3, $t5
	stx.w	$t4, $s0, $t1
	blt	$t3, $a5, .LBB15_12
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	slli.d	$t6, $t5, 2
	alsl.d	$t4, $t5, $a0, 3
	alsl.d	$t5, $t5, $a3, 3
	add.d	$t6, $a4, $t6
	ori	$t7, $zero, 1
	b	.LBB15_9
	.p2align	4, , 16
.LBB15_7:                               #   in Loop: Header=BB15_9 Depth=2
	move	$s1, $zero
.LBB15_8:                               # %.critedge.i
                                        #   in Loop: Header=BB15_9 Depth=2
	slli.d	$s3, $s1, 2
	stx.w	$t8, $t2, $s3
	slli.d	$t8, $s1, 3
	fstx.d	$fa0, $t4, $t8
	addi.d	$t7, $t7, 1
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 4
	beq	$t7, $t3, .LBB15_12
.LBB15_9:                               # %.lr.ph.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_10 Depth 3
	slli.d	$t8, $t7, 2
	ldx.w	$t8, $t2, $t8
	slli.d	$s1, $t7, 3
	fldx.d	$fa0, $t4, $s1
	move	$s3, $t6
	move	$s6, $t5
	move	$s1, $t7
	.p2align	4, , 16
.LBB15_10:                              #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s7, $s3, -4
	bge	$t8, $s7, .LBB15_8
# %bb.11:                               #   in Loop: Header=BB15_10 Depth=3
	fld.d	$fa1, $s6, -8
	addi.d	$s1, $s1, -1
	st.w	$s7, $s3, 0
	fst.d	$fa1, $s6, 0
	addi.d	$s6, $s6, -8
	addi.d	$s7, $s1, 1
	addi.d	$s3, $s3, -4
	blt	$a6, $s7, .LBB15_10
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_12:                              # %_ZN6miniFE20sort_with_companionsIidEEvlPT_PT0_.exit
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$t4, $t2
	blez	$t3, .LBB15_4
# %bb.13:                               # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$t4, $t2
	.p2align	4, , 16
.LBB15_14:                              # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t5, $t3, 1
	slli.d	$t6, $t5, 2
	ldx.w	$t6, $t4, $t6
	alsl.d	$t7, $t5, $t4, 2
	sltu	$t6, $t6, $s8
	addi.d	$t7, $t7, 4
	nor	$t8, $t5, $zero
	add.d	$t3, $t3, $t8
	maskeqz	$t3, $t3, $t6
	masknez	$t5, $t5, $t6
	or	$t3, $t3, $t5
	maskeqz	$t5, $t7, $t6
	masknez	$t4, $t4, $t6
	or	$t4, $t5, $t4
	bgtz	$t3, .LBB15_14
	b	.LBB15_4
.LBB15_15:                              # %._crit_edge
	bltz	$s5, .LBB15_88
# %bb.16:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i140
	beqz	$s5, .LBB15_24
# %bb.17:
	slli.d	$a0, $s5, 2
.Ltmp844:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp845:                               # EH_LABEL
# %bb.18:                               # %.noexc146
	move	$s1, $a0
	st.w	$zero, $a0, 0
	addi.d	$s6, $s5, -1
	addi.d	$s3, $a0, 4
	beqz	$s6, .LBB15_20
# %bb.19:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	slli.d	$a2, $s6, 2
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s3, $s6, $s3, 2
.LBB15_20:
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	alsl.d	$a0, $s5, $s1, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $s5, 3
.Ltmp846:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp847:                               # EH_LABEL
# %bb.21:                               # %.noexc152
	move	$s3, $a0
	alsl.d	$s7, $s5, $a0, 3
	st.d	$zero, $a0, 0
	beqz	$s6, .LBB15_25
# %bb.22:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $s3, 8
	slli.d	$a2, $s6, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB15_25
.LBB15_23:
	move	$s0, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s1, $zero
	move	$s3, $zero
	move	$s7, $zero
	ori	$s6, $zero, 1
	b	.LBB15_27
.LBB15_24:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s1, $zero
	move	$s3, $zero
	move	$s7, $zero
.LBB15_25:                              # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
	addi.d	$s6, $s8, 1
	srli.d	$a0, $s6, 61
	bnez	$a0, .LBB15_90
# %bb.26:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i153
	beqz	$s6, .LBB15_75
.LBB15_27:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i153.thread
	slli.d	$a0, $s6, 2
.Ltmp854:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp855:                               # EH_LABEL
# %bb.28:                               # %.noexc160
	move	$s5, $a0
	alsl.d	$a0, $s6, $a0, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $s5, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB15_30
# %bb.29:                               # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit161.thread488
	addi.d	$a0, $s5, 4
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB15_76
.LBB15_30:
	move	$a0, $zero
.LBB15_31:                              # %._crit_edge302
	ld.d	$a2, $s2, 40
	ld.d	$a1, $s2, 32
	sub.d	$a3, $a2, $a1
	srai.d	$a3, $a3, 2
	stx.w	$a0, $s5, $s4
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a3, $s6, .LBB15_34
# %bb.32:
	addi.d	$s7, $s2, 32
	sub.d	$a1, $s6, $a3
.Ltmp857:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp858:                               # EH_LABEL
# %bb.33:                               # %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge
	ld.d	$a1, $s7, 0
	b	.LBB15_37
.LBB15_34:
	bgeu	$s6, $a3, .LBB15_37
# %bb.35:
	alsl.d	$a0, $s6, $a1, 2
	beq	$a2, $a0, .LBB15_37
# %bb.36:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $s2, 40
.LBB15_37:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB15_43
# %bb.38:                               # %.lr.ph312
	ld.d	$a0, $s2, 80
	ld.d	$a2, $s2, 104
	move	$a3, $zero
	move	$s7, $zero
	b	.LBB15_40
	.p2align	4, , 16
.LBB15_39:                              # %._crit_edge308
                                        #   in Loop: Header=BB15_40 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s8, .LBB15_44
.LBB15_40:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_42 Depth 2
	slli.d	$a4, $a3, 2
	stx.w	$s7, $a1, $a4
	slli.d	$a5, $a3, 3
	alsl.d	$a4, $a3, $fp, 3
	ldx.w	$a5, $fp, $a5
	ld.w	$a6, $a4, 4
	bge	$a5, $a6, .LBB15_39
# %bb.41:                               # %.lr.ph307.preheader
                                        #   in Loop: Header=BB15_40 Depth=1
	alsl.d	$a6, $s7, $a0, 2
	alsl.d	$a7, $s7, $a2, 3
	alsl.d	$t0, $a5, $a0, 2
	alsl.d	$t1, $a5, $a2, 3
	.p2align	4, , 16
.LBB15_42:                              # %.lr.ph307
                                        #   Parent Loop BB15_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	fld.d	$fa0, $t1, 0
	st.w	$t2, $a6, 0
	fst.d	$fa0, $a7, 0
	addi.d	$a5, $a5, 1
	ld.w	$t2, $a4, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 8
	addi.w	$s7, $s7, 1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	blt	$a5, $t2, .LBB15_42
	b	.LBB15_39
.LBB15_43:
	move	$s7, $zero
.LBB15_44:                              # %._crit_edge313
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s1
	srai.d	$a3, $a0, 2
	add.d	$a0, $a3, $s7
	stx.w	$s7, $a1, $s4
	bgeu	$s7, $a0, .LBB15_48
# %bb.45:                               # %.lr.ph317
	ld.d	$a2, $s2, 80
	ld.d	$a6, $s2, 104
	ori	$a7, $zero, 10
	slli.d	$a5, $s7, 2
	slli.d	$a4, $s7, 3
	move	$a1, $s7
	bgeu	$a3, $a7, .LBB15_70
.LBB15_46:                              # %scalar.ph536.preheader
	slli.d	$a7, $a1, 3
	alsl.d	$a3, $a1, $a6, 3
	slli.d	$a6, $a1, 2
	alsl.d	$a2, $a1, $a2, 2
	sub.d	$a5, $a6, $a5
	add.d	$a5, $s1, $a5
	sub.d	$a4, $a7, $a4
	add.d	$a4, $s3, $a4
	.p2align	4, , 16
.LBB15_47:                              # %scalar.ph536
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	fld.d	$fa0, $a4, 0
	st.w	$a6, $a2, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 8
	bltu	$a1, $a0, .LBB15_47
.LBB15_48:                              # %._crit_edge318
	ld.d	$a1, $s2, 64
	ld.d	$a0, $s2, 56
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 2
	bgeu	$a2, $s6, .LBB15_51
# %bb.49:
	addi.d	$s2, $s2, 56
	sub.d	$a1, $s6, $a2
.Ltmp860:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp861:                               # EH_LABEL
# %bb.50:                               # %._ZNSt6vectorIiSaIiEE6resizeEm.exit166_crit_edge
	ld.d	$a0, $s2, 0
	b	.LBB15_54
.LBB15_51:
	bgeu	$s6, $a2, .LBB15_54
# %bb.52:
	alsl.d	$a2, $s6, $a0, 2
	beq	$a1, $a2, .LBB15_54
# %bb.53:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i164
	st.d	$a2, $s2, 64
.LBB15_54:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit166
	move	$a1, $zero
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $s6
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s6, $a3
	ori	$a4, $zero, 8
	or	$a2, $a3, $a2
	bltu	$s6, $a4, .LBB15_59
# %bb.55:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit166
	sub.d	$a3, $a0, $s5
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB15_59
# %bb.56:                               # %vector.ph555
	move	$a1, $a2
	bstrins.d	$a1, $zero, 2, 0
	vreplgr2vr.w	$vr0, $s7
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s5, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB15_57:                              # %vector.body558
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB15_57
# %bb.58:                               # %middle.block563
	beq	$s6, $a1, .LBB15_61
.LBB15_59:                              # %scalar.ph553.preheader
	sub.d	$a2, $a2, $a1
	alsl.d	$a3, $a1, $s5, 2
	alsl.d	$a0, $a1, $a0, 2
	.p2align	4, , 16
.LBB15_60:                              # %scalar.ph553
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a3, 0
	add.d	$a1, $a1, $s7
	st.w	$a1, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB15_60
.LBB15_61:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit168
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB15_63
# %bb.62:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_63:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	beqz	$s1, .LBB15_65
# %bb.64:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_65:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit171
	beqz	$s0, .LBB15_67
# %bb.66:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_67:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit173
	beqz	$fp, .LBB15_69
# %bb.68:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB15_69:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit175
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
.LBB15_70:                              # %vector.memcheck531
	alsl.d	$a1, $s7, $a2, 2
	sub.d	$a7, $a1, $s1
	ori	$t0, $zero, 8
	move	$a1, $s7
	bltu	$a7, $t0, .LBB15_46
# %bb.71:                               # %vector.memcheck531
	alsl.d	$a1, $s7, $a6, 3
	sub.d	$a7, $a1, $s3
	ori	$t0, $zero, 16
	move	$a1, $s7
	bltu	$a7, $t0, .LBB15_46
# %bb.72:                               # %vector.ph538
	move	$a7, $a3
	bstrins.d	$a7, $zero, 0, 0
	add.d	$a1, $a7, $s7
	add.d	$t0, $a6, $a4
	add.d	$t1, $a2, $a5
	move	$t2, $a7
	move	$t3, $s3
	move	$t4, $s1
	.p2align	4, , 16
.LBB15_73:                              # %vector.body541
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t5, $t4, 0
	vld	$vr0, $t3, 0
	st.d	$t5, $t1, 0
	vst	$vr0, $t0, 0
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, -2
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB15_73
# %bb.74:                               # %middle.block547
	bne	$a3, $a7, .LBB15_46
	b	.LBB15_48
.LBB15_75:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	move	$s5, $zero
	move	$s6, $zero
.LBB15_76:                              # %.lr.ph301
	move	$a1, $zero
	move	$a0, $zero
	ld.d	$a2, $s2, 80
	ld.d	$a3, $s2, 104
	ori	$a4, $zero, 6
	ori	$a5, $zero, 8
	ori	$a6, $zero, 16
	b	.LBB15_78
	.p2align	4, , 16
.LBB15_77:                              # %._crit_edge297
                                        #   in Loop: Header=BB15_78 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s8, .LBB15_31
.LBB15_78:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_85 Depth 2
                                        #     Child Loop BB15_81 Depth 2
	slli.d	$a7, $a1, 3
	alsl.d	$t0, $a1, $s0, 3
	ldx.w	$a7, $s0, $a7
	ld.w	$t0, $t0, 4
	slli.d	$t1, $a1, 2
	stx.w	$a0, $s5, $t1
	bge	$a7, $t0, .LBB15_77
# %bb.79:                               # %.lr.ph296.preheader
                                        #   in Loop: Header=BB15_78 Depth=1
	sub.d	$t1, $t0, $a7
	addi.w	$a0, $a0, 0
	bgeu	$t1, $a4, .LBB15_82
.LBB15_80:                              # %.lr.ph296.preheader567
                                        #   in Loop: Header=BB15_78 Depth=1
	alsl.d	$t1, $a0, $s1, 2
	alsl.d	$t2, $a0, $s3, 3
	alsl.d	$t3, $a7, $a2, 2
	alsl.d	$t4, $a7, $a3, 3
	sub.d	$t5, $t0, $a7
	add.d	$a0, $a0, $t0
	sub.d	$a0, $a0, $a7
	.p2align	4, , 16
.LBB15_81:                              # %.lr.ph296
                                        #   Parent Loop BB15_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $t3, 0
	fld.d	$fa0, $t4, 0
	st.w	$a7, $t1, 0
	fst.d	$fa0, $t2, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 4
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB15_81
	b	.LBB15_77
	.p2align	4, , 16
.LBB15_82:                              # %vector.memcheck
                                        #   in Loop: Header=BB15_78 Depth=1
	alsl.d	$t2, $a0, $s1, 2
	alsl.d	$t3, $a7, $a2, 2
	sub.d	$t2, $t2, $t3
	bltu	$t2, $a5, .LBB15_80
# %bb.83:                               # %vector.memcheck
                                        #   in Loop: Header=BB15_78 Depth=1
	alsl.d	$t2, $a0, $s3, 3
	alsl.d	$t3, $a7, $a3, 3
	sub.d	$t2, $t2, $t3
	bltu	$t2, $a6, .LBB15_80
# %bb.84:                               # %vector.ph
                                        #   in Loop: Header=BB15_78 Depth=1
	slli.d	$t6, $a0, 2
	slli.d	$t4, $a7, 2
	slli.d	$t5, $a0, 3
	slli.d	$t3, $a7, 3
	move	$t2, $t1
	bstrins.d	$t2, $zero, 0, 0
	add.d	$a0, $t2, $a0
	add.d	$a7, $t2, $a7
	add.d	$t3, $a3, $t3
	add.d	$t4, $a2, $t4
	add.d	$t5, $s3, $t5
	add.d	$t6, $s1, $t6
	move	$t7, $t2
	.p2align	4, , 16
.LBB15_85:                              # %vector.body
                                        #   Parent Loop BB15_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t8, $t4, 0
	vld	$vr0, $t3, 0
	st.d	$t8, $t6, 0
	vst	$vr0, $t5, 0
	addi.d	$t7, $t7, -2
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 8
	bnez	$t7, .LBB15_85
# %bb.86:                               # %middle.block
                                        #   in Loop: Header=BB15_78 Depth=1
	beq	$t1, $t2, .LBB15_77
	b	.LBB15_80
.LBB15_87:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB15_88:
.Ltmp851:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp852:                               # EH_LABEL
# %bb.89:                               # %.noexc145
.LBB15_90:
.Ltmp849:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp850:                               # EH_LABEL
# %bb.91:                               # %.noexc159
.LBB15_92:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit177.thread
.Ltmp848:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB15_105
.LBB15_93:
.Ltmp862:                               # EH_LABEL
	move	$s2, $a0
	bnez	$s5, .LBB15_100
# %bb.94:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	bnez	$s3, .LBB15_104
.LBB15_95:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit177
	bnez	$s1, .LBB15_105
.LBB15_96:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit179
	bnez	$s0, .LBB15_106
.LBB15_97:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit181
	bnez	$fp, .LBB15_107
.LBB15_98:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit183
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_99:                              # %.thread
.Ltmp859:                               # EH_LABEL
	move	$s2, $a0
.LBB15_100:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB15_95
	b	.LBB15_104
.LBB15_101:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit181.thread
.Ltmp843:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB15_107
.LBB15_102:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit179.thread
.Ltmp853:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB15_106
.LBB15_103:
.Ltmp856:                               # EH_LABEL
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a0
	beqz	$s3, .LBB15_95
.LBB15_104:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB15_96
.LBB15_105:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB15_97
.LBB15_106:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB15_98
.LBB15_107:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_, .Lfunc_end15-_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,"aG",@progbits,_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp841-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp841
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp841-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp842-.Ltmp841              #   Call between .Ltmp841 and .Ltmp842
	.uleb128 .Ltmp843-.Lfunc_begin9         #     jumps to .Ltmp843
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp842-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp844-.Ltmp842              #   Call between .Ltmp842 and .Ltmp844
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp844-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp845-.Ltmp844              #   Call between .Ltmp844 and .Ltmp845
	.uleb128 .Ltmp853-.Lfunc_begin9         #     jumps to .Ltmp853
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp845-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp846-.Ltmp845              #   Call between .Ltmp845 and .Ltmp846
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp846-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp847-.Ltmp846              #   Call between .Ltmp846 and .Ltmp847
	.uleb128 .Ltmp848-.Lfunc_begin9         #     jumps to .Ltmp848
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp847-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp854-.Ltmp847              #   Call between .Ltmp847 and .Ltmp854
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp854-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp855-.Ltmp854              #   Call between .Ltmp854 and .Ltmp855
	.uleb128 .Ltmp856-.Lfunc_begin9         #     jumps to .Ltmp856
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp855-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Ltmp857-.Ltmp855              #   Call between .Ltmp855 and .Ltmp857
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp857-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Ltmp858-.Ltmp857              #   Call between .Ltmp857 and .Ltmp858
	.uleb128 .Ltmp859-.Lfunc_begin9         #     jumps to .Ltmp859
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp860-.Lfunc_begin9         # >> Call Site 11 <<
	.uleb128 .Ltmp861-.Ltmp860              #   Call between .Ltmp860 and .Ltmp861
	.uleb128 .Ltmp862-.Lfunc_begin9         #     jumps to .Ltmp862
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp861-.Lfunc_begin9         # >> Call Site 12 <<
	.uleb128 .Ltmp851-.Ltmp861              #   Call between .Ltmp861 and .Ltmp851
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp851-.Lfunc_begin9         # >> Call Site 13 <<
	.uleb128 .Ltmp852-.Ltmp851              #   Call between .Ltmp851 and .Ltmp852
	.uleb128 .Ltmp853-.Lfunc_begin9         #     jumps to .Ltmp853
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp849-.Lfunc_begin9         # >> Call Site 14 <<
	.uleb128 .Ltmp850-.Ltmp849              #   Call between .Ltmp849 and .Ltmp850
	.uleb128 .Ltmp856-.Lfunc_begin9         #     jumps to .Ltmp856
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp850-.Lfunc_begin9         # >> Call Site 15 <<
	.uleb128 .Lfunc_end15-.Ltmp850          #   Call between .Ltmp850 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.LCPI16_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
.LCPI16_1:
	.dword	0x4059000000000000              # double 100
.LCPI16_2:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.section	.text._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"axG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.weak	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.p2align	5
	.type	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,@function
_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd: # @_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 216                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	ld.d	$fp, $sp, 368
	move	$s1, $a7
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	move	$s0, $a4
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s7, $a0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 0
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	beqz	$a0, .LBB16_15
# %bb.1:
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 2
	addi.w	$s6, $a1, 0
	bltz	$s6, .LBB16_184
# %bb.2:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
	ld.w	$s8, $s7, 128
	slli.d	$a0, $a0, 30
	srai.d	$s5, $a0, 32
	slli.d	$s4, $s5, 3
	addi.d	$fp, $s5, -1
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	beqz	$s6, .LBB16_18
# %bb.3:                                # %.noexc7.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s5, $a0, 3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$s3, $a0, 8
	beqz	$fp, .LBB16_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
	slli.d	$a2, $fp, 3
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s3, $fp, $s3, 3
.LBB16_5:                               # %.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	bltz	$s8, .LBB16_19
.LBB16_6:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i138
	move	$s2, $s1
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	beqz	$s8, .LBB16_23
# %bb.7:                                # %.noexc7.i140
	st.d	$s3, $sp, 200                   # 8-byte Folded Spill
	slli.d	$s1, $s8, 3
.Ltmp863:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp864:                               # EH_LABEL
# %bb.8:                                # %.noexc146
	move	$s0, $a0
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $s0, 0
	addi.d	$s8, $s8, -1
	addi.d	$s3, $s0, 8
	beqz	$s8, .LBB16_10
# %bb.9:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i141
	slli.d	$a2, $s8, 3
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s3, $s8, $s3, 3
.LBB16_10:                              # %.lr.ph.i143
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	beqz	$s6, .LBB16_24
.LBB16_11:                              # %.noexc7.i150
.Ltmp865:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp866:                               # EH_LABEL
# %bb.12:                               # %.noexc157
	move	$s1, $a0
	alsl.d	$a0, $s5, $a0, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$zero, $s1, 0
	addi.d	$s5, $s1, 8
	beqz	$fp, .LBB16_14
# %bb.13:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i151
	slli.d	$a2, $fp, 3
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s5, $fp, $s5, 3
.LBB16_14:                              # %.lr.ph.i153
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB16_25
.LBB16_15:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	ori	$a2, $zero, 92
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	ori	$a2, $zero, 78
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB16_185
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB16_21
# %bb.17:
	ld.bu	$a0, $fp, 67
	b	.LBB16_22
.LBB16_18:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s3, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	bgez	$s8, .LBB16_6
.LBB16_19:                              # %.noexc.i145
.Ltmp963:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp964:                               # EH_LABEL
# %bb.20:                               # %.noexc
.LBB16_21:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB16_22:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB16_23:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s0, $zero
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	bnez	$s6, .LBB16_11
.LBB16_24:
	move	$s1, $zero
	move	$s5, $zero
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
.LBB16_25:                              # %_ZN6miniFE6VectorIdiiEC2Eii.exit158
	st.d	$zero, $s2, 0
.Ltmp868:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 200                  # 8-byte Folded Spill
.Ltmp869:                               # EH_LABEL
# %bb.26:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blez	$a1, .LBB16_34
# %bb.27:                               # %.lr.ph.preheader.i
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a4, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a4, .LBB16_32
# %bb.28:                               # %.lr.ph.preheader.i
	sub.d	$a4, $s0, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB16_32
# %bb.29:                               # %vector.ph
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s0, 16
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, 0
	move	$a5, $a2
	.p2align	4, , 16
.LBB16_30:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vfmul.d	$vr3, $vr1, $vr0
	vfmul.d	$vr4, $vr2, $vr0
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB16_30
# %bb.31:                               # %middle.block
	beq	$a1, $a2, .LBB16_34
.LBB16_32:                              # %.lr.ph.i159.preheader
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB16_33:                              # %.lr.ph.i159
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_33
.LBB16_34:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit
.Ltmp870:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
.Ltmp871:                               # EH_LABEL
# %bb.35:
.Ltmp872:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp873:                               # EH_LABEL
# %bb.36:
	fmov.d	$fs4, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB16_42
# %bb.37:                               # %.lr.ph34.preheader.i
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	movgr2fr.d	$fa0, $zero
	b	.LBB16_39
	.p2align	4, , 16
.LBB16_38:                              # %._crit_edge.i
                                        #   in Loop: Header=BB16_39 Depth=1
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa1, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB16_42
.LBB16_39:                              # %.lr.ph34.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_41 Depth 2
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa1, $fa1, $fa0
	bge	$t1, $a6, .LBB16_38
# %bb.40:                               # %.lr.ph.preheader.i160
                                        #   in Loop: Header=BB16_39 Depth=1
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB16_41:                              # %.lr.ph.i162
                                        #   Parent Loop BB16_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	fld.d	$fa2, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa3, $s0, $t2
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB16_41
	b	.LBB16_38
.LBB16_42:                              # %_ZN6miniFE14matvec_overlapINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit
.Ltmp874:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp875:                               # EH_LABEL
# %bb.43:
.Ltmp876:                               # EH_LABEL
	fmov.d	$fs5, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp877:                               # EH_LABEL
# %bb.44:
	fmov.d	$fs6, $fa0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blez	$a1, .LBB16_49
# %bb.45:                               # %.lr.ph.preheader.i167
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a2, $zero, 6
	bgeu	$a1, $a2, .LBB16_161
# %bb.46:
	move	$a2, $zero
.LBB16_47:                              # %.lr.ph.i169.preheader
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s8, 3
	alsl.d	$a4, $a2, $s1, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB16_48:                              # %.lr.ph.i169
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a4, 0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_48
.LBB16_49:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit173
.Ltmp878:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp879:                               # EH_LABEL
# %bb.50:
.Ltmp880:                               # EH_LABEL
	fmov.d	$fs7, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp881:                               # EH_LABEL
# %bb.51:
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs3, $zero
	sub.d	$a0, $s3, $s8
	srli.d	$s6, $a0, 3
	addi.w	$fp, $s6, 0
	fmov.d	$fs1, $fs3
	blez	$fp, .LBB16_54
# %bb.52:                               # %.lr.ph.preheader.i175
	bstrpick.d	$a0, $s6, 30, 0
	movgr2fr.d	$fs1, $zero
	move	$a1, $s8
	.p2align	4, , 16
.LBB16_53:                              # %.lr.ph.i177
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB16_53
.LBB16_54:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit
.Ltmp882:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp883:                               # EH_LABEL
# %bb.55:
	fmov.d	$fs2, $fa0
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_186
.LBB16_56:                              # %.split
	fst.d	$fa0, $s2, 0
.Ltmp884:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$a1, $a1, %pc_lo12(.L.str.106)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp885:                               # EH_LABEL
# %bb.57:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s2, 0
.Ltmp886:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp887:                               # EH_LABEL
# %bb.58:                               # %_ZNSolsEd.exit
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB16_187
# %bb.59:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i276
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB16_61
# %bb.60:
	ld.bu	$a0, $s4, 67
	b	.LBB16_63
.LBB16_61:
.Ltmp888:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp889:                               # EH_LABEL
# %bb.62:                               # %.noexc280
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp890:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp891:                               # EH_LABEL
.LBB16_63:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp892:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp893:                               # EH_LABEL
# %bb.64:                               # %.noexc282
.Ltmp894:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp895:                               # EH_LABEL
# %bb.65:                               # %_ZNSolsEPFRSoS_E.exit.preheader
	fld.d	$fa0, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $fs5, $fs4
	fadd.d	$fa0, $fa0, $fs3
	fsub.d	$fa2, $fs7, $fs6
	fsub.d	$fa3, $fs2, $fs0
	movgr2fr.d	$fs5, $zero
	fadd.d	$fa1, $fa1, $fs3
	fst.d	$fa1, $sp, 200                  # 8-byte Folded Spill
	fadd.d	$fs7, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fs5
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	blez	$a1, .LBB16_159
# %bb.66:                               # %.lr.ph
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1639
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slti	$a1, $a0, 50
	ori	$a2, $zero, 50
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s5
	bstrpick.d	$s5, $s6, 30, 0
	sub.d	$a0, $a0, $s1
	srli.d	$a1, $a0, 3
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	srli.d	$a1, $a0, 3
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 30, 2
	slli.d	$s6, $a0, 2
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 16
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $s5
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	fld.d	$fa0, $a0, %pc_lo12(.LCPI16_0)
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	addi.w	$a0, $a1, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB16_67:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_76 Depth 2
                                        #     Child Loop BB16_90 Depth 2
                                        #     Child Loop BB16_93 Depth 2
                                        #     Child Loop BB16_83 Depth 2
                                        #     Child Loop BB16_86 Depth 2
                                        #     Child Loop BB16_114 Depth 2
                                        #       Child Loop BB16_116 Depth 3
                                        #     Child Loop BB16_121 Depth 2
                                        #     Child Loop BB16_127 Depth 2
                                        #     Child Loop BB16_131 Depth 2
                                        #     Child Loop BB16_154 Depth 2
                                        #     Child Loop BB16_142 Depth 2
                                        #     Child Loop BB16_147 Depth 2
                                        #     Child Loop BB16_150 Depth 2
	fld.d	$fa0, $s2, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_159
# %bb.68:                               #   in Loop: Header=BB16_67 Depth=1
	move	$s8, $a0
	ori	$a0, $zero, 1
	bne	$s8, $a0, .LBB16_73
# %bb.69:                               #   in Loop: Header=BB16_67 Depth=1
.Ltmp905:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp906:                               # EH_LABEL
# %bb.70:                               #   in Loop: Header=BB16_67 Depth=1
	fmov.d	$fs0, $fa0
	blez	$fp, .LBB16_87
# %bb.71:                               # %.lr.ph.i187.preheader
                                        #   in Loop: Header=BB16_67 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB16_82
# %bb.72:                               #   in Loop: Header=BB16_67 Depth=1
	move	$a2, $zero
	b	.LBB16_85
	.p2align	4, , 16
.LBB16_73:                              #   in Loop: Header=BB16_67 Depth=1
.Ltmp896:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp897:                               # EH_LABEL
# %bb.74:                               #   in Loop: Header=BB16_67 Depth=1
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs6, $zero
	blez	$fp, .LBB16_77
# %bb.75:                               # %.lr.ph.i196.preheader
                                        #   in Loop: Header=BB16_67 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s5
	.p2align	4, , 16
.LBB16_76:                              # %.lr.ph.i196
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_76
.LBB16_77:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit201
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp898:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp899:                               # EH_LABEL
# %bb.78:                               #   in Loop: Header=BB16_67 Depth=1
.Ltmp900:                               # EH_LABEL
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp901:                               # EH_LABEL
# %bb.79:                               #   in Loop: Header=BB16_67 Depth=1
	fmov.d	$fs3, $fa0
	blez	$fp, .LBB16_94
# %bb.80:                               # %.lr.ph.i205.preheader
                                        #   in Loop: Header=BB16_67 Depth=1
	fdiv.d	$fa0, $fs6, $fs1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB16_89
# %bb.81:                               #   in Loop: Header=BB16_67 Depth=1
	move	$a2, $zero
	b	.LBB16_92
.LBB16_82:                              # %vector.body510.preheader
                                        #   in Loop: Header=BB16_67 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s6
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB16_83:                              # %vector.body510
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, -16
	vld	$vr1, $a0, 0
	vfmul.d	$vr2, $vr0, $vr4
	vfmul.d	$vr3, $vr1, $vr4
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB16_83
# %bb.84:                               # %middle.block515
                                        #   in Loop: Header=BB16_67 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB16_87
.LBB16_85:                              # %.lr.ph.i187.preheader537
                                        #   in Loop: Header=BB16_67 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB16_86:                              # %.lr.ph.i187
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB16_86
.LBB16_87:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit191
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp907:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp908:                               # EH_LABEL
# %bb.88:                               #   in Loop: Header=BB16_67 Depth=1
	fsub.d	$fs4, $fa0, $fs0
	b	.LBB16_96
.LBB16_89:                              # %vector.ph520
                                        #   in Loop: Header=BB16_67 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s6
	.p2align	4, , 16
.LBB16_90:                              # %vector.body525
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a1, -16
	vst	$vr3, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB16_90
# %bb.91:                               # %middle.block532
                                        #   in Loop: Header=BB16_67 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB16_94
.LBB16_92:                              # %.lr.ph.i205.preheader538
                                        #   in Loop: Header=BB16_67 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB16_93:                              # %.lr.ph.i205
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB16_93
.LBB16_94:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit209
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp902:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp903:                               # EH_LABEL
# %bb.95:                               #   in Loop: Header=BB16_67 Depth=1
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 208                  # 8-byte Folded Spill
	fsub.d	$fs4, $fa0, $fs3
	fmov.d	$fs1, $fs6
.LBB16_96:                              #   in Loop: Header=BB16_67 Depth=1
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_156
.LBB16_97:                              # %.split706
                                        #   in Loop: Header=BB16_67 Depth=1
	fst.d	$fa0, $s2, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB16_99
# %bb.98:                               # %.split706
                                        #   in Loop: Header=BB16_67 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mod.wu	$a0, $s8, $a0
	bnez	$a0, .LBB16_110
.LBB16_99:                              #   in Loop: Header=BB16_67 Depth=1
.Ltmp909:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a1, $a1, %pc_lo12(.L.str.107)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp910:                               # EH_LABEL
# %bb.100:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp911:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp912:                               # EH_LABEL
# %bb.101:                              #   in Loop: Header=BB16_67 Depth=1
.Ltmp913:                               # EH_LABEL
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp914:                               # EH_LABEL
# %bb.102:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213
                                        #   in Loop: Header=BB16_67 Depth=1
	fld.d	$fa0, $s2, 0
.Ltmp915:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp916:                               # EH_LABEL
# %bb.103:                              # %_ZNSolsEd.exit215
                                        #   in Loop: Header=BB16_67 Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB16_182
# %bb.104:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i286
                                        #   in Loop: Header=BB16_67 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB16_106
# %bb.105:                              #   in Loop: Header=BB16_67 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB16_108
.LBB16_106:                             #   in Loop: Header=BB16_67 Depth=1
.Ltmp917:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp918:                               # EH_LABEL
# %bb.107:                              # %.noexc291
                                        #   in Loop: Header=BB16_67 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp919:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp920:                               # EH_LABEL
.LBB16_108:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i288
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp921:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp922:                               # EH_LABEL
# %bb.109:                              # %.noexc293
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp923:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp924:                               # EH_LABEL
.LBB16_110:                             # %_ZNSolsEPFRSoS_E.exit217
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp926:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp927:                               # EH_LABEL
# %bb.111:                              #   in Loop: Header=BB16_67 Depth=1
	fmov.d	$fs0, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB16_117
# %bb.112:                              # %.lr.ph34.preheader.i218
                                        #   in Loop: Header=BB16_67 Depth=1
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	b	.LBB16_114
	.p2align	4, , 16
.LBB16_113:                             # %._crit_edge.i224
                                        #   in Loop: Header=BB16_114 Depth=2
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa0, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB16_117
.LBB16_114:                             # %.lr.ph34.i221
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_116 Depth 3
	slli.d	$a5, $a4, 3
	fldx.d	$fa0, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa0, $fa0, $fs5
	bge	$t1, $a6, .LBB16_113
# %bb.115:                              # %.lr.ph.preheader.i227
                                        #   in Loop: Header=BB16_114 Depth=2
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB16_116:                             # %.lr.ph.i229
                                        #   Parent Loop BB16_67 Depth=1
                                        #     Parent Loop BB16_114 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	fld.d	$fa1, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa2, $s0, $t2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB16_116
	b	.LBB16_113
	.p2align	4, , 16
.LBB16_117:                             # %_ZN6miniFE14matvec_overlapINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit234
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp928:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp929:                               # EH_LABEL
# %bb.118:                              #   in Loop: Header=BB16_67 Depth=1
.Ltmp930:                               # EH_LABEL
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp931:                               # EH_LABEL
# %bb.119:                              #   in Loop: Header=BB16_67 Depth=1
	fmov.d	$fs3, $fa0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	fmov.d	$fs6, $fs5
	blez	$s3, .LBB16_122
# %bb.120:                              # %.lr.ph.i239.preheader
                                        #   in Loop: Header=BB16_67 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	fmov.d	$fs6, $fs5
	.p2align	4, , 16
.LBB16_121:                             # %.lr.ph.i239
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB16_121
.LBB16_122:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit244
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp932:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp933:                               # EH_LABEL
# %bb.123:                              #   in Loop: Header=BB16_67 Depth=1
	fadd.d	$fs7, $fs7, $fs4
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 200                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 200                  # 8-byte Folded Spill
	fsub.d	$fa0, $fa0, $fs3
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fcmp.cule.d	$fcc0, $fa1, $fs6
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 208                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB16_135
# %bb.124:                              #   in Loop: Header=BB16_67 Depth=1
	fcmp.clt.d	$fcc0, $fs6, $fs5
	bcnez	$fcc0, .LBB16_166
# %bb.125:                              #   in Loop: Header=BB16_67 Depth=1
	fmov.d	$fa0, $fs5
	blez	$s3, .LBB16_128
# %bb.126:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB16_67 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB16_127:                             # %.lr.ph.i.i
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_127
.LBB16_128:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i
                                        #   in Loop: Header=BB16_67 Depth=1
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB16_157
.LBB16_129:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i.split
                                        #   in Loop: Header=BB16_67 Depth=1
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blez	$a0, .LBB16_132
# %bb.130:                              # %.lr.ph.i10.i.preheader
                                        #   in Loop: Header=BB16_67 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB16_131:                             # %.lr.ph.i10.i
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_131
.LBB16_132:                             # %.loopexit
                                        #   in Loop: Header=BB16_67 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB16_158
.LBB16_133:                             # %.loopexit.split
                                        #   in Loop: Header=BB16_67 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI16_1)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(.LCPI16_0)
	fabs.d	$fa3, $fs6
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fcmp.cult.d	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB16_166
# %bb.134:                              #   in Loop: Header=BB16_67 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI16_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI16_2)
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
.LBB16_135:                             #   in Loop: Header=BB16_67 Depth=1
.Ltmp934:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp935:                               # EH_LABEL
# %bb.136:                              #   in Loop: Header=BB16_67 Depth=1
	fmov.d	$fs2, $fa0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a2, $a1, 3
	addi.w	$a1, $a2, 0
	fdiv.d	$fa0, $fs1, $fs6
	blez	$a1, .LBB16_143
# %bb.137:                              # %.lr.ph.preheader.i250
                                        #   in Loop: Header=BB16_67 Depth=1
	bstrpick.d	$a1, $a2, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB16_140
# %bb.138:                              # %vector.memcheck486
                                        #   in Loop: Header=BB16_67 Depth=1
	alsl.d	$a3, $a1, $s0, 3
	bgeu	$a0, $a3, .LBB16_153
# %bb.139:                              # %vector.memcheck486
                                        #   in Loop: Header=BB16_67 Depth=1
	alsl.d	$a3, $a1, $a0, 3
	bgeu	$s0, $a3, .LBB16_153
.LBB16_140:                             #   in Loop: Header=BB16_67 Depth=1
	move	$a2, $zero
.LBB16_141:                             # %.lr.ph.i252.preheader
                                        #   in Loop: Header=BB16_67 Depth=1
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB16_142:                             # %.lr.ph.i252
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a0, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_142
.LBB16_143:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit256
                                        #   in Loop: Header=BB16_67 Depth=1
	blez	$fp, .LBB16_151
# %bb.144:                              # %.lr.ph.i260.preheader
                                        #   in Loop: Header=BB16_67 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB16_146
# %bb.145:                              #   in Loop: Header=BB16_67 Depth=1
	move	$a2, $zero
	b	.LBB16_149
	.p2align	4, , 16
.LBB16_146:                             # %vector.ph473
                                        #   in Loop: Header=BB16_67 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s6
	.p2align	4, , 16
.LBB16_147:                             # %vector.body476
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfsub.d	$vr2, $vr4, $vr2
	vfsub.d	$vr3, $vr5, $vr3
	vst	$vr2, $a0, -16
	vst	$vr3, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB16_147
# %bb.148:                              # %middle.block483
                                        #   in Loop: Header=BB16_67 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB16_151
.LBB16_149:                             # %.lr.ph.i260.preheader536
                                        #   in Loop: Header=BB16_67 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s1, 3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB16_150:                             # %.lr.ph.i260
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB16_150
.LBB16_151:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit264
                                        #   in Loop: Header=BB16_67 Depth=1
.Ltmp936:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp937:                               # EH_LABEL
# %bb.152:                              # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB16_67 Depth=1
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fs7, $fs7, $fa0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.w	$s8, $a0, 0
	addi.w	$a0, $s8, 1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB16_67
	b	.LBB16_159
.LBB16_153:                             # %vector.ph490
                                        #   in Loop: Header=BB16_67 Depth=1
	bstrpick.d	$a2, $a2, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $a0, 16
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	move	$a5, $a2
	.p2align	4, , 16
.LBB16_154:                             # %vector.body495
                                        #   Parent Loop BB16_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vld	$vr4, $a3, -16
	vld	$vr5, $a3, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB16_154
# %bb.155:                              # %middle.block502
                                        #   in Loop: Header=BB16_67 Depth=1
	beq	$a1, $a2, .LBB16_143
	b	.LBB16_141
.LBB16_156:                             # %call.sqrt707
                                        #   in Loop: Header=BB16_67 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB16_97
.LBB16_157:                             # %call.sqrt708
                                        #   in Loop: Header=BB16_67 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	b	.LBB16_129
.LBB16_158:                             # %call.sqrt709
                                        #   in Loop: Header=BB16_67 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB16_133
.LBB16_159:                             # %.critedge
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	fst.d	$fs7, $s3, 0
	fld.d	$fa0, $sp, 208                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 8
	fld.d	$fa0, $sp, 200                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 16
	st.d	$zero, $s3, 24
.Ltmp957:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp958:                               # EH_LABEL
# %bb.160:
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	b	.LBB16_175
.LBB16_161:                             # %vector.memcheck451
	sub.d	$a5, $s8, $a0
	ori	$a4, $zero, 32
	move	$a2, $zero
	bltu	$a5, $a4, .LBB16_47
# %bb.162:                              # %vector.memcheck451
	sub.d	$a5, $s8, $s1
	bltu	$a5, $a4, .LBB16_47
# %bb.163:                              # %vector.ph458
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s8, 16
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB16_164:                             # %vector.body461
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vfsub.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr1, $vr3
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB16_164
# %bb.165:                              # %middle.block468
	bne	$a1, $a2, .LBB16_47
	b	.LBB16_49
.LBB16_166:
.Ltmp939:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a1, $a0, %pc_lo12(.L.str.109)
	ori	$a2, $zero, 44
	move	$a0, $s2
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp940:                               # EH_LABEL
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
# %bb.167:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB16_189
# %bb.168:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i297
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB16_170
# %bb.169:
	ld.bu	$a0, $s2, 67
	b	.LBB16_172
.LBB16_170:
.Ltmp941:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp942:                               # EH_LABEL
# %bb.171:                              # %.noexc302
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp943:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp944:                               # EH_LABEL
.LBB16_172:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i299
.Ltmp945:                               # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp946:                               # EH_LABEL
# %bb.173:                              # %.noexc304
.Ltmp947:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp948:                               # EH_LABEL
# %bb.174:                              # %_ZNSolsEPFRSoS_E.exit248
	fst.d	$fs7, $s3, 0
	fld.d	$fa0, $sp, 208                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 8
	fld.d	$fa0, $sp, 200                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 16
.Ltmp949:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp950:                               # EH_LABEL
.LBB16_175:                             # %.critedge136
	fld.d	$fa1, $sp, 80                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s3, 32
	beqz	$s1, .LBB16_177
# %bb.176:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_177:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit
	beqz	$s0, .LBB16_179
# %bb.178:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_179:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit266
	beqz	$fp, .LBB16_181
# %bb.180:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB16_181:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit268
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB16_182:
.Ltmp954:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp955:                               # EH_LABEL
# %bb.183:                              # %.noexc290
.LBB16_184:                             # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB16_185:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB16_186:                             # %call.sqrt
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB16_56
.LBB16_187:
.Ltmp960:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp961:                               # EH_LABEL
# %bb.188:                              # %.noexc279
.LBB16_189:
.Ltmp951:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp952:                               # EH_LABEL
# %bb.190:                              # %.noexc301
.LBB16_191:
.Ltmp867:                               # EH_LABEL
	move	$s2, $a0
	beqz	$s0, .LBB16_202
	b	.LBB16_205
.LBB16_192:
.Ltmp959:                               # EH_LABEL
	b	.LBB16_200
.LBB16_193:                             # %.loopexit.split-lp362
.Ltmp953:                               # EH_LABEL
	b	.LBB16_200
.LBB16_194:
.Ltmp965:                               # EH_LABEL
	move	$s2, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB16_203
	b	.LBB16_206
.LBB16_195:                             # %.loopexit.split-lp
.Ltmp956:                               # EH_LABEL
	b	.LBB16_200
.LBB16_196:
.Ltmp904:                               # EH_LABEL
	b	.LBB16_200
.LBB16_197:
.Ltmp962:                               # EH_LABEL
	b	.LBB16_200
.LBB16_198:                             # %.loopexit360
.Ltmp925:                               # EH_LABEL
	b	.LBB16_200
.LBB16_199:                             # %.loopexit361
.Ltmp938:                               # EH_LABEL
.LBB16_200:
	move	$s2, $a0
	bnez	$s1, .LBB16_204
# %bb.201:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit270
	bnez	$s0, .LBB16_205
.LBB16_202:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit272
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bnez	$a0, .LBB16_206
.LBB16_203:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit274
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_204:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB16_202
.LBB16_205:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB16_203
.LBB16_206:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd, .Lfunc_end16-_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"aG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp863-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp863
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp863-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp864-.Ltmp863              #   Call between .Ltmp863 and .Ltmp864
	.uleb128 .Ltmp965-.Lfunc_begin10        #     jumps to .Ltmp965
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp864-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp865-.Ltmp864              #   Call between .Ltmp864 and .Ltmp865
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp865-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp866-.Ltmp865              #   Call between .Ltmp865 and .Ltmp866
	.uleb128 .Ltmp867-.Lfunc_begin10        #     jumps to .Ltmp867
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp866-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp963-.Ltmp866              #   Call between .Ltmp866 and .Ltmp963
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp963-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp964-.Ltmp963              #   Call between .Ltmp963 and .Ltmp964
	.uleb128 .Ltmp965-.Lfunc_begin10        #     jumps to .Ltmp965
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp964-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp868-.Ltmp964              #   Call between .Ltmp964 and .Ltmp868
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp868-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp895-.Ltmp868              #   Call between .Ltmp868 and .Ltmp895
	.uleb128 .Ltmp962-.Lfunc_begin10        #     jumps to .Ltmp962
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp905-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp899-.Ltmp905              #   Call between .Ltmp905 and .Ltmp899
	.uleb128 .Ltmp925-.Lfunc_begin10        #     jumps to .Ltmp925
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp900-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp901-.Ltmp900              #   Call between .Ltmp900 and .Ltmp901
	.uleb128 .Ltmp904-.Lfunc_begin10        #     jumps to .Ltmp904
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp907-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Ltmp908-.Ltmp907              #   Call between .Ltmp907 and .Ltmp908
	.uleb128 .Ltmp925-.Lfunc_begin10        #     jumps to .Ltmp925
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp902-.Lfunc_begin10        # >> Call Site 12 <<
	.uleb128 .Ltmp903-.Ltmp902              #   Call between .Ltmp902 and .Ltmp903
	.uleb128 .Ltmp904-.Lfunc_begin10        #     jumps to .Ltmp904
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp909-.Lfunc_begin10        # >> Call Site 13 <<
	.uleb128 .Ltmp924-.Ltmp909              #   Call between .Ltmp909 and .Ltmp924
	.uleb128 .Ltmp925-.Lfunc_begin10        #     jumps to .Ltmp925
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp926-.Lfunc_begin10        # >> Call Site 14 <<
	.uleb128 .Ltmp937-.Ltmp926              #   Call between .Ltmp926 and .Ltmp937
	.uleb128 .Ltmp938-.Lfunc_begin10        #     jumps to .Ltmp938
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp937-.Lfunc_begin10        # >> Call Site 15 <<
	.uleb128 .Ltmp957-.Ltmp937              #   Call between .Ltmp937 and .Ltmp957
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp957-.Lfunc_begin10        # >> Call Site 16 <<
	.uleb128 .Ltmp958-.Ltmp957              #   Call between .Ltmp957 and .Ltmp958
	.uleb128 .Ltmp959-.Lfunc_begin10        #     jumps to .Ltmp959
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp939-.Lfunc_begin10        # >> Call Site 17 <<
	.uleb128 .Ltmp950-.Ltmp939              #   Call between .Ltmp939 and .Ltmp950
	.uleb128 .Ltmp953-.Lfunc_begin10        #     jumps to .Ltmp953
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp950-.Lfunc_begin10        # >> Call Site 18 <<
	.uleb128 .Ltmp954-.Ltmp950              #   Call between .Ltmp950 and .Ltmp954
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp954-.Lfunc_begin10        # >> Call Site 19 <<
	.uleb128 .Ltmp955-.Ltmp954              #   Call between .Ltmp954 and .Ltmp955
	.uleb128 .Ltmp956-.Lfunc_begin10        #     jumps to .Ltmp956
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp955-.Lfunc_begin10        # >> Call Site 20 <<
	.uleb128 .Ltmp960-.Ltmp955              #   Call between .Ltmp955 and .Ltmp960
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp960-.Lfunc_begin10        # >> Call Site 21 <<
	.uleb128 .Ltmp961-.Ltmp960              #   Call between .Ltmp960 and .Ltmp961
	.uleb128 .Ltmp962-.Lfunc_begin10        #     jumps to .Ltmp962
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp951-.Lfunc_begin10        # >> Call Site 22 <<
	.uleb128 .Ltmp952-.Ltmp951              #   Call between .Ltmp951 and .Ltmp952
	.uleb128 .Ltmp953-.Lfunc_begin10        #     jumps to .Ltmp953
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp952-.Lfunc_begin10        # >> Call Site 23 <<
	.uleb128 .Lfunc_end16-.Ltmp952          #   Call between .Ltmp952 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.LCPI17_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
.LCPI17_1:
	.dword	0x4059000000000000              # double 100
.LCPI17_2:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.section	.text._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"axG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.weak	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.p2align	5
	.type	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,@function
_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd: # @_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 216                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	ld.d	$fp, $sp, 368
	move	$s1, $a7
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	move	$s0, $a4
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s7, $a0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 0
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	beqz	$a0, .LBB17_15
# %bb.1:
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 2
	addi.w	$s6, $a1, 0
	bltz	$s6, .LBB17_184
# %bb.2:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
	ld.w	$s8, $s7, 128
	slli.d	$a0, $a0, 30
	srai.d	$s5, $a0, 32
	slli.d	$s4, $s5, 3
	addi.d	$fp, $s5, -1
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	beqz	$s6, .LBB17_18
# %bb.3:                                # %.noexc7.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s5, $a0, 3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$s3, $a0, 8
	beqz	$fp, .LBB17_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
	slli.d	$a2, $fp, 3
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s3, $fp, $s3, 3
.LBB17_5:                               # %.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	bltz	$s8, .LBB17_19
.LBB17_6:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i138
	move	$s2, $s1
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	beqz	$s8, .LBB17_23
# %bb.7:                                # %.noexc7.i140
	st.d	$s3, $sp, 200                   # 8-byte Folded Spill
	slli.d	$s1, $s8, 3
.Ltmp966:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp967:                               # EH_LABEL
# %bb.8:                                # %.noexc146
	move	$s0, $a0
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $s0, 0
	addi.d	$s8, $s8, -1
	addi.d	$s3, $s0, 8
	beqz	$s8, .LBB17_10
# %bb.9:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i141
	slli.d	$a2, $s8, 3
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s3, $s8, $s3, 3
.LBB17_10:                              # %.lr.ph.i143
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	beqz	$s6, .LBB17_24
.LBB17_11:                              # %.noexc7.i150
.Ltmp968:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp969:                               # EH_LABEL
# %bb.12:                               # %.noexc157
	move	$s1, $a0
	alsl.d	$a0, $s5, $a0, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$zero, $s1, 0
	addi.d	$s5, $s1, 8
	beqz	$fp, .LBB17_14
# %bb.13:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i151
	slli.d	$a2, $fp, 3
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s5, $fp, $s5, 3
.LBB17_14:                              # %.lr.ph.i153
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB17_25
.LBB17_15:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	ori	$a2, $zero, 92
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	ori	$a2, $zero, 78
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB17_185
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB17_21
# %bb.17:
	ld.bu	$a0, $fp, 67
	b	.LBB17_22
.LBB17_18:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s3, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	bgez	$s8, .LBB17_6
.LBB17_19:                              # %.noexc.i145
.Ltmp1066:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1067:                              # EH_LABEL
# %bb.20:                               # %.noexc
.LBB17_21:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB17_22:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB17_23:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s0, $zero
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	bnez	$s6, .LBB17_11
.LBB17_24:
	move	$s1, $zero
	move	$s5, $zero
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
.LBB17_25:                              # %_ZN6miniFE6VectorIdiiEC2Eii.exit158
	st.d	$zero, $s2, 0
.Ltmp971:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 200                  # 8-byte Folded Spill
.Ltmp972:                               # EH_LABEL
# %bb.26:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blez	$a1, .LBB17_34
# %bb.27:                               # %.lr.ph.preheader.i
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a4, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a4, .LBB17_32
# %bb.28:                               # %.lr.ph.preheader.i
	sub.d	$a4, $s0, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB17_32
# %bb.29:                               # %vector.ph
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s0, 16
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, 0
	move	$a5, $a2
	.p2align	4, , 16
.LBB17_30:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vfmul.d	$vr3, $vr1, $vr0
	vfmul.d	$vr4, $vr2, $vr0
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB17_30
# %bb.31:                               # %middle.block
	beq	$a1, $a2, .LBB17_34
.LBB17_32:                              # %.lr.ph.i159.preheader
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB17_33:                              # %.lr.ph.i159
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB17_33
.LBB17_34:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit
.Ltmp973:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
.Ltmp974:                               # EH_LABEL
# %bb.35:
.Ltmp975:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp976:                               # EH_LABEL
# %bb.36:
	fmov.d	$fs4, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB17_42
# %bb.37:                               # %.lr.ph36.preheader.i
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	movgr2fr.d	$fa0, $zero
	b	.LBB17_39
	.p2align	4, , 16
.LBB17_38:                              # %._crit_edge.i
                                        #   in Loop: Header=BB17_39 Depth=1
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa1, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB17_42
.LBB17_39:                              # %.lr.ph36.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_41 Depth 2
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa1, $fa1, $fa0
	bge	$t1, $a6, .LBB17_38
# %bb.40:                               # %.lr.ph.preheader.i160
                                        #   in Loop: Header=BB17_39 Depth=1
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB17_41:                              # %.lr.ph.i162
                                        #   Parent Loop BB17_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	fld.d	$fa2, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa3, $s0, $t2
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB17_41
	b	.LBB17_38
.LBB17_42:                              # %_ZN6miniFE10matvec_stdINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit
.Ltmp977:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp978:                               # EH_LABEL
# %bb.43:
.Ltmp979:                               # EH_LABEL
	fmov.d	$fs5, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp980:                               # EH_LABEL
# %bb.44:
	fmov.d	$fs6, $fa0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blez	$a1, .LBB17_49
# %bb.45:                               # %.lr.ph.preheader.i167
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a2, $zero, 6
	bgeu	$a1, $a2, .LBB17_161
# %bb.46:
	move	$a2, $zero
.LBB17_47:                              # %.lr.ph.i169.preheader
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s8, 3
	alsl.d	$a4, $a2, $s1, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB17_48:                              # %.lr.ph.i169
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a4, 0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB17_48
.LBB17_49:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit173
.Ltmp981:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp982:                               # EH_LABEL
# %bb.50:
.Ltmp983:                               # EH_LABEL
	fmov.d	$fs7, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp984:                               # EH_LABEL
# %bb.51:
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs3, $zero
	sub.d	$a0, $s3, $s8
	srli.d	$s6, $a0, 3
	addi.w	$fp, $s6, 0
	fmov.d	$fs1, $fs3
	blez	$fp, .LBB17_54
# %bb.52:                               # %.lr.ph.preheader.i175
	bstrpick.d	$a0, $s6, 30, 0
	movgr2fr.d	$fs1, $zero
	move	$a1, $s8
	.p2align	4, , 16
.LBB17_53:                              # %.lr.ph.i177
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB17_53
.LBB17_54:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit
.Ltmp985:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp986:                               # EH_LABEL
# %bb.55:
	fmov.d	$fs2, $fa0
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_186
.LBB17_56:                              # %.split
	fst.d	$fa0, $s2, 0
.Ltmp987:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$a1, $a1, %pc_lo12(.L.str.106)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp988:                               # EH_LABEL
# %bb.57:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s2, 0
.Ltmp989:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp990:                               # EH_LABEL
# %bb.58:                               # %_ZNSolsEd.exit
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB17_187
# %bb.59:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i276
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB17_61
# %bb.60:
	ld.bu	$a0, $s4, 67
	b	.LBB17_63
.LBB17_61:
.Ltmp991:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp992:                               # EH_LABEL
# %bb.62:                               # %.noexc280
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp993:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp994:                               # EH_LABEL
.LBB17_63:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp995:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp996:                               # EH_LABEL
# %bb.64:                               # %.noexc282
.Ltmp997:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp998:                               # EH_LABEL
# %bb.65:                               # %_ZNSolsEPFRSoS_E.exit.preheader
	fld.d	$fa0, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $fs5, $fs4
	fadd.d	$fa0, $fa0, $fs3
	fsub.d	$fa2, $fs7, $fs6
	fsub.d	$fa3, $fs2, $fs0
	movgr2fr.d	$fs5, $zero
	fadd.d	$fa1, $fa1, $fs3
	fst.d	$fa1, $sp, 200                  # 8-byte Folded Spill
	fadd.d	$fs7, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fs5
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	blez	$a1, .LBB17_159
# %bb.66:                               # %.lr.ph
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1639
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slti	$a1, $a0, 50
	ori	$a2, $zero, 50
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s5
	bstrpick.d	$s5, $s6, 30, 0
	sub.d	$a0, $a0, $s1
	srli.d	$a1, $a0, 3
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	srli.d	$a1, $a0, 3
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 30, 2
	slli.d	$s6, $a0, 2
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 16
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $s5
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_0)
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	addi.w	$a0, $a1, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB17_67:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_76 Depth 2
                                        #     Child Loop BB17_90 Depth 2
                                        #     Child Loop BB17_93 Depth 2
                                        #     Child Loop BB17_83 Depth 2
                                        #     Child Loop BB17_86 Depth 2
                                        #     Child Loop BB17_114 Depth 2
                                        #       Child Loop BB17_116 Depth 3
                                        #     Child Loop BB17_121 Depth 2
                                        #     Child Loop BB17_127 Depth 2
                                        #     Child Loop BB17_131 Depth 2
                                        #     Child Loop BB17_154 Depth 2
                                        #     Child Loop BB17_142 Depth 2
                                        #     Child Loop BB17_147 Depth 2
                                        #     Child Loop BB17_150 Depth 2
	fld.d	$fa0, $s2, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_159
# %bb.68:                               #   in Loop: Header=BB17_67 Depth=1
	move	$s8, $a0
	ori	$a0, $zero, 1
	bne	$s8, $a0, .LBB17_73
# %bb.69:                               #   in Loop: Header=BB17_67 Depth=1
.Ltmp1008:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1009:                              # EH_LABEL
# %bb.70:                               #   in Loop: Header=BB17_67 Depth=1
	fmov.d	$fs0, $fa0
	blez	$fp, .LBB17_87
# %bb.71:                               # %.lr.ph.i187.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB17_82
# %bb.72:                               #   in Loop: Header=BB17_67 Depth=1
	move	$a2, $zero
	b	.LBB17_85
	.p2align	4, , 16
.LBB17_73:                              #   in Loop: Header=BB17_67 Depth=1
.Ltmp999:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1000:                              # EH_LABEL
# %bb.74:                               #   in Loop: Header=BB17_67 Depth=1
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs6, $zero
	blez	$fp, .LBB17_77
# %bb.75:                               # %.lr.ph.i196.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s5
	.p2align	4, , 16
.LBB17_76:                              # %.lr.ph.i196
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB17_76
.LBB17_77:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit201
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1001:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1002:                              # EH_LABEL
# %bb.78:                               #   in Loop: Header=BB17_67 Depth=1
.Ltmp1003:                              # EH_LABEL
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1004:                              # EH_LABEL
# %bb.79:                               #   in Loop: Header=BB17_67 Depth=1
	fmov.d	$fs3, $fa0
	blez	$fp, .LBB17_94
# %bb.80:                               # %.lr.ph.i205.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	fdiv.d	$fa0, $fs6, $fs1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB17_89
# %bb.81:                               #   in Loop: Header=BB17_67 Depth=1
	move	$a2, $zero
	b	.LBB17_92
.LBB17_82:                              # %vector.body510.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s6
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB17_83:                              # %vector.body510
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, -16
	vld	$vr1, $a0, 0
	vfmul.d	$vr2, $vr0, $vr4
	vfmul.d	$vr3, $vr1, $vr4
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB17_83
# %bb.84:                               # %middle.block515
                                        #   in Loop: Header=BB17_67 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB17_87
.LBB17_85:                              # %.lr.ph.i187.preheader537
                                        #   in Loop: Header=BB17_67 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB17_86:                              # %.lr.ph.i187
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB17_86
.LBB17_87:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit191
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1010:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1011:                              # EH_LABEL
# %bb.88:                               #   in Loop: Header=BB17_67 Depth=1
	fsub.d	$fs4, $fa0, $fs0
	b	.LBB17_96
.LBB17_89:                              # %vector.ph520
                                        #   in Loop: Header=BB17_67 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s6
	.p2align	4, , 16
.LBB17_90:                              # %vector.body525
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a1, -16
	vst	$vr3, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB17_90
# %bb.91:                               # %middle.block532
                                        #   in Loop: Header=BB17_67 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB17_94
.LBB17_92:                              # %.lr.ph.i205.preheader538
                                        #   in Loop: Header=BB17_67 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB17_93:                              # %.lr.ph.i205
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB17_93
.LBB17_94:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit209
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1005:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1006:                              # EH_LABEL
# %bb.95:                               #   in Loop: Header=BB17_67 Depth=1
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 208                  # 8-byte Folded Spill
	fsub.d	$fs4, $fa0, $fs3
	fmov.d	$fs1, $fs6
.LBB17_96:                              #   in Loop: Header=BB17_67 Depth=1
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_156
.LBB17_97:                              # %.split706
                                        #   in Loop: Header=BB17_67 Depth=1
	fst.d	$fa0, $s2, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB17_99
# %bb.98:                               # %.split706
                                        #   in Loop: Header=BB17_67 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mod.wu	$a0, $s8, $a0
	bnez	$a0, .LBB17_110
.LBB17_99:                              #   in Loop: Header=BB17_67 Depth=1
.Ltmp1012:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a1, $a1, %pc_lo12(.L.str.107)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1013:                              # EH_LABEL
# %bb.100:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1014:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp1015:                              # EH_LABEL
# %bb.101:                              #   in Loop: Header=BB17_67 Depth=1
.Ltmp1016:                              # EH_LABEL
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1017:                              # EH_LABEL
# %bb.102:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213
                                        #   in Loop: Header=BB17_67 Depth=1
	fld.d	$fa0, $s2, 0
.Ltmp1018:                              # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1019:                              # EH_LABEL
# %bb.103:                              # %_ZNSolsEd.exit215
                                        #   in Loop: Header=BB17_67 Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB17_182
# %bb.104:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i286
                                        #   in Loop: Header=BB17_67 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB17_106
# %bb.105:                              #   in Loop: Header=BB17_67 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB17_108
.LBB17_106:                             #   in Loop: Header=BB17_67 Depth=1
.Ltmp1020:                              # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1021:                              # EH_LABEL
# %bb.107:                              # %.noexc291
                                        #   in Loop: Header=BB17_67 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp1022:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp1023:                              # EH_LABEL
.LBB17_108:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i288
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1024:                              # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1025:                              # EH_LABEL
# %bb.109:                              # %.noexc293
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1026:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1027:                              # EH_LABEL
.LBB17_110:                             # %_ZNSolsEPFRSoS_E.exit217
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1029:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1030:                              # EH_LABEL
# %bb.111:                              #   in Loop: Header=BB17_67 Depth=1
	fmov.d	$fs0, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB17_117
# %bb.112:                              # %.lr.ph36.preheader.i218
                                        #   in Loop: Header=BB17_67 Depth=1
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	b	.LBB17_114
	.p2align	4, , 16
.LBB17_113:                             # %._crit_edge.i224
                                        #   in Loop: Header=BB17_114 Depth=2
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa0, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB17_117
.LBB17_114:                             # %.lr.ph36.i221
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_116 Depth 3
	slli.d	$a5, $a4, 3
	fldx.d	$fa0, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa0, $fa0, $fs5
	bge	$t1, $a6, .LBB17_113
# %bb.115:                              # %.lr.ph.preheader.i227
                                        #   in Loop: Header=BB17_114 Depth=2
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB17_116:                             # %.lr.ph.i229
                                        #   Parent Loop BB17_67 Depth=1
                                        #     Parent Loop BB17_114 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	fld.d	$fa1, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa2, $s0, $t2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB17_116
	b	.LBB17_113
	.p2align	4, , 16
.LBB17_117:                             # %_ZN6miniFE10matvec_stdINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit234
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1031:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1032:                              # EH_LABEL
# %bb.118:                              #   in Loop: Header=BB17_67 Depth=1
.Ltmp1033:                              # EH_LABEL
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1034:                              # EH_LABEL
# %bb.119:                              #   in Loop: Header=BB17_67 Depth=1
	fmov.d	$fs3, $fa0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	fmov.d	$fs6, $fs5
	blez	$s3, .LBB17_122
# %bb.120:                              # %.lr.ph.i239.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	fmov.d	$fs6, $fs5
	.p2align	4, , 16
.LBB17_121:                             # %.lr.ph.i239
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB17_121
.LBB17_122:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit244
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1035:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1036:                              # EH_LABEL
# %bb.123:                              #   in Loop: Header=BB17_67 Depth=1
	fadd.d	$fs7, $fs7, $fs4
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 200                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 200                  # 8-byte Folded Spill
	fsub.d	$fa0, $fa0, $fs3
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fcmp.cule.d	$fcc0, $fa1, $fs6
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 208                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB17_135
# %bb.124:                              #   in Loop: Header=BB17_67 Depth=1
	fcmp.clt.d	$fcc0, $fs6, $fs5
	bcnez	$fcc0, .LBB17_166
# %bb.125:                              #   in Loop: Header=BB17_67 Depth=1
	fmov.d	$fa0, $fs5
	blez	$s3, .LBB17_128
# %bb.126:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB17_127:                             # %.lr.ph.i.i
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB17_127
.LBB17_128:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i
                                        #   in Loop: Header=BB17_67 Depth=1
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB17_157
.LBB17_129:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i.split
                                        #   in Loop: Header=BB17_67 Depth=1
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blez	$a0, .LBB17_132
# %bb.130:                              # %.lr.ph.i10.i.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB17_131:                             # %.lr.ph.i10.i
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB17_131
.LBB17_132:                             # %.loopexit
                                        #   in Loop: Header=BB17_67 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB17_158
.LBB17_133:                             # %.loopexit.split
                                        #   in Loop: Header=BB17_67 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI17_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_1)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(.LCPI17_0)
	fabs.d	$fa3, $fs6
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fcmp.cult.d	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB17_166
# %bb.134:                              #   in Loop: Header=BB17_67 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI17_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_2)
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
.LBB17_135:                             #   in Loop: Header=BB17_67 Depth=1
.Ltmp1037:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1038:                              # EH_LABEL
# %bb.136:                              #   in Loop: Header=BB17_67 Depth=1
	fmov.d	$fs2, $fa0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a2, $a1, 3
	addi.w	$a1, $a2, 0
	fdiv.d	$fa0, $fs1, $fs6
	blez	$a1, .LBB17_143
# %bb.137:                              # %.lr.ph.preheader.i250
                                        #   in Loop: Header=BB17_67 Depth=1
	bstrpick.d	$a1, $a2, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB17_140
# %bb.138:                              # %vector.memcheck486
                                        #   in Loop: Header=BB17_67 Depth=1
	alsl.d	$a3, $a1, $s0, 3
	bgeu	$a0, $a3, .LBB17_153
# %bb.139:                              # %vector.memcheck486
                                        #   in Loop: Header=BB17_67 Depth=1
	alsl.d	$a3, $a1, $a0, 3
	bgeu	$s0, $a3, .LBB17_153
.LBB17_140:                             #   in Loop: Header=BB17_67 Depth=1
	move	$a2, $zero
.LBB17_141:                             # %.lr.ph.i252.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB17_142:                             # %.lr.ph.i252
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a0, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB17_142
.LBB17_143:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit256
                                        #   in Loop: Header=BB17_67 Depth=1
	blez	$fp, .LBB17_151
# %bb.144:                              # %.lr.ph.i260.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB17_146
# %bb.145:                              #   in Loop: Header=BB17_67 Depth=1
	move	$a2, $zero
	b	.LBB17_149
	.p2align	4, , 16
.LBB17_146:                             # %vector.ph473
                                        #   in Loop: Header=BB17_67 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s6
	.p2align	4, , 16
.LBB17_147:                             # %vector.body476
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfsub.d	$vr2, $vr4, $vr2
	vfsub.d	$vr3, $vr5, $vr3
	vst	$vr2, $a0, -16
	vst	$vr3, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB17_147
# %bb.148:                              # %middle.block483
                                        #   in Loop: Header=BB17_67 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB17_151
.LBB17_149:                             # %.lr.ph.i260.preheader536
                                        #   in Loop: Header=BB17_67 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s1, 3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB17_150:                             # %.lr.ph.i260
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB17_150
.LBB17_151:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit264
                                        #   in Loop: Header=BB17_67 Depth=1
.Ltmp1039:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1040:                              # EH_LABEL
# %bb.152:                              # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB17_67 Depth=1
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fs7, $fs7, $fa0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.w	$s8, $a0, 0
	addi.w	$a0, $s8, 1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB17_67
	b	.LBB17_159
.LBB17_153:                             # %vector.ph490
                                        #   in Loop: Header=BB17_67 Depth=1
	bstrpick.d	$a2, $a2, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $a0, 16
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	move	$a5, $a2
	.p2align	4, , 16
.LBB17_154:                             # %vector.body495
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vld	$vr4, $a3, -16
	vld	$vr5, $a3, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB17_154
# %bb.155:                              # %middle.block502
                                        #   in Loop: Header=BB17_67 Depth=1
	beq	$a1, $a2, .LBB17_143
	b	.LBB17_141
.LBB17_156:                             # %call.sqrt707
                                        #   in Loop: Header=BB17_67 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB17_97
.LBB17_157:                             # %call.sqrt708
                                        #   in Loop: Header=BB17_67 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	b	.LBB17_129
.LBB17_158:                             # %call.sqrt709
                                        #   in Loop: Header=BB17_67 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB17_133
.LBB17_159:                             # %.critedge
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	fst.d	$fs7, $s3, 0
	fld.d	$fa0, $sp, 208                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 8
	fld.d	$fa0, $sp, 200                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 16
	st.d	$zero, $s3, 24
.Ltmp1060:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1061:                              # EH_LABEL
# %bb.160:
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	b	.LBB17_175
.LBB17_161:                             # %vector.memcheck451
	sub.d	$a5, $s8, $a0
	ori	$a4, $zero, 32
	move	$a2, $zero
	bltu	$a5, $a4, .LBB17_47
# %bb.162:                              # %vector.memcheck451
	sub.d	$a5, $s8, $s1
	bltu	$a5, $a4, .LBB17_47
# %bb.163:                              # %vector.ph458
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s8, 16
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB17_164:                             # %vector.body461
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vfsub.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr1, $vr3
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB17_164
# %bb.165:                              # %middle.block468
	bne	$a1, $a2, .LBB17_47
	b	.LBB17_49
.LBB17_166:
.Ltmp1042:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a1, $a0, %pc_lo12(.L.str.109)
	ori	$a2, $zero, 44
	move	$a0, $s2
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1043:                              # EH_LABEL
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
# %bb.167:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB17_189
# %bb.168:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i297
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB17_170
# %bb.169:
	ld.bu	$a0, $s2, 67
	b	.LBB17_172
.LBB17_170:
.Ltmp1044:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1045:                              # EH_LABEL
# %bb.171:                              # %.noexc302
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1046:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1047:                              # EH_LABEL
.LBB17_172:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i299
.Ltmp1048:                              # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1049:                              # EH_LABEL
# %bb.173:                              # %.noexc304
.Ltmp1050:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1051:                              # EH_LABEL
# %bb.174:                              # %_ZNSolsEPFRSoS_E.exit248
	fst.d	$fs7, $s3, 0
	fld.d	$fa0, $sp, 208                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 8
	fld.d	$fa0, $sp, 200                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 16
.Ltmp1052:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1053:                              # EH_LABEL
.LBB17_175:                             # %.critedge136
	fld.d	$fa1, $sp, 80                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s3, 32
	beqz	$s1, .LBB17_177
# %bb.176:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_177:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit
	beqz	$s0, .LBB17_179
# %bb.178:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_179:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit266
	beqz	$fp, .LBB17_181
# %bb.180:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB17_181:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit268
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB17_182:
.Ltmp1057:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1058:                              # EH_LABEL
# %bb.183:                              # %.noexc290
.LBB17_184:                             # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB17_185:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB17_186:                             # %call.sqrt
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB17_56
.LBB17_187:
.Ltmp1063:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1064:                              # EH_LABEL
# %bb.188:                              # %.noexc279
.LBB17_189:
.Ltmp1054:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1055:                              # EH_LABEL
# %bb.190:                              # %.noexc301
.LBB17_191:
.Ltmp970:                               # EH_LABEL
	move	$s2, $a0
	beqz	$s0, .LBB17_202
	b	.LBB17_205
.LBB17_192:
.Ltmp1062:                              # EH_LABEL
	b	.LBB17_200
.LBB17_193:                             # %.loopexit.split-lp362
.Ltmp1056:                              # EH_LABEL
	b	.LBB17_200
.LBB17_194:
.Ltmp1068:                              # EH_LABEL
	move	$s2, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_203
	b	.LBB17_206
.LBB17_195:                             # %.loopexit.split-lp
.Ltmp1059:                              # EH_LABEL
	b	.LBB17_200
.LBB17_196:
.Ltmp1007:                              # EH_LABEL
	b	.LBB17_200
.LBB17_197:
.Ltmp1065:                              # EH_LABEL
	b	.LBB17_200
.LBB17_198:                             # %.loopexit360
.Ltmp1028:                              # EH_LABEL
	b	.LBB17_200
.LBB17_199:                             # %.loopexit361
.Ltmp1041:                              # EH_LABEL
.LBB17_200:
	move	$s2, $a0
	bnez	$s1, .LBB17_204
# %bb.201:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit270
	bnez	$s0, .LBB17_205
.LBB17_202:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit272
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bnez	$a0, .LBB17_206
.LBB17_203:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit274
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_204:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB17_202
.LBB17_205:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_203
.LBB17_206:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd, .Lfunc_end17-_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"aG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp966-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp966
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp966-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp967-.Ltmp966              #   Call between .Ltmp966 and .Ltmp967
	.uleb128 .Ltmp1068-.Lfunc_begin11       #     jumps to .Ltmp1068
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp967-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp968-.Ltmp967              #   Call between .Ltmp967 and .Ltmp968
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp968-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp969-.Ltmp968              #   Call between .Ltmp968 and .Ltmp969
	.uleb128 .Ltmp970-.Lfunc_begin11        #     jumps to .Ltmp970
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp969-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Ltmp1066-.Ltmp969             #   Call between .Ltmp969 and .Ltmp1066
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1066-.Lfunc_begin11       # >> Call Site 6 <<
	.uleb128 .Ltmp1067-.Ltmp1066            #   Call between .Ltmp1066 and .Ltmp1067
	.uleb128 .Ltmp1068-.Lfunc_begin11       #     jumps to .Ltmp1068
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1067-.Lfunc_begin11       # >> Call Site 7 <<
	.uleb128 .Ltmp971-.Ltmp1067             #   Call between .Ltmp1067 and .Ltmp971
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp971-.Lfunc_begin11        # >> Call Site 8 <<
	.uleb128 .Ltmp998-.Ltmp971              #   Call between .Ltmp971 and .Ltmp998
	.uleb128 .Ltmp1065-.Lfunc_begin11       #     jumps to .Ltmp1065
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1008-.Lfunc_begin11       # >> Call Site 9 <<
	.uleb128 .Ltmp1002-.Ltmp1008            #   Call between .Ltmp1008 and .Ltmp1002
	.uleb128 .Ltmp1028-.Lfunc_begin11       #     jumps to .Ltmp1028
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1003-.Lfunc_begin11       # >> Call Site 10 <<
	.uleb128 .Ltmp1004-.Ltmp1003            #   Call between .Ltmp1003 and .Ltmp1004
	.uleb128 .Ltmp1007-.Lfunc_begin11       #     jumps to .Ltmp1007
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1010-.Lfunc_begin11       # >> Call Site 11 <<
	.uleb128 .Ltmp1011-.Ltmp1010            #   Call between .Ltmp1010 and .Ltmp1011
	.uleb128 .Ltmp1028-.Lfunc_begin11       #     jumps to .Ltmp1028
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1005-.Lfunc_begin11       # >> Call Site 12 <<
	.uleb128 .Ltmp1006-.Ltmp1005            #   Call between .Ltmp1005 and .Ltmp1006
	.uleb128 .Ltmp1007-.Lfunc_begin11       #     jumps to .Ltmp1007
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1012-.Lfunc_begin11       # >> Call Site 13 <<
	.uleb128 .Ltmp1027-.Ltmp1012            #   Call between .Ltmp1012 and .Ltmp1027
	.uleb128 .Ltmp1028-.Lfunc_begin11       #     jumps to .Ltmp1028
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1029-.Lfunc_begin11       # >> Call Site 14 <<
	.uleb128 .Ltmp1040-.Ltmp1029            #   Call between .Ltmp1029 and .Ltmp1040
	.uleb128 .Ltmp1041-.Lfunc_begin11       #     jumps to .Ltmp1041
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1040-.Lfunc_begin11       # >> Call Site 15 <<
	.uleb128 .Ltmp1060-.Ltmp1040            #   Call between .Ltmp1040 and .Ltmp1060
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1060-.Lfunc_begin11       # >> Call Site 16 <<
	.uleb128 .Ltmp1061-.Ltmp1060            #   Call between .Ltmp1060 and .Ltmp1061
	.uleb128 .Ltmp1062-.Lfunc_begin11       #     jumps to .Ltmp1062
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1042-.Lfunc_begin11       # >> Call Site 17 <<
	.uleb128 .Ltmp1053-.Ltmp1042            #   Call between .Ltmp1042 and .Ltmp1053
	.uleb128 .Ltmp1056-.Lfunc_begin11       #     jumps to .Ltmp1056
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1053-.Lfunc_begin11       # >> Call Site 18 <<
	.uleb128 .Ltmp1057-.Ltmp1053            #   Call between .Ltmp1053 and .Ltmp1057
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1057-.Lfunc_begin11       # >> Call Site 19 <<
	.uleb128 .Ltmp1058-.Ltmp1057            #   Call between .Ltmp1057 and .Ltmp1058
	.uleb128 .Ltmp1059-.Lfunc_begin11       #     jumps to .Ltmp1059
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1058-.Lfunc_begin11       # >> Call Site 20 <<
	.uleb128 .Ltmp1063-.Ltmp1058            #   Call between .Ltmp1058 and .Ltmp1063
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1063-.Lfunc_begin11       # >> Call Site 21 <<
	.uleb128 .Ltmp1064-.Ltmp1063            #   Call between .Ltmp1063 and .Ltmp1064
	.uleb128 .Ltmp1065-.Lfunc_begin11       #     jumps to .Ltmp1065
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1054-.Lfunc_begin11       # >> Call Site 22 <<
	.uleb128 .Ltmp1055-.Ltmp1054            #   Call between .Ltmp1054 and .Ltmp1055
	.uleb128 .Ltmp1056-.Lfunc_begin11       #     jumps to .Ltmp1056
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1055-.Lfunc_begin11       # >> Call Site 23 <<
	.uleb128 .Lfunc_end17-.Ltmp1055         #   Call between .Ltmp1055 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
.LCPI18_0:
	.dword	0x3fa999999999999a              # double 0.050000000000000003
.LCPI18_1:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI18_2:
	.dword	0x4023bd3cc9be45de              # double 9.869604401089358
.LCPI18_3:
	.dword	0x3ff9f02f6222c720              # double 1.6211389382774044
	.section	.text._ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,"axG",@progbits,_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,comdat
	.weak	_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
	.p2align	5
	.type	_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,@function
_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db: # @_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	ld.w	$a5, $a0, 184
	ld.w	$a3, $a0, 188
	ld.w	$a6, $a0, 164
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	fmov.d	$fs6, $fa0
	slt	$a4, $a5, $a3
	xor	$a2, $a3, $a6
	sltui	$a2, $a2, 1
	and	$a2, $a4, $a2
	add.w	$a2, $a3, $a2
	movgr2fr.d	$fs7, $zero
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	bge	$a5, $a2, .LBB18_47
# %bb.1:                                # %.preheader267.lr.ph
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a4, $a0, 148
	move	$s7, $zero
	move	$s4, $zero
	move	$s0, $zero
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	move	$t2, $zero
	move	$s8, $zero
	ld.w	$a7, $a0, 156
	addi.w	$t0, $a4, 1
	ld.w	$s2, $a0, 168
	ld.w	$a1, $a0, 172
	addi.w	$a2, $a7, 1
	ld.w	$t1, $a0, 176
	ld.w	$a0, $a0, 180
	slt	$a3, $s2, $a1
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	xor	$a4, $a1, $a4
	sltui	$a4, $a4, 1
	and	$a3, $a3, $a4
	add.w	$a1, $a1, $a3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	slt	$a1, $t1, $a0
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	xor	$a3, $a0, $a7
	sltui	$a3, $a3, 1
	and	$a1, $a1, $a3
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t0
	masknez	$a3, $a0, $a1
	maskeqz	$a1, $t0, $a1
	or	$a1, $a1, $a3
	slt	$a3, $a0, $a2
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a2, $a3
	or	$a0, $a3, $a0
	ori	$a4, $zero, 1
	slt	$a3, $a4, $a6
	masknez	$a4, $a4, $a3
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	movgr2fr.w	$fa0, $a3
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	addi.d	$a0, $a1, -1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa2, $a0
	mul.w	$a0, $a2, $t0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ffint.d.w	$fs0, $fa0
	ffint.d.l	$fs2, $fa1
	ffint.d.l	$fs3, $fa2
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	mul.d	$a0, $a5, $a2
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $t1, $a0
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	mul.d	$a2, $a0, $t0
	vldi	$vr2, -800
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_2:                               # %._crit_edge392
                                        #   in Loop: Header=BB18_3 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB18_55
.LBB18_3:                               # %.preheader267
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_6 Depth 2
                                        #       Child Loop BB18_10 Depth 3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB18_6
	b	.LBB18_2
	.p2align	4, , 16
.LBB18_4:                               #   in Loop: Header=BB18_6 Depth=2
	move	$s3, $s8
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
.LBB18_5:                               # %._crit_edge
                                        #   in Loop: Header=BB18_6 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	move	$s8, $s3
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bge	$a2, $a0, .LBB18_2
.LBB18_6:                               # %.preheader262
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_10 Depth 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bge	$s2, $a0, .LBB18_4
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB18_6 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	slt	$a1, $a1, $a2
	xori	$a1, $a1, 1
	and	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB18_10
	.p2align	4, , 16
.LBB18_8:                               #   in Loop: Header=BB18_10 Depth=3
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
.LBB18_9:                               # %_ZNSt6vectorIdSaIdEE9push_backERKd.exit108
                                        #   in Loop: Header=BB18_10 Depth=3
	addi.w	$s2, $s2, 1
	addi.d	$s7, $s7, 1
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	move	$s8, $s3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bge	$s2, $a0, .LBB18_5
.LBB18_10:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $s8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	or	$a0, $a0, $s2
	addi.w	$s8, $zero, -1
	slt	$a0, $s8, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	slt	$a1, $a1, $s2
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.w	$a2, $a2, $s2
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s8, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s8, $a0
	or	$a0, $a1, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	div.w	$a1, $a0, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs4, $fa0, $fs0
	mul.d	$a1, $a1, $a2
	sub.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	div.w	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs5, $fa0, $fs2
	mod.w	$a0, $a0, $a2
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fa0, $fs3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB18_16
.LBB18_11:                              # %.critedge
                                        #   in Loop: Header=BB18_10 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$t2, $a0, .LBB18_19
# %bb.12:                               #   in Loop: Header=BB18_10 Depth=3
	st.w	$s7, $t2, 0
	beq	$s0, $s4, .LBB18_26
.LBB18_13:                              #   in Loop: Header=BB18_10 Depth=3
	fst.d	$fs1, $s0, 0
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $s0, 8
	beq	$a0, $s4, .LBB18_33
.LBB18_14:                              #   in Loop: Header=BB18_10 Depth=3
	fst.d	$fs5, $s0, 8
	addi.d	$fp, $s0, 16
	move	$a0, $s4
	move	$s4, $s5
	addi.d	$t2, $t2, 4
	beq	$fp, $a0, .LBB18_40
.LBB18_15:                              #   in Loop: Header=BB18_10 Depth=3
	fst.d	$fs4, $fp, 0
	addi.d	$s0, $fp, 8
	move	$s5, $s4
	move	$s4, $a0
	b	.LBB18_9
	.p2align	4, , 16
.LBB18_16:                              #   in Loop: Header=BB18_10 Depth=3
	pcalau12i	$a0, %pc_hi20(.LCPI18_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI18_0)
	fadd.d	$fa1, $fs1, $fa2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_8
# %bb.17:                               #   in Loop: Header=BB18_10 Depth=3
	fadd.d	$fa1, $fs5, $fa2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_8
# %bb.18:                               #   in Loop: Header=BB18_10 Depth=3
	fadd.d	$fa1, $fs4, $fa2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_8
	b	.LBB18_11
	.p2align	4, , 16
.LBB18_19:                              #   in Loop: Header=BB18_10 Depth=3
	move	$fp, $s4
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB18_119
# %bb.20:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB18_10 Depth=3
	srai.d	$a0, $s4, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s8, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
.Ltmp1069:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1070:                              # EH_LABEL
# %bb.21:                               # %.noexc85
                                        #   in Loop: Header=BB18_10 Depth=3
	move	$s5, $a0
	stx.w	$s7, $s5, $s4
	blez	$s4, .LBB18_23
# %bb.22:                               #   in Loop: Header=BB18_10 Depth=3
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_23:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB18_10 Depth=3
	beqz	$s3, .LBB18_25
# %bb.24:                               #   in Loop: Header=BB18_10 Depth=3
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_25:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB18_10 Depth=3
	move	$s3, $s5
	add.d	$t2, $s5, $s4
	alsl.d	$a0, $s1, $s5, 2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$s4, $fp
	vldi	$vr2, -800
	bne	$s0, $s4, .LBB18_13
.LBB18_26:                              #   in Loop: Header=BB18_10 Depth=3
	move	$fp, $s4
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	sub.d	$s4, $s4, $s5
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB18_121
# %bb.27:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB18_10 Depth=3
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	srai.d	$a0, $s4, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s8, 255
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 3
.Ltmp1071:                              # EH_LABEL
	move	$s6, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1072:                              # EH_LABEL
# %bb.28:                               # %.noexc90
                                        #   in Loop: Header=BB18_10 Depth=3
	move	$s5, $a0
	fstx.d	$fs1, $a0, $s4
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	blez	$s4, .LBB18_30
# %bb.29:                               #   in Loop: Header=BB18_10 Depth=3
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_30:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB18_10 Depth=3
	move	$s3, $s6
	beqz	$s0, .LBB18_32
# %bb.31:                               #   in Loop: Header=BB18_10 Depth=3
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_32:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB18_10 Depth=3
	add.d	$s0, $s5, $s4
	alsl.d	$s4, $s1, $s5, 3
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	vldi	$vr2, -800
	addi.d	$a0, $s0, 8
	bne	$a0, $s4, .LBB18_14
.LBB18_33:                              #   in Loop: Header=BB18_10 Depth=3
	sub.d	$s6, $s4, $s5
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB18_117
# %bb.34:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i92
                                        #   in Loop: Header=BB18_10 Depth=3
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $s4
	srai.d	$a0, $s6, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s8, 255
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 3
.Ltmp1073:                              # EH_LABEL
	move	$s0, $s3
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1074:                              # EH_LABEL
# %bb.35:                               # %.noexc98
                                        #   in Loop: Header=BB18_10 Depth=3
	move	$s4, $a0
	fstx.d	$fs5, $a0, $s6
	blez	$s6, .LBB18_37
# %bb.36:                               #   in Loop: Header=BB18_10 Depth=3
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_37:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i94
                                        #   in Loop: Header=BB18_10 Depth=3
	move	$s3, $s0
	beqz	$s5, .LBB18_39
# %bb.38:                               #   in Loop: Header=BB18_10 Depth=3
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_39:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i96
                                        #   in Loop: Header=BB18_10 Depth=3
	add.d	$a0, $s4, $s6
	addi.d	$fp, $a0, 8
	alsl.d	$a0, $s1, $s4, 3
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	vldi	$vr2, -800
	addi.d	$t2, $t2, 4
	bne	$fp, $a0, .LBB18_15
.LBB18_40:                              #   in Loop: Header=BB18_10 Depth=3
	sub.d	$s6, $fp, $s4
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB18_123
# %bb.41:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i101
                                        #   in Loop: Header=BB18_10 Depth=3
	move	$s0, $t2
	srai.d	$a0, $s6, 3
	ori	$a3, $zero, 1
	sltu	$a2, $a3, $a0
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a3
	add.d	$a0, $a2, $a0
	sltu	$a2, $a0, $a2
	lu52i.d	$a3, $s8, 255
	sltu	$a4, $a0, $a3
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $a3, $a4
	or	$a0, $a0, $a4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$s1, $a2, $a0
	slli.d	$a0, $s1, 3
.Ltmp1075:                              # EH_LABEL
	move	$s8, $s3
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1076:                              # EH_LABEL
# %bb.42:                               # %.noexc107
                                        #   in Loop: Header=BB18_10 Depth=3
	move	$s5, $a0
	fstx.d	$fs4, $a0, $s6
	blez	$s6, .LBB18_44
# %bb.43:                               #   in Loop: Header=BB18_10 Depth=3
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_44:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i103
                                        #   in Loop: Header=BB18_10 Depth=3
	move	$s3, $s8
	beqz	$s4, .LBB18_46
# %bb.45:                               #   in Loop: Header=BB18_10 Depth=3
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_46:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i105
                                        #   in Loop: Header=BB18_10 Depth=3
	add.d	$a0, $s5, $s6
	addi.d	$a0, $a0, 8
	alsl.d	$s4, $s1, $s5, 3
	move	$t2, $s0
	move	$s0, $a0
	vldi	$vr2, -800
	b	.LBB18_9
.LBB18_47:
	move	$s8, $zero
	move	$s6, $zero
	move	$s5, $zero
	move	$s4, $zero
                                        # implicit-def: $f26_64
                                        # implicit-def: $f24_64
                                        # implicit-def: $f29_64
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
	fcmp.cule.d	$fcc0, $fs7, $fs6
	bceqz	$fcc0, .LBB18_76
.LBB18_48:
.Ltmp1078:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.117)
	addi.d	$a1, $a1, %pc_lo12(.L.str.117)
	ori	$a2, $zero, 45
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1079:                              # EH_LABEL
# %bb.49:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
.Ltmp1080:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1081:                              # EH_LABEL
# %bb.50:                               # %_ZNSolsEd.exit143
.Ltmp1082:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	ori	$a2, $zero, 11
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1083:                              # EH_LABEL
# %bb.51:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB18_125
# %bb.52:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i182
	ld.bu	$a0, $s2, 56
	bnez	$a0, .LBB18_106
# %bb.53:
.Ltmp1084:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1085:                              # EH_LABEL
# %bb.54:                               # %.noexc187
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1086:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1087:                              # EH_LABEL
	b	.LBB18_109
.LBB18_55:                              # %.preheader261
	beq	$t2, $s8, .LBB18_116
# %bb.56:                               # %.lr.ph420
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs6, $sp, 64                   # 8-byte Folded Spill
	move	$s2, $zero
	sub.d	$a0, $t2, $s8
	srai.d	$s0, $a0, 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $a0, 8
	movgr2fr.d	$fa2, $zero
	vldi	$vr3, -912
	pcalau12i	$a0, %pc_hi20(.LCPI18_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI18_1)
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	addi.w	$s4, $zero, -7
	lu32i.d	$s4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI18_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI18_2)
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	addi.w	$s5, $zero, -3
	lu32i.d	$s5, 0
	ori	$s6, $zero, 603
	ori	$s7, $zero, 300
	pcalau12i	$a0, %pc_hi20(.LCPI18_3)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	fmov.d	$fs7, $fa2
                                        # implicit-def: $f26_64
                                        # implicit-def: $f24_64
                                        # implicit-def: $f29_64
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
	fst.d	$fa2, $sp, 80                   # 8-byte Folded Spill
	b	.LBB18_58
	.p2align	4, , 16
.LBB18_57:                              #   in Loop: Header=BB18_58 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $s0, .LBB18_74
.LBB18_58:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_68 Depth 2
                                        #       Child Loop BB18_69 Depth 3
	slli.d	$a0, $s2, 2
	ldx.w	$a0, $s8, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa4, $s3, $a0
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a0
	fldx.d	$fs6, $a2, $a0
	fld.d	$fa0, $a1, 8
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	fld.d	$fs1, $a1, 16
	vldi	$vr0, -912
	fcmp.ceq.d	$fcc0, $fs6, $fa0
	bceqz	$fcc0, .LBB18_61
.LBB18_59:                              #   in Loop: Header=BB18_58 Depth=1
	fsub.d	$fa1, $fa0, $fa4
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fs7
	bcnez	$fcc0, .LBB18_57
# %bb.60:                               #   in Loop: Header=BB18_58 Depth=1
	fmov.d	$fs3, $fs1
	fld.d	$fs4, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$fs5, $fs6
	fmov.d	$fs0, $fa0
	fmov.d	$fs2, $fa4
	fmov.d	$fs7, $fa1
	b	.LBB18_57
	.p2align	4, , 16
.LBB18_61:                              #   in Loop: Header=BB18_58 Depth=1
	fcmp.ceq.d	$fcc0, $fs6, $fa2
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB18_59
# %bb.62:                               #   in Loop: Header=BB18_58 Depth=1
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fa0, $fa2
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB18_59
# %bb.63:                               #   in Loop: Header=BB18_58 Depth=1
	fcmp.ceq.d	$fcc0, $fs1, $fa2
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB18_59
# %bb.64:                               #   in Loop: Header=BB18_58 Depth=1
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fa0, $fa3
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB18_59
# %bb.65:                               #   in Loop: Header=BB18_58 Depth=1
	fcmp.ceq.d	$fcc0, $fs1, $fa3
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB18_59
# %bb.66:                               # %.preheader.preheader
                                        #   in Loop: Header=BB18_58 Depth=1
	fst.d	$fa4, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	move	$fp, $s8
	fst.d	$fs7, $sp, 144                  # 8-byte Folded Spill
	move	$a0, $zero
	fmov.d	$fs4, $fa2
	b	.LBB18_68
	.p2align	4, , 16
.LBB18_67:                              # %._crit_edge.i
                                        #   in Loop: Header=BB18_68 Depth=2
	addi.w	$a0, $s8, 1
	beq	$s8, $s7, .LBB18_73
.LBB18_68:                              # %.preheader
                                        #   Parent Loop BB18_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_69 Depth 3
	move	$s8, $a0
	slli.d	$a0, $a0, 1
	addi.d	$s1, $a0, 1
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fa1, $sp, 152                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fdiv.d	$fs5, $fa0, $fs0
	mul.d	$a0, $s1, $s1
	and	$a0, $a0, $s4
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fs2, $fa0, $fa1
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB18_69:                              #   Parent Loop BB18_58 Depth=1
                                        #     Parent Loop BB18_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs3, $fa0
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	fmul.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	mul.d	$a0, $s1, $s1
	and	$a0, $a0, $s5
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fs2, $fa1
	fsqrt.d	$fs7, $fa1
	fcmp.cor.d	$fcc0, $fs7, $fs7
	fmov.d	$fs0, $fa0
	bceqz	$fcc0, .LBB18_72
.LBB18_70:                              # %.split
                                        #   in Loop: Header=BB18_69 Depth=3
	fdiv.d	$fs3, $fs0, $fs3
	fmul.d	$fa0, $fs6, $fs7
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs5, $fs0
	fdiv.d	$fa0, $fs3, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB18_67
# %bb.71:                               #   in Loop: Header=BB18_69 Depth=3
	addi.w	$s1, $s1, 2
	fadd.d	$fs4, $fs4, $fa0
	bne	$s1, $s6, .LBB18_69
	b	.LBB18_67
.LBB18_72:                              # %call.sqrt
                                        #   in Loop: Header=BB18_69 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	b	.LBB18_70
.LBB18_73:                              # %_ZN6miniFE4solnEdddii.exit
                                        #   in Loop: Header=BB18_58 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(.LCPI18_3)
	fmul.d	$fa0, $fs4, $fa0
	fld.d	$fs7, $sp, 144                  # 8-byte Folded Reload
	move	$s8, $fp
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 80                   # 8-byte Folded Reload
	vldi	$vr3, -912
	fld.d	$fa4, $sp, 88                   # 8-byte Folded Reload
	b	.LBB18_59
.LBB18_74:                              # %._crit_edge421
	fcmp.cor.d	$fcc0, $fs7, $fs7
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	fld.d	$fs6, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB18_111
# %bb.75:                               # %._crit_edge421.thread
	fcmp.cule.d	$fcc0, $fs7, $fs6
	bcnez	$fcc0, .LBB18_48
.LBB18_76:
.Ltmp1088:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a1, $a1, %pc_lo12(.L.str.110)
	ori	$a2, $zero, 22
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1089:                              # EH_LABEL
# %bb.77:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp1090:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1091:                              # EH_LABEL
# %bb.78:                               # %_ZNSolsEd.exit
.Ltmp1092:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a1, $a0, %pc_lo12(.L.str.111)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1093:                              # EH_LABEL
# %bb.79:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB18_125
# %bb.80:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB18_82
# %bb.81:
	ld.bu	$a0, $s2, 67
	b	.LBB18_84
.LBB18_82:
.Ltmp1094:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1095:                              # EH_LABEL
# %bb.83:                               # %.noexc155
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1096:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1097:                              # EH_LABEL
.LBB18_84:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp1098:                              # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1099:                              # EH_LABEL
# %bb.85:                               # %.noexc157
.Ltmp1100:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1101:                              # EH_LABEL
# %bb.86:                               # %_ZNSolsEPFRSoS_E.exit
.Ltmp1102:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a1, $a1, %pc_lo12(.L.str.112)
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1103:                              # EH_LABEL
# %bb.87:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
.Ltmp1104:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1105:                              # EH_LABEL
# %bb.88:                               # %_ZNSolsEd.exit117
.Ltmp1106:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1107:                              # EH_LABEL
# %bb.89:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
.Ltmp1108:                              # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1109:                              # EH_LABEL
# %bb.90:                               # %_ZNSolsEd.exit121
.Ltmp1110:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1111:                              # EH_LABEL
# %bb.91:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
.Ltmp1112:                              # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1113:                              # EH_LABEL
# %bb.92:                               # %_ZNSolsEd.exit125
.Ltmp1114:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	ori	$a2, $zero, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1115:                              # EH_LABEL
# %bb.93:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB18_125
# %bb.94:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB18_96
# %bb.95:
	ld.bu	$a0, $s2, 67
	b	.LBB18_98
.LBB18_96:
.Ltmp1116:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1117:                              # EH_LABEL
# %bb.97:                               # %.noexc165
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1118:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1119:                              # EH_LABEL
.LBB18_98:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i162
.Ltmp1120:                              # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1121:                              # EH_LABEL
# %bb.99:                               # %.noexc167
.Ltmp1122:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1123:                              # EH_LABEL
# %bb.100:                              # %_ZNSolsEPFRSoS_E.exit129
.Ltmp1124:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a1, $a1, %pc_lo12(.L.str.115)
	ori	$a2, $zero, 22
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1125:                              # EH_LABEL
# %bb.101:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131
.Ltmp1126:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1127:                              # EH_LABEL
# %bb.102:                              # %_ZNSolsEd.exit133
.Ltmp1128:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	ori	$a2, $zero, 22
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1129:                              # EH_LABEL
# %bb.103:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135
.Ltmp1130:                              # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1131:                              # EH_LABEL
# %bb.104:                              # %_ZNSolsEd.exit137
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB18_125
# %bb.105:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i171
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB18_107
.LBB18_106:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i184.invoke.sink.split
	ld.bu	$a0, $s2, 67
	b	.LBB18_109
.LBB18_107:
.Ltmp1132:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1133:                              # EH_LABEL
# %bb.108:                              # %.noexc176
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1134:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1135:                              # EH_LABEL
.LBB18_109:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i184.invoke
.Ltmp1136:                              # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1137:                              # EH_LABEL
# %bb.110:                              # %.noexc189.invoke
.Ltmp1138:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1139:                              # EH_LABEL
.LBB18_111:                             # %_ZNSolsEPFRSoS_E.exit139
	beqz	$s5, .LBB18_113
# %bb.112:
	sub.d	$a1, $s4, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_113:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit
	beqz	$s8, .LBB18_115
# %bb.114:
	sub.d	$a1, $s6, $s8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_115:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit
	fcmp.clt.d	$fcc0, $fs6, $fs7
	movcf2gr	$a0, $fcc0
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
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
.LBB18_116:
                                        # implicit-def: $f26_64
                                        # implicit-def: $f24_64
                                        # implicit-def: $f29_64
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	fcmp.cule.d	$fcc0, $fs7, $fs6
	bceqz	$fcc0, .LBB18_76
	b	.LBB18_48
.LBB18_117:
.Ltmp1145:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	move	$s8, $s3
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1146:                              # EH_LABEL
# %bb.118:                              # %.noexc97
.LBB18_119:
.Ltmp1149:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	move	$s4, $fp
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	move	$s8, $s3
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1150:                              # EH_LABEL
# %bb.120:                              # %.noexc
.LBB18_121:
.Ltmp1147:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	move	$s8, $s3
	move	$s4, $fp
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1148:                              # EH_LABEL
# %bb.122:                              # %.noexc89
.LBB18_123:
.Ltmp1143:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	move	$s8, $s3
	move	$s5, $s4
	move	$s4, $fp
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1144:                              # EH_LABEL
# %bb.124:                              # %.noexc106
.LBB18_125:                             # %.invoke
.Ltmp1140:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1141:                              # EH_LABEL
# %bb.126:                              # %.cont
.LBB18_127:
.Ltmp1142:                              # EH_LABEL
	move	$s1, $a0
	b	.LBB18_130
.LBB18_128:                             # %.loopexit
.Ltmp1077:                              # EH_LABEL
	move	$s1, $a0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	move	$s4, $fp
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	move	$s8, $s3
	b	.LBB18_130
.LBB18_129:                             # %.loopexit.split-lp
.Ltmp1151:                              # EH_LABEL
	move	$s1, $a0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
.LBB18_130:
	bnez	$s5, .LBB18_133
# %bb.131:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit150
	bnez	$s8, .LBB18_134
.LBB18_132:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB18_133:                             # %.thread
	sub.d	$a1, $s4, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB18_132
.LBB18_134:
	sub.d	$a1, $s6, $s8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db, .Lfunc_end18-_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,"aG",@progbits,_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp1069-.Lfunc_begin12       # >> Call Site 1 <<
	.uleb128 .Ltmp1070-.Ltmp1069            #   Call between .Ltmp1069 and .Ltmp1070
	.uleb128 .Ltmp1077-.Lfunc_begin12       #     jumps to .Ltmp1077
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1070-.Lfunc_begin12       # >> Call Site 2 <<
	.uleb128 .Ltmp1071-.Ltmp1070            #   Call between .Ltmp1070 and .Ltmp1071
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1071-.Lfunc_begin12       # >> Call Site 3 <<
	.uleb128 .Ltmp1072-.Ltmp1071            #   Call between .Ltmp1071 and .Ltmp1072
	.uleb128 .Ltmp1077-.Lfunc_begin12       #     jumps to .Ltmp1077
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1072-.Lfunc_begin12       # >> Call Site 4 <<
	.uleb128 .Ltmp1073-.Ltmp1072            #   Call between .Ltmp1072 and .Ltmp1073
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1073-.Lfunc_begin12       # >> Call Site 5 <<
	.uleb128 .Ltmp1074-.Ltmp1073            #   Call between .Ltmp1073 and .Ltmp1074
	.uleb128 .Ltmp1077-.Lfunc_begin12       #     jumps to .Ltmp1077
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1074-.Lfunc_begin12       # >> Call Site 6 <<
	.uleb128 .Ltmp1075-.Ltmp1074            #   Call between .Ltmp1074 and .Ltmp1075
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1075-.Lfunc_begin12       # >> Call Site 7 <<
	.uleb128 .Ltmp1076-.Ltmp1075            #   Call between .Ltmp1075 and .Ltmp1076
	.uleb128 .Ltmp1077-.Lfunc_begin12       #     jumps to .Ltmp1077
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1076-.Lfunc_begin12       # >> Call Site 8 <<
	.uleb128 .Ltmp1078-.Ltmp1076            #   Call between .Ltmp1076 and .Ltmp1078
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1078-.Lfunc_begin12       # >> Call Site 9 <<
	.uleb128 .Ltmp1087-.Ltmp1078            #   Call between .Ltmp1078 and .Ltmp1087
	.uleb128 .Ltmp1142-.Lfunc_begin12       #     jumps to .Ltmp1142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1087-.Lfunc_begin12       # >> Call Site 10 <<
	.uleb128 .Ltmp1088-.Ltmp1087            #   Call between .Ltmp1087 and .Ltmp1088
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1088-.Lfunc_begin12       # >> Call Site 11 <<
	.uleb128 .Ltmp1139-.Ltmp1088            #   Call between .Ltmp1088 and .Ltmp1139
	.uleb128 .Ltmp1142-.Lfunc_begin12       #     jumps to .Ltmp1142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1139-.Lfunc_begin12       # >> Call Site 12 <<
	.uleb128 .Ltmp1145-.Ltmp1139            #   Call between .Ltmp1139 and .Ltmp1145
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1145-.Lfunc_begin12       # >> Call Site 13 <<
	.uleb128 .Ltmp1144-.Ltmp1145            #   Call between .Ltmp1145 and .Ltmp1144
	.uleb128 .Ltmp1151-.Lfunc_begin12       #     jumps to .Ltmp1151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1140-.Lfunc_begin12       # >> Call Site 14 <<
	.uleb128 .Ltmp1141-.Ltmp1140            #   Call between .Ltmp1140 and .Ltmp1141
	.uleb128 .Ltmp1142-.Lfunc_begin12       #     jumps to .Ltmp1142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1141-.Lfunc_begin12       # >> Call Site 15 <<
	.uleb128 .Lfunc_end18-.Ltmp1141         #   Call between .Ltmp1141 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE9CSRMatrixIdiiED2Ev,"axG",@progbits,_ZN6miniFE9CSRMatrixIdiiED2Ev,comdat
	.weak	_ZN6miniFE9CSRMatrixIdiiED2Ev   # -- Begin function _ZN6miniFE9CSRMatrixIdiiED2Ev
	.p2align	5
	.type	_ZN6miniFE9CSRMatrixIdiiED2Ev,@function
_ZN6miniFE9CSRMatrixIdiiED2Ev:          # @_ZN6miniFE9CSRMatrixIdiiED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 104
	beqz	$a0, .LBB19_2
# %bb.1:
	ld.d	$a1, $fp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_2:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB19_4
# %bb.3:
	ld.d	$a1, $fp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_4:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB19_6
# %bb.5:
	ld.d	$a1, $fp, 72
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_6:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit3
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB19_8
# %bb.7:
	ld.d	$a1, $fp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_8:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit5
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB19_10
# %bb.9:
	ld.d	$a1, $fp, 24
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB19_10:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit7
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end19:
	.size	_ZN6miniFE9CSRMatrixIdiiED2Ev, .Lfunc_end19-_ZN6miniFE9CSRMatrixIdiiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE23simple_mesh_descriptionIiED2Ev,"axG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiED2Ev,comdat
	.weak	_ZN6miniFE23simple_mesh_descriptionIiED2Ev # -- Begin function _ZN6miniFE23simple_mesh_descriptionIiED2Ev
	.p2align	5
	.type	_ZN6miniFE23simple_mesh_descriptionIiED2Ev,@function
_ZN6miniFE23simple_mesh_descriptionIiED2Ev: # @_ZN6miniFE23simple_mesh_descriptionIiED2Ev
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
	ld.d	$a1, $a0, 112
	addi.d	$a0, $a0, 96
.Ltmp1152:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp1153:                              # EH_LABEL
# %bb.1:                                # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit
	ld.d	$a1, $fp, 64
	addi.d	$a0, $fp, 48
.Ltmp1155:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp1156:                              # EH_LABEL
# %bb.2:                                # %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
	ld.d	$a1, $fp, 16
.Ltmp1158:                              # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp1159:                              # EH_LABEL
# %bb.3:                                # %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB20_4:
.Ltmp1160:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_5:
.Ltmp1157:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_6:
.Ltmp1154:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN6miniFE23simple_mesh_descriptionIiED2Ev, .Lfunc_end20-_ZN6miniFE23simple_mesh_descriptionIiED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE23simple_mesh_descriptionIiED2Ev,"aG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp1152-.Lfunc_begin13       # >> Call Site 1 <<
	.uleb128 .Ltmp1153-.Ltmp1152            #   Call between .Ltmp1152 and .Ltmp1153
	.uleb128 .Ltmp1154-.Lfunc_begin13       #     jumps to .Ltmp1154
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1155-.Lfunc_begin13       # >> Call Site 2 <<
	.uleb128 .Ltmp1156-.Ltmp1155            #   Call between .Ltmp1155 and .Ltmp1156
	.uleb128 .Ltmp1157-.Lfunc_begin13       #     jumps to .Ltmp1157
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1158-.Lfunc_begin13       # >> Call Site 3 <<
	.uleb128 .Ltmp1159-.Ltmp1158            #   Call between .Ltmp1158 and .Ltmp1159
	.uleb128 .Ltmp1160-.Lfunc_begin13       #     jumps to .Ltmp1160
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1159-.Lfunc_begin13       # >> Call Site 4 <<
	.uleb128 .Lfunc_end20-.Ltmp1159         #   Call between .Ltmp1159 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,"axG",@progbits,_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,comdat
	.weak	_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE # -- Begin function _ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE
	.p2align	5
	.type	_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,@function
_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE: # @_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	move	$fp, $a4
	st.d	$zero, $sp, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 24
.Ltmp1161:                              # EH_LABEL
	addi.d	$a4, $sp, 24
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb)
	jirl	$ra, $ra, 0
.Ltmp1162:                              # EH_LABEL
# %bb.1:
	ld.d	$a2, $sp, 32
	ld.d	$a0, $sp, 24
	beq	$a2, $a0, .LBB21_9
# %bb.2:
	ld.wu	$a3, $a0, 0
	ld.d	$a4, $fp, 16
	addi.d	$a1, $fp, 8
	st.d	$a3, $sp, 8
	beqz	$a4, .LBB21_7
# %bb.3:                                # %.lr.ph.i.i.i.i.preheader
	addi.w	$a3, $a3, 0
	ori	$a6, $zero, 16
	ori	$a7, $zero, 24
	move	$a5, $a1
	.p2align	4, , 16
.LBB21_4:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a4, 32
	slt	$t0, $t0, $a3
	masknez	$t1, $a4, $t0
	masknez	$t2, $a6, $t0
	maskeqz	$t3, $a7, $t0
	or	$t2, $t3, $t2
	ldx.d	$a4, $a4, $t2
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	bnez	$a4, .LBB21_4
# %bb.5:                                # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i
	beq	$a5, $a1, .LBB21_7
# %bb.6:
	ld.w	$a4, $a5, 32
	move	$a1, $a5
	bge	$a3, $a4, .LBB21_9
.LBB21_7:                               # %.critedge.i
.Ltmp1164:                              # EH_LABEL
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp1165:                              # EH_LABEL
# %bb.8:                                # %.critedge.i._crit_edge
	ld.d	$a2, $sp, 32
	ld.d	$a0, $sp, 24
.LBB21_9:
	sub.d	$a1, $a2, $a0
	ori	$a3, $zero, 5
	bltu	$a1, $a3, .LBB21_20
# %bb.10:                               # %.lr.ph
	addi.d	$s0, $fp, 8
	ori	$s1, $zero, 1
	ori	$s2, $zero, 16
	ori	$s3, $zero, 24
	b	.LBB21_14
	.p2align	4, , 16
.LBB21_11:                              # %.critedge.i91
                                        #   in Loop: Header=BB21_14 Depth=1
.Ltmp1167:                              # EH_LABEL
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp1168:                              # EH_LABEL
# %bb.12:                               # %.critedge.i91._crit_edge
                                        #   in Loop: Header=BB21_14 Depth=1
	ld.d	$a2, $sp, 32
	ld.d	$a0, $sp, 24
.LBB21_13:                              #   in Loop: Header=BB21_14 Depth=1
	addi.d	$s1, $s1, 1
	sub.d	$a1, $a2, $a0
	srai.d	$a1, $a1, 2
	bgeu	$s1, $a1, .LBB21_20
.LBB21_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_17 Depth 2
	alsl.d	$a3, $s1, $a0, 2
	slli.d	$a1, $s1, 2
	ldx.wu	$a1, $a0, $a1
	ld.w	$a4, $a3, -4
	addi.w	$a3, $a1, 0
	addi.w	$a4, $a4, 1
	beq	$a3, $a4, .LBB21_13
# %bb.15:                               #   in Loop: Header=BB21_14 Depth=1
	ld.d	$a4, $fp, 16
	st.d	$a1, $sp, 8
	st.d	$s1, $sp, 16
	move	$a1, $s0
	beqz	$a4, .LBB21_11
# %bb.16:                               # %.lr.ph.i.i.i.i78.preheader
                                        #   in Loop: Header=BB21_14 Depth=1
	move	$a5, $s0
	.p2align	4, , 16
.LBB21_17:                              # %.lr.ph.i.i.i.i78
                                        #   Parent Loop BB21_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a4, 32
	slt	$a1, $a1, $a3
	masknez	$a6, $a4, $a1
	masknez	$a7, $s2, $a1
	maskeqz	$t0, $s3, $a1
	or	$a7, $t0, $a7
	ldx.d	$a4, $a4, $a7
	maskeqz	$a1, $a5, $a1
	or	$a5, $a1, $a6
	bnez	$a4, .LBB21_17
# %bb.18:                               # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i86
                                        #   in Loop: Header=BB21_14 Depth=1
	move	$a1, $s0
	beq	$a5, $s0, .LBB21_11
# %bb.19:                               #   in Loop: Header=BB21_14 Depth=1
	ld.w	$a4, $a5, 32
	move	$a1, $a5
	blt	$a3, $a4, .LBB21_11
	b	.LBB21_13
.LBB21_20:                              # %.preheader
	beqz	$a0, .LBB21_22
# %bb.21:
	ld.d	$a1, $sp, 40
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB21_22:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit97
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB21_23:
.Ltmp1166:                              # EH_LABEL
	b	.LBB21_26
.LBB21_24:
.Ltmp1163:                              # EH_LABEL
	b	.LBB21_26
.LBB21_25:
.Ltmp1169:                              # EH_LABEL
.LBB21_26:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit101
	move	$fp, $a0
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB21_28
# %bb.27:
	ld.d	$a1, $sp, 40
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB21_28:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit103
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE, .Lfunc_end21-_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,"aG",@progbits,_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp1161-.Lfunc_begin14       # >> Call Site 1 <<
	.uleb128 .Ltmp1162-.Ltmp1161            #   Call between .Ltmp1161 and .Ltmp1162
	.uleb128 .Ltmp1163-.Lfunc_begin14       #     jumps to .Ltmp1163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1164-.Lfunc_begin14       # >> Call Site 2 <<
	.uleb128 .Ltmp1165-.Ltmp1164            #   Call between .Ltmp1164 and .Ltmp1165
	.uleb128 .Ltmp1166-.Lfunc_begin14       #     jumps to .Ltmp1166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1167-.Lfunc_begin14       # >> Call Site 3 <<
	.uleb128 .Ltmp1168-.Ltmp1167            #   Call between .Ltmp1167 and .Ltmp1168
	.uleb128 .Ltmp1169-.Lfunc_begin14       #     jumps to .Ltmp1169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1168-.Lfunc_begin14       # >> Call Site 4 <<
	.uleb128 .Lfunc_end21-.Ltmp1168         #   Call between .Ltmp1168 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,"axG",@progbits,_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,comdat
	.weak	_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev # -- Begin function _ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev
	.p2align	5
	.type	_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,@function
_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev: # @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp1170:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp1171:                              # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB22_2:
.Ltmp1172:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev, .Lfunc_end22-_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,"aG",@progbits,_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp1170-.Lfunc_begin15       # >> Call Site 1 <<
	.uleb128 .Ltmp1171-.Ltmp1170            #   Call between .Ltmp1170 and .Ltmp1171
	.uleb128 .Ltmp1172-.Lfunc_begin15       #     jumps to .Ltmp1172
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1171-.Lfunc_begin15       # >> Call Site 2 <<
	.uleb128 .Lfunc_end22-.Ltmp1171         #   Call between .Ltmp1171 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3setIiSt4lessIiESaIiEED2Ev,"axG",@progbits,_ZNSt3setIiSt4lessIiESaIiEED2Ev,comdat
	.weak	_ZNSt3setIiSt4lessIiESaIiEED2Ev # -- Begin function _ZNSt3setIiSt4lessIiESaIiEED2Ev
	.p2align	5
	.type	_ZNSt3setIiSt4lessIiESaIiEED2Ev,@function
_ZNSt3setIiSt4lessIiESaIiEED2Ev:        # @_ZNSt3setIiSt4lessIiESaIiEED2Ev
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp1173:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp1174:                              # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB23_2:
.Ltmp1175:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZNSt3setIiSt4lessIiESaIiEED2Ev, .Lfunc_end23-_ZNSt3setIiSt4lessIiESaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3setIiSt4lessIiESaIiEED2Ev,"aG",@progbits,_ZNSt3setIiSt4lessIiESaIiEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp1173-.Lfunc_begin16       # >> Call Site 1 <<
	.uleb128 .Ltmp1174-.Ltmp1173            #   Call between .Ltmp1173 and .Ltmp1174
	.uleb128 .Ltmp1175-.Lfunc_begin16       #     jumps to .Ltmp1175
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1174-.Lfunc_begin16       # >> Call Site 2 <<
	.uleb128 .Lfunc_end23-.Ltmp1174         #   Call between .Ltmp1174 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb,"axG",@progbits,_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb,comdat
	.weak	_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb # -- Begin function _ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb
	.p2align	5
	.type	_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb,@function
_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb: # @_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb
	.cfi_startproc
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
	ld.d	$s4, $a4, 0
	ld.d	$a6, $a4, 8
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a0
	beq	$a6, $s4, .LBB24_2
# %bb.1:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$s4, $a4, 8
	move	$a6, $s4
.LBB24_2:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.w	$s2, $a3, 16
	ld.w	$s6, $a3, 20
	ld.w	$s7, $a3, 8
	ld.w	$s8, $a3, 12
	ld.w	$a2, $a3, 0
	ld.w	$a7, $a3, 4
	beqz	$a5, .LBB24_4
# %bb.3:
	slt	$a0, $zero, $s2
	sub.w	$s2, $s2, $a0
	slt	$a0, $zero, $s7
	sub.w	$s7, $s7, $a0
	slt	$a0, $zero, $a2
	sub.w	$a2, $a2, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slt	$a0, $s6, $a0
	add.w	$s6, $s6, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slt	$a0, $s8, $a0
	add.w	$s8, $s8, $a0
	slt	$a0, $a7, $fp
	add.w	$a7, $a7, $a0
.LBB24_4:
	sub.d	$a0, $s6, $s2
	sub.d	$a1, $s8, $s7
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	sub.d	$a2, $a7, $a2
	mul.d	$a1, $a2, $a1
	mul.w	$s0, $a1, $a0
	bltz	$s0, .LBB24_29
# %bb.5:
	ld.d	$a0, $a4, 16
	sub.d	$s5, $a0, $s4
	srai.d	$a1, $s5, 2
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	bgeu	$a1, $s0, .LBB24_11
# %bb.6:                                # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	sub.d	$s1, $a6, $s4
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s1, .LBB24_8
# %bb.7:
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_8:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s4, .LBB24_10
# %bb.9:
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_10:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.d	$s3, $a4, 0
	add.d	$a6, $s3, $s1
	st.d	$a6, $a4, 8
	alsl.d	$a0, $s0, $s3, 2
	st.d	$a0, $a4, 16
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	blt	$s2, $s6, .LBB24_12
	b	.LBB24_27
.LBB24_11:
	move	$s3, $s4
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	bge	$s2, $s6, .LBB24_27
.LBB24_12:                              # %.preheader76.lr.ph
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a1, $s2, $a2
	add.d	$a1, $s7, $a1
	mul.d	$a3, $fp, $a1
	mul.d	$a1, $a2, $fp
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s1, $zero, -1
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	b	.LBB24_14
	.p2align	4, , 16
.LBB24_13:                              # %._crit_edge79
                                        #   in Loop: Header=BB24_14 Depth=1
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s2, $s2, 1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a1
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	beq	$s2, $s6, .LBB24_27
.LBB24_14:                              # %.preheader76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_17 Depth 2
                                        #       Child Loop BB24_20 Depth 3
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	move	$a5, $a3
	move	$a3, $s7
	blt	$s7, $s8, .LBB24_17
	b	.LBB24_13
	.p2align	4, , 16
.LBB24_15:                              #   in Loop: Header=BB24_17 Depth=2
	move	$s4, $s3
.LBB24_16:                              # %._crit_edge
                                        #   in Loop: Header=BB24_17 Depth=2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	add.d	$a5, $a5, $fp
	move	$s3, $s4
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	beq	$a3, $s8, .LBB24_13
.LBB24_17:                              # %.preheader
                                        #   Parent Loop BB24_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_20 Depth 3
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	bge	$s0, $a7, .LBB24_15
# %bb.18:                               # %.lr.ph
                                        #   in Loop: Header=BB24_17 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slt	$a1, $a2, $a1
	or	$s8, $a3, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slt	$a2, $a3, $a2
	and	$s6, $a2, $a1
	masknez	$t0, $s1, $s6
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB24_20
	.p2align	4, , 16
.LBB24_19:                              #   in Loop: Header=BB24_20 Depth=3
	st.w	$s7, $a6, 0
	addi.d	$a6, $a6, 4
	st.d	$a6, $a4, 8
	move	$s4, $s3
	addi.w	$s0, $s0, 1
	beq	$a7, $s0, .LBB24_16
.LBB24_20:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   Parent Loop BB24_14 Depth=1
                                        #     Parent Loop BB24_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	or	$a1, $s8, $s0
	slt	$a1, $s1, $a1
	slt	$a2, $s0, $fp
	add.d	$a3, $a5, $s0
	maskeqz	$a3, $a3, $s6
	or	$a3, $a3, $t0
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s1, $a2
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s1, $a1
	or	$s7, $a2, $a1
	bne	$a6, $a0, .LBB24_19
# %bb.21:                               #   in Loop: Header=BB24_20 Depth=3
	sub.d	$s5, $a0, $s3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB24_28
# %bb.22:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB24_20 Depth=3
	move	$s2, $fp
	srai.d	$a0, $s5, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s1, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s7, $a0, $s5
	blez	$s5, .LBB24_24
# %bb.23:                               #   in Loop: Header=BB24_20 Depth=3
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_24:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB24_20 Depth=3
	beqz	$s3, .LBB24_26
# %bb.25:                               #   in Loop: Header=BB24_20 Depth=3
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_26:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB24_20 Depth=3
	add.d	$a0, $s4, $s5
	addi.d	$a6, $a0, 4
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.d	$s4, $a4, 0
	st.d	$a6, $a4, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a4, 16
	move	$s3, $s4
	move	$fp, $s2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	addi.w	$s0, $s0, 1
	bne	$a7, $s0, .LBB24_20
	b	.LBB24_16
.LBB24_27:                              # %._crit_edge81
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
.LBB24_28:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB24_29:
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb, .Lfunc_end24-_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_ # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,@function
_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_: # @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
	move	$fp, $a2
	move	$s2, $a1
	move	$s0, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$fp, $a0
	addi.d	$s1, $a0, 32
	st.d	$a1, $a0, 32
.Ltmp1176:                              # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_)
	jirl	$ra, $ra, 0
.Ltmp1177:                              # EH_LABEL
# %bb.1:
	move	$a2, $a1
	beqz	$a1, .LBB25_6
# %bb.2:
	addi.d	$a3, $s0, 8
	ori	$a1, $zero, 1
	bnez	$a0, .LBB25_5
# %bb.3:
	beq	$a3, $a2, .LBB25_5
# %bb.4:
	ld.w	$a0, $s1, 0
	ld.w	$a1, $a2, 32
	slt	$a1, $a0, $a1
.LBB25_5:                               # %.thread
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB25_7
.LBB25_6:
	ori	$a1, $zero, 40
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB25_7:                               # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit7
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB25_8:                               # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit
.Ltmp1178:                              # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_, .Lfunc_end25-_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IiiEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp1176-.Lfunc_begin17       #   Call between .Lfunc_begin17 and .Ltmp1176
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1176-.Lfunc_begin17       # >> Call Site 2 <<
	.uleb128 .Ltmp1177-.Ltmp1176            #   Call between .Ltmp1176 and .Ltmp1177
	.uleb128 .Ltmp1178-.Lfunc_begin17       #     jumps to .Ltmp1178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1177-.Lfunc_begin17       # >> Call Site 3 <<
	.uleb128 .Lfunc_end25-.Ltmp1177         #   Call between .Ltmp1177 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,comdat
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_ # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,@function
_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_: # @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.cfi_startproc
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
	move	$a3, $a0
	addi.d	$fp, $a0, 8
	beq	$fp, $a1, .LBB26_5
# %bb.1:
	move	$a0, $a1
	ld.w	$s0, $a2, 0
	ld.w	$a1, $a1, 32
	bge	$s0, $a1, .LBB26_8
# %bb.2:
	ld.d	$s1, $a3, 24
	beq	$s1, $a0, .LBB26_20
# %bb.3:
	move	$s3, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bge	$a1, $s0, .LBB26_21
# %bb.4:
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	b	.LBB26_36
.LBB26_5:
	ld.d	$a0, $a3, 40
	beqz	$a0, .LBB26_12
# %bb.6:
	ld.d	$a1, $a3, 32
	ld.w	$a0, $a1, 32
	ld.w	$a4, $a2, 0
	bge	$a0, $a4, .LBB26_12
.LBB26_7:
	move	$a0, $zero
	b	.LBB26_36
.LBB26_8:
	bge	$a1, $s0, .LBB26_19
# %bb.9:
	ld.d	$a1, $a3, 32
	beq	$a1, $a0, .LBB26_26
# %bb.10:
	move	$s1, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bge	$s0, $a1, .LBB26_27
# %bb.11:
	ld.d	$a1, $s2, 24
	sltui	$a1, $a1, 1
	maskeqz	$a2, $s2, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	b	.LBB26_36
.LBB26_12:
	ld.d	$a5, $a3, 16
	beqz	$a5, .LBB26_16
# %bb.13:                               # %.lr.ph.i
	ld.w	$a1, $a2, 0
	ori	$a0, $zero, 24
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB26_14:                              # =>This Inner Loop Header: Depth=1
	move	$fp, $a5
	ld.w	$a4, $a5, 32
	slt	$a5, $a1, $a4
	masknez	$a7, $a0, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ldx.d	$a5, $fp, $a5
	bnez	$a5, .LBB26_14
# %bb.15:                               # %._crit_edge.i
	move	$a0, $fp
	bge	$a1, $a4, .LBB26_18
.LBB26_16:                              # %._crit_edge.thread.i
	ld.d	$a0, $a3, 24
	beq	$fp, $a0, .LBB26_35
# %bb.17:
	move	$a0, $fp
	move	$s0, $a2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a4, $a0, 32
	ld.w	$a1, $s0, 0
.LBB26_18:
	slt	$a2, $a4, $a1
	b	.LBB26_34
.LBB26_19:
	move	$a1, $zero
	b	.LBB26_36
.LBB26_20:
	move	$a1, $a0
	b	.LBB26_36
.LBB26_21:
	ld.d	$a4, $s3, 16
	move	$a1, $s1
	beqz	$a4, .LBB26_25
# %bb.22:                               # %.lr.ph.i22.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB26_23:                              # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.w	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB26_23
# %bb.24:                               # %._crit_edge.i28
	move	$a0, $fp
	bge	$s0, $a2, .LBB26_33
.LBB26_25:                              # %._crit_edge.thread.i36
	bne	$fp, $a1, .LBB26_32
	b	.LBB26_7
.LBB26_26:
	move	$a1, $a0
	move	$a0, $zero
	b	.LBB26_36
.LBB26_27:
	move	$a1, $s1
	ld.d	$a4, $s1, 16
	beqz	$a4, .LBB26_31
# %bb.28:                               # %.lr.ph.i41.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB26_29:                              # %.lr.ph.i41
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.w	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB26_29
# %bb.30:                               # %._crit_edge.i47
	move	$a0, $fp
	bge	$s0, $a2, .LBB26_33
.LBB26_31:                              # %._crit_edge.thread.i55
	ld.d	$a0, $a1, 24
	beq	$fp, $a0, .LBB26_35
.LBB26_32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 32
.LBB26_33:
	slt	$a2, $a2, $s0
.LBB26_34:                              # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE24_M_get_insert_unique_posERS1_.exit
	maskeqz	$a1, $fp, $a2
	masknez	$a0, $a0, $a2
	b	.LBB26_36
.LBB26_35:
	move	$a0, $zero
	move	$a1, $fp
.LBB26_36:                              # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE24_M_get_insert_unique_posERS1_.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_, .Lfunc_end26-_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_ # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,@function
_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_: # @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
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
	move	$fp, $a2
	move	$s2, $a1
	move	$s0, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	move	$fp, $a0
	addi.d	$s1, $a0, 32
	st.w	$a1, $a0, 32
	st.w	$a2, $a0, 36
.Ltmp1179:                              # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_)
	jirl	$ra, $ra, 0
.Ltmp1180:                              # EH_LABEL
# %bb.1:
	move	$a2, $a1
	beqz	$a1, .LBB27_6
# %bb.2:
	addi.d	$a3, $s0, 8
	ori	$a1, $zero, 1
	bnez	$a0, .LBB27_5
# %bb.3:
	beq	$a3, $a2, .LBB27_5
# %bb.4:
	ld.w	$a0, $s1, 0
	ld.w	$a1, $a2, 32
	slt	$a1, $a0, $a1
.LBB27_5:                               # %.thread
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB27_7
.LBB27_6:
	ori	$a1, $zero, 40
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB27_7:                               # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit7
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB27_8:                               # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit
.Ltmp1181:                              # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_, .Lfunc_end27-_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJS0_IimEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp1179-.Lfunc_begin18       #   Call between .Lfunc_begin18 and .Ltmp1179
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1179-.Lfunc_begin18       # >> Call Site 2 <<
	.uleb128 .Ltmp1180-.Ltmp1179            #   Call between .Ltmp1179 and .Ltmp1180
	.uleb128 .Ltmp1181-.Lfunc_begin18       #     jumps to .Ltmp1181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1180-.Lfunc_begin18       # >> Call Site 3 <<
	.uleb128 .Lfunc_end27-.Ltmp1180         #   Call between .Ltmp1180 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE,"axG",@progbits,_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE,comdat
	.weak	_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE # -- Begin function _ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE
	.p2align	5
	.type	_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE,@function
_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE: # @_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE
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
	ld.d	$a3, $a1, 16
	move	$fp, $a0
	addi.d	$a2, $a1, 8
	beqz	$a3, .LBB28_8
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a0, $a2
	.p2align	4, , 16
.LBB28_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 32
	slt	$a6, $a6, $fp
	masknez	$a7, $a3, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a3, $a3, $t0
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	bnez	$a3, .LBB28_2
# %bb.3:                                # %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit
	beq	$a0, $a2, .LBB28_5
# %bb.4:
	ld.w	$a2, $a0, 32
	beq	$a2, $fp, .LBB28_7
.LBB28_5:                               # %.critedge
	ld.d	$a2, $a1, 40
	beqz	$a2, .LBB28_9
.LBB28_6:
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bne	$fp, $a1, .LBB28_12
.LBB28_7:                               # %.thread
	ld.w	$a0, $a0, 36
	b	.LBB28_26
.LBB28_8:
	move	$a0, $a2
	ld.d	$a2, $a1, 40
	bnez	$a2, .LBB28_6
.LBB28_9:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	ori	$a2, $zero, 31
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB28_27
# %bb.10:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB28_19
# %bb.11:
	ld.bu	$a0, $fp, 67
	b	.LBB28_20
.LBB28_12:
	bge	$fp, $a1, .LBB28_17
# %bb.13:
	ld.d	$a2, $s0, 24
	bne	$a0, $a2, .LBB28_17
# %bb.14:
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a1, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 10
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 23
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB28_27
# %bb.15:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB28_23
.LBB28_16:
	ld.bu	$a1, $fp, 67
	b	.LBB28_24
.LBB28_17:                              # %.critedge2
	sub.w	$a1, $fp, $a1
	bltz	$a1, .LBB28_21
# %bb.18:
	ld.w	$a0, $a0, 36
	add.w	$a0, $a0, $a1
	b	.LBB28_26
.LBB28_19:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB28_20:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	b	.LBB28_25
.LBB28_21:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 49
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB28_27
# %bb.22:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
	ld.bu	$a1, $fp, 56
	bnez	$a1, .LBB28_16
.LBB28_23:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB28_24:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15
	ext.w.b	$a1, $a1
.LBB28_25:
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -99
.LBB28_26:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB28_27:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE, .Lfunc_end28-_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,@function
_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E: # @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB29_4
# %bb.1:                                # %.lr.ph.preheader
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
	move	$s0, $a1
	move	$fp, $a0
	.p2align	4, , 16
.LBB29_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB29_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB29_4:                               # %._crit_edge
	ret
.Lfunc_end29:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E, .Lfunc_end29-_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE,"axG",@progbits,_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE,comdat
	.weak	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE # -- Begin function _ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE
	.p2align	5
	.type	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE,@function
_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE: # @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB30_4
# %bb.1:                                # %.lr.ph.preheader
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
	move	$s0, $a1
	move	$fp, $a0
	.p2align	4, , 16
.LBB30_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB30_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB30_4:                               # %._crit_edge
	ret
.Lfunc_end30:
	.size	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE, .Lfunc_end30-_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj,"axG",@progbits,_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj,comdat
	.weak	_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj # -- Begin function _ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj
	.p2align	5
	.type	_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj,@function
_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj: # @_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj
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
	ld.d	$a0, $a0, 16
	ld.d	$a3, $fp, 8
	move	$s0, $a1
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a4, $a0, $a3
	srai.d	$a4, $a4, 2
	move	$s1, $a2
	bgeu	$a4, $a1, .LBB31_2
# %bb.1:
	addi.d	$a0, $fp, 8
	sub.d	$a1, $a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB31_5
.LBB31_2:
	bgeu	$a1, $a4, .LBB31_5
# %bb.3:
	alsl.d	$a1, $a1, $a3, 2
	beq	$a0, $a1, .LBB31_5
# %bb.4:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $fp, 16
.LBB31_5:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $fp, 40
	ld.d	$a2, $fp, 32
	addi.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB31_7
# %bb.6:
	addi.d	$a0, $fp, 32
	sub.d	$a1, $a1, $a3
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB31_10
.LBB31_7:
	bgeu	$a1, $a3, .LBB31_10
# %bb.8:
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB31_10
# %bb.9:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i7
	st.d	$a1, $fp, 40
.LBB31_10:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit8
	ld.d	$a0, $fp, 96
	ld.d	$s2, $fp, 80
	mul.d	$a1, $s1, $s0
	bstrpick.d	$s4, $a1, 31, 0
	sub.d	$s0, $a0, $s2
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s4, .LBB31_16
# %bb.11:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $fp, 88
	sub.d	$s1, $a0, $s2
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s1, .LBB31_13
# %bb.12:
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB31_13:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s2, .LBB31_15
# %bb.14:
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB31_15:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	st.d	$s3, $fp, 80
	add.d	$a0, $s3, $s1
	st.d	$a0, $fp, 88
	alsl.d	$a0, $s4, $s3, 2
	st.d	$a0, $fp, 96
.LBB31_16:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a0, $fp, 120
	ld.d	$s0, $fp, 104
	sub.d	$s1, $a0, $s0
	srai.d	$a0, $s1, 3
	bgeu	$a0, $s4, .LBB31_22
# %bb.17:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
	ld.d	$a0, $fp, 112
	sub.d	$s2, $a0, $s0
	slli.d	$a0, $s4, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s2, .LBB31_19
# %bb.18:
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB31_19:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
	beqz	$s0, .LBB31_21
# %bb.20:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB31_21:                              # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
	st.d	$s3, $fp, 104
	add.d	$a0, $s3, $s2
	st.d	$a0, $fp, 112
	alsl.d	$a0, $s4, $s3, 3
	st.d	$a0, $fp, 120
.LBB31_22:                              # %_ZNSt6vectorIdSaIdEE7reserveEm.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end31:
	.size	_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj, .Lfunc_end31-_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEE17_M_default_appendEm,@function
_ZNSt6vectorIiSaIiEE17_M_default_appendEm: # @_ZNSt6vectorIiSaIiEE17_M_default_appendEm
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
	beqz	$a1, .LBB32_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s4, $fp, 16
	sub.d	$a1, $s4, $a0
	srai.d	$a1, $a1, 2
	bgeu	$a1, $s0, .LBB32_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB32_14
# %bb.3:                                # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	addi.d	$a1, $s0, -1
	stx.w	$zero, $a0, $s2
	beqz	$a1, .LBB32_5
# %bb.4:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 4
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB32_5:                               # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit32
	blez	$s2, .LBB32_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB32_7:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB32_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB32_9:                               # %_ZZNSt6vectorIiSaIiEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB32_13
.LBB32_10:
	st.w	$zero, $a0, 0
	addi.d	$s1, $s0, -1
	addi.d	$s0, $a0, 4
	beqz	$s1, .LBB32_12
# %bb.11:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a2, $s1, 2
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s0, $s1, $s0, 2
.LBB32_12:                              # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB32_13:
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
.LBB32_14:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end32-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_,"axG",@progbits,_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_,comdat
	.weak	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_ # -- Begin function _ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_
	.p2align	5
	.type	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_,@function
_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_: # @_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_
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
	move	$s0, $a2
	move	$fp, $a0
	ld.d	$a0, $a1, 0
	ld.d	$s4, $sp, 72
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a3, 0
	st.d	$a0, $fp, 0
	ld.d	$t0, $sp, 64
	st.d	$a1, $fp, 8
	st.d	$a2, $fp, 16
	st.w	$a4, $fp, 24
	st.w	$a5, $fp, 28
	st.w	$a6, $fp, 32
	ld.d	$a0, $s4, 8
	ld.d	$a2, $s4, 32
	ld.d	$a3, $s4, 16
	st.w	$a7, $fp, 36
	st.d	$a0, $fp, 40
	st.d	$a2, $fp, 48
	sub.d	$a0, $a3, $a0
	srli.d	$a2, $a0, 2
	ld.d	$a3, $s4, 96
	ld.d	$a0, $s4, 80
	ld.d	$a4, $s4, 120
	ld.d	$a5, $s4, 104
	st.w	$a2, $fp, 72
	sub.d	$a3, $a3, $a0
	srai.d	$a3, $a3, 2
	sub.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 3
	st.d	$t0, $fp, 80
	beq	$a3, $a4, .LBB33_6
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	ori	$a2, $zero, 31
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 96
	ld.d	$a1, $s4, 80
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	ori	$a2, $zero, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	ori	$a2, $zero, 23
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 120
	ld.d	$a1, $s4, 104
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB33_23
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB33_4
# %bb.3:
	ld.bu	$a0, $s2, 67
	b	.LBB33_5
.LBB33_4:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.LBB33_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 96
	ld.d	$a0, $s4, 80
	ld.w	$a2, $fp, 72
	ld.d	$a1, $s0, 0
	sub.d	$a3, $a3, $a0
	srai.d	$a3, $a3, 2
.LBB33_6:
	addi.w	$a2, $a2, 0
	slli.d	$a2, $a2, 2
	ldx.w	$s0, $a1, $a2
	addi.d	$s1, $s4, 80
	bgeu	$a3, $s0, .LBB33_12
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	ori	$a2, $zero, 31
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 96
	ld.d	$a1, $s4, 80
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	ori	$a2, $zero, 10
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB33_23
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i29
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB33_10
# %bb.9:
	ld.bu	$a0, $s3, 67
	b	.LBB33_11
.LBB33_10:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.LBB33_11:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit32
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
.LBB33_12:
	ld.d	$a1, $s4, 88
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 2
	bgeu	$a2, $s0, .LBB33_14
# %bb.13:
	sub.d	$a1, $s0, $a2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB33_17
.LBB33_14:
	bgeu	$s0, $a2, .LBB33_17
# %bb.15:
	alsl.d	$a0, $s0, $a0, 2
	beq	$a1, $a0, .LBB33_17
# %bb.16:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $s4, 88
.LBB33_17:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a1, $s4, 112
	ld.d	$a0, $s4, 104
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s0, .LBB33_19
# %bb.18:
	addi.d	$s2, $s4, 104
	sub.d	$a1, $s0, $a2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	b	.LBB33_22
.LBB33_19:
	bgeu	$s0, $a2, .LBB33_22
# %bb.20:
	alsl.d	$a2, $s0, $a0, 3
	beq	$a1, $a2, .LBB33_22
# %bb.21:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a2, $s4, 112
.LBB33_22:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$a1, $s1, 0
	ld.w	$a2, $fp, 72
	ld.d	$a3, $fp, 48
	st.d	$a1, $fp, 56
	st.d	$a0, $fp, 64
	slli.d	$a0, $a2, 2
	stx.w	$s0, $a3, $a0
	st.w	$zero, $fp, 76
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB33_23:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_, .Lfunc_end33-_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi,"axG",@progbits,_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi,comdat
	.weak	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi # -- Begin function _ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi
	.p2align	5
	.type	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi,@function
_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi: # @_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
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
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a3, $fp, 40
	ld.d	$a4, $fp, 8
	stx.w	$a0, $a3, $a2
	ldx.w	$a4, $a4, $a2
	ld.d	$a0, $fp, 48
	ld.d	$a3, $fp, 16
	move	$s2, $zero
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	stx.w	$a4, $a0, $a2
	alsl.w	$a0, $a1, $a1, 1
	alsl.d	$a1, $a0, $a3, 2
	ld.w	$a2, $a1, 4
	ld.w	$a1, $a1, 8
	slli.d	$a0, $a0, 2
	ldx.w	$s7, $a3, $a0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a2, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a4, $a1, -1
	addi.d	$a1, $zero, -1
	ori	$a5, $zero, 2
	b	.LBB34_2
	.p2align	4, , 16
.LBB34_1:                               #   in Loop: Header=BB34_2 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 1
	beq	$a1, $a5, .LBB34_22
.LBB34_2:                               # %.preheader40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_4 Depth 2
                                        #       Child Loop BB34_9 Depth 3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	add.w	$s5, $a1, $a0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a1, $zero, -1
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	b	.LBB34_4
	.p2align	4, , 16
.LBB34_3:                               #   in Loop: Header=BB34_4 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.d	$s4, $s4, 1
	beq	$a1, $a5, .LBB34_1
.LBB34_4:                               # %.preheader
                                        #   Parent Loop BB34_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB34_9 Depth 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.w	$s8, $a1, $a0
	or	$s3, $s8, $s5
	addi.d	$s6, $zero, -1
	b	.LBB34_9
.LBB34_5:                               #   in Loop: Header=BB34_9 Depth=3
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
.LBB34_6:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
                                        #   in Loop: Header=BB34_9 Depth=3
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB34_7:                               #   in Loop: Header=BB34_9 Depth=3
	ld.d	$a0, $fp, 56
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.w	$a1, $s2, $a1
	ld.d	$a2, $fp, 64
	slli.d	$a3, $a1, 2
	stx.w	$s0, $a0, $a3
	slli.d	$a0, $a1, 3
	stx.d	$zero, $a2, $a0
	addi.w	$s2, $s2, 1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB34_8:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit.thread
                                        #   in Loop: Header=BB34_9 Depth=3
	addi.w	$s6, $s6, 1
	beq	$s6, $a5, .LBB34_3
.LBB34_9:                               #   Parent Loop BB34_2 Depth=1
                                        #     Parent Loop BB34_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$a0, $s7, $s6
	or	$a1, $s3, $a0
	bltz	$a1, .LBB34_8
# %bb.10:                               #   in Loop: Header=BB34_9 Depth=3
	ld.w	$a1, $fp, 24
	bge	$a0, $a1, .LBB34_8
# %bb.11:                               #   in Loop: Header=BB34_9 Depth=3
	ld.w	$a2, $fp, 28
	bge	$s8, $a2, .LBB34_8
# %bb.12:                               #   in Loop: Header=BB34_9 Depth=3
	ld.w	$a3, $fp, 32
	bge	$s5, $a3, .LBB34_8
# %bb.13:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   in Loop: Header=BB34_9 Depth=3
	mul.d	$a2, $a4, $a2
	add.d	$a2, $s4, $a2
	mul.d	$a1, $a1, $a2
	add.w	$s1, $a0, $a1
	bltz	$s1, .LBB34_8
# %bb.14:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   in Loop: Header=BB34_9 Depth=3
	ld.w	$a0, $fp, 36
	bge	$s1, $a0, .LBB34_8
# %bb.15:                               #   in Loop: Header=BB34_9 Depth=3
	ld.d	$a0, $fp, 80
	addi.d	$a1, $a0, 96
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	move	$s0, $a0
	blt	$a0, $a1, .LBB34_7
# %bb.16:                               #   in Loop: Header=BB34_9 Depth=3
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	ori	$a2, $zero, 33
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	ori	$a2, $zero, 13
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	ori	$a2, $zero, 19
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	ori	$a2, $zero, 17
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	ld.d	$a1, $a0, 136
	beqz	$a1, .LBB34_18
# %bb.17:                               #   in Loop: Header=BB34_9 Depth=3
	addi.d	$a0, $a0, 104
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 36
	b	.LBB34_19
.LBB34_18:                              #   in Loop: Header=BB34_9 Depth=3
	move	$a1, $zero
.LBB34_19:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE14max_row_in_mapEv.exit
                                        #   in Loop: Header=BB34_9 Depth=3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	ori	$a2, $zero, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 76
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	beqz	$s1, .LBB34_28
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB34_9 Depth=3
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB34_5
# %bb.21:                               #   in Loop: Header=BB34_9 Depth=3
	ld.bu	$a1, $s1, 67
	b	.LBB34_6
.LBB34_22:
	ld.d	$a0, $fp, 56
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$fp, $a1, $a0, 2
	ori	$a0, $zero, 2
	move	$a1, $s2
	.p2align	4, , 16
.LBB34_23:                              # =>This Inner Loop Header: Depth=1
	blt	$a1, $a0, .LBB34_27
# %bb.24:                               #   in Loop: Header=BB34_23 Depth=1
	alsl.d	$a2, $a1, $fp, 2
	addi.w	$a1, $a1, -1
	slli.d	$a3, $a1, 2
	ldx.w	$a3, $fp, $a3
	ld.w	$a2, $a2, -8
	bge	$a3, $a2, .LBB34_23
# %bb.25:
	beqz	$s2, .LBB34_27
# %bb.26:
	alsl.d	$s0, $s2, $fp, 2
	clz.d	$a0, $s2
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
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
	pcaddu18i	$t8, %call36(_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jr	$t8
.LBB34_27:                              # %_Z14sort_if_neededIiEvPT_S0_.exit
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
.LBB34_28:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi, .Lfunc_end34-_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEE17_M_default_appendEm,@function
_ZNSt6vectorIdSaIdEE17_M_default_appendEm: # @_ZNSt6vectorIdSaIdEE17_M_default_appendEm
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
	beqz	$a1, .LBB35_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s4, $fp, 16
	sub.d	$a1, $s4, $a0
	srai.d	$a1, $a1, 3
	bgeu	$a1, $s0, .LBB35_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB35_14
# %bb.3:                                # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	addi.d	$a1, $s0, -1
	stx.d	$zero, $a0, $s2
	beqz	$a1, .LBB35_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 8
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB35_5:                               # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit32
	blez	$s2, .LBB35_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB35_7:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB35_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB35_9:                               # %_ZZNSt6vectorIdSaIdEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB35_13
.LBB35_10:
	st.d	$zero, $a0, 0
	addi.d	$s1, $s0, -1
	addi.d	$s0, $a0, 8
	beqz	$s1, .LBB35_12
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a2, $s1, 3
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s0, $s1, $s0, 3
.LBB35_12:                              # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB35_13:
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
.LBB35_14:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end35-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,@function
_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_: # @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
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
	move	$fp, $a0
	sub.d	$s6, $a1, $a0
	ori	$a0, $zero, 65
	blt	$s6, $a0, .LBB36_23
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 4
	addi.w	$a0, $zero, -4
	sub.d	$s3, $a0, $fp
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 64
	b	.LBB36_3
	.p2align	4, , 16
.LBB36_2:                               # %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
                                        #   in Loop: Header=BB36_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bge	$s5, $s6, .LBB36_23
.LBB36_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_16 Depth 2
                                        #       Child Loop BB36_17 Depth 3
                                        #       Child Loop BB36_19 Depth 3
	beqz	$s0, .LBB36_22
# %bb.4:                                #   in Loop: Header=BB36_3 Depth=1
	srli.d	$a0, $s6, 1
	and	$a3, $a0, $s4
	ld.w	$a2, $fp, 4
	ldx.w	$a4, $fp, $a3
	ld.w	$a0, $a1, -4
	add.d	$a3, $fp, $a3
	bge	$a2, $a4, .LBB36_7
# %bb.5:                                #   in Loop: Header=BB36_3 Depth=1
	bge	$a4, $a0, .LBB36_9
# %bb.6:                                #   in Loop: Header=BB36_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a4, $fp, 0
	st.w	$a0, $a3, 0
	b	.LBB36_15
	.p2align	4, , 16
.LBB36_7:                               #   in Loop: Header=BB36_3 Depth=1
	bge	$a2, $a0, .LBB36_11
# %bb.8:                                #   in Loop: Header=BB36_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a2, $fp, 0
	st.w	$a0, $fp, 4
	b	.LBB36_15
	.p2align	4, , 16
.LBB36_9:                               #   in Loop: Header=BB36_3 Depth=1
	ld.w	$a3, $fp, 0
	bge	$a2, $a0, .LBB36_13
# %bb.10:                               #   in Loop: Header=BB36_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a3, $a1, -4
	b	.LBB36_15
	.p2align	4, , 16
.LBB36_11:                              #   in Loop: Header=BB36_3 Depth=1
	ld.w	$a2, $fp, 0
	bge	$a4, $a0, .LBB36_14
# %bb.12:                               #   in Loop: Header=BB36_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a2, $a1, -4
	b	.LBB36_15
.LBB36_13:                              #   in Loop: Header=BB36_3 Depth=1
	st.w	$a2, $fp, 0
	st.w	$a3, $fp, 4
	b	.LBB36_15
.LBB36_14:                              #   in Loop: Header=BB36_3 Depth=1
	st.w	$a4, $fp, 0
	st.w	$a2, $a3, 0
	.p2align	4, , 16
.LBB36_15:                              # %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader
                                        #   in Loop: Header=BB36_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB36_16:                              # %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
                                        #   Parent Loop BB36_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB36_17 Depth 3
                                        #       Child Loop BB36_19 Depth 3
	ld.w	$a3, $fp, 0
	add.d	$s6, $s3, $a0
	.p2align	4, , 16
.LBB36_17:                              #   Parent Loop BB36_3 Depth=1
                                        #     Parent Loop BB36_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$s6, $s6, 4
	blt	$a4, $a3, .LBB36_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB36_16 Depth=2
	addi.d	$s1, $a0, -4
	.p2align	4, , 16
.LBB36_19:                              # %.preheader.i.i
                                        #   Parent Loop BB36_3 Depth=1
                                        #     Parent Loop BB36_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a2, -4
	addi.d	$a2, $a2, -4
	blt	$a3, $a5, .LBB36_19
# %bb.20:                               #   in Loop: Header=BB36_16 Depth=2
	bgeu	$s1, $a2, .LBB36_2
# %bb.21:                               #   in Loop: Header=BB36_16 Depth=2
	st.w	$a5, $s1, 0
	st.w	$a4, $a2, 0
	b	.LBB36_16
.LBB36_22:
	st.b	$zero, $sp, 22
	st.b	$zero, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 22
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
.LBB36_23:                              # %.loopexit
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
.Lfunc_end36:
	.size	_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .Lfunc_end36-_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ # -- Begin function _ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,@function
_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_: # @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
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
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 65
	blt	$a0, $a1, .LBB37_2
# %bb.1:
	addi.d	$s1, $s0, 4
	ori	$s2, $zero, 4
	ori	$s3, $zero, 5
	ori	$s4, $zero, 64
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB37_18
.LBB37_2:
	beq	$s0, $fp, .LBB37_25
# %bb.3:
	addi.d	$a2, $s0, 4
	beq	$a2, $fp, .LBB37_25
# %bb.4:                                # %.lr.ph.i17.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 4
	move	$s3, $s0
	b	.LBB37_9
	.p2align	4, , 16
.LBB37_5:                               #   in Loop: Header=BB37_9 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 2
	blt	$a0, $s1, .LBB37_13
# %bb.6:                                #   in Loop: Header=BB37_9 Depth=1
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB37_7:                               # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB37_9 Depth=1
	move	$a0, $s0
.LBB37_8:                               # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB37_9 Depth=1
	addi.d	$a2, $s3, 4
	st.w	$s4, $a0, 0
	beq	$a2, $fp, .LBB37_25
.LBB37_9:                               # %.lr.ph.i17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_12 Depth 2
	move	$a1, $s3
	ld.w	$s4, $s3, 4
	ld.w	$a3, $s0, 0
	move	$s3, $a2
	blt	$s4, $a3, .LBB37_5
# %bb.10:                               #   in Loop: Header=BB37_9 Depth=1
	ld.w	$a1, $a1, 0
	move	$a0, $s3
	bge	$s4, $a1, .LBB37_8
# %bb.11:                               # %.lr.ph.i.i24.preheader
                                        #   in Loop: Header=BB37_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB37_12:                              # %.lr.ph.i.i24
                                        #   Parent Loop BB37_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a0, 0
	ld.w	$a1, $a0, -8
	addi.d	$a0, $a0, -4
	blt	$s4, $a1, .LBB37_12
	b	.LBB37_8
.LBB37_13:                              #   in Loop: Header=BB37_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB37_8
# %bb.14:                               #   in Loop: Header=BB37_9 Depth=1
	st.w	$a3, $a1, 4
	b	.LBB37_7
.LBB37_15:                              #   in Loop: Header=BB37_18 Depth=1
	st.w	$a1, $a0, 4
	.p2align	4, , 16
.LBB37_16:                              # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB37_18 Depth=1
	move	$a0, $s0
.LBB37_17:                              # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB37_18 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$s2, $s2, 4
	addi.d	$s5, $s5, 4
	beq	$s2, $s4, .LBB37_24
.LBB37_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_23 Depth 2
	ldx.w	$s7, $s0, $s2
	ld.w	$a1, $s0, 0
	move	$a0, $s6
	add.d	$s6, $s0, $s2
	bge	$s7, $a1, .LBB37_21
# %bb.19:                               #   in Loop: Header=BB37_18 Depth=1
	bltu	$s2, $s3, .LBB37_15
# %bb.20:                               #   in Loop: Header=BB37_18 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB37_16
	.p2align	4, , 16
.LBB37_21:                              #   in Loop: Header=BB37_18 Depth=1
	ld.w	$a1, $a0, 0
	move	$a0, $s6
	bge	$s7, $a1, .LBB37_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB37_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB37_23:                              # %.lr.ph.i.i
                                        #   Parent Loop BB37_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a0, 0
	ld.w	$a1, $a0, -8
	addi.d	$a0, $a0, -4
	blt	$s7, $a1, .LBB37_23
	b	.LBB37_17
.LBB37_24:                              # %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	addi.d	$a0, $s0, 64
	bne	$a0, $fp, .LBB37_27
.LBB37_25:                              # %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
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
	.p2align	4, , 16
.LBB37_26:                              # %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB37_27 Depth=1
	addi.d	$a0, $a0, 4
	st.w	$a1, $a2, 0
	beq	$a0, $fp, .LBB37_25
.LBB37_27:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_29 Depth 2
	ld.w	$a1, $a0, 0
	ld.w	$a3, $a0, -4
	move	$a2, $a0
	bge	$a1, $a3, .LBB37_26
# %bb.28:                               # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB37_27 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB37_29:                              # %.lr.ph.i.i12
                                        #   Parent Loop BB37_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a2, 0
	ld.w	$a3, $a2, -8
	addi.d	$a2, $a2, -4
	blt	$a1, $a3, .LBB37_29
	b	.LBB37_26
.Lfunc_end37:
	.size	_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .Lfunc_end37-_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 5
	blt	$a2, $a3, .LBB38_14
# %bb.1:                                # %.lr.ph.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	b	.LBB38_4
	.p2align	4, , 16
.LBB38_2:                               #   in Loop: Header=BB38_4 Depth=1
	move	$a7, $zero
.LBB38_3:                               # %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit
                                        #   in Loop: Header=BB38_4 Depth=1
	slli.d	$a7, $a7, 2
	stx.w	$a5, $a0, $a7
	bge	$a4, $a6, .LBB38_14
.LBB38_4:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_6 Depth 2
                                        #     Child Loop BB38_12 Depth 2
	move	$a7, $a1
	ld.w	$a5, $a1, -4
	ld.w	$t1, $a0, 0
	addi.d	$a1, $a1, -4
	sub.d	$a6, $a1, $a0
	srai.d	$t0, $a6, 2
	st.w	$t1, $a7, -4
	blt	$t0, $a2, .LBB38_8
# %bb.5:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB38_4 Depth=1
	move	$t1, $zero
	addi.d	$a7, $t0, -1
	srli.d	$t2, $a7, 63
	add.d	$a7, $a7, $t2
	srai.d	$t2, $a7, 1
	.p2align	4, , 16
.LBB38_6:                               # %.lr.ph.i.i
                                        #   Parent Loop BB38_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t1, 1
	addi.d	$t3, $a7, 2
	slli.d	$t4, $t3, 2
	alsl.d	$t5, $t1, $a0, 3
	ldx.w	$t4, $a0, $t4
	ld.w	$t5, $t5, 4
	slt	$t4, $t4, $t5
	addi.d	$a7, $a7, 1
	masknez	$t3, $t3, $t4
	maskeqz	$a7, $a7, $t4
	or	$a7, $a7, $t3
	slli.d	$t3, $a7, 2
	ldx.w	$t3, $a0, $t3
	slli.d	$t1, $t1, 2
	stx.w	$t3, $a0, $t1
	move	$t1, $a7
	blt	$a7, $t2, .LBB38_6
# %bb.7:                                # %._crit_edge.i.i
                                        #   in Loop: Header=BB38_4 Depth=1
	andi	$t1, $a6, 4
	beqz	$t1, .LBB38_9
	b	.LBB38_11
	.p2align	4, , 16
.LBB38_8:                               #   in Loop: Header=BB38_4 Depth=1
	move	$a7, $zero
	andi	$t1, $a6, 4
	bnez	$t1, .LBB38_11
.LBB38_9:                               #   in Loop: Header=BB38_4 Depth=1
	addi.d	$t0, $t0, -2
	srai.d	$t0, $t0, 1
	bne	$a7, $t0, .LBB38_11
# %bb.10:                               # %.thread.i
                                        #   in Loop: Header=BB38_4 Depth=1
	slli.d	$t0, $a7, 1
	addi.d	$t0, $t0, 1
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a0, $t1
	slli.d	$a7, $a7, 2
	stx.w	$t1, $a0, $a7
	move	$a7, $t0
	b	.LBB38_12
	.p2align	4, , 16
.LBB38_11:                              #   in Loop: Header=BB38_4 Depth=1
	beqz	$a7, .LBB38_2
	.p2align	4, , 16
.LBB38_12:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB38_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 1
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a0, $t2
	bge	$t2, $a5, .LBB38_3
# %bb.13:                               #   in Loop: Header=BB38_12 Depth=2
	slli.d	$a7, $a7, 2
	stx.w	$t2, $a0, $a7
	move	$a7, $t1
	bltu	$a3, $t0, .LBB38_12
	b	.LBB38_2
.LBB38_14:                              # %._crit_edge
	ret
.Lfunc_end38:
	.size	_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end38-_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a4, $a1, $a0
	srai.d	$a2, $a4, 2
	ori	$a1, $zero, 2
	bge	$a2, $a1, .LBB39_2
.LBB39_1:                               # %.loopexit
	ret
.LBB39_2:
	addi.d	$a1, $a2, -2
	srli.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	srli.d	$a3, $a2, 1
	andi	$a4, $a4, 4
	alsl.d	$a5, $a2, $a0, 2
	alsl.d	$a6, $a1, $a0, 2
	move	$t0, $a1
	b	.LBB39_5
	.p2align	4, , 16
.LBB39_3:                               #   in Loop: Header=BB39_5 Depth=1
	move	$t2, $t1
.LBB39_4:                               # %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
                                        #   in Loop: Header=BB39_5 Depth=1
	slli.d	$t1, $t2, 2
	stx.w	$t0, $a0, $t1
	addi.d	$t0, $a7, -1
	beqz	$a7, .LBB39_1
.LBB39_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_7 Depth 2
                                        #     Child Loop BB39_12 Depth 2
	move	$a7, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a0, $t0
	move	$t1, $a7
	bge	$a7, $a3, .LBB39_8
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB39_5 Depth=1
	move	$t2, $a7
	.p2align	4, , 16
.LBB39_7:                               # %.lr.ph.i
                                        #   Parent Loop BB39_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t1, $t2, 1
	addi.d	$t3, $t1, 2
	slli.d	$t4, $t3, 2
	alsl.d	$t5, $t2, $a0, 3
	ldx.w	$t4, $a0, $t4
	ld.w	$t5, $t5, 4
	slt	$t4, $t4, $t5
	addi.d	$t1, $t1, 1
	masknez	$t3, $t3, $t4
	maskeqz	$t1, $t1, $t4
	or	$t1, $t1, $t3
	slli.d	$t3, $t1, 2
	ldx.w	$t3, $a0, $t3
	slli.d	$t2, $t2, 2
	stx.w	$t3, $a0, $t2
	move	$t2, $t1
	blt	$t1, $a3, .LBB39_7
.LBB39_8:                               # %._crit_edge.i
                                        #   in Loop: Header=BB39_5 Depth=1
	bnez	$a4, .LBB39_11
# %bb.9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB39_5 Depth=1
	bne	$t1, $a1, .LBB39_11
# %bb.10:                               #   in Loop: Header=BB39_5 Depth=1
	ld.w	$t1, $a5, 0
	st.w	$t1, $a6, 0
	move	$t1, $a2
.LBB39_11:                              #   in Loop: Header=BB39_5 Depth=1
	bge	$a7, $t1, .LBB39_3
	.p2align	4, , 16
.LBB39_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB39_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t2, $t1, -1
	srli.d	$t3, $t2, 63
	add.d	$t2, $t2, $t3
	srai.d	$t2, $t2, 1
	slli.d	$t3, $t2, 2
	ldx.w	$t3, $a0, $t3
	bge	$t3, $t0, .LBB39_3
# %bb.13:                               #   in Loop: Header=BB39_12 Depth=2
	slli.d	$t1, $t1, 2
	stx.w	$t3, $a0, $t1
	move	$t1, $t2
	blt	$a7, $t2, .LBB39_12
	b	.LBB39_4
.Lfunc_end39:
	.size	_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end39-_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,"axG",@progbits,_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,comdat
	.weak	_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE # -- Begin function _ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE
	.p2align	5
	.type	_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,@function
_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE: # @_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
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
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 2272
	ld.w	$s3, $a1, 4
	ld.w	$a6, $a1, 0
	ld.w	$s6, $a1, 12
	ld.w	$a7, $a1, 8
	ld.w	$s4, $a1, 20
	ld.w	$s8, $a1, 16
	sub.d	$a1, $s3, $a6
	sub.d	$a4, $s6, $a7
	sub.d	$a5, $s4, $s8
	mul.d	$a1, $a4, $a1
	mul.w	$s5, $a1, $a5
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bltz	$s5, .LBB40_45
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s0, $a3
	move	$s2, $a0
	ld.w	$s7, $a0, 148
	ld.w	$s1, $a0, 156
	ld.w	$a5, $a0, 164
	beqz	$s5, .LBB40_5
# %bb.2:                                # %.noexc40
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $fp, 0
	addi.d	$a0, $s5, -1
	addi.d	$s5, $fp, 4
	beqz	$a0, .LBB40_4
# %bb.3:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	slli.d	$a2, $a0, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s5, $a0, $s5, 2
.LBB40_4:
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	beq	$s3, $a6, .LBB40_6
	b	.LBB40_8
.LBB40_5:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$fp, $zero
	move	$s5, $zero
	bne	$s3, $a6, .LBB40_8
.LBB40_6:
	bne	$s6, $a7, .LBB40_8
# %bb.7:
	move	$a0, $fp
	move	$a1, $a7
	move	$a2, $a6
	beq	$s4, $s8, .LBB40_22
	b	.LBB40_9
.LBB40_8:
	move	$a0, $fp
	move	$a1, $a7
	move	$a2, $a6
	.p2align	4, , 16
.LBB40_9:                               # %_ZNK6miniFE11BoxIteratorneERKS0_.exit.thread
                                        # =>This Inner Loop Header: Depth=1
	or	$a3, $a1, $a2
	or	$a4, $a3, $s8
	addi.d	$a3, $zero, -1
	bltz	$a4, .LBB40_14
# %bb.10:                               #   in Loop: Header=BB40_9 Depth=1
	bge	$a2, $s7, .LBB40_14
# %bb.11:                               #   in Loop: Header=BB40_9 Depth=1
	bge	$a1, $s1, .LBB40_14
# %bb.12:                               #   in Loop: Header=BB40_9 Depth=1
	bge	$s8, $a5, .LBB40_14
# %bb.13:                               #   in Loop: Header=BB40_9 Depth=1
	mul.d	$a3, $s8, $s1
	add.d	$a3, $a3, $a1
	mul.d	$a3, $a3, $s7
	add.d	$a3, $a3, $a2
.LBB40_14:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   in Loop: Header=BB40_9 Depth=1
	addi.w	$a2, $a2, 1
	st.w	$a3, $a0, 0
	blt	$a2, $s3, .LBB40_19
# %bb.15:                               #   in Loop: Header=BB40_9 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $s6, .LBB40_17
# %bb.16:                               #   in Loop: Header=BB40_9 Depth=1
	move	$a2, $a6
	b	.LBB40_19
	.p2align	4, , 16
.LBB40_17:                              #   in Loop: Header=BB40_9 Depth=1
	addi.w	$s8, $s8, 1
	move	$a2, $a6
	move	$a1, $a7
	blt	$s8, $s4, .LBB40_19
# %bb.18:                               #   in Loop: Header=BB40_9 Depth=1
	move	$a2, $s3
	move	$a1, $s6
	move	$s8, $s4
	.p2align	4, , 16
.LBB40_19:                              # %_ZN6miniFE11BoxIteratorppEv.exit
                                        #   in Loop: Header=BB40_9 Depth=1
	addi.d	$a0, $a0, 4
	bne	$a2, $s3, .LBB40_9
# %bb.20:                               # %_ZN6miniFE11BoxIteratorppEv.exit
                                        #   in Loop: Header=BB40_9 Depth=1
	bne	$a1, $s6, .LBB40_9
# %bb.21:                               # %_ZN6miniFE11BoxIteratorppEv.exit
                                        #   in Loop: Header=BB40_9 Depth=1
	bne	$s8, $s4, .LBB40_9
.LBB40_22:                              # %._crit_edge
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 64
	addi.d	$s3, $sp, 104
.Ltmp1182:                              # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE23compute_gradient_valuesIdEEvPT_)
	jirl	$ra, $ra, 0
.Ltmp1183:                              # EH_LABEL
# %bb.23:                               # %.preheader
	beq	$s5, $fp, .LBB40_42
# %bb.24:                               # %.lr.ph
	move	$s1, $zero
	sub.d	$a0, $s5, $fp
	srai.d	$s8, $a0, 2
	addi.d	$s4, $sp, 72
	addi.d	$s5, $sp, 1640
	addi.d	$s6, $sp, 1832
	addi.d	$a0, $sp, 64
	addi.d	$a0, $a0, 2047
	addi.d	$s7, $a0, 9
	.p2align	4, , 16
.LBB40_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_37 Depth 2
.Ltmp1185:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1186:                              # EH_LABEL
# %bb.26:                               #   in Loop: Header=BB40_25 Depth=1
	slli.d	$a0, $s1, 2
	ldx.w	$a1, $fp, $a0
.Ltmp1187:                              # EH_LABEL
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_)
	jirl	$ra, $ra, 0
.Ltmp1188:                              # EH_LABEL
# %bb.27:                               # %_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_RNS_8ElemDataIS2_T0_EE.exit
                                        #   in Loop: Header=BB40_25 Depth=1
.Ltmp1189:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1190:                              # EH_LABEL
# %bb.28:                               #   in Loop: Header=BB40_25 Depth=1
.Ltmp1191:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1192:                              # EH_LABEL
# %bb.29:                               #   in Loop: Header=BB40_25 Depth=1
.Ltmp1193:                              # EH_LABEL
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_)
	jirl	$ra, $ra, 0
.Ltmp1194:                              # EH_LABEL
# %bb.30:                               # %.noexc43
                                        #   in Loop: Header=BB40_25 Depth=1
.Ltmp1195:                              # EH_LABEL
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_)
	jirl	$ra, $ra, 0
.Ltmp1196:                              # EH_LABEL
# %bb.31:                               # %_ZN6miniFE33compute_element_matrix_and_vectorIidEEvRNS_8ElemDataIT_T0_EE.exit
                                        #   in Loop: Header=BB40_25 Depth=1
.Ltmp1197:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1198:                              # EH_LABEL
# %bb.32:                               #   in Loop: Header=BB40_25 Depth=1
.Ltmp1199:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1200:                              # EH_LABEL
# %bb.33:                               #   in Loop: Header=BB40_25 Depth=1
	ld.d	$a0, $sp, 64
.Ltmp1201:                              # EH_LABEL
	move	$a1, $s4
	move	$a2, $s6
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_)
	jirl	$ra, $ra, 0
.Ltmp1202:                              # EH_LABEL
# %bb.34:                               # %.noexc45
                                        #   in Loop: Header=BB40_25 Depth=1
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB40_40
# %bb.35:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB40_25 Depth=1
	ld.w	$a1, $s0, 0
	ld.w	$a3, $s0, 4
	ld.d	$a2, $s0, 8
	add.w	$a3, $a3, $a1
	move	$a4, $s4
	move	$a5, $s7
	b	.LBB40_37
	.p2align	4, , 16
.LBB40_36:                              #   in Loop: Header=BB40_37 Depth=2
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB40_40
.LBB40_37:                              #   Parent Loop BB40_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a4, 0
	blt	$a6, $a1, .LBB40_36
# %bb.38:                               #   in Loop: Header=BB40_37 Depth=2
	bge	$a6, $a3, .LBB40_36
# %bb.39:                               #   in Loop: Header=BB40_37 Depth=2
	sub.w	$a6, $a6, $a1
	fld.d	$fa0, $a5, 0
	slli.d	$a6, $a6, 3
	fldx.d	$fa1, $a2, $a6
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $a6
	b	.LBB40_36
	.p2align	4, , 16
.LBB40_40:                              # %_ZN6miniFE29sum_into_global_linear_systemIidNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRNS_8ElemDataIT_T0_EERT1_RT2_.exit
                                        #   in Loop: Header=BB40_25 Depth=1
.Ltmp1203:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1204:                              # EH_LABEL
# %bb.41:                               #   in Loop: Header=BB40_25 Depth=1
	addi.d	$s1, $s1, 1
	bne	$s1, $s8, .LBB40_25
.LBB40_42:                              # %._crit_edge79
	beqz	$fp, .LBB40_44
# %bb.43:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB40_44:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	addi.d	$sp, $sp, 240
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
.LBB40_45:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB40_46:
.Ltmp1184:                              # EH_LABEL
	b	.LBB40_48
.LBB40_47:
.Ltmp1205:                              # EH_LABEL
.LBB40_48:
	beqz	$fp, .LBB40_50
# %bb.49:
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $fp
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB40_50:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit47
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end40:
	.size	_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE, .Lfunc_end40-_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,"aG",@progbits,_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,comdat
	.p2align	2, 0x0
GCC_except_table40:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Lfunc_begin19-.Lfunc_begin19  # >> Call Site 1 <<
	.uleb128 .Ltmp1182-.Lfunc_begin19       #   Call between .Lfunc_begin19 and .Ltmp1182
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1182-.Lfunc_begin19       # >> Call Site 2 <<
	.uleb128 .Ltmp1183-.Ltmp1182            #   Call between .Ltmp1182 and .Ltmp1183
	.uleb128 .Ltmp1184-.Lfunc_begin19       #     jumps to .Ltmp1184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1185-.Lfunc_begin19       # >> Call Site 3 <<
	.uleb128 .Ltmp1204-.Ltmp1185            #   Call between .Ltmp1185 and .Ltmp1204
	.uleb128 .Ltmp1205-.Lfunc_begin19       #     jumps to .Ltmp1205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1204-.Lfunc_begin19       # >> Call Site 4 <<
	.uleb128 .Lfunc_end40-.Ltmp1204         #   Call between .Ltmp1204 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6miniFE23compute_gradient_valuesIdEEvPT_
.LCPI41_0:
	.dword	0xbfe279a74576233f              # double -0.57735026899999997
	.dword	0x3fe279a74576233f              # double 0.57735026899999997
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI41_1:
	.dword	0x3ff93cd3a2bb11a0              # double 1.5773502690000001
.LCPI41_2:
	.dword	0x3fdb0cb17513b982              # double 0.42264973100000003
	.section	.text._ZN6miniFE23compute_gradient_valuesIdEEvPT_,"axG",@progbits,_ZN6miniFE23compute_gradient_valuesIdEEvPT_,comdat
	.weak	_ZN6miniFE23compute_gradient_valuesIdEEvPT_
	.p2align	5
	.type	_ZN6miniFE23compute_gradient_valuesIdEEvPT_,@function
_ZN6miniFE23compute_gradient_valuesIdEEvPT_: # @_ZN6miniFE23compute_gradient_valuesIdEEvPT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 56, -8
	.cfi_offset 57, -16
	pcalau12i	$a1, %pc_hi20(.LCPI41_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI41_0)
	vst	$vr0, $sp, 0
	fld.d	$fa2, $sp, 0
	addi.d	$a1, $sp, 8
	vldi	$vr0, -912
	fsub.d	$fa1, $fa0, $fa2
	fadd.d	$fa2, $fa2, $fa0
	vldi	$vr3, -832
	fmul.d	$ft3, $fa1, $fa3
	vldi	$vr4, -960
	pcalau12i	$a2, %pc_hi20(.LCPI41_1)
	fld.d	$fa5, $a2, %pc_lo12(.LCPI41_1)
	fmul.d	$ft4, $fa1, $fa4
	fmul.d	$ft5, $fa2, $fa4
	fmul.d	$ft6, $fa2, $fa3
	fmul.d	$fa6, $ft3, $fa5
	pcalau12i	$a2, %pc_hi20(.LCPI41_2)
	fld.d	$fa7, $a2, %pc_lo12(.LCPI41_2)
	fmul.d	$ft0, $ft4, $fa5
	fmul.d	$ft1, $ft5, $fa5
	fmul.d	$ft2, $ft6, $fa5
	fmul.d	$ft3, $ft3, $fa7
	fmul.d	$ft4, $ft4, $fa7
	fmul.d	$ft5, $ft5, $fa7
	fmul.d	$ft6, $ft6, $fa7
	addi.d	$a3, $sp, 0
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	fld.d	$ft8, $a3, 0
	fsub.d	$ft10, $fa0, $ft8
	fmul.d	$ft7, $ft10, $fa4
	fadd.d	$ft9, $ft8, $fa0
	fmul.d	$ft8, $ft9, $fa4
	fmul.d	$ft11, $ft8, $fa7
	fmul.d	$ft9, $ft9, $fa3
	fmul.d	$ft12, $ft9, $fa7
	fmul.d	$ft10, $ft10, $fa3
	fmul.d	$ft13, $ft10, $fa7
	fmul.d	$ft14, $ft10, $fa1
	fmul.d	$ft15, $ft9, $fa1
	fmul.d	$fs0, $ft9, $fa2
	fmul.d	$fs1, $ft10, $fa2
	fst.d	$ft14, $a0, 16
	fst.d	$ft14, $a0, 208
	fmul.d	$ft14, $ft7, $fa1
	fst.d	$ft15, $a0, 40
	fst.d	$ft15, $a0, 232
	fmul.d	$ft15, $ft8, $fa1
	fst.d	$fs0, $a0, 64
	fst.d	$fs0, $a0, 256
	fmul.d	$fs0, $ft8, $fa2
	fst.d	$fs1, $a0, 88
	fst.d	$fs1, $a0, 280
	fmul.d	$fs1, $ft7, $fa2
	fst.d	$ft13, $a0, 104
	fst.d	$ft14, $a0, 112
	fst.d	$ft12, $a0, 128
	fst.d	$ft15, $a0, 136
	fst.d	$ft11, $a0, 152
	fst.d	$fs0, $a0, 160
	fst.d	$fs1, $a0, 184
	fst.d	$ft13, $a0, 200
	fst.d	$ft12, $a0, 224
	fst.d	$ft11, $a0, 248
	fst.d	$ft14, $a0, 304
	fld.d	$ft14, $sp, 8
	fst.d	$ft15, $a0, 328
	fst.d	$fs0, $a0, 352
	fst.d	$fs1, $a0, 376
	fsub.d	$ft15, $fa0, $ft14
	fadd.d	$ft14, $ft14, $fa0
	fmul.d	$fs0, $ft15, $fa3
	fmul.d	$fs1, $fs0, $fa7
	fst.d	$fs1, $a0, 480
	fst.d	$fs1, $a0, 576
	fmul.d	$fs1, $ft10, $ft15
	fst.d	$ft13, $a0, 488
	fst.d	$ft13, $a0, 584
	fmul.d	$ft13, $ft15, $fa4
	fst.d	$fs1, $a0, 400
	fst.d	$fs1, $a0, 592
	fmul.d	$fs1, $ft13, $fa7
	fst.d	$fs1, $a0, 504
	fst.d	$fs1, $a0, 600
	fmul.d	$fs1, $ft9, $ft15
	fst.d	$ft12, $a0, 512
	fst.d	$ft12, $a0, 608
	fmul.d	$ft12, $ft14, $fa4
	fst.d	$fs1, $a0, 424
	fst.d	$fs1, $a0, 616
	fmul.d	$fs1, $ft12, $fa7
	fst.d	$fs1, $a0, 528
	fst.d	$fs1, $a0, 624
	fmul.d	$fs1, $ft9, $ft14
	fst.d	$ft11, $a0, 536
	fst.d	$ft11, $a0, 632
	fmul.d	$ft11, $ft14, $fa3
	fst.d	$fs1, $a0, 448
	fst.d	$fs1, $a0, 640
	fmul.d	$fs1, $ft11, $fa7
	fst.d	$fs1, $a0, 552
	fst.d	$fs1, $a0, 648
	fmul.d	$fs1, $ft7, $fa7
	fst.d	$fs1, $a0, 176
	fst.d	$fs1, $a0, 272
	fst.d	$fs1, $a0, 560
	fst.d	$fs1, $a0, 656
	fmul.d	$fs1, $ft10, $ft14
	fst.d	$fs1, $a0, 472
	fst.d	$fs1, $a0, 664
	fmul.d	$fs0, $fs0, $fa5
	fst.d	$fs0, $a0, 384
	fst.d	$fs0, $a0, 672
	fmul.d	$ft10, $ft10, $fa5
	fst.d	$ft10, $a0, 8
	fst.d	$ft10, $a0, 296
	fst.d	$ft10, $a0, 392
	fst.d	$ft10, $a0, 680
	fmul.d	$ft10, $ft7, $ft15
	fst.d	$ft10, $a0, 496
	fst.d	$ft10, $a0, 688
	fmul.d	$ft10, $ft13, $fa5
	fst.d	$ft10, $a0, 408
	fst.d	$ft10, $a0, 696
	fmul.d	$ft9, $ft9, $fa5
	fst.d	$ft9, $a0, 32
	fst.d	$ft9, $a0, 320
	fst.d	$ft9, $a0, 416
	fst.d	$ft9, $a0, 704
	fmul.d	$ft9, $ft8, $ft15
	fst.d	$ft9, $a0, 520
	fst.d	$ft9, $a0, 712
	fmul.d	$ft9, $ft12, $fa5
	fst.d	$ft9, $a0, 432
	fst.d	$ft9, $a0, 720
	fmul.d	$ft9, $ft8, $fa5
	fst.d	$ft9, $a0, 56
	fst.d	$ft9, $a0, 344
	fst.d	$ft9, $a0, 440
	fst.d	$ft9, $a0, 728
	fmul.d	$ft8, $ft8, $ft14
	fst.d	$ft8, $a0, 544
	fst.d	$ft8, $a0, 736
	fmul.d	$ft8, $ft11, $fa5
	fst.d	$ft8, $a0, 456
	fst.d	$ft8, $a0, 744
	fmul.d	$ft8, $ft7, $ft14
	fmul.d	$ft7, $ft7, $fa5
	fst.d	$ft7, $a0, 80
	fst.d	$ft7, $a0, 368
	fst.d	$ft7, $a0, 464
	fst.d	$ft7, $a0, 752
	fst.d	$ft8, $a0, 568
	fst.d	$ft8, $a0, 760
	fst.d	$fa6, $a0, 0
	fst.d	$ft0, $a0, 24
	fst.d	$ft1, $a0, 48
	fst.d	$ft2, $a0, 72
	fst.d	$ft3, $a0, 96
	fst.d	$ft4, $a0, 120
	fst.d	$ft5, $a0, 144
	fst.d	$ft6, $a0, 168
	fst.d	$ft3, $a0, 192
	fst.d	$ft4, $a0, 216
	fst.d	$ft5, $a0, 240
	fst.d	$ft6, $a0, 264
	fst.d	$fa6, $a0, 288
	fst.d	$ft0, $a0, 312
	fst.d	$ft1, $a0, 336
	fst.d	$ft2, $a0, 360
	andi	$a4, $a2, 1
	addi.d	$a0, $a0, 768
	move	$a3, $a1
	move	$a2, $zero
	bnez	$a4, .LBB41_1
# %bb.2:
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end41:
	.size	_ZN6miniFE23compute_gradient_valuesIdEEvPT_, .Lfunc_end41-_ZN6miniFE23compute_gradient_valuesIdEEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,"axG",@progbits,_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,comdat
	.weak	_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_ # -- Begin function _ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_
	.p2align	5
	.type	_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,@function
_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_: # @_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
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
	bltz	$a1, .LBB42_7
# %bb.1:
	move	$fp, $a3
	move	$s2, $a2
	move	$s1, $a0
	ld.w	$a2, $a0, 148
	ld.w	$a0, $a0, 156
	addi.w	$s4, $a2, 1
	addi.w	$s6, $a0, 1
	ld.w	$s5, $s1, 164
	mul.w	$a4, $a0, $a2
	div.w	$a3, $a1, $a4
	mul.d	$a4, $a3, $a4
	sub.w	$a4, $a1, $a4
	div.w	$a4, $a4, $a2
	mod.w	$a1, $a1, $a2
	or	$a5, $a4, $a3
	or	$a5, $a5, $a1
	addi.w	$s0, $zero, -1
	bltz	$a5, .LBB42_6
# %bb.2:
	blt	$s5, $a3, .LBB42_6
# %bb.3:
	bltz	$a2, .LBB42_6
# %bb.4:
	blt	$a0, $a4, .LBB42_6
# %bb.5:
	mul.d	$a0, $a3, $s6
	add.d	$a0, $a4, $a0
	mul.d	$a0, $a0, $s4
	add.w	$s0, $a0, $a1
.LBB42_6:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit
	st.w	$s0, $s2, 0
	addi.d	$a0, $s0, 1
	st.w	$a0, $s2, 4
	add.d	$a1, $s0, $s4
	addi.d	$a2, $a1, 1
	st.w	$a2, $s2, 8
	st.w	$a1, $s2, 12
	mul.w	$s7, $s6, $s4
	add.d	$a2, $s0, $s7
	st.w	$a2, $s2, 16
	add.d	$a0, $a0, $s7
	st.w	$a0, $s2, 20
	add.d	$a0, $a1, $s7
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 24
	st.w	$a0, $s2, 28
	addi.d	$s3, $s1, 96
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 4
	st.w	$a0, $s2, 0
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 8
	st.w	$a0, $s2, 4
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	st.w	$a0, $s2, 8
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 16
	st.w	$a0, $s2, 12
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 20
	st.w	$a0, $s2, 16
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 24
	st.w	$a0, $s2, 20
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 28
	st.w	$a0, $s2, 24
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 28
	ld.w	$a0, $s1, 148
	ld.w	$a1, $s1, 156
	ld.w	$a2, $s1, 164
	ori	$a3, $zero, 2
	slt	$a4, $a3, $s4
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $s4, $a4
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, -1
	bstrpick.d	$a4, $a4, 31, 0
	slt	$a5, $a3, $s6
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $s6, $a5
	or	$a3, $a5, $a3
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 1
	slt	$a6, $a5, $s5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $s5, $a6
	or	$a5, $a6, $a5
	div.w	$a6, $s0, $s7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	mul.d	$a5, $a6, $s7
	sub.w	$a5, $s0, $a5
	div.w	$a5, $a5, $s4
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	movgr2fr.d	$fa2, $a3
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	mod.w	$a3, $s0, $s4
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	movgr2fr.d	$fa3, $a4
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa2, $fa2, $fa3
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	frecip.d	$fa3, $fa3
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	frecip.d	$fa4, $fa4
	movgr2fr.w	$fa5, $a2
	ffint.d.w	$fa5, $fa5
	frecip.d	$fa5, $fa5
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $fp, 8
	fst.d	$fa0, $fp, 16
	fadd.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $fp, 24
	fst.d	$fa1, $fp, 32
	fst.d	$fa0, $fp, 40
	fst.d	$fa3, $fp, 48
	fadd.d	$fa4, $fa4, $fa1
	fst.d	$fa4, $fp, 56
	fst.d	$fa0, $fp, 64
	fst.d	$fa2, $fp, 72
	fst.d	$fa4, $fp, 80
	fst.d	$fa0, $fp, 88
	fst.d	$fa2, $fp, 96
	fst.d	$fa1, $fp, 104
	fadd.d	$fa0, $fa5, $fa0
	fst.d	$fa0, $fp, 112
	fst.d	$fa3, $fp, 120
	fst.d	$fa1, $fp, 128
	fst.d	$fa0, $fp, 136
	fst.d	$fa3, $fp, 144
	fst.d	$fa4, $fp, 152
	fst.d	$fa0, $fp, 160
	fst.d	$fa2, $fp, 168
	fst.d	$fa4, $fp, 176
	fst.d	$fa0, $fp, 184
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
.LBB42_7:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp1206:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt13runtime_errorC1EPKc)
	jirl	$ra, $ra, 0
.Ltmp1207:                              # EH_LABEL
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(_ZTISt13runtime_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt13runtime_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt13runtime_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt13runtime_errorD1Ev)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB42_9:
.Ltmp1208:                              # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_, .Lfunc_end42-_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,"aG",@progbits,_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp1206-.Lfunc_begin20       #   Call between .Lfunc_begin20 and .Ltmp1206
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1206-.Lfunc_begin20       # >> Call Site 2 <<
	.uleb128 .Ltmp1207-.Ltmp1206            #   Call between .Ltmp1206 and .Ltmp1207
	.uleb128 .Ltmp1208-.Lfunc_begin20       #     jumps to .Ltmp1208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1207-.Lfunc_begin20       # >> Call Site 3 <<
	.uleb128 .Lfunc_end42-.Ltmp1207         #   Call between .Ltmp1207 and .Lfunc_end42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_,"axG",@progbits,_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_,comdat
	.weak	_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_ # -- Begin function _ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_
	.p2align	5
	.type	_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_,@function
_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_: # @_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_
	.cfi_startproc
# %bb.0:                                # %_ZN6miniFE4fillIdEEvPT_S2_RKS1_.exit
	addi.d	$sp, $sp, -432
	.cfi_def_cfa_offset 432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
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
	move	$fp, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 288
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$zero, $sp, 336
	ori	$a2, $zero, 1
	ori	$s7, $zero, 7
	addi.d	$s8, $sp, 272
	addi.d	$s4, $sp, 208
	addi.d	$s5, $sp, 144
	ori	$s6, $zero, 6
	ori	$s1, $zero, 2
	ori	$s0, $zero, 64
	ori	$s3, $zero, 8
	b	.LBB43_2
	.p2align	4, , 16
.LBB43_1:                               #   in Loop: Header=BB43_2 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	move	$a2, $zero
	beqz	$a0, .LBB43_16
.LBB43_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_4 Depth 2
                                        #       Child Loop BB43_6 Depth 3
                                        #         Child Loop BB43_9 Depth 4
                                        #           Child Loop BB43_12 Depth 5
                                        #           Child Loop BB43_15 Depth 5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB43_4
	.p2align	4, , 16
.LBB43_3:                               #   in Loop: Header=BB43_4 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	move	$a2, $zero
	beqz	$a0, .LBB43_1
.LBB43_4:                               #   Parent Loop BB43_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB43_6 Depth 3
                                        #         Child Loop BB43_9 Depth 4
                                        #           Child Loop BB43_12 Depth 5
                                        #           Child Loop BB43_15 Depth 5
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB43_6
	.p2align	4, , 16
.LBB43_5:                               #   in Loop: Header=BB43_6 Depth=3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 24
	move	$a2, $zero
	beqz	$a0, .LBB43_3
.LBB43_6:                               # %.preheader.preheader
                                        #   Parent Loop BB43_2 Depth=1
                                        #     Parent Loop BB43_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB43_9 Depth 4
                                        #           Child Loop BB43_12 Depth 5
                                        #           Child Loop BB43_15 Depth 5
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s2, $a1, $a0, 3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 336
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	fld.d	$fa0, $sp, 336
	fld.d	$ft0, $sp, 72
	fld.d	$ft1, $sp, 80
	fld.d	$fa7, $sp, 88
	fld.d	$fa5, $sp, 96
	fld.d	$fa6, $sp, 104
	fld.d	$fa4, $sp, 112
	fld.d	$fa1, $sp, 120
	fld.d	$fa2, $sp, 128
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	fldx.d	$ft2, $a2, $a3
	fld.d	$ft3, $s2, 8
	fld.d	$fa3, $sp, 136
	fld.d	$ft4, $s2, 16
	fmul.d	$ft5, $ft2, $ft0
	fmul.d	$ft6, $ft3, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft4, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 272
	fmul.d	$ft5, $ft2, $fa5
	fmul.d	$ft6, $ft3, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft4, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 208
	fmul.d	$ft2, $ft2, $fa1
	fmul.d	$ft3, $ft3, $fa2
	fadd.d	$ft2, $ft2, $ft3
	fmul.d	$ft3, $ft4, $fa3
	fadd.d	$ft2, $ft2, $ft3
	fld.d	$ft3, $s2, 24
	fld.d	$ft4, $s2, 32
	fst.d	$ft2, $sp, 144
	fld.d	$ft2, $s2, 40
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 280
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 216
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 48
	fld.d	$ft4, $s2, 56
	fst.d	$ft2, $sp, 152
	fld.d	$ft2, $s2, 64
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 288
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 224
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 72
	fld.d	$ft4, $s2, 80
	fst.d	$ft2, $sp, 160
	fld.d	$ft2, $s2, 88
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 296
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 232
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 96
	fld.d	$ft4, $s2, 104
	fst.d	$ft2, $sp, 168
	fld.d	$ft2, $s2, 112
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 304
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 240
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 120
	fld.d	$ft4, $s2, 128
	fst.d	$ft2, $sp, 176
	fld.d	$ft2, $s2, 136
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 312
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 248
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 144
	fld.d	$ft4, $s2, 152
	fst.d	$ft2, $sp, 184
	fld.d	$ft2, $s2, 160
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 320
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 256
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 168
	fld.d	$ft4, $s2, 176
	fst.d	$ft2, $sp, 192
	fld.d	$ft2, $s2, 184
	fmul.d	$ft0, $ft3, $ft0
	fmul.d	$ft1, $ft4, $ft1
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$fa7, $ft2, $fa7
	fadd.d	$fa7, $ft0, $fa7
	fst.d	$fa7, $sp, 328
	fmul.d	$fa5, $ft3, $fa5
	fmul.d	$fa6, $ft4, $fa6
	fadd.d	$fa5, $fa5, $fa6
	fmul.d	$fa4, $ft2, $fa4
	fadd.d	$fa4, $fa5, $fa4
	fst.d	$fa4, $sp, 264
	fmul.d	$fa1, $ft3, $fa1
	fmul.d	$fa2, $ft4, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fmul.d	$fa2, $ft2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $sp, 200
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 280
	addi.d	$a4, $sp, 216
	addi.d	$a5, $sp, 152
	ori	$a6, $zero, 1
	b	.LBB43_9
	.p2align	4, , 16
.LBB43_7:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB43_9 Depth=4
	move	$a1, $a7
.LBB43_8:                               # %.loopexit
                                        #   in Loop: Header=BB43_9 Depth=4
	addi.d	$a0, $a0, 1
	addi.d	$a6, $a6, 1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	beq	$a0, $s3, .LBB43_5
.LBB43_9:                               # %.preheader
                                        #   Parent Loop BB43_2 Depth=1
                                        #     Parent Loop BB43_4 Depth=2
                                        #       Parent Loop BB43_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB43_12 Depth 5
                                        #           Child Loop BB43_15 Depth 5
	slli.d	$a7, $a0, 3
	fldx.d	$fa2, $a7, $s8
	fldx.d	$fa3, $a7, $s4
	fldx.d	$fa4, $a7, $s5
	fmul.d	$fa5, $fa2, $fa2
	fmul.d	$fa6, $fa3, $fa3
	fadd.d	$fa5, $fa5, $fa6
	addi.w	$a7, $a1, 0
	slli.d	$a7, $a7, 3
	fldx.d	$fa6, $fp, $a7
	fmul.d	$fa7, $fa4, $fa4
	fadd.d	$fa5, $fa5, $fa7
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa5, $fa6, $fa5
	fstx.d	$fa5, $fp, $a7
	addi.w	$a1, $a1, 1
	bltu	$s6, $a0, .LBB43_8
# %bb.10:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB43_9 Depth=4
	sub.d	$t1, $s7, $a0
	move	$t0, $a6
	move	$a7, $a1
	bltu	$t1, $s1, .LBB43_14
# %bb.11:                               # %vector.ph
                                        #   in Loop: Header=BB43_9 Depth=4
	move	$t3, $a2
	bstrins.d	$t3, $zero, 0, 0
	andi	$t2, $t1, 6
	add.d	$t0, $a6, $t2
	add.d	$a7, $t2, $a1
	vreplvei.d	$vr5, $vr2, 0
	vreplvei.d	$vr6, $vr3, 0
	vreplvei.d	$vr7, $vr4, 0
	alsl.d	$a1, $a1, $fp, 3
	move	$t4, $a3
	move	$t5, $a4
	move	$t6, $a5
	.p2align	4, , 16
.LBB43_12:                              # %vector.body
                                        #   Parent Loop BB43_2 Depth=1
                                        #     Parent Loop BB43_4 Depth=2
                                        #       Parent Loop BB43_6 Depth=3
                                        #         Parent Loop BB43_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr8, $t4, 0
	vld	$vr9, $t5, 0
	vfmul.d	$vr8, $vr5, $vr8
	vld	$vr10, $t6, 0
	vfmul.d	$vr9, $vr6, $vr9
	vfadd.d	$vr8, $vr8, $vr9
	vld	$vr9, $a1, 0
	vfmul.d	$vr10, $vr7, $vr10
	vfadd.d	$vr8, $vr8, $vr10
	vfmul.d	$vr8, $vr1, $vr8
	vfadd.d	$vr8, $vr9, $vr8
	vst	$vr8, $a1, 0
	addi.d	$a1, $a1, 16
	addi.d	$t3, $t3, -2
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB43_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB43_9 Depth=4
	beq	$t1, $t2, .LBB43_7
.LBB43_14:                              # %.lr.ph.preheader105
                                        #   in Loop: Header=BB43_9 Depth=4
	slli.d	$a1, $t0, 3
	alsl.d	$t1, $a7, $fp, 3
	sub.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 8
	.p2align	4, , 16
.LBB43_15:                              # %.lr.ph
                                        #   Parent Loop BB43_2 Depth=1
                                        #     Parent Loop BB43_4 Depth=2
                                        #       Parent Loop BB43_6 Depth=3
                                        #         Parent Loop BB43_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.d	$fa5, $a1, $s8
	fldx.d	$fa6, $a1, $s4
	fmul.d	$fa5, $fa2, $fa5
	fldx.d	$fa7, $a1, $s5
	fmul.d	$fa6, $fa3, $fa6
	fadd.d	$fa5, $fa5, $fa6
	fld.d	$fa6, $t1, 0
	fmul.d	$fa7, $fa4, $fa7
	fadd.d	$fa5, $fa5, $fa7
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa5, $fa6, $fa5
	fst.d	$fa5, $t1, 0
	addi.d	$a1, $a1, 8
	addi.d	$t1, $t1, 8
	bne	$a1, $s0, .LBB43_15
	b	.LBB43_7
.LBB43_16:
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.Lfunc_end43:
	.size	_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_, .Lfunc_end43-_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
.LCPI44_0:
	.dword	0xbfe279a74576233f              # double -0.57735026899999997
	.dword	0x3fe279a74576233f              # double 0.57735026899999997
	.section	.text._ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_,"axG",@progbits,_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_,comdat
	.weak	_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
	.p2align	5
	.type	_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_,@function
_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_: # @_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
	.cfi_startproc
# %bb.0:                                # %_ZN6miniFE4fillIdEEvPT_S2_RKS1_.exit
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 176                  # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	.cfi_offset 57, -96
	.cfi_offset 58, -104
	.cfi_offset 59, -112
	.cfi_offset 60, -120
	.cfi_offset 61, -128
	.cfi_offset 62, -136
	.cfi_offset 63, -144
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$s3, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 48
	pcalau12i	$a0, %pc_hi20(.LCPI44_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI44_0)
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 0
	vst	$vr1, $sp, 160
	lu52i.d	$a0, $zero, 1023
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 144
	addi.d	$s4, $sp, 152
	addi.d	$s5, $sp, 168
	fld.d	$fa0, $sp, 160
	fld.d	$fa1, $sp, 144
	fst.d	$fa1, $sp, 56                   # 8-byte Folded Spill
	vldi	$vr2, -912
	fld.d	$fa1, $sp, 168
	fsub.d	$fa3, $fa2, $fa0
	fadd.d	$fa4, $fa0, $fa2
	fld.d	$fa5, $sp, 152
	fsub.d	$fa0, $fa2, $fa1
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fadd.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 160
	addi.d	$a0, $sp, 144
	ori	$s6, $zero, 1
	fst.d	$fa3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fa4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fa5, $sp, 32                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB44_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_2 Depth 2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fst.d	$fa1, $sp, 128                  # 8-byte Folded Spill
	fsub.d	$fa1, $fa2, $fa0
	fadd.d	$fa0, $fa0, $fa2
	vldi	$vr6, -960
	fmul.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $sp, 72                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa6
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	alsl.d	$s2, $s3, $s0, 3
	addi.d	$s3, $s3, 96
	ori	$s7, $zero, 1
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	.p2align	4, , 16
.LBB44_2:                               #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	fadd.d	$fa1, $fa0, $fa2
	fld.d	$fa5, $sp, 72                   # 8-byte Folded Reload
	fmul.d	$fs6, $fa5, $fa1
	fld.d	$fa6, $sp, 64                   # 8-byte Folded Reload
	fmul.d	$fs7, $fa6, $fa1
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fs0, $fa6, $fa0
	fmul.d	$fs1, $fa5, $fa0
	fld.d	$fs3, $a0, 0
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fmul.d	$fs2, $fs1, $fa3
	fmul.d	$fs4, $fs0, $fa3
	fmul.d	$fs5, $fs7, $fa3
	fmul.d	$fa0, $fs6, $fa3
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fmul.d	$fa0, $fs1, $fa4
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fmul.d	$fa0, $fs0, $fa4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmul.d	$fa0, $fs7, $fa4
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	fmul.d	$fa0, $fs6, $fa4
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	fld.d	$fa1, $sp, 128                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fs3, $fa0
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $sp, 56                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fmul.d	$fa2, $fa0, $fs2
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs4
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs5
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fld.d	$fa1, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fld.d	$fa1, $sp, 88                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fld.d	$fa1, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fld.d	$fa1, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 48
	fld.d	$fa1, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 56
	fld.d	$fa0, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fs2, $fs1, $fa0
	fmul.d	$fs3, $fs0, $fa0
	fmul.d	$fs4, $fs7, $fa0
	fmul.d	$fs5, $fs6, $fa0
	fld.d	$fa0, $sp, 16                   # 8-byte Folded Reload
	fmul.d	$fs1, $fs1, $fa0
	fmul.d	$fs0, $fs0, $fa0
	fmul.d	$fs7, $fs7, $fa0
	fmul.d	$fs6, $fs6, $fa0
	addi.d	$a1, $s2, 192
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fa4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fa0, $sp, 136
	fld.d	$fa1, $sp, 128                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $fp, 0
	fmul.d	$fa0, $fa5, $fa0
	fmul.d	$fa2, $fa0, $fs2
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs3
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs4
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fmul.d	$fa1, $fa0, $fs1
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fmul.d	$fa1, $fa0, $fs0
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fmul.d	$fa1, $fa0, $fs7
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	vldi	$vr2, -912
	fst.d	$fa1, $fp, 48
	fmul.d	$fa0, $fa0, $fs6
	fadd.d	$fa0, $fa3, $fa0
	fld.d	$fa3, $sp, 48                   # 8-byte Folded Reload
	fst.d	$fa0, $fp, 56
	andi	$a2, $s7, 1
	addi.d	$s2, $s2, 384
	move	$a0, $s4
	move	$a1, $s5
	move	$s7, $zero
	bnez	$a2, .LBB44_2
# %bb.3:                                #   in Loop: Header=BB44_1 Depth=1
	andi	$a2, $s6, 1
	move	$a0, $s4
	move	$a1, $s5
	move	$s6, $zero
	bnez	$a2, .LBB44_1
# %bb.4:
	fld.d	$fs7, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 232                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end44:
	.size	_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_, .Lfunc_end44-_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_,"axG",@progbits,_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_,comdat
	.weak	_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_ # -- Begin function _ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_
	.p2align	5
	.type	_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_,@function
_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_: # @_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_
# %bb.0:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa0, $fa1
	fld.d	$fa3, $a0, 8
	movgr2fr.d	$fa4, $zero
	fadd.d	$fa2, $fa2, $fa4
	fld.d	$fa5, $a0, 16
	fmul.d	$fa6, $fa0, $fa3
	fld.d	$fa7, $a1, 8
	fadd.d	$fa6, $fa6, $fa4
	fmul.d	$fa0, $fa0, $fa5
	fadd.d	$fa0, $fa0, $fa4
	fmul.d	$ft0, $fa1, $fa7
	fadd.d	$ft0, $ft0, $fa4
	fmul.d	$ft1, $fa3, $fa7
	fld.d	$ft2, $a1, 16
	fadd.d	$ft1, $ft1, $fa4
	fmul.d	$fa7, $fa5, $fa7
	fadd.d	$fa7, $fa7, $fa4
	fmul.d	$fa1, $fa1, $ft2
	fadd.d	$fa1, $fa1, $fa4
	fmul.d	$fa3, $fa3, $ft2
	fadd.d	$fa3, $fa3, $fa4
	fld.d	$ft3, $a1, 24
	fld.d	$ft4, $a0, 24
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$fa4, $fa5, $fa4
	fld.d	$fa5, $a0, 32
	fmul.d	$ft2, $ft3, $ft4
	fadd.d	$fa2, $fa2, $ft2
	fld.d	$ft2, $a0, 40
	fmul.d	$ft5, $ft3, $fa5
	fld.d	$ft6, $a1, 32
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft3, $ft3, $ft2
	fadd.d	$fa0, $fa0, $ft3
	fmul.d	$ft3, $ft4, $ft6
	fadd.d	$ft0, $ft0, $ft3
	fmul.d	$ft3, $fa5, $ft6
	fld.d	$ft5, $a1, 40
	fadd.d	$ft1, $ft1, $ft3
	fmul.d	$ft3, $ft2, $ft6
	fadd.d	$fa7, $fa7, $ft3
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa1, $fa1, $ft3
	fmul.d	$fa5, $fa5, $ft5
	fadd.d	$fa3, $fa3, $fa5
	fld.d	$fa5, $a1, 48
	fld.d	$ft3, $a0, 48
	fmul.d	$ft2, $ft2, $ft5
	fadd.d	$fa4, $fa4, $ft2
	fld.d	$ft2, $a0, 56
	fmul.d	$ft4, $fa5, $ft3
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 64
	fmul.d	$ft5, $fa5, $ft2
	fld.d	$ft6, $a1, 56
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$fa5, $fa5, $ft4
	fadd.d	$fa0, $fa0, $fa5
	fmul.d	$fa5, $ft3, $ft6
	fadd.d	$fa5, $ft0, $fa5
	fmul.d	$ft0, $ft2, $ft6
	fld.d	$ft5, $a1, 64
	fadd.d	$ft0, $ft1, $ft0
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 72
	fld.d	$ft2, $a0, 72
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 80
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 88
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 80
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$fa0, $fa0, $ft1
	fmul.d	$ft1, $ft2, $ft6
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$ft1, $ft3, $ft6
	fld.d	$ft5, $a1, 88
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 96
	fld.d	$ft2, $a0, 96
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 104
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 112
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 104
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$fa0, $fa0, $ft1
	fmul.d	$ft1, $ft2, $ft6
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$ft1, $ft3, $ft6
	fld.d	$ft5, $a1, 112
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 120
	fld.d	$ft2, $a0, 120
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 128
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 136
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 128
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$fa0, $fa0, $ft1
	fmul.d	$ft1, $ft2, $ft6
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$ft1, $ft3, $ft6
	fld.d	$ft5, $a1, 136
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 144
	fld.d	$ft2, $a0, 144
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 152
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 160
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 152
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$ft1, $fa0, $ft1
	fmul.d	$fa0, $ft2, $ft6
	fadd.d	$fa5, $fa5, $fa0
	fmul.d	$fa0, $ft3, $ft6
	fld.d	$ft5, $a1, 160
	fadd.d	$ft0, $ft0, $fa0
	fmul.d	$fa0, $ft4, $ft6
	fadd.d	$fa7, $fa7, $fa0
	fmul.d	$fa0, $ft2, $ft5
	fadd.d	$ft2, $fa1, $fa0
	fmul.d	$fa0, $ft3, $ft5
	fadd.d	$fa3, $fa3, $fa0
	fld.d	$ft3, $a1, 168
	fld.d	$ft6, $a0, 168
	fmul.d	$fa0, $ft4, $ft5
	fadd.d	$fa4, $fa4, $fa0
	fld.d	$ft4, $a0, 176
	fmul.d	$fa0, $ft3, $ft6
	fadd.d	$fa0, $fa2, $fa0
	fld.d	$ft5, $a0, 184
	fmul.d	$fa1, $ft3, $ft4
	fld.d	$ft7, $a1, 176
	fadd.d	$fa1, $fa6, $fa1
	fmul.d	$fa2, $ft3, $ft5
	fadd.d	$fa6, $ft1, $fa2
	fmul.d	$fa2, $ft6, $ft7
	fadd.d	$fa2, $fa5, $fa2
	fmul.d	$fa5, $ft4, $ft7
	fld.d	$ft1, $a1, 184
	fadd.d	$fa5, $ft0, $fa5
	fmul.d	$ft0, $ft5, $ft7
	fadd.d	$fa7, $fa7, $ft0
	fmul.d	$ft0, $ft6, $ft1
	fadd.d	$ft0, $ft2, $ft0
	fmul.d	$ft2, $ft4, $ft1
	fadd.d	$fa3, $fa3, $ft2
	fmul.d	$ft1, $ft5, $ft1
	fadd.d	$fa4, $fa4, $ft1
	fmul.d	$ft1, $fa5, $fa4
	fmul.d	$ft2, $fa7, $fa3
	fsub.d	$ft1, $ft1, $ft2
	fmul.d	$ft2, $fa4, $fa1
	fmul.d	$ft3, $fa3, $fa6
	fsub.d	$ft2, $ft2, $ft3
	fmul.d	$ft3, $fa7, $fa1
	fmul.d	$ft4, $fa5, $fa6
	fsub.d	$ft3, $ft3, $ft4
	fmul.d	$ft4, $ft1, $fa0
	fmul.d	$ft5, $fa2, $ft2
	fsub.d	$ft4, $ft4, $ft5
	fmul.d	$ft5, $ft0, $ft3
	fadd.d	$ft4, $ft5, $ft4
	fst.d	$ft4, $a3, 0
	frecip.d	$ft4, $ft4
	fmul.d	$ft1, $ft1, $ft4
	fst.d	$ft1, $a2, 0
	fneg.d	$ft1, $ft2
	fmul.d	$ft1, $ft4, $ft1
	fst.d	$ft1, $a2, 8
	fmul.d	$ft1, $ft3, $ft4
	fst.d	$ft1, $a2, 16
	fmul.d	$ft1, $fa4, $fa2
	fmul.d	$ft2, $fa7, $ft0
	fsub.d	$ft1, $ft1, $ft2
	fneg.d	$ft1, $ft1
	fmul.d	$ft1, $ft4, $ft1
	fst.d	$ft1, $a2, 24
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$ft1, $ft0, $fa6
	fsub.d	$fa4, $fa4, $ft1
	fmul.d	$fa4, $fa4, $ft4
	fst.d	$fa4, $a2, 32
	fmul.d	$fa4, $fa7, $fa0
	fmul.d	$fa6, $fa2, $fa6
	fsub.d	$fa4, $fa4, $fa6
	fneg.d	$fa4, $fa4
	fmul.d	$fa4, $ft4, $fa4
	fst.d	$fa4, $a2, 40
	fmul.d	$fa4, $fa3, $fa2
	fmul.d	$fa6, $fa5, $ft0
	fsub.d	$fa4, $fa4, $fa6
	fmul.d	$fa4, $fa4, $ft4
	fst.d	$fa4, $a2, 48
	fmul.d	$fa3, $fa3, $fa0
	fmul.d	$fa4, $ft0, $fa1
	fsub.d	$fa3, $fa3, $fa4
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $ft4, $fa3
	fst.d	$fa3, $a2, 56
	fmul.d	$fa0, $fa5, $fa0
	fmul.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $ft4
	fst.d	$fa0, $a2, 64
	ret
.Lfunc_end45:
	.size	_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_, .Lfunc_end45-_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_
                                        # -- End function
	.section	.text._ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_,"axG",@progbits,_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_,comdat
	.weak	_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_ # -- Begin function _ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
	.p2align	5
	.type	_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_,@function
_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_: # @_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
# %bb.0:
	fld.d	$ft8, $a0, 0
	fld.d	$ft9, $a1, 8
	fld.d	$ft10, $a1, 0
	fld.d	$ft6, $a0, 24
	fld.d	$ft7, $a1, 32
	fmul.d	$fa0, $ft8, $ft9
	movgr2fr.d	$fa1, $zero
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft6, $ft7
	fld.d	$ft4, $a0, 48
	fld.d	$ft5, $a1, 56
	fld.d	$ft2, $a0, 72
	fld.d	$ft3, $a1, 80
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft4, $ft5
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft2, $ft3
	fld.d	$ft0, $a0, 96
	fld.d	$ft1, $a1, 104
	fld.d	$fa6, $a0, 120
	fld.d	$fa7, $a1, 128
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft0, $ft1
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa3, $fa6, $fa7
	fld.d	$fa4, $a0, 144
	fld.d	$fa5, $a1, 152
	fld.d	$fa1, $a0, 168
	fld.d	$fa2, $a1, 176
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa4, $fa5
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa3, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa3
	vld	$vr19, $a0, 8
	fld.d	$fa3, $a1, 184
	vreplvei.d	$vr17, $vr17, 0
	vld	$vr20, $a1, 16
	vfmul.d	$vr17, $vr19, $vr17
	vrepli.b	$vr21, 0
	vfadd.d	$vr17, $vr17, $vr21
	vreplvei.d	$vr22, $vr20, 0
	vextrins.d	$vr22, $vr18, 0
	vreplvei.d	$vr16, $vr16, 0
	vfmul.d	$vr16, $vr22, $vr16
	vfadd.d	$vr16, $vr16, $vr21
	vfmul.d	$vr18, $vr19, $vr22
	vshuf4i.d	$vr22, $vr0, 1
	vfmul.d	$vr19, $vr19, $vr22
	vfadd.d	$vr19, $vr19, $vr21
	vld	$vr22, $a0, 32
	vfadd.d	$vr18, $vr18, $vr21
	vld	$vr21, $a1, 40
	vreplvei.d	$vr15, $vr15, 0
	vfmul.d	$vr15, $vr22, $vr15
	vfadd.d	$vr15, $vr17, $vr15
	vshuf4i.d	$vr20, $vr21, 9
	vreplvei.d	$vr14, $vr14, 0
	vfmul.d	$vr14, $vr20, $vr14
	vfadd.d	$vr14, $vr16, $vr14
	vfmul.d	$vr16, $vr22, $vr20
	vshuf4i.d	$vr20, $vr0, 1
	vfmul.d	$vr17, $vr22, $vr20
	vfadd.d	$vr17, $vr19, $vr17
	vld	$vr19, $a0, 56
	vfadd.d	$vr16, $vr18, $vr16
	vld	$vr18, $a1, 64
	vreplvei.d	$vr13, $vr13, 0
	vfmul.d	$vr13, $vr19, $vr13
	vfadd.d	$vr13, $vr15, $vr13
	vshuf4i.d	$vr21, $vr18, 9
	vreplvei.d	$vr12, $vr12, 0
	vfmul.d	$vr12, $vr21, $vr12
	vfadd.d	$vr12, $vr14, $vr12
	vfmul.d	$vr14, $vr19, $vr21
	vshuf4i.d	$vr21, $vr0, 1
	vfmul.d	$vr15, $vr19, $vr21
	vfadd.d	$vr15, $vr17, $vr15
	vld	$vr17, $a0, 80
	vfadd.d	$vr14, $vr16, $vr14
	vld	$vr16, $a1, 88
	vreplvei.d	$vr11, $vr11, 0
	vfmul.d	$vr11, $vr17, $vr11
	vfadd.d	$vr11, $vr13, $vr11
	vshuf4i.d	$vr18, $vr16, 9
	vreplvei.d	$vr10, $vr10, 0
	vfmul.d	$vr10, $vr18, $vr10
	vfadd.d	$vr10, $vr12, $vr10
	vfmul.d	$vr12, $vr17, $vr18
	vshuf4i.d	$vr18, $vr0, 1
	vfmul.d	$vr13, $vr17, $vr18
	vfadd.d	$vr13, $vr15, $vr13
	vld	$vr15, $a0, 104
	vfadd.d	$vr12, $vr14, $vr12
	vld	$vr14, $a1, 112
	vreplvei.d	$vr9, $vr9, 0
	vfmul.d	$vr9, $vr15, $vr9
	vfadd.d	$vr9, $vr11, $vr9
	vshuf4i.d	$vr16, $vr14, 9
	vreplvei.d	$vr8, $vr8, 0
	vfmul.d	$vr8, $vr16, $vr8
	vfadd.d	$vr8, $vr10, $vr8
	vfmul.d	$vr10, $vr15, $vr16
	vshuf4i.d	$vr16, $vr0, 1
	vfmul.d	$vr11, $vr15, $vr16
	vfadd.d	$vr11, $vr13, $vr11
	vld	$vr13, $a0, 128
	vfadd.d	$vr10, $vr12, $vr10
	vld	$vr12, $a1, 136
	vreplvei.d	$vr7, $vr7, 0
	vfmul.d	$vr7, $vr13, $vr7
	vfadd.d	$vr7, $vr9, $vr7
	vshuf4i.d	$vr14, $vr12, 9
	vreplvei.d	$vr6, $vr6, 0
	vfmul.d	$vr6, $vr14, $vr6
	vfadd.d	$vr6, $vr8, $vr6
	vfmul.d	$vr8, $vr13, $vr14
	vshuf4i.d	$vr14, $vr0, 1
	vfmul.d	$vr9, $vr13, $vr14
	vfadd.d	$vr9, $vr11, $vr9
	vld	$vr11, $a0, 152
	vfadd.d	$vr8, $vr10, $vr8
	vld	$vr10, $a1, 160
	vreplvei.d	$vr5, $vr5, 0
	vfmul.d	$vr5, $vr11, $vr5
	vfadd.d	$vr5, $vr7, $vr5
	vshuf4i.d	$vr12, $vr10, 9
	vreplvei.d	$vr4, $vr4, 0
	vfmul.d	$vr4, $vr12, $vr4
	vfadd.d	$vr4, $vr6, $vr4
	vfmul.d	$vr6, $vr11, $vr12
	vshuf4i.d	$vr12, $vr0, 1
	vfmul.d	$vr7, $vr11, $vr12
	vld	$vr11, $a0, 176
	vfadd.d	$vr7, $vr9, $vr7
	vfadd.d	$vr6, $vr8, $vr6
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr11, $vr2
	vfadd.d	$vr2, $vr5, $vr2
	vreplvei.d	$vr5, $vr10, 1
	vextrins.d	$vr5, $vr3, 16
	vreplvei.d	$vr1, $vr1, 0
	vfmul.d	$vr1, $vr5, $vr1
	vfadd.d	$vr1, $vr4, $vr1
	vfmul.d	$vr3, $vr11, $vr5
	vshuf4i.d	$vr5, $vr0, 1
	vfmul.d	$vr4, $vr11, $vr5
	vfadd.d	$vr4, $vr7, $vr4
	vfadd.d	$vr3, $vr6, $vr3
	vshuf4i.d	$vr3, $vr0, 1
	vpackev.d	$vr5, $vr4, $vr3
	vpackod.d	$vr6, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr6
	vreplvei.d	$vr6, $vr5, 1
	vfsub.d	$vr5, $vr5, $vr6
	vreplvei.d	$vr5, $vr5, 0
	vfmul.d	$vr3, $vr2, $vr3
	vshuf4i.d	$vr2, $vr0, 1
	vfmul.d	$vr2, $vr2, $vr4
	vfsub.d	$vr2, $vr3, $vr2
	fmul.d	$fa0, $fa0, $fa5
	vfmul.d	$vr1, $vr1, $vr2
	vreplvei.d	$vr2, $vr1, 0
	fsub.d	$fa0, $fa2, $fa0
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	ret
.Lfunc_end46:
	.size	_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_, .Lfunc_end46-_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
                                        # -- End function
	.section	.text._ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_,"axG",@progbits,_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_,comdat
	.weak	_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_ # -- Begin function _ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_
	.p2align	5
	.type	_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_,@function
_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_: # @_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_
	.cfi_startproc
# %bb.0:
	beqz	$a0, .LBB47_36
# %bb.1:                                # %.lr.ph72
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 22, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	.cfi_offset 30, -72
	ld.d	$a4, $a3, 16
	ld.d	$a5, $a3, 8
	ld.d	$a6, $a3, 32
	ld.d	$a7, $a3, 80
	ld.d	$a3, $a3, 104
	move	$t0, $zero
	move	$t1, $zero
	sub.d	$t2, $a4, $a5
	srai.d	$t2, $t2, 2
	b	.LBB47_3
	.p2align	4, , 16
.LBB47_2:                               # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit.thread
                                        #   in Loop: Header=BB47_3 Depth=1
	addi.d	$t1, $t1, 1
	add.w	$t0, $t0, $t3
	beq	$t1, $a0, .LBB47_35
.LBB47_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_8 Depth 2
                                        #     Child Loop BB47_17 Depth 2
                                        #       Child Loop BB47_19 Depth 3
                                        #     Child Loop BB47_27 Depth 2
                                        #       Child Loop BB47_29 Depth 3
	slli.d	$t3, $t1, 2
	ldx.w	$t4, $a1, $t3
	sub.w	$t3, $a0, $t1
	beq	$a4, $a5, .LBB47_9
# %bb.4:                                #   in Loop: Header=BB47_3 Depth=1
	ld.w	$t5, $a5, 0
	sub.w	$t5, $t4, $t5
	bgeu	$t5, $t2, .LBB47_6
# %bb.5:                                #   in Loop: Header=BB47_3 Depth=1
	slli.d	$t6, $t5, 2
	ldx.w	$t6, $a5, $t6
	beq	$t6, $t4, .LBB47_13
.LBB47_6:                               #   in Loop: Header=BB47_3 Depth=1
	blez	$t2, .LBB47_34
# %bb.7:                                # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader
                                        #   in Loop: Header=BB47_3 Depth=1
	move	$t6, $t2
	move	$t5, $a5
	.p2align	4, , 16
.LBB47_8:                               # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
                                        #   Parent Loop BB47_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t7, $t6, 1
	slli.d	$t8, $t7, 2
	ldx.w	$t8, $t5, $t8
	alsl.d	$fp, $t7, $t5, 2
	slt	$t8, $t8, $t4
	addi.d	$fp, $fp, 4
	nor	$s0, $t7, $zero
	add.d	$t6, $t6, $s0
	maskeqz	$fp, $fp, $t8
	masknez	$t5, $t5, $t8
	maskeqz	$t6, $t6, $t8
	masknez	$t7, $t7, $t8
	or	$t6, $t6, $t7
	or	$t5, $fp, $t5
	bgtz	$t6, .LBB47_8
	b	.LBB47_10
	.p2align	4, , 16
.LBB47_9:                               #   in Loop: Header=BB47_3 Depth=1
	move	$t5, $a5
.LBB47_10:                              # %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i
                                        #   in Loop: Header=BB47_3 Depth=1
	beq	$a4, $t5, .LBB47_2
.LBB47_11:                              #   in Loop: Header=BB47_3 Depth=1
	ld.w	$t6, $t5, 0
	bne	$t6, $t4, .LBB47_2
# %bb.12:                               #   in Loop: Header=BB47_3 Depth=1
	sub.d	$t4, $t5, $a5
	srai.d	$t5, $t4, 2
.LBB47_13:                              # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit
                                        #   in Loop: Header=BB47_3 Depth=1
	alsl.d	$t4, $t5, $a6, 2
	slli.d	$t5, $t5, 2
	ldx.w	$t6, $a6, $t5
	ld.w	$t7, $t4, 4
	beq	$t7, $t6, .LBB47_2
# %bb.14:                               #   in Loop: Header=BB47_3 Depth=1
	alsl.d	$t4, $t6, $a7, 2
	alsl.d	$t5, $t6, $a3, 3
	slli.d	$t8, $t3, 32
	sub.w	$t6, $t7, $t6
	beqz	$t8, .LBB47_24
# %bb.15:                               # %.lr.ph.i
                                        #   in Loop: Header=BB47_3 Depth=1
	move	$t7, $zero
	alsl.d	$t8, $t1, $a1, 2
	alsl.d	$fp, $t0, $a2, 3
	b	.LBB47_17
	.p2align	4, , 16
.LBB47_16:                              #   in Loop: Header=BB47_17 Depth=2
	addi.d	$t7, $t7, 1
	beq	$t7, $t3, .LBB47_24
.LBB47_17:                              #   Parent Loop BB47_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_19 Depth 3
	alsl.d	$s0, $t7, $t8, 2
	blez	$t6, .LBB47_20
# %bb.18:                               # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_17 Depth=2
	ld.w	$s2, $s0, 0
	move	$s1, $t4
	move	$s3, $t6
	.p2align	4, , 16
.LBB47_19:                              # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
                                        #   Parent Loop BB47_3 Depth=1
                                        #     Parent Loop BB47_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$s4, $s3, 1
	slli.d	$s5, $s4, 2
	ldx.w	$s5, $s1, $s5
	alsl.d	$s6, $s4, $s1, 2
	slt	$s5, $s5, $s2
	addi.d	$s6, $s6, 4
	nor	$s7, $s4, $zero
	add.d	$s3, $s3, $s7
	maskeqz	$s3, $s3, $s5
	masknez	$s4, $s4, $s5
	or	$s3, $s3, $s4
	maskeqz	$s4, $s6, $s5
	masknez	$s1, $s1, $s5
	or	$s1, $s4, $s1
	bgtz	$s3, .LBB47_19
	b	.LBB47_21
	.p2align	4, , 16
.LBB47_20:                              #   in Loop: Header=BB47_17 Depth=2
	move	$s1, $t4
.LBB47_21:                              # %_ZSt11lower_boundIPiiET_S1_S1_RKT0_.exit.i
                                        #   in Loop: Header=BB47_17 Depth=2
	sub.d	$s2, $s1, $t4
	srai.d	$s2, $s2, 2
	bge	$s2, $t6, .LBB47_16
# %bb.22:                               #   in Loop: Header=BB47_17 Depth=2
	ld.w	$s1, $s1, 0
	ld.w	$s0, $s0, 0
	bne	$s1, $s0, .LBB47_16
# %bb.23:                               #   in Loop: Header=BB47_17 Depth=2
	slli.d	$s0, $t7, 3
	fldx.d	$fa0, $fp, $s0
	slli.d	$s0, $s2, 3
	fldx.d	$fa1, $t5, $s0
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $t5, $s0
	b	.LBB47_16
	.p2align	4, , 16
.LBB47_24:                              # %_ZN6miniFE12sum_into_rowIidEEviPT_PT0_iPKS1_PKS3_.exit
                                        #   in Loop: Header=BB47_3 Depth=1
	beqz	$t1, .LBB47_2
# %bb.25:                               # %.lr.ph
                                        #   in Loop: Header=BB47_3 Depth=1
	move	$t7, $zero
	move	$t8, $t1
	b	.LBB47_27
	.p2align	4, , 16
.LBB47_26:                              # %_ZN6miniFE12sum_into_rowIidEEviPT_PT0_iPKS1_PKS3_.exit55
                                        #   in Loop: Header=BB47_27 Depth=2
	addi.d	$fp, $t7, 1
	nor	$t7, $t7, $zero
	add.d	$t7, $a0, $t7
	add.d	$t8, $t7, $t8
	move	$t7, $fp
	beq	$fp, $t1, .LBB47_2
.LBB47_27:                              #   Parent Loop BB47_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_29 Depth 3
	alsl.d	$fp, $t7, $a1, 2
	blez	$t6, .LBB47_30
# %bb.28:                               # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i45
                                        #   in Loop: Header=BB47_27 Depth=2
	ld.w	$s1, $fp, 0
	move	$s0, $t4
	move	$s2, $t6
	.p2align	4, , 16
.LBB47_29:                              # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46
                                        #   Parent Loop BB47_3 Depth=1
                                        #     Parent Loop BB47_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$s3, $s2, 1
	slli.d	$s4, $s3, 2
	ldx.w	$s4, $s0, $s4
	alsl.d	$s5, $s3, $s0, 2
	slt	$s4, $s4, $s1
	addi.d	$s5, $s5, 4
	nor	$s6, $s3, $zero
	add.d	$s2, $s2, $s6
	maskeqz	$s2, $s2, $s4
	masknez	$s3, $s3, $s4
	or	$s2, $s2, $s3
	maskeqz	$s3, $s5, $s4
	masknez	$s0, $s0, $s4
	or	$s0, $s3, $s0
	bgtz	$s2, .LBB47_29
	b	.LBB47_31
	.p2align	4, , 16
.LBB47_30:                              #   in Loop: Header=BB47_27 Depth=2
	move	$s0, $t4
.LBB47_31:                              # %_ZSt11lower_boundIPiiET_S1_S1_RKT0_.exit.i41
                                        #   in Loop: Header=BB47_27 Depth=2
	sub.d	$s1, $s0, $t4
	srai.d	$s1, $s1, 2
	addi.w	$t8, $t8, 0
	bge	$s1, $t6, .LBB47_26
# %bb.32:                               #   in Loop: Header=BB47_27 Depth=2
	ld.w	$s0, $s0, 0
	ld.w	$fp, $fp, 0
	bne	$s0, $fp, .LBB47_26
# %bb.33:                               #   in Loop: Header=BB47_27 Depth=2
	slli.d	$fp, $t8, 3
	fldx.d	$fa0, $a2, $fp
	slli.d	$fp, $s1, 3
	fldx.d	$fa1, $t5, $fp
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $t5, $fp
	b	.LBB47_26
.LBB47_34:                              #   in Loop: Header=BB47_3 Depth=1
	move	$t5, $a5
	bne	$a4, $t5, .LBB47_11
	b	.LBB47_2
.LBB47_35:
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB47_36:                              # %._crit_edge
	ret
.Lfunc_end47:
	.size	_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_, .Lfunc_end47-_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE,"axG",@progbits,_ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE,comdat
	.weak	_ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE # -- Begin function _ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE
	.p2align	5
	.type	_ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE,@function
_ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE: # @_ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE
	.cfi_startproc
# %bb.0:
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 8
	move	$a4, $a2
	beq	$a3, $a2, .LBB48_5
# %bb.1:
	ld.w	$a4, $a2, 0
	sub.d	$a5, $a3, $a2
	srai.d	$a5, $a5, 2
	sub.w	$a4, $a1, $a4
	bgeu	$a4, $a5, .LBB48_3
# %bb.2:
	slli.d	$a6, $a4, 2
	ldx.w	$a6, $a2, $a6
	beq	$a6, $a1, .LBB48_8
.LBB48_3:
	move	$a4, $a2
	blez	$a5, .LBB48_5
	.p2align	4, , 16
.LBB48_4:                               # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a5, 1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a4, $a7
	alsl.d	$t0, $a6, $a4, 2
	slt	$a7, $a7, $a1
	addi.d	$t0, $t0, 4
	nor	$t1, $a6, $zero
	add.d	$a5, $a5, $t1
	maskeqz	$t0, $t0, $a7
	masknez	$a4, $a4, $a7
	maskeqz	$a5, $a5, $a7
	masknez	$a6, $a6, $a7
	or	$a5, $a5, $a6
	or	$a4, $t0, $a4
	bgtz	$a5, .LBB48_4
.LBB48_5:                               # %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i
	beq	$a3, $a4, .LBB48_16
# %bb.6:
	ld.w	$a3, $a4, 0
	bne	$a3, $a1, .LBB48_16
# %bb.7:
	sub.d	$a2, $a4, $a2
	srai.d	$a4, $a2, 2
.LBB48_8:                               # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit
	ld.d	$a2, $a0, 32
	alsl.d	$a3, $a4, $a2, 2
	slli.d	$a4, $a4, 2
	ld.w	$a5, $a3, 4
	ldx.w	$a2, $a2, $a4
	beq	$a5, $a2, .LBB48_16
# %bb.9:                                # %.lr.ph.preheader
	ld.d	$a3, $a0, 80
	ld.d	$a4, $a0, 104
	sub.w	$a0, $a5, $a2
	ori	$a5, $zero, 4
	bgeu	$a0, $a5, .LBB48_11
# %bb.10:
	move	$a5, $zero
	b	.LBB48_14
.LBB48_11:                              # %vector.ph
	move	$a5, $a0
	bstrins.d	$a5, $zero, 1, 0
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a1, 1
	alsl.d	$a6, $a2, $a4, 3
	addi.d	$a6, $a6, 16
	alsl.d	$a7, $a2, $a3, 2
	addi.d	$a7, $a7, 8
	lu52i.d	$t0, $zero, 1023
	vreplgr2vr.d	$vr1, $t0
	move	$t0, $a5
	.p2align	4, , 16
.LBB48_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a7, -8
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr2, $t1, 0
	vinsgr2vr.d	$vr3, $t2, 0
	vseq.w	$vr2, $vr2, $vr0
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vseq.w	$vr3, $vr3, $vr0
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vand.v	$vr2, $vr2, $vr1
	vand.v	$vr3, $vr3, $vr1
	vst	$vr2, $a6, -16
	vst	$vr3, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB48_12
# %bb.13:                               # %middle.block
	beq	$a5, $a0, .LBB48_16
.LBB48_14:                              # %.lr.ph.preheader22
	slli.d	$a6, $a5, 3
	alsl.d	$a6, $a2, $a6, 3
	add.d	$a4, $a4, $a6
	sub.d	$a0, $a0, $a5
	slli.d	$a5, $a5, 2
	alsl.d	$a2, $a2, $a5, 2
	add.d	$a2, $a3, $a2
	vldi	$vr0, -912
	movgr2fr.d	$fa1, $zero
	.p2align	4, , 16
.LBB48_15:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	xor	$a3, $a3, $a1
	sltui	$a3, $a3, 1
	movgr2cf	$fcc0, $a3
	fsel	$fa2, $fa1, $fa0, $fcc0
	fst.d	$fa2, $a4, 0
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB48_15
.LBB48_16:                              # %._crit_edge
	ret
.Lfunc_end48:
	.size	_ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE, .Lfunc_end48-_ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"One or more processors have 0 equations. Not currently supported. Exiting."
	.size	.L.str, 75

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"miniFE."
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"x"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"."
	.size	.L.str.3, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"miniFE"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"2.0"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.7:
	.asciz	"Total Program Time"
	.size	.L.str.7, 19

	.type	.L.str.8,@object                # @.str.8
	.p2align	3, 0x0
.L.str.8:
	.asciz	"Global Run Parameters"
	.size	.L.str.8, 22

	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"dimensions"
	.size	.L.str.9, 11

	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"load_imbalance"
	.size	.L.str.13, 15

	.type	.L.str.14,@object               # @.str.14
	.p2align	3, 0x0
.L.str.14:
	.asciz	"1 (yes)"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"mv_overlap_comm_comp"
	.size	.L.str.15, 21

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"0 (no)"
	.size	.L.str.16, 7

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.17:
	.asciz	"number of processors"
	.size	.L.str.17, 21

	.type	.L.str.20,@object               # @.str.20
	.p2align	3, 0x0
.L.str.20:
	.asciz	"unknown"
	.size	.L.str.20, 8

	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"kernel name"
	.size	.L.str.21, 12

	.type	.L.str.22,@object               # @.str.22
	.p2align	3, 0x0
.L.str.22:
	.asciz	"kernel release"
	.size	.L.str.22, 15

	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"processor"
	.size	.L.str.23, 10

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"Build"
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"CXX"
	.size	.L.str.25, 4

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.28:
	.asciz	"using MPI"
	.size	.L.str.28, 10

	.type	.L.str.29,@object               # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"-"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	", "
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.31:
	.asciz	"Run Date/Time"
	.size	.L.str.31, 14

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.32, 49

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.34:
	.asciz	"Matrix structure generation"
	.size	.L.str.34, 28

	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"Mat-struc-gen Time"
	.size	.L.str.35, 19

	.type	.L.str.36,@object               # @.str.36
	.p2align	3, 0x0
.L.str.36:
	.asciz	"FE assembly"
	.size	.L.str.36, 12

	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"FE assembly Time"
	.size	.L.str.37, 17

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"Starting CG solver ... "
	.size	.L.str.38, 24

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Final Resid Norm: "
	.size	.L.str.39, 19

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"verifying solution at ~ (0.5, 0.5, 0.5) ..."
	.size	.L.str.41, 44

	.type	.L.str.43,@object               # @.str.43
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.43:
	.asciz	"ScalarType"
	.size	.L.str.43, 11

	.type	.L.str.44,@object               # @.str.44
	.p2align	3, 0x0
.L.str.44:
	.asciz	"GlobalOrdinalType"
	.size	.L.str.44, 18

	.type	.L.str.45,@object               # @.str.45
	.p2align	3, 0x0
.L.str.45:
	.asciz	"LocalOrdinalType"
	.size	.L.str.45, 17

	.type	.L.str.46,@object               # @.str.46
	.p2align	3, 0x0
.L.str.46:
	.asciz	"Iterations"
	.size	.L.str.46, 11

	.type	.L.str.47,@object               # @.str.47
	.p2align	3, 0x0
.L.str.47:
	.asciz	"Final Resid Norm"
	.size	.L.str.47, 17

	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"WAXPY Time"
	.size	.L.str.48, 11

	.type	.L.str.49,@object               # @.str.49
	.p2align	3, 0x0
.L.str.49:
	.asciz	"WAXPY Flops"
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
	.p2align	3, 0x0
.L.str.50:
	.asciz	"WAXPY Mflops"
	.size	.L.str.50, 13

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"inf"
	.size	.L.str.51, 4

	.type	.L.str.53,@object               # @.str.53
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.53:
	.asciz	"DOT Flops"
	.size	.L.str.53, 10

	.type	.L.str.54,@object               # @.str.54
	.p2align	3, 0x0
.L.str.54:
	.asciz	"DOT Mflops"
	.size	.L.str.54, 11

	.type	.L.str.55,@object               # @.str.55
	.p2align	3, 0x0
.L.str.55:
	.asciz	"MATVEC Time"
	.size	.L.str.55, 12

	.type	.L.str.56,@object               # @.str.56
	.p2align	3, 0x0
.L.str.56:
	.asciz	"MATVEC Flops"
	.size	.L.str.56, 13

	.type	.L.str.57,@object               # @.str.57
	.p2align	3, 0x0
.L.str.57:
	.asciz	"MATVEC Mflops"
	.size	.L.str.57, 14

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"Total"
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.59:
	.asciz	"Total CG Time"
	.size	.L.str.59, 14

	.type	.L.str.60,@object               # @.str.60
	.p2align	3, 0x0
.L.str.60:
	.asciz	"Total CG Flops"
	.size	.L.str.60, 15

	.type	.L.str.61,@object               # @.str.61
	.p2align	3, 0x0
.L.str.61:
	.asciz	"Total CG Mflops"
	.size	.L.str.61, 16

	.type	.L.str.62,@object               # @.str.62
	.p2align	3, 0x0
.L.str.62:
	.asciz	"Time per iteration"
	.size	.L.str.62, 19

	.type	.L.str.63,@object               # @.str.63
	.p2align	3, 0x0
.L.str.63:
	.asciz	"Rows-per-proc Load Imbalance"
	.size	.L.str.63, 29

	.type	.L.str.64,@object               # @.str.64
	.p2align	3, 0x0
.L.str.64:
	.asciz	"Largest (from avg, %)"
	.size	.L.str.64, 22

	.type	.L.str.65,@object               # @.str.65
	.p2align	3, 0x0
.L.str.65:
	.asciz	"Std Dev (%)"
	.size	.L.str.65, 12

	.type	.L.str.66,@object               # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"on the y==0 face (ix="
	.size	.L.str.66, 22

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	", iz="
	.size	.L.str.67, 6

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"), ERROR: found negative row ("
	.size	.L.str.68, 31

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	") for nodeID="
	.size	.L.str.69, 14

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"vector::reserve"
	.size	.L.str.70, 16

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.71, 26

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"ERROR, failed to map id to row."
	.size	.L.str.72, 32

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"ERROR, id:"
	.size	.L.str.73, 11

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	", ids_to_rows.begin(): "
	.size	.L.str.74, 24

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"ERROR, negative offset in find_row_for_id for id="
	.size	.L.str.75, 50

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"One of A.rows.resize, A.row_offsets.resize, A.packed_cols.reserve or A.packed_coefs.reserve: nrows="
	.size	.L.str.76, 100

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	": "
	.size	.L.str.77, 3

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"ERROR in generate_matrix_structure, roffset != nrows."
	.size	.L.str.78, 54

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"proc "
	.size	.L.str.79, 6

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	" threw an exception in generate_matrix_structure, probably due to running out of memory."
	.size	.L.str.80, 89

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"vector::_M_default_append"
	.size	.L.str.81, 26

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"Warning, packed_cols.capacity ("
	.size	.L.str.82, 32

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	") != "
	.size	.L.str.83, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"packed_coefs.capacity ("
	.size	.L.str.84, 24

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	")"
	.size	.L.str.85, 2

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	") <  nnz ("
	.size	.L.str.86, 11

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"mesh->map_id_to_row produced col="
	.size	.L.str.87, 34

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	" from col_id="
	.size	.L.str.88, 14

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	", but global_nrows="
	.size	.L.str.89, 20

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	", max_row_in_map="
	.size	.L.str.90, 18

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	", proc="
	.size	.L.str.91, 8

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"get_elem_nodes_and_coords ERROR, negative elemID"
	.size	.L.str.92, 49

	.type	.L.str.93,@object               # @.str.93
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.93:
	.asciz	"Matrix attributes"
	.size	.L.str.93, 18

	.type	.L.str.94,@object               # @.str.94
	.p2align	3, 0x0
.L.str.94:
	.asciz	"Global Nrows"
	.size	.L.str.94, 13

	.type	.L.str.95,@object               # @.str.95
	.p2align	3, 0x0
.L.str.95:
	.asciz	"Global NNZ"
	.size	.L.str.95, 11

	.type	.L.str.96,@object               # @.str.96
	.p2align	3, 0x0
.L.str.96:
	.asciz	"Global Memory (GB)"
	.size	.L.str.96, 19

	.type	.L.str.97,@object               # @.str.97
	.p2align	3, 0x0
.L.str.97:
	.asciz	"Pll Memory Overhead (MB)"
	.size	.L.str.97, 25

	.type	.L.str.98,@object               # @.str.98
	.p2align	3, 0x0
.L.str.98:
	.asciz	"Rows per proc MIN"
	.size	.L.str.98, 18

	.type	.L.str.99,@object               # @.str.99
	.p2align	3, 0x0
.L.str.99:
	.asciz	"Rows per proc MAX"
	.size	.L.str.99, 18

	.type	.L.str.100,@object              # @.str.100
	.p2align	3, 0x0
.L.str.100:
	.asciz	"Rows per proc AVG"
	.size	.L.str.100, 18

	.type	.L.str.101,@object              # @.str.101
	.p2align	3, 0x0
.L.str.101:
	.asciz	"NNZ per proc MIN"
	.size	.L.str.101, 17

	.type	.L.str.102,@object              # @.str.102
	.p2align	3, 0x0
.L.str.102:
	.asciz	"NNZ per proc MAX"
	.size	.L.str.102, 17

	.type	.L.str.103,@object              # @.str.103
	.p2align	3, 0x0
.L.str.103:
	.asciz	"NNZ per proc AVG"
	.size	.L.str.103, 17

	.type	.L.str.104,@object              # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"miniFE::cg_solve ERROR, A.has_local_indices is false, needs to be true. This probably means "
	.size	.L.str.104, 93

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"miniFE::make_local_matrix(A) was not called prior to calling miniFE::cg_solve."
	.size	.L.str.105, 79

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"Initial Residual = "
	.size	.L.str.106, 20

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"Iteration = "
	.size	.L.str.107, 13

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"   Residual = "
	.size	.L.str.108, 15

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"miniFE::cg_solve ERROR, numerical breakdown!"
	.size	.L.str.109, 45

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"max absolute error is "
	.size	.L.str.110, 23

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	":"
	.size	.L.str.111, 2

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"   at position ("
	.size	.L.str.112, 17

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	","
	.size	.L.str.113, 2

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"), "
	.size	.L.str.114, 4

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"   computed solution: "
	.size	.L.str.115, 23

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	",  analytic solution: "
	.size	.L.str.116, 23

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"solution matches analytic solution to within "
	.size	.L.str.117, 46

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	" or better."
	.size	.L.str.118, 12

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"double"
	.size	.L.str.119, 7

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"int"
	.size	.L.str.120, 4

	.data
	.p2align	3, 0x0
.L_ZTISt9exception.DW.stub:
	.dword	_ZTISt9exception
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
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZTISt13runtime_error
	.addrsig_sym _ZSt4cerr
