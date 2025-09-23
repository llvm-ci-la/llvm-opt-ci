	.file	"arithmetic.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function do_ari
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
	.globl	do_ari
	.p2align	5
	.type	do_ari,@function
do_ari:                                 # @do_ari
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -144
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
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(ari_pos)
	st.w	$zero, $a3, %pc_lo12(ari_pos)
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_1)
	lu12i.w	$a0, 12320
	ori	$a0, $a0, 256
	vreplgr2vr.w	$vr2, $a0
	pcalau12i	$a0, %pc_hi20(char_to_index)
	addi.d	$s5, $a0, %pc_lo12(char_to_index)
	pcalau12i	$a0, %pc_hi20(index_to_char)
	addi.d	$s6, $a0, %pc_lo12(index_to_char)
	move	$a0, $zero
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.bu	$vr3, $vr2, 4
	vaddi.du	$vr4, $vr1, 1
	vaddi.du	$vr5, $vr0, 1
	add.d	$a2, $s5, $a0
	vpickev.w	$vr5, $vr5, $vr4
	vpickev.w	$vr6, $vr0, $vr1
	vaddi.wu	$vr6, $vr6, 5
	vstx	$vr5, $s5, $a0
	vst	$vr6, $a2, 16
	vpickve2gr.d	$a2, $vr4, 0
	add.d	$a2, $s6, $a2
	vstelm.w	$vr2, $a2, 0, 0
	vstelm.w	$vr3, $a2, 4, 0
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a0, $a0, 32
	vaddi.bu	$vr2, $vr2, 8
	bne	$a0, $a1, .LBB0_1
# %bb.2:                                # %vector.body46.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(freq)
	addi.d	$s7, $a0, %pc_lo12(freq)
	vrepli.w	$vr1, 1
	pcalau12i	$a0, %pc_hi20(cum_freq)
	addi.d	$s8, $a0, %pc_lo12(cum_freq)
	move	$a0, $zero
	vrepli.w	$vr2, 257
	vrepli.w	$vr3, 253
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB0_3:                                # %vector.body46
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s7, $a0
	vstx	$vr1, $s7, $a0
	vst	$vr1, $a2, 16
	add.d	$a2, $s8, $a0
	vsub.w	$vr4, $vr2, $vr0
	vsub.w	$vr5, $vr3, $vr0
	vstx	$vr4, $s8, $a0
	vst	$vr5, $a2, 16
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 8
	bne	$a0, $a1, .LBB0_3
# %bb.4:                                # %.preheader.i
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $s7, 1024
	st.d	$s2, $s8, 1024
	st.w	$zero, $s7, 0
	pcalau12i	$a0, %pc_hi20(buffer)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(buffer)
	pcalau12i	$a1, %pc_hi20(bits_to_go)
	ori	$a0, $zero, 8
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(bits_to_go)
	pcalau12i	$a0, %pc_hi20(low)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$zero, $a0, %pc_lo12(low)
	pcalau12i	$a0, %pc_hi20(high)
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4095
	st.d	$a1, $a0, %pc_lo12(high)
	pcalau12i	$a0, %pc_hi20(bits_to_follow)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $a0, %pc_lo12(bits_to_follow)
	pcalau12i	$a0, %got_pc_hi20(rle)
	ld.d	$s3, $a0, %got_pc_lo12(rle)
	ld.d	$a0, $s3, 0
	pcalau12i	$s1, %pc_hi20(rle_pos)
	st.w	$s2, $s1, %pc_lo12(rle_pos)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_21
# %bb.5:                                # %.lr.ph.preheader
	move	$a1, $zero
	lu12i.w	$a2, 3
	ori	$fp, $a2, 4095
	addi.w	$s4, $zero, -4
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %update_model.exit
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a1, $s1, %pc_lo12(rle_pos)
	ld.d	$a0, $s3, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s1, %pc_lo12(rle_pos)
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB0_21
.LBB0_7:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $s5, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(encode_symbol)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	bne	$a0, $fp, .LBB0_10
# %bb.8:                                # %.preheader.i5.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 1028
	.p2align	4, , 16
.LBB0_9:                                # %.preheader.i5
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s7, $a1
	addi.d	$a2, $a2, 1
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 1
	stx.w	$a2, $s7, $a1
	stx.w	$a0, $s8, $a1
	addi.d	$a1, $a1, -4
	add.d	$a0, $a2, $a0
	bne	$a1, $s4, .LBB0_9
