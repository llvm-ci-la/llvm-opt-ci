	.file	"ALACEncoder.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN11ALACEncoderC2Ev
.LCPI0_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4096                            # 0x1000
	.text
	.globl	_ZN11ALACEncoderC2Ev
	.p2align	5
	.type	_ZN11ALACEncoderC2Ev,@function
_ZN11ALACEncoderC2Ev:                   # @_ZN11ALACEncoderC2Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV11ALACEncoder+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV11ALACEncoder+16)
	st.d	$a1, $a0, 0
	st.h	$zero, $a0, 8
	st.b	$zero, $a0, 10
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 48
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_0)
	vst	$vr0, $a0, 64
	lu12i.w	$a1, 2
	ori	$a1, $a1, 80
	vstx	$vr1, $a0, $a1
	ret
.Lfunc_end0:
	.size	_ZN11ALACEncoderC2Ev, .Lfunc_end0-_ZN11ALACEncoderC2Ev
                                        # -- End function
	.globl	_ZN11ALACEncoderD2Ev            # -- Begin function _ZN11ALACEncoderD2Ev
	.p2align	5
	.type	_ZN11ALACEncoderD2Ev,@function
_ZN11ALACEncoderD2Ev:                   # @_ZN11ALACEncoderD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV11ALACEncoder+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV11ALACEncoder+16)
	ld.d	$a0, $fp, 32
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB1_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 32
.LBB1_2:
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB1_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB1_4:
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB1_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB1_6:
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB1_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 56
.LBB1_8:
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB1_10
# %bb.9:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 64
.LBB1_10:
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB1_12
# %bb.11:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
.LBB1_12:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN11ALACEncoderD2Ev, .Lfunc_end1-_ZN11ALACEncoderD2Ev
                                        # -- End function
	.globl	_ZN11ALACEncoderD0Ev            # -- Begin function _ZN11ALACEncoderD0Ev
	.p2align	5
	.type	_ZN11ALACEncoderD0Ev,@function
_ZN11ALACEncoderD0Ev:                   # @_ZN11ALACEncoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN11ALACEncoderD2Ev)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a1, $a0, 112
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end2:
	.size	_ZN11ALACEncoderD0Ev, .Lfunc_end2-_ZN11ALACEncoderD0Ev
                                        # -- End function
	.globl	_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj # -- Begin function _ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj
	.p2align	5
	.type	_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj,@function
_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj: # @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj
	.cfi_startproc
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
	move	$s0, $a0
	ld.d	$a0, $a1, 16
	vld	$vr0, $a1, 0
	ld.h	$a7, $s0, 8
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 184
	vst	$vr0, $sp, 168
	addi.d	$a0, $a7, -16
	bstrpick.d	$a2, $a0, 15, 2
	slli.d	$a0, $a0, 14
	or	$a0, $a0, $a2
	bstrpick.d	$a3, $a0, 15, 0
	ori	$a2, $zero, 4
	addi.w	$a0, $zero, -50
	bltu	$a2, $a3, .LBB3_39
# %bb.1:
	ori	$a2, $zero, 3
	beq	$a3, $a2, .LBB3_39
