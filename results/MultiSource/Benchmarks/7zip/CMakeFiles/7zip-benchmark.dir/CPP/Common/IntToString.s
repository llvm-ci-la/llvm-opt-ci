	.file	"IntToString.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z21ConvertUInt64ToStringyPcj
.LCPI0_0:
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
	.byte	0                               # 0x0
	.text
	.globl	_Z21ConvertUInt64ToStringyPcj
	.p2align	5
	.type	_Z21ConvertUInt64ToStringyPcj,@function
_Z21ConvertUInt64ToStringyPcj:          # @_Z21ConvertUInt64ToStringyPcj
# %bb.0:
	addi.w	$a3, $a2, -37
	addi.w	$a4, $zero, -36
	bltu	$a4, $a3, .LBB0_2
# %bb.1:
	st.b	$zero, $a1, 0
	ret
.LBB0_2:
	addi.d	$sp, $sp, -80
	move	$a4, $zero
	addi.d	$a3, $sp, 8
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	move	$a5, $a0
	div.du	$a0, $a0, $a2
	mul.d	$a6, $a0, $a2
	sub.d	$a6, $a5, $a6
	sltui	$a7, $a6, 10
	ori	$t0, $a6, 48
	addi.d	$a6, $a6, 87
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $t0, $a7
	or	$a6, $a7, $a6
	st.b	$a6, $a3, 0
	addi.w	$a4, $a4, 1
	addi.d	$a3, $a3, 1
	bgeu	$a5, $a2, .LBB0_3
# %bb.4:                                # %.preheader.preheader
	ori	$a2, $zero, 16
	ori	$a0, $zero, 1
	bge	$a4, $a2, .LBB0_6
# %bb.5:
	move	$a2, $a4
	move	$a3, $a1
	b	.LBB0_9
.LBB0_6:                                # %vector.ph
	slt	$a2, $a0, $a4
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a4, $a2
	or	$a5, $a2, $a3
	bstrpick.d	$a3, $a5, 30, 4
	slli.d	$a6, $a3, 4
	sub.d	$a2, $a4, $a6
	alsl.d	$a3, $a3, $a1, 4
	pcalau12i	$a7, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_0)
	addi.d	$a7, $sp, 8
	add.d	$a4, $a7, $a4
	addi.d	$a4, $a4, -16
	move	$a7, $a6
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vst	$vr1, $a1, 0
	addi.d	$a4, $a4, -16
	addi.d	$a7, $a7, -16
	addi.d	$a1, $a1, 16
	bnez	$a7, .LBB0_7
# %bb.8:                                # %middle.block
	beq	$a5, $a6, .LBB0_11
.LBB0_9:                                # %.preheader.preheader29
	addi.d	$a1, $sp, 7
	move	$a4, $a3
	.p2align	4, , 16
.LBB0_10:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	ldx.b	$a6, $a1, $a2
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a4, 1
	st.b	$a6, $a4, 0
	move	$a4, $a3
	blt	$a0, $a5, .LBB0_10
.LBB0_11:                               # %.loopexit
	st.b	$zero, $a3, 0
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	_Z21ConvertUInt64ToStringyPcj, .Lfunc_end0-_Z21ConvertUInt64ToStringyPcj
                                        # -- End function
	.globl	_Z21ConvertUInt64ToStringyPw    # -- Begin function _Z21ConvertUInt64ToStringyPw
	.p2align	5
	.type	_Z21ConvertUInt64ToStringyPw,@function
_Z21ConvertUInt64ToStringyPw:           # @_Z21ConvertUInt64ToStringyPw
# %bb.0:
	addi.d	$sp, $sp, -144
	move	$a3, $zero
	addi.d	$a2, $sp, 16
	lu12i.w	$a4, -209716
	ori	$a4, $a4, 3277
	lu32i.d	$a4, -209716
	lu52i.d	$a4, $a4, -820
	ori	$a5, $zero, 9
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	move	$a6, $a0
	mulh.du	$a7, $a0, $a4
	srli.d	$a0, $a7, 3
	bstrpick.d	$a7, $a7, 31, 3
	slli.d	$a7, $a7, 3
	alsl.d	$a7, $a0, $a7, 1
	sub.d	$a7, $a6, $a7
	ori	$a7, $a7, 48
	st.w	$a7, $a2, 0
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	bltu	$a5, $a6, .LBB1_1
# %bb.2:                                # %.preheader.preheader
	ori	$a2, $zero, 8
	ori	$a0, $zero, 1
	bge	$a3, $a2, .LBB1_4
