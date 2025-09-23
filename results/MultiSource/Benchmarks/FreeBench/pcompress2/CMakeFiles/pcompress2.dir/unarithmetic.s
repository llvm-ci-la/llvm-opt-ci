	.file	"unarithmetic.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function do_deari
.LCPI0_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	do_deari
	.p2align	5
	.type	do_deari,@function
do_deari:                               # @do_deari
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$t4, $a0, 31, 0
	pcalau12i	$a1, %pc_hi20(in_size)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(in_size)
	pcalau12i	$a0, %pc_hi20(in_pos)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(in_pos)
	pcalau12i	$a0, %pc_hi20(deari_pos)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(deari_pos)
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_1)
	lu12i.w	$a0, 12320
	ori	$a0, $a0, 256
	vreplgr2vr.w	$vr2, $a0
	pcalau12i	$a0, %pc_hi20(char_to_index)
	addi.d	$t7, $a0, %pc_lo12(char_to_index)
	pcalau12i	$a0, %pc_hi20(index_to_char)
	addi.d	$s5, $a0, %pc_lo12(index_to_char)
	move	$a1, $zero
	ori	$a2, $zero, 1024
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.bu	$vr3, $vr2, 4
	vaddi.du	$vr4, $vr1, 1
	vaddi.du	$vr5, $vr0, 1
	add.d	$a0, $t7, $a1
	vpickev.w	$vr5, $vr5, $vr4
	vpickev.w	$vr6, $vr0, $vr1
	vaddi.wu	$vr6, $vr6, 5
	vstx	$vr5, $t7, $a1
	vst	$vr6, $a0, 16
	vpickve2gr.d	$a0, $vr4, 0
	add.d	$a0, $s5, $a0
	vstelm.w	$vr2, $a0, 0, 0
	vstelm.w	$vr3, $a0, 4, 0
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a1, $a1, 32
	vaddi.bu	$vr2, $vr2, 8
	bne	$a1, $a2, .LBB0_1
# %bb.2:                                # %vector.body88.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(freq)
	addi.d	$a5, $a0, %pc_lo12(freq)
	vrepli.w	$vr1, 1
	pcalau12i	$a0, %pc_hi20(cum_freq)
	addi.d	$s7, $a0, %pc_lo12(cum_freq)
	move	$a0, $zero
	vrepli.w	$vr2, 257
	vrepli.w	$vr3, 253
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB0_3:                                # %vector.body88
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a5, $a0
	vstx	$vr1, $a5, $a0
	vst	$vr1, $a2, 16
	add.d	$a2, $s7, $a0
	vsub.w	$vr4, $vr2, $vr0
	vsub.w	$vr5, $vr3, $vr0
	vstx	$vr4, $s7, $a0
	vst	$vr5, $a2, 16
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 8
	bne	$a0, $a1, .LBB0_3
# %bb.4:                                # %.preheader.i
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $a5, 1024
	st.d	$a0, $s7, 1024
	st.w	$zero, $a5, 0
	pcalau12i	$a7, %pc_hi20(bits_to_go)
	pcalau12i	$t0, %pc_hi20(buffer)
	ld.w	$a4, $t0, %pc_lo12(buffer)
	st.w	$zero, $a7, %pc_lo12(bits_to_go)
	pcalau12i	$t1, %pc_hi20(garbage_bits)
	st.w	$zero, $t1, %pc_lo12(garbage_bits)
	pcalau12i	$a0, %got_pc_hi20(in)
	ld.d	$a0, $a0, %got_pc_lo12(in)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	move	$t3, $zero
	move	$t6, $zero
	move	$t2, $zero
	move	$t5, $zero
	ori	$a2, $zero, 16
	ori	$a3, $zero, 14
	b	.LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	addi.d	$a0, $t2, 1
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a4, %pc_lo12(in_pos)
	ldx.bu	$a4, $a1, $t2
	ori	$t6, $zero, 8
	move	$t2, $a0
	.p2align	4, , 16
.LBB0_6:                                # %input_bit.exit.i
                                        #   in Loop: Header=BB0_7 Depth=1
	slli.d	$a0, $t3, 1
	addi.w	$a6, $a4, 0
	andi	$a4, $a4, 1
	srai.d	$a6, $a6, 1
	st.w	$a6, $t0, %pc_lo12(buffer)
	addi.w	$t6, $t6, -1
	st.w	$t6, $a7, %pc_lo12(bits_to_go)
	addi.w	$a2, $a2, -1
	or	$t3, $a0, $a4
	move	$a4, $a6
	beqz	$a2, .LBB0_11
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	bnez	$t6, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	bltu	$t2, $t4, .LBB0_5
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addi.w	$a0, $t5, 1
	st.w	$a0, $t1, %pc_lo12(garbage_bits)
	bge	$t5, $a3, .LBB0_42
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	ori	$t6, $zero, 8
	move	$t5, $a0
	b	.LBB0_6