.LBB0_10:                               # %.loopexit.i
                                        #   in Loop: Header=BB0_7 Depth=1
	addi.d	$a1, $s0, 1
	alsl.d	$a3, $s0, $s7, 2
	move	$a5, $s0
	addi.d	$a2, $zero, -1
	.p2align	4, , 16
.LBB0_11:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a5
	ld.w	$a4, $a3, 0
	ld.w	$a6, $a3, -4
	addi.d	$a3, $a3, -4
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	addi.w	$a5, $a5, -1
	beq	$a4, $a6, .LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	sub.w	$a5, $s0, $a2
	bge	$a5, $s0, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	ldx.bu	$a6, $s6, $s0
	ldx.bu	$a7, $s6, $a1
	stx.b	$a6, $s6, $a1
	stx.b	$a7, $s6, $s0
	slli.d	$a7, $a7, 2
	stx.w	$s0, $s5, $a7
	slli.d	$a6, $a6, 2
	stx.w	$a5, $s5, $a6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, 4
	blez	$a1, .LBB0_6
# %bb.15:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_7 Depth=1
	bstrpick.d	$a1, $a5, 31, 0
	xor	$a2, $s0, $a2
	sltu	$a3, $zero, $a2
	sub.d	$a2, $a1, $a3
	addi.d	$a2, $a2, 1
	ori	$a4, $zero, 4
	bltu	$a2, $a4, .LBB0_19
# %bb.16:                               # %vector.ph54
                                        #   in Loop: Header=BB0_7 Depth=1
	sub.d	$a4, $zero, $a3
	and	$a3, $a2, $s4
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a5, $a0, 31, 0
	alsl.d	$a0, $a5, $s8, 2
	addi.d	$a0, $a0, -16
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	and	$a4, $a4, $s4
	.p2align	4, , 16
.LBB0_17:                               # %vector.body55
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 0
	vaddi.wu	$vr0, $vr0, 1
	vst	$vr0, $a0, 0
	addi.d	$a4, $a4, -4
	addi.d	$a0, $a0, -16
	bnez	$a4, .LBB0_17
# %bb.18:                               # %middle.block59
                                        #   in Loop: Header=BB0_7 Depth=1
	beq	$a2, $a3, .LBB0_6
.LBB0_19:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a1, $a1, $s8, 2
	addi.d	$a1, $a1, -4
	.p2align	4, , 16
.LBB0_20:                               # %.lr.ph.i
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$s2, $a0, .LBB0_20
	b	.LBB0_6
.LBB0_21:                               # %._crit_edge
	ori	$a0, $zero, 257
	pcaddu18i	$ra, %call36(encode_symbol)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $t2, %pc_lo12(bits_to_follow)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(low)
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	ld.wu	$a3, $t0, %pc_lo12(buffer)
	addi.d	$a1, $a0, 1
	st.d	$a1, $t2, %pc_lo12(bits_to_follow)
	lu12i.w	$a0, 3
	ori	$a4, $a0, 4095
	srli.d	$a0, $a3, 1
	blt	$a4, $a2, .LBB0_29
# %bb.22:
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $t1, %pc_lo12(bits_to_go)
	st.w	$a0, $t0, %pc_lo12(buffer)
	addi.w	$a2, $a2, -1
	st.w	$a2, $t1, %pc_lo12(bits_to_go)
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	bnez	$a2, .LBB0_24
# %bb.23:
	pcalau12i	$a1, %got_pc_hi20(ari)
	ld.d	$a1, $a1, %got_pc_lo12(ari)
	ld.wu	$a2, $a7, %pc_lo12(ari_pos)
	ld.d	$a1, $a1, 0
	addi.d	$a3, $a2, 1
	st.w	$a3, $a7, %pc_lo12(ari_pos)
	stx.b	$a0, $a1, $a2
	ld.d	$a1, $t2, %pc_lo12(bits_to_follow)
	ori	$a2, $zero, 8
	st.w	$a2, $t1, %pc_lo12(bits_to_go)
.LBB0_24:                               # %output_bit.exit.i.i
	blez	$a1, .LBB0_37
# %bb.25:                               # %.lr.ph.split.us.i.i.preheader
	addi.w	$a3, $zero, -258
	lu32i.d	$a3, 0
	pcalau12i	$a4, %got_pc_hi20(ari)
	ld.d	$a4, $a4, %got_pc_lo12(ari)
	ori	$a5, $zero, 1
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %output_bit.exit4.us.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	move	$a6, $a1
	addi.d	$a1, $a1, -1
	st.d	$a1, $t2, %pc_lo12(bits_to_follow)
	bge	$a5, $a6, .LBB0_36