# %bb.3:
	move	$a4, $a3
	move	$a2, $a1
	b	.LBB1_7
.LBB1_4:                                # %vector.ph
	slt	$a2, $a0, $a3
	masknez	$a4, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a5, $a2, $a4
	bstrpick.d	$a2, $a5, 30, 3
	slli.d	$a6, $a2, 3
	sub.d	$a4, $a3, $a6
	slli.d	$a2, $a2, 5
	add.d	$a2, $a1, $a2
	addi.d	$a7, $sp, 16
	alsl.d	$a3, $a3, $a7, 2
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 16
	move	$a7, $a6
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vshuf4i.w	$vr0, $vr0, 27
	vshuf4i.w	$vr1, $vr1, 27
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -32
	addi.d	$a7, $a7, -8
	addi.d	$a1, $a1, 32
	bnez	$a7, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a5, $a6, .LBB1_9
.LBB1_7:                                # %.preheader.preheader19
	addi.d	$a1, $a4, 1
	addi.d	$a3, $sp, 16
	alsl.d	$a3, $a4, $a3, 2
	addi.d	$a3, $a3, -4
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_8:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	addi.d	$a2, $a4, 4
	st.w	$a5, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -4
	move	$a4, $a2
	blt	$a0, $a1, .LBB1_8
.LBB1_9:                                # %.loopexit
	st.w	$zero, $a2, 0
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end1:
	.size	_Z21ConvertUInt64ToStringyPw, .Lfunc_end1-_Z21ConvertUInt64ToStringyPw
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z21ConvertUInt32ToStringjPc
.LCPI2_0:
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
	.byte	0                               # 0x0
	.text
	.globl	_Z21ConvertUInt32ToStringjPc
	.p2align	5
	.type	_Z21ConvertUInt32ToStringjPc,@function
_Z21ConvertUInt32ToStringjPc:           # @_Z21ConvertUInt32ToStringjPc
# %bb.0:
	addi.d	$sp, $sp, -80
	move	$a4, $zero
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $sp, 8
	lu12i.w	$a3, -209716
	ori	$a3, $a3, 3277
	lu32i.d	$a3, -209716
	lu52i.d	$a3, $a3, -820
	ori	$a5, $zero, 9
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	move	$a6, $a2
	mulh.du	$a7, $a2, $a3
	srli.d	$a2, $a7, 3
	andi	$a7, $a7, 248
	alsl.d	$a7, $a2, $a7, 1
	sub.d	$a7, $a6, $a7
	ori	$a7, $a7, 48
	st.b	$a7, $a0, 0
	addi.w	$a4, $a4, 1
	addi.d	$a0, $a0, 1
	bltu	$a5, $a6, .LBB2_1
# %bb.2:                                # %.preheader.preheader.i
	ori	$a2, $zero, 16
	ori	$a0, $zero, 1
	bge	$a4, $a2, .LBB2_4
# %bb.3:
	move	$a2, $a4
	move	$a3, $a1
	b	.LBB2_7
.LBB2_4:                                # %vector.ph
	slt	$a2, $a0, $a4
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a4, $a2
	or	$a5, $a2, $a3
	bstrpick.d	$a3, $a5, 30, 4
	slli.d	$a6, $a3, 4
	sub.d	$a2, $a4, $a6
	alsl.d	$a3, $a3, $a1, 4
	pcalau12i	$a7, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI2_0)
	addi.d	$a7, $sp, 8
	add.d	$a4, $a7, $a4
	addi.d	$a4, $a4, -16
	move	$a7, $a6
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vst	$vr1, $a1, 0
	addi.d	$a4, $a4, -16
	addi.d	$a7, $a7, -16
	addi.d	$a1, $a1, 16
	bnez	$a7, .LBB2_5
# %bb.6:                                # %middle.block
	beq	$a5, $a6, .LBB2_9
.LBB2_7:                                # %.preheader.i.preheader
	addi.d	$a1, $sp, 7
	move	$a4, $a3
	.p2align	4, , 16
.LBB2_8:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	ldx.b	$a6, $a1, $a2
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a4, 1
	st.b	$a6, $a4, 0
	move	$a4, $a3
	blt	$a0, $a5, .LBB2_8