.LBB0_11:                               # %start_decoding.exit.preheader
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	move	$t4, $zero
	lu12i.w	$a0, 15
	ori	$s8, $a0, 4095
	addi.d	$a0, $s7, 4
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$t6, $zero, 0
	lu32i.d	$t6, 1
	lu12i.w	$t7, 8
	lu12i.w	$fp, -8
	lu12i.w	$a0, 7
	ori	$s0, $a0, 4095
	lu12i.w	$s1, -4
	lu12i.w	$s2, 4
	lu12i.w	$a0, 3
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	ori	$s3, $zero, 2
	.p2align	4, , 16
.LBB0_12:                               # %start_decoding.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_40 Depth 2
	move	$ra, $zero
	move	$a1, $zero
	move	$t2, $zero
	sub.d	$a0, $s8, $t4
	ld.w	$t8, $s7, 0
	addi.d	$a6, $a0, 1
	sub.d	$a0, $t3, $t4
	addi.d	$a0, $a0, 1
	mul.d	$a0, $a0, $t8
	addi.d	$a0, $a0, -1
	div.d	$a0, $a0, $a6
	addi.w	$a2, $a0, 0
	ori	$a4, $zero, 1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_13:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s6, $a1
	move	$s4, $a4
	ld.w	$a0, $a3, 0
	add.d	$t2, $t2, $t6
	addi.d	$a1, $a1, 1
	addi.d	$ra, $ra, 1
	addi.d	$a3, $a3, 4
	addi.w	$a4, $a4, 1
	blt	$a2, $a0, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a2, $a3, -8
	mul.d	$a2, $a6, $a2
	div.d	$a2, $a2, $t8
	add.d	$a2, $t4, $a2
	addi.d	$s8, $a2, -1
	ld.w	$a4, $a7, %pc_lo12(bits_to_go)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.wu	$a2, $a2, %pc_lo12(in_pos)
	ld.w	$a3, $t1, %pc_lo12(garbage_bits)
	ld.w	$s7, $t0, %pc_lo12(buffer)
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	ld.wu	$s5, $t5, %pc_lo12(in_size)
	ld.d	$t5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t5, $t5, 0
	mul.d	$a0, $a6, $a0
	div.d	$a0, $a0, $t8
	add.d	$t4, $a0, $t4
	ori	$t8, $zero, 14
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_15:                               # %.sink.split.i
                                        #   in Loop: Header=BB0_18 Depth=2
	add.d	$t3, $a0, $t3
	add.d	$t4, $a0, $t4
	add.d	$s8, $a0, $s8
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	beqz	$a4, .LBB0_22
.LBB0_17:                               # %input_bit.exit.i14
                                        #   in Loop: Header=BB0_18 Depth=2
	slli.d	$t4, $t4, 1
	slli.d	$a0, $s8, 1
	addi.d	$s8, $a0, 1
	slli.d	$a0, $t3, 1
	addi.w	$a6, $s7, 0
	andi	$t3, $s7, 1
	srai.d	$s7, $a6, 1
	st.w	$s7, $t0, %pc_lo12(buffer)
	addi.w	$a4, $a4, -1
	st.w	$a4, $a7, %pc_lo12(bits_to_go)
	or	$t3, $a0, $t3
.LBB0_18:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s8, $t7, .LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=2
	move	$a0, $fp
	blt	$s0, $t4, .LBB0_15
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	blt	$t4, $s2, .LBB0_26
# %bb.21:                               #   in Loop: Header=BB0_18 Depth=2
	srli.d	$a6, $s8, 14
	move	$a0, $s1
	bgeu	$s3, $a6, .LBB0_15
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=2
	bgeu	$a2, $s5, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_18 Depth=2
	addi.d	$a0, $a2, 1
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a4, %pc_lo12(in_pos)
	ldx.bu	$s7, $t5, $a2
	ori	$a4, $zero, 8
	move	$a2, $a0
	b	.LBB0_17
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=2
	addi.w	$a0, $a3, 1
	st.w	$a0, $t1, %pc_lo12(garbage_bits)
	bge	$a3, $t8, .LBB0_42
# %bb.25:                               #   in Loop: Header=BB0_18 Depth=2
	ori	$a4, $zero, 8
	move	$a3, $a0
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_26:                               # %decode_symbol.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	ori	$a0, $zero, 257
	beq	$a1, $a0, .LBB0_41
# %bb.27:                               #   in Loop: Header=BB0_12 Depth=1
	srai.d	$a3, $t2, 32
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ldx.bu	$a2, $s5, $a3
	pcalau12i	$a0, %got_pc_hi20(deari)
	ld.d	$a0, $a0, %got_pc_lo12(deari)
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ld.wu	$a4, $t2, %pc_lo12(deari_pos)
	ld.d	$a0, $a0, 0
	addi.d	$a6, $a4, 1
	st.w	$a6, $t2, %pc_lo12(deari_pos)
	stx.b	$a2, $a0, $a4
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $s7, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a4, .LBB0_30
# %bb.28:                               # %.preheader.i15.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	move	$a0, $zero
	ori	$a4, $zero, 1028
	.p2align	4, , 16