.LBB0_27:                               # %.lr.ph.split.us.i.i
                                        # =>This Inner Loop Header: Depth=1
	and	$a0, $a0, $a3
	srli.d	$a0, $a0, 1
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 128
	bnez	$a2, .LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	ld.wu	$a1, $a7, %pc_lo12(ari_pos)
	ld.d	$a2, $a4, 0
	addi.d	$a6, $a1, 1
	st.w	$a6, $a7, %pc_lo12(ari_pos)
	stx.b	$a0, $a2, $a1
	ld.d	$a1, $t2, %pc_lo12(bits_to_follow)
	ori	$a2, $zero, 8
	b	.LBB0_26
.LBB0_29:
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $t1, %pc_lo12(bits_to_go)
	ori	$a0, $a0, 128
	st.w	$a0, $t0, %pc_lo12(buffer)
	addi.w	$a2, $a2, -1
	st.w	$a2, $t1, %pc_lo12(bits_to_go)
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	bnez	$a2, .LBB0_31
# %bb.30:
	pcalau12i	$a1, %got_pc_hi20(ari)
	ld.d	$a1, $a1, %got_pc_lo12(ari)
	ld.wu	$a2, $a7, %pc_lo12(ari_pos)
	ld.d	$a1, $a1, 0
	addi.d	$a3, $a2, 1
	st.w	$a3, $a7, %pc_lo12(ari_pos)
	stx.b	$a0, $a1, $a2
	ld.d	$a1, $t2, %pc_lo12(bits_to_follow)
	ori	$a2, $zero, 8
	st.w	$a2, $t1, %pc_lo12(bits_to_go)
.LBB0_31:                               # %output_bit.exit.i1.i
	blez	$a1, .LBB0_37
# %bb.32:                               # %.lr.ph.split.i.i.preheader
	pcalau12i	$a3, %got_pc_hi20(ari)
	ld.d	$a3, $a3, %got_pc_lo12(ari)
	ori	$a4, $zero, 1
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %output_bit.exit4.i.i
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	st.d	$a1, $t2, %pc_lo12(bits_to_follow)
	bge	$a4, $a5, .LBB0_36
.LBB0_34:                               # %.lr.ph.split.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a2, -1
	bstrpick.d	$a0, $a0, 31, 1
	bnez	$a2, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	ld.wu	$a1, $a7, %pc_lo12(ari_pos)
	ld.d	$a2, $a3, 0
	addi.d	$a5, $a1, 1
	st.w	$a5, $a7, %pc_lo12(ari_pos)
	stx.b	$a0, $a2, $a1
	ld.d	$a1, $t2, %pc_lo12(bits_to_follow)
	ori	$a2, $zero, 8
	b	.LBB0_33
.LBB0_36:                               # %bit_plus_follow.exit.sink.split.i
	st.w	$a0, $t0, %pc_lo12(buffer)
	st.w	$a2, $t1, %pc_lo12(bits_to_go)
.LBB0_37:                               # %done_encoding.exit
	srl.w	$a0, $a0, $a2
	pcalau12i	$a1, %got_pc_hi20(ari)
	ld.d	$a1, $a1, %got_pc_lo12(ari)
	ld.wu	$a2, $a7, %pc_lo12(ari_pos)
	ld.d	$a1, $a1, 0
	addi.d	$a3, $a2, 1
	st.w	$a3, $a7, %pc_lo12(ari_pos)
	stx.b	$a0, $a1, $a2
	ld.w	$a0, $a7, %pc_lo12(ari_pos)
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
.Lfunc_end0:
	.size	do_ari, .Lfunc_end0-do_ari
                                        # -- End function
	.p2align	5                               # -- Begin function encode_symbol
	.type	encode_symbol,@function