.LBB2_9:                                # %_Z21ConvertUInt64ToStringyPcj.exit
	st.b	$zero, $a3, 0
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	_Z21ConvertUInt32ToStringjPc, .Lfunc_end2-_Z21ConvertUInt32ToStringjPc
                                        # -- End function
	.globl	_Z21ConvertUInt32ToStringjPw    # -- Begin function _Z21ConvertUInt32ToStringjPw
	.p2align	5
	.type	_Z21ConvertUInt32ToStringjPw,@function
_Z21ConvertUInt32ToStringjPw:           # @_Z21ConvertUInt32ToStringjPw
# %bb.0:
	addi.d	$sp, $sp, -144
	move	$a3, $zero
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $sp, 16
	lu12i.w	$a4, -209716
	ori	$a4, $a4, 3277
	lu32i.d	$a4, -209716
	lu52i.d	$a4, $a4, -820
	ori	$a5, $zero, 9
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	move	$a6, $a2
	mulh.du	$a7, $a2, $a4
	srli.d	$a2, $a7, 3
	bstrpick.d	$a7, $a7, 31, 3
	slli.d	$a7, $a7, 3
	alsl.d	$a7, $a2, $a7, 1
	sub.d	$a7, $a6, $a7
	ori	$a7, $a7, 48
	st.w	$a7, $a0, 0
	addi.w	$a3, $a3, 1
	addi.d	$a0, $a0, 4
	bltu	$a5, $a6, .LBB3_1
# %bb.2:                                # %.preheader.preheader.i
	ori	$a2, $zero, 8
	ori	$a0, $zero, 1
	bge	$a3, $a2, .LBB3_4
# %bb.3:
	move	$a4, $a3
	move	$a2, $a1
	b	.LBB3_7
.LBB3_4:                                # %vector.ph
	slt	$a2, $a0, $a3
	masknez	$a4, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a5, $a2, $a4
	bstrpick.d	$a2, $a5, 30, 3
	slli.d	$a6, $a2, 3
	sub.d	$a4, $a3, $a6
	slli.d	$a2, $a2, 5
	add.d	$a2, $a1, $a2
	addi.d	$a7, $sp, 16
	alsl.d	$a3, $a3, $a7, 2
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 16
	move	$a7, $a6
	.p2align	4, , 16
.LBB3_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vshuf4i.w	$vr0, $vr0, 27
	vshuf4i.w	$vr1, $vr1, 27
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -32
	addi.d	$a7, $a7, -8
	addi.d	$a1, $a1, 32
	bnez	$a7, .LBB3_5
# %bb.6:                                # %middle.block
	beq	$a5, $a6, .LBB3_9
.LBB3_7:                                # %.preheader.i.preheader
	addi.d	$a1, $a4, 1
	addi.d	$a3, $sp, 16
	alsl.d	$a3, $a4, $a3, 2
	addi.d	$a3, $a3, -4
	move	$a4, $a2
	.p2align	4, , 16
.LBB3_8:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	addi.d	$a2, $a4, 4
	st.w	$a5, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -4
	move	$a4, $a2
	blt	$a0, $a1, .LBB3_8
.LBB3_9:                                # %_Z21ConvertUInt64ToStringyPw.exit
	st.w	$zero, $a2, 0
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end3:
	.size	_Z21ConvertUInt32ToStringjPw, .Lfunc_end3-_Z21ConvertUInt32ToStringjPw
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z20ConvertInt64ToStringxPc
.LCPI4_0:
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
	.byte	0                               # 0x0
	.text
	.globl	_Z20ConvertInt64ToStringxPc
	.p2align	5
	.type	_Z20ConvertInt64ToStringxPc,@function
_Z20ConvertInt64ToStringxPc:            # @_Z20ConvertInt64ToStringxPc
# %bb.0:
	bgez	$a0, .LBB4_2
# %bb.1:
	ori	$a2, $zero, 45
	st.b	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	sub.d	$a0, $zero, $a0