.LBB0_29:                               # %.preheader.i15
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a6, $a5, $a4
	addi.d	$a6, $a6, 1
	bstrpick.d	$t2, $a6, 31, 31
	add.w	$a6, $a6, $t2
	srai.d	$a6, $a6, 1
	stx.w	$a6, $a5, $a4
	stx.w	$a0, $s7, $a4
	addi.d	$a4, $a4, -4
	addi.w	$t2, $zero, -4
	add.d	$a0, $a6, $a0
	bne	$a4, $t2, .LBB0_29
.LBB0_30:                               # %.loopexit.i.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a0, $zero, -2
	sub.d	$a4, $a0, $s6
	addi.d	$t5, $s4, 1
	alsl.d	$a6, $s4, $a5, 2
	.p2align	4, , 16
.LBB0_31:                               # %.loopexit.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t2, $s4
	ld.w	$a0, $a6, 0
	ld.w	$t8, $a6, -4
	addi.d	$a6, $a6, -4
	addi.w	$a4, $a4, 1
	addi.d	$t5, $t5, -1
	addi.w	$s4, $s4, -1
	beq	$a0, $t8, .LBB0_31
# %bb.32:                               #   in Loop: Header=BB0_12 Depth=1
	bge	$t5, $a1, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_12 Depth=1
	ldx.bu	$a1, $s5, $t5
	sub.d	$t8, $zero, $a4
	stx.b	$a2, $s5, $t5
	stx.b	$a1, $s5, $a3
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	stx.w	$ra, $a3, $a1
	slli.d	$a1, $a2, 2
	stx.w	$t8, $a3, $a1
.LBB0_34:                               #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a0, $a0, 1
	st.w	$a0, $a6, 4
	blez	$t5, .LBB0_12
# %bb.35:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_12 Depth=1
	sub.w	$a0, $zero, $a4
	bstrpick.d	$a1, $a0, 31, 0
	sltu	$a0, $zero, $a4
	sub.d	$a2, $a1, $a0
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB0_39
# %bb.36:                               # %vector.ph96
                                        #   in Loop: Header=BB0_12 Depth=1
	sub.d	$a4, $zero, $a0
	addi.w	$a6, $zero, -4
	and	$a0, $a2, $a6
	sub.d	$a1, $a1, $a0
	bstrpick.d	$t2, $t2, 31, 0
	alsl.d	$a3, $t2, $s7, 2
	addi.d	$a3, $a3, -16
	add.d	$a4, $a4, $t2
	addi.d	$a4, $a4, 1
	and	$a4, $a4, $a6
	.p2align	4, , 16
.LBB0_37:                               # %vector.body97
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vaddi.wu	$vr0, $vr0, 1
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, -16
	bnez	$a4, .LBB0_37
# %bb.38:                               # %middle.block101
                                        #   in Loop: Header=BB0_12 Depth=1
	beq	$a2, $a0, .LBB0_12
.LBB0_39:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a1, $a1, $s7, 2
	addi.d	$a1, $a1, -4
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_40:                               # %.lr.ph.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$a3, $a0, .LBB0_40
	b	.LBB0_12
.LBB0_41:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(deari_pos)
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB0_42:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	do_deari, .Lfunc_end0-do_deari
                                        # -- End function
	.type	in_size,@object                 # @in_size
	.bss
	.globl	in_size
	.p2align	2, 0x0
in_size:
	.word	0                               # 0x0
	.size	in_size, 4

	.type	in_pos,@object                  # @in_pos
	.globl	in_pos
	.p2align	2, 0x0
in_pos:
	.word	0                               # 0x0
	.size	in_pos, 4

	.type	deari_pos,@object               # @deari_pos
	.globl	deari_pos
	.p2align	2, 0x0
deari_pos:
	.word	0                               # 0x0
	.size	deari_pos, 4

	.type	cum_freq,@object                # @cum_freq
	.globl	cum_freq
	.p2align	2, 0x0
cum_freq:
	.space	1032
	.size	cum_freq, 1032

	.type	index_to_char,@object           # @index_to_char
	.globl	index_to_char
index_to_char:
	.space	258
	.size	index_to_char, 258

	.type	char_to_index,@object           # @char_to_index
	.globl	char_to_index
	.p2align	2, 0x0
char_to_index:
	.space	1024
	.size	char_to_index, 1024

	.type	freq,@object                    # @freq
	.globl	freq
	.p2align	2, 0x0
freq:
	.space	1032
	.size	freq, 1032

	.type	buffer,@object                  # @buffer
	.globl	buffer
	.p2align	2, 0x0
buffer:
	.word	0                               # 0x0
	.size	buffer, 4

	.type	bits_to_go,@object              # @bits_to_go
	.globl	bits_to_go
	.p2align	2, 0x0
bits_to_go:
	.word	0                               # 0x0
	.size	bits_to_go, 4

	.type	garbage_bits,@object            # @garbage_bits
	.globl	garbage_bits
	.p2align	2, 0x0
garbage_bits:
	.word	0                               # 0x0
	.size	garbage_bits, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Bad input file\n"
	.size	.L.str, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
