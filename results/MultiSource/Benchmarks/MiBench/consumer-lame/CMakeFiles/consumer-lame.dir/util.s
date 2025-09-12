	.file	"util.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function getframebits
.LCPI0_0:
	.dword	0x408f400000000000              # double 1000
.LCPI0_1:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.text
	.globl	getframebits
	.p2align	5
	.type	getframebits,@function
getframebits:                           # @getframebits
# %bb.0:
	ld.w	$a3, $a0, 192
	ld.w	$a4, $a0, 16
	addi.d	$a5, $a3, -1
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 60
	mul.d	$a3, $a3, $a6
	pcalau12i	$a6, %pc_hi20(bitrate_table)
	addi.d	$a6, $a6, %pc_lo12(bitrate_table)
	ld.w	$a7, $a0, 220
	ld.w	$t0, $a0, 204
	add.d	$a3, $a6, $a3
	slli.d	$a6, $a7, 2
	ldx.w	$a3, $a3, $a6
	addi.d	$a6, $t0, -1
	sltui	$a6, $a6, 1
	ori	$a7, $zero, 288
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 168
	maskeqz	$t1, $t0, $a6
	or	$a7, $t1, $a7
	masknez	$t0, $t0, $a6
	ori	$t1, $zero, 104
	maskeqz	$a6, $t1, $a6
	or	$a6, $a6, $t0
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	ld.w	$a6, $a0, 60
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI0_0)
	ld.w	$a3, $a0, 188
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	vldi	$vr2, -960
	fmul.d	$fa0, $fa0, $fa2
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI0_1)
	sltui	$a3, $a6, 1
	addi.d	$a4, $a5, 16
	maskeqz	$a5, $a5, $a3
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	vreplvei.d	$vr0, $vr0, 0
	ld.w	$a6, $a0, 196
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a7, $fa0
	add.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 3
	st.w	$a6, $a1, 0
	ld.w	$a0, $a0, 200
	masknez	$a1, $a4, $a3
	or	$a1, $a5, $a1
	sub.w	$a1, $a6, $a1
	div.w	$a0, $a1, $a0
	st.w	$a0, $a2, 0
	ret
.Lfunc_end0:
	.size	getframebits, .Lfunc_end0-getframebits
                                        # -- End function
	.globl	display_bitrates                # -- Begin function display_bitrates
	.p2align	5
	.type	display_bitrates,@function
display_bitrates:                       # @display_bitrates
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bitrate_table)
	addi.d	$s2, $a0, %pc_lo12(bitrate_table)
	ld.w	$a2, $s2, 64
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s0, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 68
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 72
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 76
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 80
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 84
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 88
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 92
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 96
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 100
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 104
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 108
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 112
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 116
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 4
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 12
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 20
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 24
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 28
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 32
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 36
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 40
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 44
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 48
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 52
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 56
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end1:
	.size	display_bitrates, .Lfunc_end1-display_bitrates
                                        # -- End function
	.globl	BitrateIndex                    # -- Begin function BitrateIndex
	.p2align	5
	.type	BitrateIndex,@function
BitrateIndex:                           # @BitrateIndex
# %bb.0:
	move	$a3, $a2
	move	$a2, $a0
	ori	$a0, $zero, 60
	mul.d	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(bitrate_table)
	addi.d	$a4, $a0, %pc_lo12(bitrate_table)
	move	$a0, $zero
	add.d	$a1, $a4, $a1
	ori	$a4, $zero, 15
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a0, 2
	ldx.w	$a5, $a1, $a5
	xor	$a6, $a5, $a2
	sltu	$a6, $zero, $a6
	add.w	$a0, $a0, $a6
	beq	$a5, $a2, .LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	bltu	$a0, $a4, .LBB2_1
.LBB2_3:
	bne	$a5, $a2, .LBB2_5
# %bb.4:
	ret
.LBB2_5:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	BitrateIndex, .Lfunc_end2-BitrateIndex
                                        # -- End function
	.globl	SmpFrqIndex                     # -- Begin function SmpFrqIndex
	.p2align	5
	.type	SmpFrqIndex,@function
SmpFrqIndex:                            # @SmpFrqIndex
# %bb.0:
	move	$a2, $a0
	lu12i.w	$a0, 7
	ori	$a3, $a0, 3327
	st.w	$zero, $a1, 0
	blt	$a3, $a2, .LBB3_5