.LBB4_2:
	addi.d	$sp, $sp, -80
	move	$a4, $zero
	addi.d	$a2, $sp, 8
	lu12i.w	$a3, -209716
	ori	$a3, $a3, 3277
	lu32i.d	$a3, -209716
	lu52i.d	$a3, $a3, -820
	ori	$a5, $zero, 9
	.p2align	4, , 16
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	move	$a6, $a0
	mulh.du	$a7, $a0, $a3
	srli.d	$a0, $a7, 3
	andi	$a7, $a7, 248
	alsl.d	$a7, $a0, $a7, 1
	sub.d	$a7, $a6, $a7
	ori	$a7, $a7, 48
	st.b	$a7, $a2, 0
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 1
	bltu	$a5, $a6, .LBB4_3
# %bb.4:                                # %.preheader.preheader.i
	ori	$a2, $zero, 16
	ori	$a0, $zero, 1
	bge	$a4, $a2, .LBB4_6
# %bb.5:
	move	$a2, $a4
	move	$a3, $a1
	b	.LBB4_9
.LBB4_6:                                # %vector.ph
	slt	$a2, $a0, $a4
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a4, $a2
	or	$a5, $a2, $a3
	bstrpick.d	$a3, $a5, 30, 4
	slli.d	$a6, $a3, 4
	sub.d	$a2, $a4, $a6
	alsl.d	$a3, $a3, $a1, 4
	pcalau12i	$a7, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI4_0)
	addi.d	$a7, $sp, 8
	add.d	$a4, $a7, $a4
	addi.d	$a4, $a4, -16
	move	$a7, $a6
	.p2align	4, , 16
.LBB4_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vst	$vr1, $a1, 0
	addi.d	$a4, $a4, -16
	addi.d	$a7, $a7, -16
	addi.d	$a1, $a1, 16
	bnez	$a7, .LBB4_7
# %bb.8:                                # %middle.block
	beq	$a5, $a6, .LBB4_11
.LBB4_9:                                # %.preheader.i.preheader
	addi.d	$a1, $sp, 7
	move	$a4, $a3
	.p2align	4, , 16
.LBB4_10:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	ldx.b	$a6, $a1, $a2
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a4, 1
	st.b	$a6, $a4, 0
	move	$a4, $a3
	blt	$a0, $a5, .LBB4_10
.LBB4_11:                               # %_Z21ConvertUInt64ToStringyPcj.exit
	st.b	$zero, $a3, 0
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	_Z20ConvertInt64ToStringxPc, .Lfunc_end4-_Z20ConvertInt64ToStringxPc
                                        # -- End function
	.globl	_Z20ConvertInt64ToStringxPw     # -- Begin function _Z20ConvertInt64ToStringxPw
	.p2align	5
	.type	_Z20ConvertInt64ToStringxPw,@function
_Z20ConvertInt64ToStringxPw:            # @_Z20ConvertInt64ToStringxPw
# %bb.0:
	bgez	$a0, .LBB5_2
# %bb.1:
	ori	$a2, $zero, 45
	st.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	sub.d	$a0, $zero, $a0
.LBB5_2:
	addi.d	$sp, $sp, -144
	move	$a3, $zero
	addi.d	$a2, $sp, 16
	lu12i.w	$a4, -209716
	ori	$a4, $a4, 3277
	lu32i.d	$a4, -209716
	lu52i.d	$a4, $a4, -820
	ori	$a5, $zero, 9
	.p2align	4, , 16
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	move	$a6, $a0
	mulh.du	$a7, $a0, $a4
	srli.d	$a0, $a7, 3
	bstrpick.d	$a7, $a7, 31, 3
	slli.d	$a7, $a7, 3
	alsl.d	$a7, $a0, $a7, 1
	sub.d	$a7, $a6, $a7
	ori	$a7, $a7, 48
	st.w	$a7, $a2, 0
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	bltu	$a5, $a6, .LBB5_3
# %bb.4:                                # %.preheader.preheader.i
	ori	$a2, $zero, 8
	ori	$a0, $zero, 1
	bge	$a3, $a2, .LBB5_6
# %bb.5:
	move	$a4, $a3
	move	$a2, $a1
	b	.LBB5_9
.LBB5_6:                                # %vector.ph
	slt	$a2, $a0, $a3
	masknez	$a4, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a5, $a2, $a4
	bstrpick.d	$a2, $a5, 30, 3
	slli.d	$a6, $a2, 3
	sub.d	$a4, $a3, $a6
	slli.d	$a2, $a2, 5
	add.d	$a2, $a1, $a2
	addi.d	$a7, $sp, 16
	alsl.d	$a3, $a3, $a7, 2
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 16
	move	$a7, $a6
	.p2align	4, , 16