# %bb.2:
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $zero
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a1, $a0, 9
	add.d	$a1, $s0, $a1
	addi.d	$a2, $a1, 80
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a2, 1
	ori	$a3, $a2, 80
	add.d	$a3, $a1, $a3
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a3, $a7, -32
	sltui	$a3, $a3, 1
	ori	$a4, $zero, 23
	slt	$a4, $a4, $a7
	masknez	$a4, $a4, $a3
	ori	$a6, $zero, 2
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a3, $a3, 3
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	sub.d	$a3, $a7, $a3
	addi.d	$s4, $a3, 1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 92
	ldx.w	$a3, $s0, $a3
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s0, 1
	addi.d	$a3, $a0, 12
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.hu	$s6, $a0, 12
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 31, 3
	addi.d	$s2, $a1, 304
	ori	$a2, $a2, 304
	add.d	$s3, $a1, $a2
	lu12i.w	$s7, -524288
	ori	$s8, $zero, 4
	addi.w	$s5, $a0, 0
	ori	$fp, $zero, 5
	.p2align	4, , 16
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $s0, 8
	addi.d	$a0, $a0, -16
	rotri.w	$a0, $a0, 2
	bltu	$s8, $a0, .LBB3_9
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ori	$a5, $zero, 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s5
	move	$a6, $s1
	pcaddu18i	$ra, %call36(mix16)
	jirl	$ra, $ra, 0
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_6:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ld.d	$a7, $s0, 64
	ori	$a5, $zero, 2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s5
	move	$a6, $s1
	pcaddu18i	$ra, %call36(mix24)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_7:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ori	$a5, $zero, 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s5
	move	$a6, $s1
	pcaddu18i	$ra, %call36(mix20)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_8:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ld.d	$a7, $s0, 64
	ori	$a5, $zero, 2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s5
	move	$a6, $s1
	pcaddu18i	$ra, %call36(mix32)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_9:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a1, $s0, 72
	ldptr.w	$a2, $s0, 8288
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(BitBufferInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s5
	move	$a3, $s2
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s5
	move	$a3, $s3
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 132
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s5
	move	$a5, $s5
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	addi.d	$a0, $sp, 132
	addi.d	$a2, $sp, 192
	addi.d	$a5, $sp, 128
	move	$a3, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_39
# %bb.10:                               #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a0, $sp, 132
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s5
	move	$a5, $s5
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	addi.d	$a0, $sp, 132
	addi.d	$a2, $sp, 192
	addi.d	$a5, $sp, 124
	move	$a3, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_39
# %bb.11:                               #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a0, $sp, 128
	ld.w	$a1, $sp, 124
	add.w	$a0, $a1, $a0
	sltu	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a2, $s7, $a1
	or	$s7, $a0, $a2
	masknez	$a0, $s6, $a1
	maskeqz	$a1, $s1, $a1
	addi.w	$s1, $s1, 1
	or	$s6, $a1, $a0
	bne	$s1, $fp, .LBB3_3
# %bb.12:
	ld.h	$a0, $s0, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.h	$s6, $a1, 0
	addi.d	$a0, $a0, -16
	rotri.w	$a0, $a0, 2
	ori	$s8, $zero, 4
	ext.w.h	$s1, $s6
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	bltu	$s8, $a0, .LBB3_18
# %bb.13:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_14:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ori	$a5, $zero, 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $fp
	move	$a6, $s1
	pcaddu18i	$ra, %call36(mix16)
	jirl	$ra, $ra, 0
	b	.LBB3_18
.LBB3_15:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ld.d	$a7, $s0, 64
	ori	$a5, $zero, 2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $fp
	move	$a6, $s1
	pcaddu18i	$ra, %call36(mix24)
	jirl	$ra, $ra, 0
	b	.LBB3_18
.LBB3_16:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ori	$a5, $zero, 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $fp
	move	$a6, $s1
	pcaddu18i	$ra, %call36(mix20)
	jirl	$ra, $ra, 0
	b	.LBB3_18
.LBB3_17:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ld.d	$a7, $s0, 64
	ori	$a5, $zero, 2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $fp
	move	$a6, $s1
	pcaddu18i	$ra, %call36(mix32)
	jirl	$ra, $ra, 0
.LBB3_18:
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $fp, 31, 5
	lu12i.w	$s6, -524288
	ori	$a1, $zero, 1
	addi.w	$s1, $a0, 0
	move	$fp, $s6
	ori	$s2, $zero, 4
	ori	$s7, $zero, 4
	.p2align	4, , 16
.LBB3_19:                               # =>This Inner Loop Header: Depth=1
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 72
	ldptr.w	$a2, $s0, 8288
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(BitBufferInit)
	jirl	$ra, $ra, 0
	slli.d	$a2, $s8, 5
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	addi.d	$a2, $a2, -32
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$s3, $a3, $a2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.d	$s2, $a3, $a2
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 132
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s5
	move	$a5, $s5
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	addi.d	$a0, $sp, 132
	addi.d	$a2, $sp, 192
	addi.d	$a5, $sp, 128
	move	$a3, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 128
	slli.d	$a0, $a0, 3
	alsl.w	$a0, $s8, $a0, 4
	sltu	$a1, $a0, $s6
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	maskeqz	$a3, $s8, $a1
	or	$s2, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$s6, $a0, $a1
	addi.d	$a0, $sp, 132
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s5
	move	$a5, $s5
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	addi.d	$a0, $sp, 132
	addi.d	$a2, $sp, 192
	addi.d	$a5, $sp, 124
	move	$a3, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 124
	slli.d	$a0, $a0, 3
	alsl.w	$a0, $s8, $a0, 4
	sltu	$a1, $a0, $fp
	masknez	$a2, $s7, $a1
	maskeqz	$a3, $s8, $a1
	or	$s7, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$fp, $a0, $a1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s8, $zero, 8
	move	$a1, $zero
	bnez	$a0, .LBB3_19
# %bb.20:
	move	$s1, $s2
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	xor	$a0, $s7, $s8
	sltu	$s2, $zero, $a0
	ori	$a0, $zero, 23
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	slt	$a0, $a0, $s5
	slli.d	$a1, $s2, 5
	slli.d	$s3, $s7, 1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a2, $s3, $a2
	addi.d	$a2, $a2, 64
	maskeqz	$a2, $a2, $a0
	ori	$a3, $zero, 64
	masknez	$a0, $a3, $a0
	or	$a0, $a2, $a0
	ld.h	$a2, $s0, 8
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $fp
	add.w	$a0, $a0, $s6
	mul.d	$a2, $s3, $a2
	add.d	$a1, $a2, $a1
	addi.w	$a1, $a1, 16
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB3_37
# %bb.21:
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ori	$a2, $zero, 12
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	or	$a1, $a0, $a1
	ori	$a2, $zero, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	beq	$s7, $s8, .LBB3_23
# %bb.22:
	ori	$a2, $zero, 32
	move	$a0, $s6
	move	$a1, $s7
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
.LBB3_23:
	ori	$a1, $zero, 2
	ori	$a2, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 8
	move	$a0, $s6
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	move	$fp, $s1
	ori	$a1, $s1, 128
	ori	$a2, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	beqz	$s1, .LBB3_26
# %bb.24:                               # %.lr.ph
	bstrpick.d	$fp, $fp, 31, 0
	slli.d	$a0, $fp, 5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$s2, $a0, -32
	.p2align	4, , 16
.LBB3_25:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $s2, 0
	ori	$a2, $zero, 16
	move	$a0, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 2
	bnez	$fp, .LBB3_25
.LBB3_26:                               # %._crit_edge
	ori	$a1, $zero, 9
	ori	$a2, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ori	$a1, $fp, 128
	ori	$a2, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_29
# %bb.27:                               # %.lr.ph309
	bstrpick.d	$fp, $fp, 31, 0
	slli.d	$a0, $fp, 5
	add.d	$a0, $s8, $a0
	addi.d	$s2, $a0, -32
	.p2align	4, , 16
.LBB3_28:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $s2, 0
	ori	$a2, $zero, 16
	move	$a0, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 2
	bnez	$fp, .LBB3_28
.LBB3_29:                               # %._crit_edge310
	addi.w	$a0, $s3, 0
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_33
# %bb.30:                               # %._crit_edge310
	ori	$a0, $zero, 24
	blt	$s5, $a0, .LBB3_33
# %bb.31:                               # %.lr.ph312
	move	$fp, $zero
	move	$s5, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$s2, $a0, 4
	bstrpick.d	$s3, $s3, 31, 0
	.p2align	4, , 16
.LBB3_32:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 64
	add.d	$a1, $a0, $fp
	ldx.hu	$a0, $a0, $fp
	ld.hu	$a1, $a1, 2
	sll.w	$a0, $a0, $s8
	or	$a1, $a0, $a1
	move	$a0, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 2
	addi.d	$fp, $fp, 4
	bltu	$s5, $s3, .LBB3_32
.LBB3_33:                               # %.loopexit
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	slli.d	$a2, $s1, 5
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	addi.d	$a3, $a2, -32
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a4, $s1
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 132
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s7
	move	$a5, $s7
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	addi.d	$a0, $sp, 132
	addi.d	$a5, $sp, 128
	move	$a2, $s6
	move	$a3, $s7
	move	$a4, $s4
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_39
# %bb.34:
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a2, $a4, 5
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	addi.d	$a3, $a2, -32
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 132
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s7
	move	$a5, $s7
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	addi.d	$a0, $sp, 132
	addi.d	$a5, $sp, 124
	move	$a2, $s6
	move	$a3, $s7
	move	$a4, $s4
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_39
# %bb.35:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(BitBufferGetPosition)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(BitBufferGetPosition)
	jirl	$ra, $ra, 0
	sub.w	$a1, $s2, $a0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB3_38
# %bb.36:
	ld.d	$a0, $sp, 184
	vld	$vr0, $sp, 168
	st.d	$a0, $s6, 16
	vst	$vr0, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_37:
	move	$a0, $s0
	move	$a1, $s6
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %.loopexit295
	move	$a0, $zero
.LBB3_39:                               # %.loopexit295
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
.Lfunc_end3:
	.size	_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj, .Lfunc_end3-_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_7-.LJTI3_0
	.word	.LBB3_6-.LJTI3_0
	.word	.LBB3_9-.LJTI3_0
	.word	.LBB3_8-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_14-.LJTI3_1
	.word	.LBB3_16-.LJTI3_1
	.word	.LBB3_15-.LJTI3_1
	.word	.LBB3_18-.LJTI3_1
	.word	.LBB3_17-.LJTI3_1
                                        # -- End function
	.text
	.globl	_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj # -- Begin function _ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj
	.p2align	5
	.type	_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj,@function
_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj: # @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a0
	ldptr.w	$s5, $a0, 8284
	move	$s3, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a1
	xor	$a0, $a4, $s5
	sltui	$s4, $a0, 1
	ori	$a2, $zero, 12
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	masknez	$a0, $a0, $s4
	ori	$a1, $zero, 1
	maskeqz	$a1, $a1, $s4
	or	$a1, $a1, $a0
	ori	$a2, $zero, 4
	ori	$s4, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	beq	$s3, $s5, .LBB4_2
# %bb.1:
	ori	$a2, $zero, 32
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
.LBB4_2:
	ld.h	$a0, $s0, 8
	addi.d	$a0, $a0, -16
	rotri.w	$a0, $a0, 2
	bltu	$s4, $a0, .LBB4_16
# %bb.3:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_4:                                # %.preheader
	mul.w	$s0, $s3, $s1
	beqz	$s0, .LBB4_16
# %bb.5:                                # %.lr.ph61.preheader
	move	$s3, $zero
	.p2align	4, , 16
.LBB4_6:                                # %.lr.ph61
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$a0, $a0, 1
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 1
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	add.w	$s3, $s3, $s1
	bltu	$s3, $s0, .LBB4_6
	b	.LBB4_16
.LBB4_7:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ld.d	$a7, $s0, 64
	st.d	$zero, $sp, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a4, $s3
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(mix24)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB4_16
# %bb.8:                                # %.lr.ph57.preheader
	move	$s1, $zero
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$s2, $a0, 2
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph57
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 32
	ldx.w	$a1, $a0, $s1
	ori	$a2, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ldx.w	$a1, $a0, $s1
	ori	$a2, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 4
	bne	$s2, $s1, .LBB4_9
	b	.LBB4_16
.LBB4_10:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	move	$a0, $s2
	move	$a1, $s1
	move	$a4, $s3
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(mix20)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB4_16
# %bb.11:                               # %.lr.ph59.preheader
	move	$s1, $zero
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$s2, $a0, 2
	.p2align	4, , 16
.LBB4_12:                               # %.lr.ph59
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 32
	ldx.w	$a1, $a0, $s1
	ori	$a2, $zero, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ldx.w	$a1, $a0, $s1
	ori	$a2, $zero, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 4
	bne	$s2, $s1, .LBB4_12
	b	.LBB4_16
.LBB4_13:                               # %.preheader53
	mul.w	$s0, $s3, $s1
	beqz	$s0, .LBB4_16
# %bb.14:                               # %.lr.ph.preheader
	move	$s3, $zero
	.p2align	4, , 16
.LBB4_15:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s2, $a0
	ori	$a2, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s2, $a0
	ori	$a2, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	add.w	$s3, $s3, $s1
	bltu	$s3, $s0, .LBB4_15
.LBB4_16:                               # %.loopexit
	move	$a0, $zero
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
.Lfunc_end4:
	.size	_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj, .Lfunc_end4-_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_4-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_16-.LJTI4_0
	.word	.LBB4_13-.LJTI4_0
                                        # -- End function
	.text
	.globl	_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj # -- Begin function _ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj
	.p2align	5
	.type	_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj,@function
_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj: # @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj
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
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a1, 16
	vld	$vr0, $a1, 0
	ld.h	$s7, $s0, 8
	move	$s4, $a3
	move	$s5, $a2
	st.d	$a0, $sp, 128
	vst	$vr0, $sp, 112
	addi.d	$a1, $s7, -16
	bstrpick.d	$a0, $a1, 15, 2
	slli.d	$a2, $a1, 14
	or	$a0, $a2, $a0
	bstrpick.d	$a2, $a0, 15, 0
	ori	$a3, $zero, 4
	addi.w	$a0, $zero, -50
	bltu	$a3, $a2, .LBB5_21
# %bb.1:
	ori	$a3, $zero, 3
	beq	$a2, $a3, .LBB5_21
# %bb.2:
	move	$s1, $a5
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a0, $a0, 9
	add.d	$s2, $s0, $a0
	addi.d	$a0, $s7, -32
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 23
	slt	$a2, $a2, $s7
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 2
	maskeqz	$a0, $a3, $a0
	or	$s6, $a0, $a2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 92
	ldx.w	$s3, $s0, $a0
	rotri.w	$a0, $a1, 2
	ori	$a1, $zero, 4
	slli.d	$s8, $s6, 3
	bltu	$a1, $a0, .LBB5_8
# %bb.3:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI5_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI5_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB5_4:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ori	$a5, $zero, 2
	move	$a0, $s5
	move	$a1, $s4
	move	$a4, $s1
	move	$a6, $zero
	pcaddu18i	$ra, %call36(mix16)
	jirl	$ra, $ra, 0
	b	.LBB5_8
.LBB5_5:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ld.d	$a7, $s0, 64
	ori	$a5, $zero, 2
	st.d	$s6, $sp, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a4, $s1
	move	$a6, $zero
	pcaddu18i	$ra, %call36(mix24)
	jirl	$ra, $ra, 0
	b	.LBB5_8
.LBB5_6:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ori	$a5, $zero, 2
	move	$a0, $s5
	move	$a1, $s4
	move	$a4, $s1
	move	$a6, $zero
	pcaddu18i	$ra, %call36(mix20)
	jirl	$ra, $ra, 0
	b	.LBB5_8
.LBB5_7:
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ld.d	$a7, $s0, 64
	ori	$a5, $zero, 2
	st.d	$s6, $sp, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a4, $s1
	move	$a6, $zero
	pcaddu18i	$ra, %call36(mix32)
	jirl	$ra, $ra, 0
.LBB5_8:
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	sub.d	$s4, $s7, $s8
	xor	$a0, $s1, $s3
	sltu	$s5, $zero, $a0
	ori	$a2, $zero, 12
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $s5, 3
	slli.d	$a1, $s6, 1
	or	$a1, $a0, $a1
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	beq	$s1, $s3, .LBB5_10
# %bb.9:
	ori	$a2, $zero, 32
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
.LBB5_10:
	addi.d	$a0, $s4, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 8
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 136
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s2, 304
	addi.d	$a0, $s2, 304
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s2, 306
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s2, 308
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s2, 310
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s2, 312
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s2, 314
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s2, 316
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s2, 318
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 136
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	lu12i.w	$s5, 1
	ori	$a0, $s5, 304
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $s5, 306
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $s5, 308
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $s5, 310
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $s5, 312
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $s5, 314
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $s5, 316
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $s5, 318
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	blt	$s7, $a0, .LBB5_14
# %bb.11:                               # %.preheader
	slli.d	$a0, $s1, 1
	addi.w	$a1, $a0, 0
	beqz	$a1, .LBB5_14
# %bb.12:                               # %.lr.ph
	move	$s5, $zero
	move	$s4, $zero
	slli.d	$s6, $s6, 4
	bstrpick.d	$s3, $a0, 31, 0
	.p2align	4, , 16
.LBB5_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 64
	add.d	$a1, $a0, $s5
	ldx.hu	$a0, $a0, $s5
	ld.hu	$a1, $a1, 2
	sll.w	$a0, $a0, $s8
	or	$a1, $a0, $a1
	move	$a0, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 2
	addi.d	$s5, $s5, 4
	bltu	$s4, $s3, .LBB5_13
.LBB5_14:                               # %.loopexit
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	move	$a5, $s3
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 76
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s1
	move	$a5, $s1
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	addi.d	$a0, $sp, 76
	addi.d	$a5, $sp, 72
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_21
# %bb.15:
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 56
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a3, $s2, $a2
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s1
	move	$a5, $s3
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 76
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s1
	move	$a5, $s1
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	addi.d	$a0, $sp, 76
	addi.d	$a5, $sp, 68
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_21
# %bb.16:
	ori	$a0, $zero, 23
	slt	$a0, $a0, $s7
	ld.w	$a1, $sp, 72
	ld.w	$a2, $sp, 68
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	slli.d	$a4, $s1, 1
	mul.d	$a5, $a4, $s8
	addi.d	$a5, $a5, 320
	maskeqz	$a5, $a5, $a0
	ori	$a6, $zero, 320
	masknez	$a0, $a6, $a0
	or	$a0, $a5, $a0
	ld.h	$a5, $s0, 8
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	add.w	$a0, $a0, $a2
	mul.d	$a1, $a4, $a5
	add.d	$a1, $a1, $a3
	addi.w	$s4, $a1, 16
	bgeu	$a0, $s4, .LBB5_19
# %bb.17:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferGetPosition)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(BitBufferGetPosition)
	jirl	$ra, $ra, 0
	sub.w	$a1, $s5, $a0
	bltu	$a1, $s4, .LBB5_20
# %bb.18:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_19:                               # %.critedge142
	ld.d	$a0, $sp, 128
	vld	$vr0, $sp, 112
	st.d	$a0, $fp, 16
	vst	$vr0, $fp, 0
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj)
	jirl	$ra, $ra, 0
