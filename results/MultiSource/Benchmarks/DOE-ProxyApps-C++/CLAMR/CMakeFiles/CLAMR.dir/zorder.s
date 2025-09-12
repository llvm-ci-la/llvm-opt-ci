	.file	"zorder.c"
	.text
	.globl	calc_zorder                     # -- Begin function calc_zorder
	.p2align	5
	.type	calc_zorder,@function
calc_zorder:                            # @calc_zorder
# %bb.0:
	addi.d	$sp, $sp, -192
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$a0, .LBB0_9
# %bb.1:                                # %.lr.ph
	move	$s3, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$s7, $zero
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fs0, $a0
	lu52i.d	$a0, $zero, 1086
	movgr2fr.d	$fs1, $a0
	lu12i.w	$a0, 4080
	ori	$a0, $a0, 255
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 61680
	ori	$a0, $a0, 3855
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 209715
	ori	$fp, $a0, 819
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2730
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %index_to_bit.exit30
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.d	$a0, $s8, 8
	or	$a0, $a0, $s8
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	and	$a0, $a0, $a3
	slli.d	$a2, $a0, 4
	or	$a0, $a2, $a0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	and	$a0, $a0, $a4
	slli.d	$a2, $a0, 2
	or	$a0, $a2, $a0
	and	$a0, $a0, $fp
	slli.d	$a2, $a0, 1
	or	$a0, $a2, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a2
	slli.d	$a2, $a1, 8
	or	$a1, $a2, $a1
	and	$a1, $a1, $a3
	slli.d	$a2, $a1, 4
	or	$a1, $a2, $a1
	and	$a1, $a1, $a4
	slli.d	$a2, $a1, 2
	or	$a1, $a2, $a1
	and	$a1, $a1, $fp
	slli.d	$a2, $a1, 2
	slli.d	$a1, $a1, 1
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.w	$a0, $s2, 0
	st.w	$s7, $s1, 0
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	addi.d	$s0, $s0, -1
	addi.d	$s4, $s4, 4
	beqz	$s0, .LBB0_9
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s4, 0
	bltz	$a0, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a1, $s6, 0
	sub.d	$s8, $a1, $a5
	bge	$a0, $s3, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	srli.d	$a1, $s8, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	lu12i.w	$a1, 275200
	bstrins.d	$s8, $a1, 63, 32
	movgr2fr.d	$fa1, $s8
	fadd.d	$fs2, $fa1, $fa0
	sub.w	$a0, $s3, $a0
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs2
	fcmp.clt.d	$fcc0, $fa0, $fs1
	ftintrz.l.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	movcf2gr	$a1, $fcc0
	maskeqz	$a2, $a0, $a1
	fsub.d	$fa0, $fa0, $fs1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	ld.w	$a0, $s4, 0
	lu52i.d	$a4, $zero, -2048
	xor	$a3, $a3, $a4
	masknez	$a1, $a3, $a1
	or	$s8, $a2, $a1
.LBB0_7:                                # %index_to_bit.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a1, $s5, 0
	sub.d	$a1, $a1, $a5
	bge	$a0, $s3, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fs2, $fa1, $fa0
	sub.w	$a0, $s3, $a0
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs2
	fcmp.clt.d	$fcc0, $fa0, $fs1
	ftintrz.l.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	fsub.d	$fa0, $fa0, $fs1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	lu52i.d	$a3, $zero, -2048
	xor	$a2, $a2, $a3
	masknez	$a1, $a2, $a1
	or	$a1, $a0, $a1
	b	.LBB0_2
.LBB0_9:                                # %._crit_edge
	ori	$a2, $zero, 4
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(S7_Index_Sort)
	jr	$t8
.Lfunc_end0:
	.size	calc_zorder, .Lfunc_end0-calc_zorder
                                        # -- End function
	.globl	index_to_bit                    # -- Begin function index_to_bit
	.p2align	5
	.type	index_to_bit,@function
index_to_bit:                           # @index_to_bit
# %bb.0:
	sub.d	$a0, $a0, $a3
	bge	$a1, $a2, .LBB1_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	srli.d	$a3, $a0, 32
	lu52i.d	$a4, $zero, 1107
	or	$a3, $a3, $a4
	movgr2fr.d	$fa0, $a3
	lu12i.w	$a3, 256
	lu52i.d	$a3, $a3, 1107
	movgr2fr.d	$fa1, $a3
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a3, 275200
	bstrins.d	$a0, $a3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fs0, $fa1, $fa0
	sub.w	$a0, $a2, $a1
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs0
	lu52i.d	$a0, $zero, 1086
	movgr2fr.d	$fa1, $a0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ftintrz.l.d	$fa2, $fa0
	movfr2gr.d	$a0, $fa2
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	fsub.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	lu52i.d	$a3, $zero, -2048
	xor	$a2, $a2, $a3
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB1_2:
	slli.d	$a1, $a0, 8
	or	$a0, $a1, $a0
	lu12i.w	$a1, 4080
	ori	$a1, $a1, 255
	and	$a0, $a0, $a1
	slli.d	$a1, $a0, 4
	or	$a0, $a1, $a0
	lu12i.w	$a1, 61680
	ori	$a1, $a1, 3855
	and	$a0, $a0, $a1
	slli.d	$a1, $a0, 2
	or	$a0, $a1, $a0
	lu12i.w	$a1, 209715
	ori	$a1, $a1, 819
	and	$a0, $a0, $a1
	slli.d	$a1, $a0, 1
	or	$a0, $a1, $a0
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1365
	and	$a0, $a0, $a1
	ret
.Lfunc_end1:
	.size	index_to_bit, .Lfunc_end1-index_to_bit
                                        # -- End function
	.globl	twobit_to_index                 # -- Begin function twobit_to_index
	.p2align	5
	.type	twobit_to_index,@function
twobit_to_index:                        # @twobit_to_index
# %bb.0:
	slli.d	$a1, $a1, 1
	or	$a0, $a1, $a0
	ret
.Lfunc_end2:
	.size	twobit_to_index, .Lfunc_end2-twobit_to_index
                                        # -- End function
	.globl	printbits                       # -- Begin function printbits
	.p2align	5
	.type	printbits,@function
printbits:                              # @printbits
# %bb.0:
	beqz	$a0, .LBB3_4
# %bb.1:                                # %.preheader
	bltz	$a0, .LBB3_3
# %bb.2:                                # %.loopexit
	ret
	.p2align	4, , 16
.LBB3_3:                                # %.preheader.split
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB3_3
.LBB3_4:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end3:
	.size	printbits, .Lfunc_end3-printbits
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"00000000"
	.size	.L.str, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
