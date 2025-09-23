	.file	"hsfc.c"
	.text
	.globl	hsfc2d                          # -- Begin function hsfc2d
	.p2align	5
	.type	hsfc2d,@function
hsfc2d:                                 # @hsfc2d
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(hsfc2d.init)
	ld.bu	$a4, $a3, %pc_lo12(hsfc2d.init)
	move	$fp, $a2
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(hsfc2d.gray_inv)
	addi.d	$s1, $a0, %pc_lo12(hsfc2d.gray_inv)
	bnez	$a4, .LBB0_2
# %bb.1:                                # %.preheader52
	lu12i.w	$a0, 8240
	ori	$a0, $a0, 256
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 1
	st.b	$a0, $a3, %pc_lo12(hsfc2d.init)
.LBB0_2:
	beqz	$a1, .LBB0_10
# %bb.3:                                # %.lr.ph62
	sltui	$a0, $a1, 2
	ori	$a2, $zero, 2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s2, $a0, $a2
	addi.d	$a0, $s2, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	addi.d	$a2, $a0, 4
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a2, $zero
	move	$a1, $zero
	slli.d	$a3, $s2, 4
	sub.w	$a3, $zero, $a3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 2
	ori	$a6, $zero, 32
	ori	$a7, $zero, 3
	ori	$t0, $zero, 1
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_4:                                #   in Loop: Header=BB0_7 Depth=1
	xori	$a1, $a1, 3
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	move	$t1, $t0
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	addi.w	$a4, $a4, 1
	addi.w	$a0, $a0, -1
	addi.d	$a5, $a5, 2
	move	$t0, $a2
	move	$a2, $t1
	beq	$a3, $a0, .LBB0_10
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $s0, 0
	addi.d	$t2, $a0, 31
	ld.w	$t3, $s0, 4
	srl.w	$t1, $t1, $t2
	andi	$t1, $t1, 1
	sll.w	$t1, $t1, $a2
	srl.w	$t2, $t3, $t2
	andi	$t2, $t2, 1
	sll.w	$t2, $t2, $t0
	or	$t1, $t2, $t1
	xor	$t1, $t1, $a1
	ldx.bu	$t1, $s1, $t1
	bstrpick.d	$t2, $a4, 31, 4
	andi	$t3, $a5, 30
	sltui	$t4, $t3, 1
	sub.d	$t2, $t2, $t4
	bstrpick.d	$t2, $t2, 31, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t5, $fp, $t2
	sub.d	$t3, $a6, $t3
	masknez	$t3, $t3, $t4
	sll.w	$t3, $t1, $t3
	or	$t3, $t5, $t3
	stx.w	$t3, $fp, $t2
	beqz	$t1, .LBB0_5
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	beq	$t1, $a7, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	move	$t1, $a2
	move	$a2, $t0
	b	.LBB0_6
.LBB0_10:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	hsfc2d, .Lfunc_end0-hsfc2d
                                        # -- End function
	.globl	hsfc3d                          # -- Begin function hsfc3d
	.p2align	5
	.type	hsfc3d,@function
hsfc3d:                                 # @hsfc3d
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(hsfc3d.init)
	ld.bu	$a4, $a3, %pc_lo12(hsfc3d.init)
	move	$fp, $a2
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(hsfc3d.gray_inv)
	addi.d	$s1, $a0, %pc_lo12(hsfc3d.gray_inv)
	bnez	$a4, .LBB1_2
# %bb.1:                                # %.preheader81
	lu12i.w	$a0, 8240
	ori	$a0, $a0, 256
	lu32i.d	$a0, 263687
	lu52i.d	$a0, $a0, 80
	st.d	$a0, $s1, 0
	ori	$a0, $zero, 1
	st.b	$a0, $a3, %pc_lo12(hsfc3d.init)
.LBB1_2:
	beqz	$a1, .LBB1_14
# %bb.3:                                # %.lr.ph92.preheader
	sltui	$a0, $a1, 3
	ori	$a2, $zero, 3
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s2, $a0, $a2
	addi.d	$a0, $s2, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	addi.d	$a2, $a0, 4
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 5
	bstrpick.d	$a0, $a0, 31, 5
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2752
	lu32i.d	$a1, 10
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 32
	sub.w	$a0, $zero, $a0
	ori	$a7, $zero, 2
	ori	$t1, $zero, 4
	ori	$a1, $zero, 3
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	ori	$a3, $zero, 32
	ori	$a4, $zero, 7
	pcalau12i	$a5, %pc_hi20(.LJTI1_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI1_0)
	move	$a6, $zero
	move	$t0, $zero
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_4:                                #   in Loop: Header=BB1_6 Depth=1
	move	$t2, $t0
	move	$t3, $a7
	move	$t0, $t1
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a6, $a6, -1
	addi.w	$a1, $a1, 3
	move	$t1, $t0
	move	$a7, $t3
	move	$t0, $t2
	beq	$a0, $a6, .LBB1_14