.LBB5_20:
	move	$a0, $zero
.LBB5_21:
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
.Lfunc_end5:
	.size	_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj, .Lfunc_end5-_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_4-.LJTI5_0
	.word	.LBB5_6-.LJTI5_0
	.word	.LBB5_5-.LJTI5_0
	.word	.LBB5_8-.LJTI5_0
	.word	.LBB5_7-.LJTI5_0
                                        # -- End function
	.text
	.globl	_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj # -- Begin function _ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj
	.p2align	5
	.type	_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj,@function
_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj: # @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj
	.cfi_startproc
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
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
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
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a1, 16
	vld	$vr0, $a1, 0
	ld.h	$a6, $s0, 8
	move	$s1, $a3
	move	$s2, $a2
	st.d	$a0, $sp, 160
	vst	$vr0, $sp, 144
	addi.d	$a1, $a6, -16
	bstrpick.d	$a0, $a1, 15, 2
	slli.d	$a2, $a1, 14
	or	$a0, $a2, $a0
	bstrpick.d	$a2, $a0, 15, 0
	ori	$a3, $zero, 4
	addi.w	$a0, $zero, -50
	bltu	$a3, $a2, .LBB6_61
# %bb.1:
	ori	$a3, $zero, 3
	beq	$a2, $a3, .LBB6_61
