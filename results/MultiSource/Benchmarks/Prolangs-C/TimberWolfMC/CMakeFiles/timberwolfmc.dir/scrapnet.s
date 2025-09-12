	.file	"scrapnet.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function scrapnet
.LCPI0_0:
	.dword	0x3fe6666666666666              # double 0.69999999999999996
	.text
	.globl	scrapnet
	.p2align	5
	.type	scrapnet,@function
scrapnet:                               # @scrapnet
# %bb.0:
	addi.d	$sp, $sp, -96
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
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$s2, $a0, 0
	slli.d	$s0, $s2, 2
	addi.d	$a0, $s0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(numnets)
	ld.d	$a0, $a0, %got_pc_lo12(numnets)
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_22
# %bb.1:                                # %.preheader.lr.ph
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ori	$a2, $zero, 8
	slt	$a3, $a2, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a2, $a2, $a3
	or	$s3, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(netarray)
	ld.d	$a1, $a1, %got_pc_lo12(netarray)
	ld.d	$s4, $a1, 0
	blez	$s2, .LBB0_12
# %bb.2:                                # %.preheader.preheader
	addi.d	$s1, $fp, 4
	addi.d	$a0, $a0, 1
	bstrpick.d	$s5, $a0, 31, 0
	ori	$s6, $zero, 1
	ori	$s7, $zero, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge38.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s7, $s7, 1
	beq	$s7, $s5, .LBB0_22
.LBB0_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $s4, $a0
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_3
# %bb.5:                                # %.lr.ph37.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a2, $zero
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB0_10
.LBB0_7:                                # %.lr.ph37
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 32
	blt	$s2, $a3, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	slli.d	$a4, $a3, 2
	ldx.w	$a4, $fp, $a4
	bnez	$a4, .LBB0_6
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	alsl.d	$a3, $a3, $fp, 2
	st.w	$s6, $a3, 0
	addi.w	$a2, $a2, 1
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_10:                               # %._crit_edge38
                                        #   in Loop: Header=BB0_4 Depth=1
	blt	$a2, $s3, .LBB0_3
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	st.w	$s6, $a0, 8
	b	.LBB0_3
.LBB0_12:                               # %.preheader.us.preheader
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %._crit_edge38.us.thread
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB0_22
.LBB0_14:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s4, $a3
	ld.d	$a4, $a3, 0
	beqz	$a4, .LBB0_13
# %bb.15:                               # %.lr.ph37.us.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$a5, $zero
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_20
.LBB0_17:                               # %.lr.ph37.us
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a4, 32
	blt	$s2, $a6, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $fp, $a7
	bnez	$a7, .LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	alsl.d	$a6, $a6, $fp, 2
	st.w	$a1, $a6, 0
	addi.w	$a5, $a5, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_20:                               # %._crit_edge38.us
                                        #   in Loop: Header=BB0_14 Depth=1
	blt	$a5, $s3, .LBB0_13
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=1
	st.w	$a1, $a3, 8
	b	.LBB0_13
.LBB0_22:                               # %._crit_edge41
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end0:
	.size	scrapnet, .Lfunc_end0-scrapnet
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