# %bb.1:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3712
	beq	$a2, $a0, .LBB3_10
# %bb.2:
	lu12i.w	$a0, 5
	ori	$a1, $a0, 1570
	beq	$a2, $a1, .LBB3_11
# %bb.3:
	ori	$a1, $a0, 3520
	ori	$a0, $zero, 1
	bne	$a2, $a1, .LBB3_13
# %bb.4:
	ret
.LBB3_5:
	ori	$a0, $a0, 3328
	beq	$a2, $a0, .LBB3_9
# %bb.6:
	lu12i.w	$a0, 11
	ori	$a0, $a0, 2944
	beq	$a2, $a0, .LBB3_12
# %bb.7:
	lu12i.w	$a0, 10
	ori	$a0, $a0, 3140
	bne	$a2, $a0, .LBB3_13
# %bb.8:
	move	$a0, $zero
	ori	$a2, $zero, 1
	st.w	$a2, $a1, 0
	ret
.LBB3_9:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
.LBB3_10:
	ori	$a0, $zero, 2
	ret
.LBB3_11:
	move	$a0, $zero
	ret
.LBB3_12:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ret
.LBB3_13:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	SmpFrqIndex, .Lfunc_end3-SmpFrqIndex
                                        # -- End function
	.globl	mem_alloc                       # -- Begin function mem_alloc
	.p2align	5
	.type	mem_alloc,@function
mem_alloc:                              # @mem_alloc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$a1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_2:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	mem_alloc, .Lfunc_end4-mem_alloc
                                        # -- End function
	.globl	DetermineByteOrder              # -- Begin function DetermineByteOrder
	.p2align	5
	.type	DetermineByteOrder,@function
DetermineByteOrder:                     # @DetermineByteOrder
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 267300
	ori	$a0, $a0, 836
	st.w	$a0, $sp, 12
	addi.d	$a0, $sp, 19
	addi.d	$a1, $sp, 12
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 23
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 19
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 19
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 1
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB5_2:
	ori	$a0, $zero, 1
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	DetermineByteOrder, .Lfunc_end5-DetermineByteOrder
                                        # -- End function
	.globl	SwapBytesInWords                # -- Begin function SwapBytesInWords
	.p2align	5
	.type	SwapBytesInWords,@function
SwapBytesInWords:                       # @SwapBytesInWords
# %bb.0:
	blez	$a1, .LBB6_2
	.p2align	4, , 16
.LBB6_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a2, $a0, 0
	revb.2h	$a2, $a2
	st.h	$a2, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB6_1
.LBB6_2:                                # %._crit_edge
	ret
.Lfunc_end6:
	.size	SwapBytesInWords, .Lfunc_end6-SwapBytesInWords
                                        # -- End function
	.globl	empty_buffer                    # -- Begin function empty_buffer
	.p2align	5
	.type	empty_buffer,@function
empty_buffer:                           # @empty_buffer
# %bb.0:
	ld.w	$a2, $a0, 48
	ld.w	$a1, $a0, 32
	sub.w	$a2, $a2, $a1
	addi.w	$a3, $zero, -2
	blt	$a3, $a2, .LBB7_2
# %bb.1:
	addi.w	$a1, $a1, -1
	ld.d	$a2, $a0, 24
	st.w	$a1, $a0, 48
	ori	$a3, $zero, 8
	st.w	$a3, $a0, 52
	stx.b	$zero, $a2, $a1
.LBB7_2:
	ret
.Lfunc_end7:
	.size	empty_buffer, .Lfunc_end7-empty_buffer
                                        # -- End function
	.globl	copy_buffer                     # -- Begin function copy_buffer
	.p2align	5
	.type	copy_buffer,@function
copy_buffer:                            # @copy_buffer
# %bb.0:
	ld.w	$a5, $a2, 32
	ld.w	$a4, $a2, 48
	move	$a3, $a0
	beqz	$a1, .LBB8_3
# %bb.1:
	nor	$a0, $a4, $zero
	add.w	$a0, $a5, $a0
	bge	$a1, $a0, .LBB8_3
# %bb.2:
	addi.w	$a0, $zero, -1
	ret