# %bb.2:
	move	$s8, $a5
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a0, $a0, 9
	add.d	$a0, $s0, $a0
	addi.d	$a0, $a0, 80
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a6, -32
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 23
	slt	$a2, $a2, $a6
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 2
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	slli.d	$s5, $a0, 3
	lu12i.w	$a0, 2
	ori	$a0, $a0, 92
	ldx.w	$s3, $s0, $a0
	rotri.w	$a0, $a1, 2
	ori	$a1, $zero, 4
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	sub.d	$s4, $a6, $s5
	bltu	$a1, $a0, .LBB6_30
# %bb.3:
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s5
	nor	$s6, $a1, $zero
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI6_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI6_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB6_4:                                # %.preheader220
	beqz	$s8, .LBB6_30
# %bb.5:                                # %.lr.ph233
	ld.d	$a1, $s0, 32
	move	$a0, $zero
	ori	$a3, $zero, 8
	bstrpick.d	$a2, $s8, 31, 0
	bltu	$s8, $a3, .LBB6_10
# %bb.6:                                # %.lr.ph233
	ori	$a3, $zero, 1
	bne	$s1, $a3, .LBB6_10
# %bb.7:                                # %vector.ph334
	bstrpick.d	$a0, $a2, 31, 3
	slli.d	$a0, $a0, 3
	addi.d	$a3, $s2, 8
	addi.d	$a4, $a1, 16
	move	$a5, $a0
	.p2align	4, , 16
.LBB6_8:                                # %vector.body337
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, -8
	ld.d	$a7, $a3, 0
	vinsgr2vr.d	$vr0, $a6, 0
	vinsgr2vr.d	$vr1, $a7, 0
	vsllwil.w.h	$vr0, $vr0, 0
	vsllwil.w.h	$vr1, $vr1, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_8
# %bb.9:                                # %middle.block343
	beq	$a0, $a2, .LBB6_30
.LBB6_10:                               # %scalar.ph332.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	.p2align	4, , 16
.LBB6_11:                               # %scalar.ph332
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 0
	slli.d	$a3, $a3, 1
	ldx.h	$a3, $s2, $a3
	st.w	$a3, $a1, 0
	add.w	$a0, $a0, $s1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_11
	b	.LBB6_30
.LBB6_12:
	ld.d	$a2, $s0, 32
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $s8
	pcaddu18i	$ra, %call36(copy24ToPredictor)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB6_30
# %bb.13:                               # %.lr.ph230
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 64
	ori	$a3, $zero, 8
	bstrpick.d	$a2, $s8, 31, 0
	bgeu	$s8, $a3, .LBB6_25
# %bb.14:
	move	$a3, $zero
	b	.LBB6_28
.LBB6_15:
	ld.d	$a2, $s0, 32
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $s8
	pcaddu18i	$ra, %call36(copy20ToPredictor)
	jirl	$ra, $ra, 0
	b	.LBB6_30
.LBB6_16:                               # %.preheader223
	beqz	$s8, .LBB6_30
# %bb.17:                               # %.lr.ph
	ld.d	$a1, $s0, 64
	ld.d	$a2, $s0, 32
	move	$a0, $zero
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $s8, 31, 0
	bltu	$s8, $a4, .LBB6_23
# %bb.18:                               # %.lr.ph
	ori	$a4, $zero, 1
	bne	$s1, $a4, .LBB6_23