encode_symbol:                          # @encode_symbol
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(high)
	ld.d	$a3, $a1, %pc_lo12(high)
	pcalau12i	$a2, %pc_hi20(low)
	ld.d	$a4, $a2, %pc_lo12(low)
	sub.d	$a3, $a3, $a4
	addi.d	$a3, $a3, 1
	pcalau12i	$a5, %pc_hi20(cum_freq)
	addi.d	$a5, $a5, %pc_lo12(cum_freq)
	alsl.d	$a6, $a0, $a5, 2
	ld.w	$a6, $a6, -4
	ld.w	$a7, $a5, 0
	slli.d	$a0, $a0, 2
	mul.d	$a6, $a3, $a6
	div.d	$a6, $a6, $a7
	ldx.w	$a0, $a5, $a0
	add.d	$a5, $a4, $a6
	addi.d	$fp, $a5, -1
	st.d	$fp, $a1, %pc_lo12(high)
	mul.d	$a0, $a3, $a0
	div.d	$a0, $a0, $a7
	add.d	$s0, $a0, $a4
	pcalau12i	$a0, %pc_hi20(buffer)
	ld.w	$a5, $a0, %pc_lo12(buffer)
	pcalau12i	$a3, %pc_hi20(bits_to_go)
	ld.w	$t8, $a3, %pc_lo12(bits_to_go)
	st.d	$s0, $a2, %pc_lo12(low)
	lu12i.w	$a4, 7
	ori	$a4, $a4, 4095
	pcalau12i	$a6, %got_pc_hi20(ari)
	ld.d	$a6, $a6, %got_pc_lo12(ari)
	pcalau12i	$a7, %pc_hi20(ari_pos)
	pcalau12i	$t0, %pc_hi20(bits_to_follow)
	addi.w	$t1, $zero, -258
	lu32i.d	$t1, 0
	ori	$t2, $zero, 1
	lu12i.w	$t3, 8
	lu12i.w	$t4, -8
	ori	$t5, $zero, 2
	lu12i.w	$t6, 4
	lu12i.w	$t7, -4
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_1:                                # %._crit_edge.i
                                        #   in Loop: Header=BB1_3 Depth=1
	st.w	$a5, $a0, %pc_lo12(buffer)
	st.w	$t8, $a3, %pc_lo12(bits_to_go)
.LBB1_2:                                # %bit_plus_follow.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$fp, $a2, %pc_lo12(low)
	ld.d	$s1, $a1, %pc_lo12(high)
	slli.d	$s0, $fp, 1
	st.d	$s0, $a2, %pc_lo12(low)
	slli.d	$fp, $s1, 1
	addi.d	$fp, $fp, 1
	st.d	$fp, $a1, %pc_lo12(high)
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_14 Depth 2
	bge	$a4, $fp, .LBB1_8
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	bge	$s0, $t3, .LBB1_10
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	srli.d	$s1, $fp, 14
	bltu	$t5, $s1, .LBB1_23
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	blt	$s0, $t6, .LBB1_23
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s1, $t0, %pc_lo12(bits_to_follow)
	addi.d	$s1, $s1, 1
	st.d	$s1, $t0, %pc_lo12(bits_to_follow)
	add.d	$s0, $s0, $t7
	st.d	$s0, $a2, %pc_lo12(low)
	add.d	$fp, $fp, $t7
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a5, $a5, 31, 1
	st.w	$a5, $a0, %pc_lo12(buffer)
	addi.w	$t8, $t8, -1
	st.w	$t8, $a3, %pc_lo12(bits_to_go)
	beqz	$t8, .LBB1_12
# %bb.9:                                # %output_bit.exit.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$fp, $t0, %pc_lo12(bits_to_follow)
	bgtz	$fp, .LBB1_14
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	and	$a5, $a5, $t1
	srli.d	$a5, $a5, 1
	addi.d	$a5, $a5, 128
	st.w	$a5, $a0, %pc_lo12(buffer)
	addi.w	$t8, $t8, -1
	st.w	$t8, $a3, %pc_lo12(bits_to_go)
	beqz	$t8, .LBB1_16
# %bb.11:                               # %output_bit.exit.i9
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$fp, $t0, %pc_lo12(bits_to_follow)
	bgtz	$fp, .LBB1_18
	b	.LBB1_21
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$t8, $a7, %pc_lo12(ari_pos)
	ld.d	$fp, $a6, 0
	addi.d	$s0, $t8, 1
	st.w	$s0, $a7, %pc_lo12(ari_pos)
	stx.b	$a5, $fp, $t8
	ori	$t8, $zero, 8
	st.w	$t8, $a3, %pc_lo12(bits_to_go)
	ld.d	$fp, $t0, %pc_lo12(bits_to_follow)
	bgtz	$fp, .LBB1_14
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_13:                               # %output_bit.exit4.us.i
                                        #   in Loop: Header=BB1_14 Depth=2
	move	$s0, $fp
	addi.d	$fp, $fp, -1
	st.d	$fp, $t0, %pc_lo12(bits_to_follow)
	bge	$t2, $s0, .LBB1_1