.LBB5_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vshuf4i.w	$vr0, $vr0, 27
	vshuf4i.w	$vr1, $vr1, 27
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -32
	addi.d	$a7, $a7, -8
	addi.d	$a1, $a1, 32
	bnez	$a7, .LBB5_7
# %bb.8:                                # %middle.block
	beq	$a5, $a6, .LBB5_11
.LBB5_9:                                # %.preheader.i.preheader
	addi.d	$a1, $a4, 1
	addi.d	$a3, $sp, 16
	alsl.d	$a3, $a4, $a3, 2
	addi.d	$a3, $a3, -4
	move	$a4, $a2
	.p2align	4, , 16
.LBB5_10:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	addi.d	$a2, $a4, 4
	st.w	$a5, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -4
	move	$a4, $a2
	blt	$a0, $a1, .LBB5_10
.LBB5_11:                               # %_Z21ConvertUInt64ToStringyPw.exit
	st.w	$zero, $a2, 0
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end5:
	.size	_Z20ConvertInt64ToStringxPw, .Lfunc_end5-_Z20ConvertInt64ToStringxPw
                                        # -- End function
	.globl	_Z27ConvertUInt32ToHexWithZerosjPc # -- Begin function _Z27ConvertUInt32ToHexWithZerosjPc
	.p2align	5
	.type	_Z27ConvertUInt32ToHexWithZerosjPc,@function
_Z27ConvertUInt32ToHexWithZerosjPc:     # @_Z27ConvertUInt32ToHexWithZerosjPc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	andi	$a6, $a0, 15
	srli.d	$a3, $a0, 4
	sltui	$a7, $a6, 10
	ori	$a2, $zero, 3
	bstrpick.d	$t1, $a0, 7, 4
	srli.d	$a4, $a0, 8
	bstrpick.d	$t3, $a0, 11, 8
	srli.d	$a5, $a0, 12
	bstrpick.d	$t5, $a0, 15, 12
	srli.d	$t0, $a0, 16
	bstrpick.d	$t6, $a0, 19, 16
	srli.d	$t2, $a0, 20
	bstrpick.d	$t8, $a0, 23, 20
	srli.d	$t4, $a0, 24
	bstrpick.d	$fp, $a0, 27, 24
	bstrpick.d	$t7, $a0, 31, 28
	bstrpick.d	$s0, $a0, 31, 29
	bstrins.d	$a0, $a2, 63, 4
	addi.d	$a6, $a6, 55
	masknez	$a6, $a6, $a7
	maskeqz	$a0, $a0, $a7
	or	$a0, $a0, $a6
	st.b	$a0, $a1, 7
	sltui	$a0, $t1, 10
	bstrins.d	$a3, $a2, 63, 4
	addi.d	$a6, $t1, 55
	masknez	$a6, $a6, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a6
	st.b	$a0, $a1, 6
	sltui	$a0, $t3, 10
	bstrins.d	$a4, $a2, 63, 4
	addi.d	$a3, $t3, 55
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	st.b	$a0, $a1, 5
	sltui	$a0, $t5, 10
	bstrins.d	$a5, $a2, 63, 4
	addi.d	$a3, $t5, 55
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a3
	st.b	$a0, $a1, 4
	sltui	$a0, $t6, 10
	bstrins.d	$t0, $a2, 63, 4
	addi.d	$a3, $t6, 55
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $t0, $a0
	or	$a0, $a0, $a3
	st.b	$a0, $a1, 3
	sltui	$a0, $t8, 10
	bstrins.d	$t2, $a2, 63, 4
	addi.d	$a3, $t8, 55
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $t2, $a0
	or	$a0, $a0, $a3
	st.b	$a0, $a1, 2
	sltui	$a0, $fp, 10
	bstrins.d	$t4, $a2, 63, 4
	addi.d	$a2, $fp, 55
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $t4, $a0
	or	$a0, $a0, $a2
	st.b	$a0, $a1, 1
	sltui	$a0, $s0, 5
	ori	$a2, $t7, 48
	addi.d	$a3, $t7, 55
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a3
	st.b	$a0, $a1, 0
	st.b	$zero, $a1, 8
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	_Z27ConvertUInt32ToHexWithZerosjPc, .Lfunc_end6-_Z27ConvertUInt32ToHexWithZerosjPc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