# %bb.19:                               # %.lr.ph
	sub.d	$a4, $a2, $s2
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB6_23
# %bb.20:                               # %vector.ph
	bstrpick.d	$a0, $a3, 31, 3
	slli.d	$a0, $a0, 3
	vreplgr2vr.w	$vr0, $s6
	vreplgr2vr.w	$vr1, $s5
	addi.d	$a4, $s2, 16
	addi.d	$a5, $a2, 16
	addi.d	$a6, $a1, 8
	move	$a7, $a0
	.p2align	4, , 16
.LBB6_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vand.v	$vr4, $vr2, $vr0
	vand.v	$vr5, $vr3, $vr0
	vpickev.h	$vr4, $vr4, $vr4
	vpickev.h	$vr5, $vr5, $vr5
	vpackev.d	$vr4, $vr5, $vr4
	vst	$vr4, $a6, -8
	vsra.w	$vr2, $vr2, $vr1
	vsra.w	$vr3, $vr3, $vr1
	vst	$vr2, $a5, -16
	vst	$vr3, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB6_21
# %bb.22:                               # %middle.block
	beq	$a0, $a3, .LBB6_30
.LBB6_23:                               # %scalar.ph.preheader
	alsl.d	$a1, $a0, $a1, 1
	alsl.d	$a2, $a0, $a2, 2
	sub.d	$a3, $a3, $a0
	.p2align	4, , 16
.LBB6_24:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a0, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s2, $a4
	and	$a5, $a4, $s6
	st.h	$a5, $a1, 0
	sra.w	$a4, $a4, $s5
	st.w	$a4, $a2, 0
	add.w	$a0, $a0, $s1
	addi.d	$a1, $a1, 2
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB6_24
	b	.LBB6_30
.LBB6_25:                               # %vector.ph315
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a3, $a3, 3
	vreplgr2vr.w	$vr0, $s6
	vreplgr2vr.w	$vr1, $s5
	addi.d	$a4, $a1, 8
	addi.d	$a5, $a0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_26:                               # %vector.body322
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vand.v	$vr4, $vr2, $vr0
	vand.v	$vr5, $vr3, $vr0
	vpickev.h	$vr4, $vr4, $vr4
	vpickev.h	$vr5, $vr5, $vr5
	vpackev.d	$vr4, $vr5, $vr4
	vst	$vr4, $a4, -8
	vsra.w	$vr2, $vr2, $vr1
	vsra.w	$vr3, $vr3, $vr1
	vst	$vr2, $a5, -16
	vst	$vr3, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_26
# %bb.27:                               # %middle.block327
	beq	$a3, $a2, .LBB6_30
.LBB6_28:                               # %scalar.ph313.preheader
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a1, $a3, $a1, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB6_29:                               # %scalar.ph313
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	and	$a4, $a3, $s6
	st.h	$a4, $a1, 0
	sra.w	$a3, $a3, $s5
	st.w	$a3, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2
	bnez	$a2, .LBB6_29