.LBB1_6:                                # %.lr.ph92
                                        # =>This Inner Loop Header: Depth=1
	and	$t2, $t0, $a2
	slli.d	$t2, $t2, 1
	ldx.w	$t2, $s0, $t2
	and	$t3, $a7, $a2
	slli.d	$t3, $t3, 1
	ldx.w	$t3, $s0, $t3
	addi.d	$t4, $a6, 31
	srl.w	$t2, $t2, $t4
	xor	$t2, $t2, $t0
	srl.w	$t3, $t3, $t4
	and	$t5, $t1, $a2
	slli.d	$t5, $t5, 1
	ldx.w	$t5, $s0, $t5
	xor	$t3, $t3, $a7
	andi	$t3, $t3, 1
	bstrins.d	$t2, $t3, 63, 1
	srl.w	$t3, $t5, $t4
	xor	$t3, $t3, $t1
	bstrins.d	$t2, $t3, 2, 2
	ldx.bu	$t2, $s1, $t2
	bstrpick.d	$t3, $a1, 31, 5
	andi	$t4, $a1, 31
	sltui	$t5, $t4, 1
	sub.d	$t4, $a3, $t4
	sub.d	$t3, $t3, $t5
	bstrpick.d	$t3, $t3, 31, 0
	slli.d	$t3, $t3, 2
	ldx.w	$t6, $fp, $t3
	masknez	$t4, $t4, $t5
	bstrpick.d	$t5, $t2, 2, 2
	sll.w	$t4, $t5, $t4
	or	$t4, $t6, $t4
	stx.w	$t4, $fp, $t3
	addi.w	$t3, $a1, 1
	bstrpick.d	$t4, $t3, 31, 5
	andi	$t3, $t3, 31
	sltui	$t5, $t3, 1
	sub.d	$t3, $a3, $t3
	sub.d	$t4, $t4, $t5
	bstrpick.d	$t4, $t4, 31, 0
	slli.d	$t4, $t4, 2
	ldx.w	$t6, $fp, $t4
	masknez	$t3, $t3, $t5
	bstrpick.d	$t5, $t2, 1, 1
	sll.w	$t3, $t5, $t3
	or	$t3, $t6, $t3
	stx.w	$t3, $fp, $t4
	addi.w	$t3, $a1, 2
	bstrpick.d	$t4, $t3, 31, 5
	andi	$t3, $t3, 31
	sltui	$t5, $t3, 1
	sub.d	$t3, $a3, $t3
	sub.d	$t4, $t4, $t5
	bstrpick.d	$t4, $t4, 31, 0
	slli.d	$t4, $t4, 2
	ldx.w	$t6, $fp, $t4
	masknez	$t3, $t3, $t5
	andi	$t5, $t2, 1
	sll.w	$t3, $t5, $t3
	or	$t3, $t6, $t3
	stx.w	$t3, $fp, $t4
	bltu	$a4, $t2, .LBB1_15
# %bb.7:                                # %.lr.ph92
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a5, $t2
	add.d	$t4, $a5, $t2
	move	$t2, $t1
	move	$t3, $a7
	jr	$t4
.LBB1_8:                                #   in Loop: Header=BB1_6 Depth=1
	move	$t2, $t0
	move	$t3, $t1
	b	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_6 Depth=1
	xori	$t2, $t1, 1
	xori	$t3, $t0, 1
.LBB1_10:                               #   in Loop: Header=BB1_6 Depth=1
	move	$t0, $a7
	b	.LBB1_5
.LBB1_11:                               #   in Loop: Header=BB1_6 Depth=1
	xori	$t2, $t1, 1
	xori	$t0, $t0, 1
	move	$t3, $a7
	b	.LBB1_5
.LBB1_12:                               #   in Loop: Header=BB1_6 Depth=1
	xori	$t3, $t0, 1
	xori	$t0, $a7, 1
	move	$t2, $t1
	b	.LBB1_5
.LBB1_13:                               #   in Loop: Header=BB1_6 Depth=1
	move	$t2, $t0
	xori	$t0, $a7, 1
	xori	$t3, $t1, 1
	b	.LBB1_5
.LBB1_14:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_15:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	hsfc3d, .Lfunc_end1-hsfc3d
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
                                        # -- End function
	.text
	.globl	fhsfc2d                         # -- Begin function fhsfc2d
	.p2align	5
	.type	fhsfc2d,@function
fhsfc2d:                                # @fhsfc2d
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(hsfc2d.init)
	ld.bu	$a4, $a3, %pc_lo12(hsfc2d.init)
	move	$fp, $a2
	pcalau12i	$a2, %pc_hi20(hsfc2d.gray_inv)
	addi.d	$s0, $a2, %pc_lo12(hsfc2d.gray_inv)
	bnez	$a4, .LBB2_2