.LBB1_14:                               # %.lr.ph.split.us.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$a5, $a5, $t1
	srli.d	$a5, $a5, 1
	addi.w	$t8, $t8, -1
	addi.d	$a5, $a5, 128
	bnez	$t8, .LBB1_13
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=2
	ld.wu	$t8, $a7, %pc_lo12(ari_pos)
	ld.d	$fp, $a6, 0
	addi.d	$s0, $t8, 1
	st.w	$s0, $a7, %pc_lo12(ari_pos)
	stx.b	$a5, $fp, $t8
	ld.d	$fp, $t0, %pc_lo12(bits_to_follow)
	ori	$t8, $zero, 8
	b	.LBB1_13
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$t8, $a7, %pc_lo12(ari_pos)
	ld.d	$fp, $a6, 0
	addi.d	$s0, $t8, 1
	st.w	$s0, $a7, %pc_lo12(ari_pos)
	stx.b	$a5, $fp, $t8
	ori	$t8, $zero, 8
	st.w	$t8, $a3, %pc_lo12(bits_to_go)
	ld.d	$fp, $t0, %pc_lo12(bits_to_follow)
	bgtz	$fp, .LBB1_18
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_17:                               # %output_bit.exit4.i
                                        #   in Loop: Header=BB1_18 Depth=2
	move	$s0, $fp
	addi.d	$fp, $fp, -1
	st.d	$fp, $t0, %pc_lo12(bits_to_follow)
	bge	$t2, $s0, .LBB1_20
.LBB1_18:                               # %.lr.ph.split.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t8, $t8, -1
	bstrpick.d	$a5, $a5, 31, 1
	bnez	$t8, .LBB1_17
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=2
	ld.wu	$t8, $a7, %pc_lo12(ari_pos)
	ld.d	$fp, $a6, 0
	addi.d	$s0, $t8, 1
	st.w	$s0, $a7, %pc_lo12(ari_pos)
	stx.b	$a5, $fp, $t8
	ld.d	$fp, $t0, %pc_lo12(bits_to_follow)
	ori	$t8, $zero, 8
	b	.LBB1_17
.LBB1_20:                               # %._crit_edge.i13
                                        #   in Loop: Header=BB1_3 Depth=1
	st.w	$a5, $a0, %pc_lo12(buffer)
	st.w	$t8, $a3, %pc_lo12(bits_to_go)
.LBB1_21:                               # %bit_plus_follow.exit14
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$fp, $a2, %pc_lo12(low)
	ld.d	$s0, $a1, %pc_lo12(high)
	add.d	$fp, $fp, $t4
	st.d	$fp, $a2, %pc_lo12(low)
	add.d	$fp, $s0, $t4
.LBB1_22:                               # %bit_plus_follow.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$fp, $a1, %pc_lo12(high)
	b	.LBB1_2
.LBB1_23:
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	encode_symbol, .Lfunc_end1-encode_symbol
                                        # -- End function
	.type	rle_pos,@object                 # @rle_pos
	.bss
	.globl	rle_pos
	.p2align	2, 0x0
rle_pos:
	.word	0                               # 0x0
	.size	rle_pos, 4

	.type	ari_pos,@object                 # @ari_pos
	.globl	ari_pos
	.p2align	2, 0x0
ari_pos:
	.word	0                               # 0x0
	.size	ari_pos, 4

	.type	char_to_index,@object           # @char_to_index
	.local	char_to_index
	.comm	char_to_index,1024,4
	.type	cum_freq,@object                # @cum_freq
	.local	cum_freq
	.comm	cum_freq,1032,4
	.type	low,@object                     # @low
	.globl	low
	.p2align	3, 0x0
low:
	.dword	0                               # 0x0
	.size	low, 8

	.type	high,@object                    # @high
	.globl	high
	.p2align	3, 0x0
high:
	.dword	0                               # 0x0
	.size	high, 8

	.type	bits_to_follow,@object          # @bits_to_follow
	.globl	bits_to_follow
	.p2align	3, 0x0
bits_to_follow:
	.dword	0                               # 0x0
	.size	bits_to_follow, 8

	.type	buffer,@object                  # @buffer
	.local	buffer
	.comm	buffer,4,4
	.type	bits_to_go,@object              # @bits_to_go
	.local	bits_to_go
	.comm	bits_to_go,4,4
	.type	index_to_char,@object           # @index_to_char
	.local	index_to_char
	.comm	index_to_char,258,1
	.type	freq,@object                    # @freq
	.local	freq
	.comm	freq,1032,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