.LBB8_3:                                # %._crit_edge26
	addi.d	$a1, $a5, -1
	addi.w	$a0, $a1, 0
	bge	$a4, $a0, .LBB8_8
# %bb.4:                                # %.lr.ph
	move	$a0, $zero
	.p2align	4, , 16
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 24
	ldx.b	$a4, $a4, $a1
	st.b	$a4, $a3, 0
	ld.w	$a4, $a2, 48
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.w	$a0, $a0, 1
	blt	$a4, $a1, .LBB8_5
# %bb.6:                                # %._crit_edge.loopexit
	ld.w	$a5, $a2, 32
	sub.w	$a1, $a4, $a5
	addi.w	$a3, $zero, -2
	blt	$a3, $a1, .LBB8_9
.LBB8_7:
	addi.w	$a1, $a5, -1
	ld.d	$a3, $a2, 24
	st.w	$a1, $a2, 48
	ori	$a4, $zero, 8
	st.w	$a4, $a2, 52
	stx.b	$zero, $a3, $a1
	ret
.LBB8_8:
	move	$a0, $zero
	sub.w	$a1, $a4, $a5
	addi.w	$a3, $zero, -2
	bge	$a3, $a1, .LBB8_7
.LBB8_9:                                # %empty_buffer.exit
	ret
.Lfunc_end8:
	.size	copy_buffer, .Lfunc_end8-copy_buffer
                                        # -- End function
	.globl	init_bit_stream_w               # -- Begin function init_bit_stream_w
	.p2align	5
	.type	init_bit_stream_w,@function
init_bit_stream_w:                      # @init_bit_stream_w
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$s0, 4
	ori	$a0, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_2
# %bb.1:                                # %alloc_buffer.exit
	st.d	$a0, $fp, 24
	st.w	$s0, $fp, 32
	lu12i.w	$a0, 3
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 8
	st.d	$a0, $fp, 48
	st.d	$zero, $fp, 40
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_2:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	init_bit_stream_w, .Lfunc_end9-init_bit_stream_w
                                        # -- End function
	.globl	alloc_buffer                    # -- Begin function alloc_buffer
	.p2align	5
	.type	alloc_buffer,@function
alloc_buffer:                           # @alloc_buffer
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_2
# %bb.1:                                # %mem_alloc.exit
	st.d	$a0, $s0, 24
	st.w	$fp, $s0, 32
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_2:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	alloc_buffer, .Lfunc_end10-alloc_buffer
                                        # -- End function
	.globl	desalloc_buffer                 # -- Begin function desalloc_buffer
	.p2align	5
	.type	desalloc_buffer,@function
desalloc_buffer:                        # @desalloc_buffer
# %bb.0:
	ld.d	$a0, $a0, 24
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end11:
	.size	desalloc_buffer, .Lfunc_end11-desalloc_buffer
                                        # -- End function
	.globl	putbits                         # -- Begin function putbits
	.p2align	5
	.type	putbits,@function
putbits:                                # @putbits
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ori	$a3, $zero, 33
	bge	$a2, $a3, .LBB12_7
# %bb.1:
	ld.d	$a3, $a0, 40
	add.d	$a3, $a3, $a2
	st.d	$a3, $a0, 40
	blez	$a2, .LBB12_6
.LBB12_2:                               # %.lr.ph
	pcalau12i	$a3, %pc_hi20(putmask)
	addi.d	$a3, $a3, %pc_lo12(putmask)
	ori	$a4, $zero, 8
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               #   in Loop: Header=BB12_4 Depth=1
	blez	$a2, .LBB12_6
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a0, 52
	slt	$a6, $a2, $a5
	masknez	$a7, $a5, $a6
	maskeqz	$a6, $a2, $a6
	or	$a6, $a6, $a7
	slli.d	$a7, $a6, 2
	ld.d	$t0, $a0, 24
	ld.w	$t1, $a0, 48
	ldx.w	$a7, $a3, $a7
	sub.w	$a2, $a2, $a6
	srl.w	$t2, $a1, $a2
	ldx.b	$t3, $t0, $t1
	and	$a7, $t2, $a7
	sub.d	$a5, $a5, $a6
	sll.w	$a5, $a7, $a5
	or	$a5, $t3, $a5
	stx.b	$a5, $t0, $t1
	ld.w	$a5, $a0, 52
	sub.d	$a7, $a5, $a6
	st.w	$a7, $a0, 52
	bne	$a5, $a6, .LBB12_3
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	ld.w	$a5, $a0, 48
	ld.d	$a6, $a0, 24
	st.w	$a4, $a0, 52
	addi.w	$a5, $a5, -1
	st.w	$a5, $a0, 48
	stx.b	$zero, $a6, $a5
	b	.LBB12_3