# %bb.1:                                # %.preheader52.i
	lu12i.w	$a2, 8240
	ori	$a2, $a2, 256
	st.w	$a2, $s0, 0
	ori	$a2, $zero, 1
	st.b	$a2, $a3, %pc_lo12(hsfc2d.init)
.LBB2_2:
	beqz	$a1, .LBB2_9
# %bb.3:                                # %.lr.ph62.i
	vld	$vr0, $a0, 0
	lu12i.w	$a0, -512
	lu52i.d	$a0, $a0, 1054
	vreplgr2vr.d	$vr1, $a0
	vfmul.d	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a0, $fa1
	ftintrz.l.d	$fa0, $fa0
	sltui	$a2, $a1, 2
	ori	$a3, $zero, 2
	vinsgr2vr.w	$vr1, $a0, 0
	movfr2gr.d	$a0, $fa0
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	vinsgr2vr.w	$vr1, $a0, 1
	vst	$vr1, $sp, 0                    # 16-byte Folded Spill
	or	$s1, $a1, $a3
	addi.d	$a0, $s1, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	addi.d	$a2, $a0, 4
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr5, $sp, 0                    # 16-byte Folded Reload
	move	$a0, $zero
	move	$a1, $zero
	slli.d	$a2, $s1, 4
	sub.w	$a2, $zero, $a2
	vrepli.h	$vr0, 256
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	vrepli.b	$vr1, 0
	vrepli.w	$vr2, 1
	ori	$a5, $zero, 32
	ori	$a6, $zero, 3
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_4:                                #   in Loop: Header=BB2_7 Depth=1
	xori	$a1, $a1, 3
.LBB2_5:                                #   in Loop: Header=BB2_7 Depth=1
	vshuf4i.b	$vr0, $vr0, 1
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	addi.w	$a3, $a3, 1
	addi.w	$a0, $a0, -1
	addi.d	$a4, $a4, 2
	beq	$a2, $a0, .LBB2_9
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a7, $a0, 31
	vilvl.b	$vr3, $vr1, $vr0
	vilvl.h	$vr3, $vr1, $vr3
	vinsgr2vr.w	$vr4, $a7, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vsrl.w	$vr4, $vr5, $vr4
	vand.v	$vr4, $vr4, $vr2
	vsll.w	$vr3, $vr4, $vr3
	vreplvei.w	$vr4, $vr3, 1
	vor.v	$vr3, $vr4, $vr3
	vpickve2gr.w	$a7, $vr3, 0
	xor	$a7, $a7, $a1
	ldx.bu	$a7, $s0, $a7
	bstrpick.d	$t0, $a3, 31, 4
	andi	$t1, $a4, 30
	sltui	$t2, $t1, 1
	sub.d	$t0, $t0, $t2
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t3, $fp, $t0
	sub.d	$t1, $a5, $t1
	masknez	$t1, $t1, $t2
	sll.w	$t1, $a7, $t1
	or	$t1, $t1, $t3
	stx.w	$t1, $fp, $t0
	beqz	$a7, .LBB2_5
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	beq	$a7, $a6, .LBB2_4
	b	.LBB2_6
.LBB2_9:                                # %hsfc2d.exit
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	fhsfc2d, .Lfunc_end2-fhsfc2d
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fhsfc3d
.LCPI3_0:
	.dword	0x41efffffffe00000              # double 4294967295
	.text
	.globl	fhsfc3d
	.p2align	5
	.type	fhsfc3d,@function
fhsfc3d:                                # @fhsfc3d
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	fld.d	$fa0, $a0, 0
	pcalau12i	$a3, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI3_0)
	fld.d	$fa2, $a0, 8
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	fmul.d	$fa0, $fa2, $fa1
	ftintrz.l.d	$fa0, $fa0
	fld.d	$fa2, $a0, 16
	movfr2gr.d	$a0, $fa0
	st.w	$a3, $sp, 12
	st.w	$a0, $sp, 16
	fmul.d	$fa0, $fa2, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(hsfc3d)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	fhsfc3d, .Lfunc_end3-fhsfc3d
                                        # -- End function
	.type	hsfc2d.init,@object             # @hsfc2d.init
	.local	hsfc2d.init
	.comm	hsfc2d.init,1,4
	.type	hsfc2d.gray_inv,@object         # @hsfc2d.gray_inv
	.local	hsfc2d.gray_inv
	.comm	hsfc2d.gray_inv,4,1
	.type	hsfc3d.init,@object             # @hsfc3d.init
	.local	hsfc3d.init
	.comm	hsfc3d.init,1,4
	.type	hsfc3d.gray_inv,@object         # @hsfc3d.gray_inv
	.local	hsfc3d.gray_inv
	.comm	hsfc3d.gray_inv,8,1
	.section	".note.GNU-stack","",@progbits
	.addrsig