.LBB6_30:                               # %.loopexit221
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $s0, 72
	ldptr.w	$a2, $s0, 8288
	bstrpick.d	$s7, $s8, 31, 5
	bstrpick.d	$a0, $s8, 31, 3
	bstrpick.d	$s6, $a0, 60, 0
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(BitBufferInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s8, $s3, 96
	ori	$a4, $zero, 4
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 4
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 4
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 4
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 4
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 4
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 4
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 4
	ori	$a6, $zero, 9
	move	$a2, $s6
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 108
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s6
	move	$a5, $s6
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	addi.d	$a0, $sp, 108
	addi.d	$a2, $sp, 80
	addi.d	$a5, $sp, 104
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_61
# %bb.31:
	ld.w	$a0, $sp, 104
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $s0, 72
	ldptr.w	$a2, $s0, 8288
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(BitBufferInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	addi.d	$s8, $s3, 224
	addi.w	$s7, $s7, 0
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s7
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	addi.w	$s6, $s6, 0
	ori	$a4, $zero, 8
	ori	$a6, $zero, 9
	move	$a2, $s6
	move	$a3, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 108
	ori	$a1, $zero, 10
	ori	$a2, $zero, 40
	ori	$a3, $zero, 14
	ori	$a6, $zero, 255
	move	$a4, $s6
	move	$a5, $s6
	pcaddu18i	$ra, %call36(set_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	addi.d	$a0, $sp, 108
	addi.d	$a2, $sp, 80
	addi.d	$a5, $sp, 104
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_61
# %bb.32:
	ori	$a7, $zero, 8
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	xor	$a6, $s6, $s7
	sltu	$s8, $zero, $a6
	ori	$a0, $zero, 23
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	slt	$a1, $a0, $a1
	ori	$a0, $zero, 64
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.w	$a0, $a2, $a0, 3
	lu12i.w	$a2, -524288
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	ld.w	$a4, $sp, 104
	masknez	$a2, $a2, $a3
	or	$a2, $a0, $a2
	ori	$a0, $zero, 128
	alsl.w	$a3, $a4, $a0, 3
	sltu	$a0, $a3, $a2
	masknez	$a2, $a2, $a0
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	slli.d	$a3, $s8, 5
	mul.d	$a4, $s5, $s6
	addi.d	$a4, $a4, 32
	maskeqz	$a4, $a4, $a1
	ori	$a5, $zero, 32
	masknez	$a1, $a5, $a1
	ld.h	$a5, $s0, 8
	or	$a1, $a4, $a1
	add.d	$a1, $a1, $a3
	add.w	$a1, $a1, $a2
	mul.d	$a2, $s6, $a5
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 16
	bgeu	$a1, $a2, .LBB6_43
# %bb.33:
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 12
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	or	$a1, $a0, $a1
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	beq	$s6, $s7, .LBB6_35
# %bb.34:
	ori	$a2, $zero, 32
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
.LBB6_35:                               # %.lr.ph239
	ori	$a2, $zero, 16
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $s7, 128
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 5
	add.d	$s8, $s3, $a0
	addi.d	$s6, $s8, -32
	.p2align	4, , 16
.LBB6_36:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $s6, 0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 2
	bnez	$s7, .LBB6_36
# %bb.37:                               # %._crit_edge
	ori	$a0, $zero, 24
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB6_41
# %bb.38:                               # %._crit_edge
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_41
# %bb.39:                               # %.lr.ph241
	move	$s3, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s6, $a0, 1
	.p2align	4, , 16
.LBB6_40:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 64
	ldx.hu	$a1, $a0, $s3
	move	$a0, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 2
	bne	$s6, $s3, .LBB6_40
.LBB6_41:                               # %.loopexit219
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	addi.d	$a3, $s8, -32
	ori	$a6, $zero, 9
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(pc_block)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 108
	move	$a1, $s6
	move	$a2, $s6
	pcaddu18i	$ra, %call36(set_standard_ag_params)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	addi.d	$a0, $sp, 108
	addi.d	$a5, $sp, 104
	move	$a2, $fp
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(dyn_comp)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferGetPosition)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(BitBufferGetPosition)
	jirl	$ra, $ra, 0
	sub.w	$a1, $s5, $a0
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB6_60
# %bb.42:
	ld.d	$a0, $sp, 160
	vld	$vr0, $sp, 144
	st.d	$a0, $fp, 16
	vst	$vr0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB6_44
.LBB6_43:
	move	$s4, $zero
.LBB6_44:
	sltui	$s3, $a6, 1
	ori	$a2, $zero, 12
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	masknez	$a0, $a0, $s3
	ori	$a1, $zero, 1
	maskeqz	$a1, $a1, $s3
	or	$a1, $a1, $a0
	ori	$a2, $zero, 4
	ori	$s3, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	beq	$s6, $s7, .LBB6_46
# %bb.45:
	ori	$a2, $zero, 32
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
.LBB6_46:
	ld.h	$a0, $s0, 8
	addi.d	$a0, $a0, -16
	rotri.w	$a0, $a0, 2
	bltu	$s3, $a0, .LBB6_60
# %bb.47:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI6_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI6_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a1, $a0
	move	$a0, $s4
	jr	$a1
.LBB6_48:                               # %.preheader
	mul.w	$s0, $s6, $s1
	beqz	$s0, .LBB6_61
# %bb.49:                               # %.lr.ph251.preheader
	move	$s3, $zero
	.p2align	4, , 16
.LBB6_50:                               # %.lr.ph251
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$a0, $a0, 1
	ldx.h	$a1, $s2, $a0
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	add.w	$s3, $s3, $s1
	bltu	$s3, $s0, .LBB6_50
	b	.LBB6_60
.LBB6_51:
	ld.d	$a2, $s0, 32
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(copy24ToPredictor)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB6_60
# %bb.52:                               # %.lr.ph246.preheader
	move	$s1, $zero
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$s2, $a0, 2
	.p2align	4, , 16
.LBB6_53:                               # %.lr.ph246
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 32
	ldx.w	$a1, $a0, $s1
	ori	$a2, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 4
	bne	$s2, $s1, .LBB6_53
	b	.LBB6_60
.LBB6_54:
	ld.d	$a2, $s0, 32
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(copy20ToPredictor)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB6_60
# %bb.55:                               # %.lr.ph249.preheader
	move	$s1, $zero
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$s2, $a0, 2
	.p2align	4, , 16
.LBB6_56:                               # %.lr.ph249
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 32
	ldx.w	$a1, $a0, $s1
	ori	$a2, $zero, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 4
	bne	$s2, $s1, .LBB6_56
	b	.LBB6_60
.LBB6_57:                               # %.preheader216
	mul.w	$s0, $s6, $s1
	beqz	$s0, .LBB6_61
# %bb.58:                               # %.lr.ph243.preheader
	move	$s3, $zero
	.p2align	4, , 16
.LBB6_59:                               # %.lr.ph243
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s2, $a0
	ori	$a2, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	add.w	$s3, $s3, $s1
	bltu	$s3, $s0, .LBB6_59
.LBB6_60:
	move	$a0, $s4
.LBB6_61:                               # %.loopexit
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end6:
	.size	_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj, .Lfunc_end6-_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_12-.LJTI6_0
	.word	.LBB6_30-.LJTI6_0
	.word	.LBB6_16-.LJTI6_0
.LJTI6_1:
	.word	.LBB6_48-.LJTI6_1
	.word	.LBB6_54-.LJTI6_1
	.word	.LBB6_51-.LJTI6_1
	.word	.LBB6_61-.LJTI6_1
	.word	.LBB6_57-.LJTI6_1
                                        # -- End function
	.text
	.globl	_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi # -- Begin function _ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi
	.p2align	5
	.type	_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi,@function
_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi: # @_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi
	.cfi_startproc
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
	move	$s0, $a5
	move	$s3, $a1
	move	$fp, $a0
	ld.w	$a0, $a5, 0
	ld.w	$a5, $a1, 16
	ldptr.w	$a2, $fp, 8288
	move	$a1, $a4
	move	$s2, $a3
	div.wu	$s1, $a0, $a5
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(BitBufferInit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 28
	ori	$a1, $zero, 1
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	beq	$a0, $a1, .LBB7_4
# %bb.1:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB7_5
# %bb.2:
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 1
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 10
	beqz	$a0, .LBB7_14
# %bb.3:
	addi.d	$a1, $sp, 32
	ori	$a3, $zero, 2
	move	$a0, $fp
	move	$a2, $s2
	move	$a4, $zero
	move	$a5, $s1
	pcaddu18i	$ra, %call36(_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_16
	b	.LBB7_15
.LBB7_4:
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 32
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a2, $s2
	move	$a4, $zero
	move	$a5, $s1
	pcaddu18i	$ra, %call36(_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_16
	b	.LBB7_15
.LBB7_5:
	ld.h	$a0, $fp, 8
	addi.d	$a0, $a0, 7
	bstrpick.d	$a1, $a0, 31, 29
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL12sChannelMaps)
	addi.d	$s8, $a0, %pc_lo12(_ZL12sChannelMaps)
	move	$s4, $zero
	move	$s0, $zero
	move	$s7, $zero
	move	$s6, $zero
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_6:                                #   in Loop: Header=BB7_8 Depth=1
	andi	$a1, $s0, 255
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s3, 28
	addi.d	$a1, $sp, 32
	move	$a0, $fp
	move	$a2, $s2
	move	$a4, $s4
	move	$a5, $s1
	pcaddu18i	$ra, %call36(_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 2
	addi.d	$s0, $s0, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
.LBB7_7:                                #   in Loop: Header=BB7_8 Depth=1
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$s2, $s2, $a1
	bnez	$a0, .LBB7_16
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 28
	bgeu	$s4, $a0, .LBB7_15
# %bb.9:                                #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $s8, $a0
	alsl.d	$a1, $s4, $s4, 1
	ori	$a2, $zero, 7
	sll.d	$a2, $a2, $a1
	and	$a0, $a2, $a0
	srl.d	$a0, $a0, $a1
	addi.w	$s5, $a0, 0
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	beq	$s5, $a0, .LBB7_13
# %bb.10:                               #   in Loop: Header=BB7_8 Depth=1
	ori	$a0, $zero, 1
	beq	$s5, $a0, .LBB7_6
# %bb.11:                               #   in Loop: Header=BB7_8 Depth=1
	bnez	$s5, .LBB7_17
# %bb.12:                               #   in Loop: Header=BB7_8 Depth=1
	andi	$a1, $s7, 255
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s3, 28
	addi.d	$a1, $sp, 32
	move	$a0, $fp
	move	$a2, $s2
	move	$a4, $s4
	move	$a5, $s1
	pcaddu18i	$ra, %call36(_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_13:                               #   in Loop: Header=BB7_8 Depth=1
	andi	$a1, $s6, 255
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s3, 28
	addi.d	$a1, $sp, 32
	move	$a0, $fp
	move	$a2, $s2
	move	$a4, $s4
	move	$a5, $s1
	pcaddu18i	$ra, %call36(_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	addi.d	$s6, $s6, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB7_7
.LBB7_14:
	addi.d	$a1, $sp, 32
	ori	$a3, $zero, 2
	move	$a0, $fp
	move	$a2, $s2
	move	$a4, $zero
	move	$a5, $s1
	pcaddu18i	$ra, %call36(_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_16
.LBB7_15:                               # %.loopexit
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 7
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(BitBufferWrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(BitBufferByteAlign)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(BitBufferGetPosition)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 3
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 80
	ldx.w	$a2, $fp, $a0
	ldptr.w	$a3, $fp, 8280
	move	$a0, $zero
	add.d	$a2, $a2, $a1
	stptr.w	$a2, $fp, 8272
	sltu	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	stptr.w	$a1, $fp, 8280
.LBB7_16:                               # %.thread
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
.LBB7_17:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -50
	b	.LBB7_16
.Lfunc_end7:
	.size	_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi, .Lfunc_end7-_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11ALACEncoder6FinishEv       # -- Begin function _ZN11ALACEncoder6FinishEv
	.p2align	5
	.type	_ZN11ALACEncoder6FinishEv,@function
_ZN11ALACEncoder6FinishEv:              # @_ZN11ALACEncoder6FinishEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	_ZN11ALACEncoder6FinishEv, .Lfunc_end8-_ZN11ALACEncoder6FinishEv
                                        # -- End function
	.globl	_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig # -- Begin function _ZN11ALACEncoder9GetConfigER18ALACSpecificConfig
	.p2align	5
	.type	_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig,@function
_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig: # @_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig
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
	ldptr.w	$a0, $a0, 8284
	move	$s0, $a1
	pcaddu18i	$ra, %call36(Swap32NtoB)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	st.b	$zero, $s0, 4
	ld.b	$a0, $fp, 8
	ori	$a1, $zero, 2600
	st.h	$a1, $s0, 6
	lu12i.w	$a1, 2
	ori	$a1, $a1, 100
	ldx.b	$a1, $fp, $a1
	st.b	$a0, $s0, 5
	ori	$a0, $zero, 14
	st.b	$a0, $s0, 8
	st.b	$a1, $s0, 9
	ori	$a0, $zero, 255
	pcaddu18i	$ra, %call36(Swap16NtoB)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $fp, 8280
	st.h	$a0, $s0, 10
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Swap32NtoB)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $fp, 8276
	st.w	$a0, $s0, 12
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Swap32NtoB)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $fp, 8296
	st.w	$a0, $s0, 16
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Swap32NtoB)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 20
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig, .Lfunc_end9-_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11ALACEncoder18GetMagicCookieSizeEj # -- Begin function _ZN11ALACEncoder18GetMagicCookieSizeEj
	.p2align	5
	.type	_ZN11ALACEncoder18GetMagicCookieSizeEj,@function
_ZN11ALACEncoder18GetMagicCookieSizeEj: # @_ZN11ALACEncoder18GetMagicCookieSizeEj
# %bb.0:
	ori	$a0, $zero, 2
	sltu	$a0, $a0, $a1
	ori	$a1, $zero, 24
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 48
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ret
.Lfunc_end10:
	.size	_ZN11ALACEncoder18GetMagicCookieSizeEj, .Lfunc_end10-_ZN11ALACEncoder18GetMagicCookieSizeEj
                                        # -- End function
	.globl	_ZN11ALACEncoder14GetMagicCookieEPvPj # -- Begin function _ZN11ALACEncoder14GetMagicCookieEPvPj
	.p2align	5
	.type	_ZN11ALACEncoder14GetMagicCookieEPvPj,@function
_ZN11ALACEncoder14GetMagicCookieEPvPj:  # @_ZN11ALACEncoder14GetMagicCookieEPvPj
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
	move	$s4, $a0
	ldptr.w	$a0, $a0, 8284
	move	$fp, $a2
	move	$s0, $a1
	pcaddu18i	$ra, %call36(Swap32NtoB)
	jirl	$ra, $ra, 0
	ld.hu	$s6, $s4, 8
	lu12i.w	$a1, 2
	ori	$a1, $a1, 100
	ldx.bu	$s5, $s4, $a1
	move	$s2, $a0
	ori	$a0, $zero, 255
	pcaddu18i	$ra, %call36(Swap16NtoB)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s4, 8280
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Swap32NtoB)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s4, 8276
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Swap32NtoB)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s4, 8296
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Swap32NtoB)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bltu	$s5, $a1, .LBB11_4
# %bb.1:
	addi.d	$a1, $s5, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(_ZL21ALACChannelLayoutTags)
	addi.d	$a2, $a2, %pc_lo12(_ZL21ALACChannelLayoutTags)
	ldx.w	$a2, $a2, $a1
	ori	$a1, $zero, 48
	ld.w	$a3, $fp, 0
	bltu	$a3, $a1, .LBB11_5
.LBB11_2:
	st.w	$s2, $s0, 0
	st.b	$zero, $s0, 4
	st.b	$s6, $s0, 5
	ori	$a3, $zero, 2600
	st.h	$a3, $s0, 6
	ori	$a3, $zero, 14
	st.b	$a3, $s0, 8
	st.b	$s5, $s0, 9
	st.h	$s1, $s0, 10
	st.w	$s3, $s0, 12
	st.w	$s4, $s0, 16
	ori	$a3, $zero, 3
	st.w	$a0, $s0, 20
	bltu	$s5, $a3, .LBB11_6
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom)
	addi.d	$a0, $a0, %pc_lo12(.L__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom)
	ld.b	$a3, $a0, 2
	ld.h	$a0, $a0, 0
	st.b	$a3, $s0, 26
	st.h	$a0, $s0, 24
	ori	$a0, $zero, 24
	st.b	$a0, $s0, 27
	lu12i.w	$a0, 452118
	ori	$a0, $a0, 2147
	st.d	$a0, $s0, 28
	st.w	$a2, $s0, 36
	st.d	$zero, $s0, 40
	b	.LBB11_6
.LBB11_4:
	move	$a2, $zero
	ori	$a1, $zero, 24
	ld.w	$a3, $fp, 0
	bgeu	$a3, $a1, .LBB11_2
.LBB11_5:
	move	$a1, $zero
.LBB11_6:
	st.w	$a1, $fp, 0
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
.Lfunc_end11:
	.size	_ZN11ALACEncoder14GetMagicCookieEPvPj, .Lfunc_end11-_ZN11ALACEncoder14GetMagicCookieEPvPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription # -- Begin function _ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription
	.p2align	5
	.type	_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription,@function
_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription: # @_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription
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
	fld.d	$fa0, $a1, 0
	move	$s7, $a0
	ftintrz.l.d	$fa0, $fa0
	ld.w	$a0, $a1, 12
	movfr2gr.d	$a2, $fa0
	ld.w	$fp, $a1, 28
	stptr.w	$a2, $s7, 8296
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 3
	stptr.w	$fp, $s7, 8292
	bltu	$a1, $a0, .LBB12_2
# %bb.1:                                # %switch.lookup
	slli.d	$a0, $a0, 4
	lu12i.w	$a1, 320
	ori	$a1, $a1, 16
	lu32i.d	$a1, 24
	lu52i.d	$a1, $a1, 2
	srl.d	$a0, $a1, $a0
	st.h	$a0, $s7, 8
.LBB12_2:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 92
	ldx.wu	$a0, $s7, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $s7, 12
	mul.d	$a1, $fp, $a0
	alsl.d	$a1, $a1, $a1, 2
	addi.d	$s5, $a1, 1
	stptr.w	$s5, $s7, 8288
	slli.d	$s3, $a0, 2
	ori	$a1, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s7, 32
	ori	$a1, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s7, 40
	ori	$a1, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s7, 48
	ori	$a1, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s7, 56
	bstrpick.d	$a0, $s3, 32, 2
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s7, 64
	bstrpick.d	$a0, $s5, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s7, 72
	addi.w	$a0, $zero, -108
	beqz	$s4, .LBB12_12
# %bb.3:
	beqz	$s0, .LBB12_12
# %bb.4:
	beqz	$s1, .LBB12_12
# %bb.5:
	beqz	$s2, .LBB12_12
# %bb.6:
	beqz	$s3, .LBB12_12
# %bb.7:
	beqz	$a1, .LBB12_12
# %bb.8:                                # %.preheader24
	blez	$fp, .LBB12_11
# %bb.9:                                # %.preheader.lr.ph
	move	$s2, $zero
	lu12i.w	$a0, 1
	ori	$a1, $a0, 336
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $a0, 80
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ori	$a1, $a0, 112
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$a1, $a0, 144
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $a0, 176
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $a0, 208
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $a0, 240
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $a0, 272
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $a0, 304
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $a0, 368
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $a0, 400
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $a0, 432
	ori	$s3, $a0, 464
	ori	$s4, $a0, 496
	ori	$s5, $a0, 528
	ori	$s6, $a0, 560
	move	$fp, $s7
	.p2align	4, , 16
.LBB12_10:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $fp, 80
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$s0, $fp, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$s1, $fp, $a1
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 112
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 144
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 176
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 208
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 240
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 272
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 304
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 336
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 368
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 400
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 432
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $s8
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 464
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $s3
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 496
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $s4
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 528
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $s5
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 560
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $s6
	ori	$a1, $zero, 9
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(init_coefs)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s7, 8292
	addi.d	$s2, $s2, 1
	addi.d	$fp, $fp, 512
	blt	$s2, $a0, .LBB12_10
.LBB12_11:
	move	$a0, $zero
.LBB12_12:                              # %.loopexit
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
.Lfunc_end12:
	.size	_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription, .Lfunc_end12-_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_ # -- Begin function _ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_
	.p2align	5
	.type	_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_,@function
_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_: # @_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_
# %bb.0:
	ld.w	$a2, $a1, 8
	lu12i.w	$a3, 444166
	ori	$a3, $a3, 877
	bne	$a2, $a3, .LBB13_3
# %bb.1:
	ld.bu	$a2, $a1, 12
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_3
# %bb.2:
	ld.w	$a1, $a1, 32
	ori	$a2, $zero, 16
	bltu	$a2, $a1, .LBB13_4
.LBB13_3:
	ori	$a1, $zero, 16
	st.h	$a1, $a0, 8
	ret
.LBB13_4:
	ori	$a2, $zero, 20
	bltu	$a2, $a1, .LBB13_6
# %bb.5:
	st.h	$a2, $a0, 8
	ret
.LBB13_6:
	ori	$a2, $zero, 24
	bltu	$a2, $a1, .LBB13_8
# %bb.7:
	st.h	$a2, $a0, 8
	ret
.LBB13_8:
	ori	$a1, $zero, 32
	st.h	$a1, $a0, 8
	ret
.Lfunc_end13:
	.size	_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_, .Lfunc_end13-_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_
                                        # -- End function
	.type	_ZTV11ALACEncoder,@object       # @_ZTV11ALACEncoder
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV11ALACEncoder
	.p2align	3, 0x0
_ZTV11ALACEncoder:
	.dword	0
	.dword	_ZTI11ALACEncoder
	.dword	_ZN11ALACEncoderD2Ev
	.dword	_ZN11ALACEncoderD0Ev
	.dword	_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi
	.dword	_ZN11ALACEncoder6FinishEv
	.dword	_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription
	.dword	_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_
	.size	_ZTV11ALACEncoder, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"compressed frame too big: %u vs. %u \n"
	.size	.L.str, 38

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"compressed frame too big: %u vs. %u\n"
	.size	.L.str.1, 37

	.type	_ZL12sChannelMaps,@object       # @_ZL12sChannelMaps
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
_ZL12sChannelMaps:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	520                             # 0x208
	.word	520                             # 0x208
	.word	520                             # 0x208
	.word	33288                           # 0x8208
	.size	_ZL12sChannelMaps, 32

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"That ain't right! (%u)\n"
	.size	.L.str.2, 24

	.type	.L__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom,@object # @__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom:
	.asciz	"\000\000\000\000chan\000\000\000"
	.size	.L__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom, 12

	.type	_ZL21ALACChannelLayoutTags,@object # @_ZL21ALACChannelLayoutTags
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
_ZL21ALACChannelLayoutTags:
	.word	6553601                         # 0x640001
	.word	6619138                         # 0x650002
	.word	7405571                         # 0x710003
	.word	7602180                         # 0x740004
	.word	7864325                         # 0x780005
	.word	8126470                         # 0x7c0006
	.word	9306119                         # 0x8e0007
	.word	8323080                         # 0x7f0008
	.size	_ZL21ALACChannelLayoutTags, 32

	.type	_ZTI11ALACEncoder,@object       # @_ZTI11ALACEncoder
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI11ALACEncoder
	.p2align	3, 0x0
_ZTI11ALACEncoder:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS11ALACEncoder
	.size	_ZTI11ALACEncoder, 16

	.type	_ZTS11ALACEncoder,@object       # @_ZTS11ALACEncoder
	.section	.rodata,"a",@progbits
	.globl	_ZTS11ALACEncoder
_ZTS11ALACEncoder:
	.asciz	"11ALACEncoder"
	.size	_ZTS11ALACEncoder, 14

	.globl	_ZN11ALACEncoderC1Ev
	.type	_ZN11ALACEncoderC1Ev,@function
_ZN11ALACEncoderC1Ev = _ZN11ALACEncoderC2Ev
	.globl	_ZN11ALACEncoderD1Ev
	.type	_ZN11ALACEncoderD1Ev,@function
_ZN11ALACEncoderD1Ev = _ZN11ALACEncoderD2Ev
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZTI11ALACEncoder
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS11ALACEncoder