.LBB12_6:                               # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_7:                               # %.thread
	pcalau12i	$a3, %got_pc_hi20(stderr)
	ld.d	$a3, $a3, %got_pc_lo12(stderr)
	ld.d	$a3, $a3, 0
	pcalau12i	$a4, %pc_hi20(.L.str.11)
	addi.d	$a4, $a4, %pc_lo12(.L.str.11)
	move	$fp, $a2
	ori	$a2, $zero, 32
	move	$s0, $a0
	move	$a0, $a3
	move	$s1, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	ld.d	$a3, $s0, 40
	add.d	$a3, $a3, $fp
	st.d	$a3, $s0, 40
	b	.LBB12_2
.Lfunc_end12:
	.size	putbits, .Lfunc_end12-putbits
                                        # -- End function
	.type	s_freq_table,@object            # @s_freq_table
	.data
	.globl	s_freq_table
	.p2align	3, 0x0
s_freq_table:
	.dword	0x40360ccccccccccd              # double 22.050000000000001
	.dword	0x4038000000000000              # double 24
	.dword	0x4030000000000000              # double 16
	.dword	0x0000000000000000              # double 0
	.dword	0x40460ccccccccccd              # double 44.100000000000001
	.dword	0x4048000000000000              # double 48
	.dword	0x4040000000000000              # double 32
	.dword	0x0000000000000000              # double 0
	.size	s_freq_table, 64

	.type	bitrate_table,@object           # @bitrate_table
	.globl	bitrate_table
	.p2align	2, 0x0
bitrate_table:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	40                              # 0x28
	.word	48                              # 0x30
	.word	56                              # 0x38
	.word	64                              # 0x40
	.word	80                              # 0x50
	.word	96                              # 0x60
	.word	112                             # 0x70
	.word	128                             # 0x80
	.word	144                             # 0x90
	.word	160                             # 0xa0
	.word	0                               # 0x0
	.word	32                              # 0x20
	.word	40                              # 0x28
	.word	48                              # 0x30
	.word	56                              # 0x38
	.word	64                              # 0x40
	.word	80                              # 0x50
	.word	96                              # 0x60
	.word	112                             # 0x70
	.word	128                             # 0x80
	.word	160                             # 0xa0
	.word	192                             # 0xc0
	.word	224                             # 0xe0
	.word	256                             # 0x100
	.word	320                             # 0x140
	.size	bitrate_table, 120

	.type	NativeByteOrder,@object         # @NativeByteOrder
	.bss
	.globl	NativeByteOrder
	.p2align	2, 0x0
NativeByteOrder:
	.word	0                               # 0x0
	.size	NativeByteOrder, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"MPEG1 samplerates(kHz): 32 44.1 48 \n"
	.size	.L.str.1, 37

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"bitrates(kbs): "
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%i "
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"MPEG2 samplerates(kHz): 16 22.05 24 \n"
	.size	.L.str.4, 38

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Bitrate %dkbs not legal for %iHz output sampling.\n"
	.size	.L.str.5, 51

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"SmpFrqIndex: %ldHz is not a legal sample rate\n"
	.size	.L.str.6, 47

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Unable to allocate %s\n"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"ABCD"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"DCBA"
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"buffer"
	.size	.L.str.10, 7

	.type	putmask,@object                 # @putmask
	.data
	.globl	putmask
	.p2align	2, 0x0
putmask:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	15                              # 0xf
	.word	31                              # 0x1f
	.word	63                              # 0x3f
	.word	127                             # 0x7f
	.word	255                             # 0xff
	.size	putmask, 36

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"Cannot read or write more than %d bits at a time.\n"
	.size	.L.str.11, 51

	.section	".note.GNU-stack","",@progbits
	.addrsig
