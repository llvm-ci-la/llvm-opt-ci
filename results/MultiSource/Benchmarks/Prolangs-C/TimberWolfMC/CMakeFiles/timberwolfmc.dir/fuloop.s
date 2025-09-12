	.file	"fuloop.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fuloop
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	fuloop
	.p2align	5
	.type	fuloop,@function
fuloop:                                 # @fuloop
# %bb.0:
	addi.d	$sp, $sp, -208
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
	pcalau12i	$a0, %got_pc_hi20(flips)
	ld.d	$a0, $a0, %got_pc_lo12(flips)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(Tsave)
	ld.d	$a0, $a0, %got_pc_lo12(Tsave)
	fld.d	$fa0, $a0, 0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fadd.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa1, $fa1
	vldi	$vr2, -1000
	fcmp.clt.d	$fcc0, $fa2, $fa0
	vldi	$vr0, -988
	fsel	$fa0, $fa0, $fa1, $fcc0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %got_pc_hi20(T)
	ld.d	$fp, $a0, %got_pc_lo12(T)
	fld.d	$fa0, $fp, 0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs0
	pcalau12i	$a0, %got_pc_hi20(bdxlength)
	ld.d	$s3, $a0, %got_pc_lo12(bdxlength)
	ld.w	$a0, $s3, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	slti	$a2, $a1, 2
	slli.w	$a1, $a1, 1
	slt	$a3, $a1, $a0
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	masknez	$a0, $a0, $a2
	fld.d	$fa0, $fp, 0
	ori	$s0, $zero, 3
	maskeqz	$a1, $s0, $a2
	or	$fp, $a1, $a0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs0
	pcalau12i	$a0, %got_pc_hi20(bdylength)
	ld.d	$s4, $a0, %got_pc_lo12(bdylength)
	ld.w	$a0, $s4, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	slti	$a2, $a1, 2
	slli.w	$a1, $a1, 1
	slt	$a3, $a1, $a0
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $s0, $a2
	or	$s0, $a1, $a0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	mul.d	$a1, $fp, $a0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.w	$s1, $a1, $a2
	mul.d	$a0, $s0, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.w	$s2, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s5, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a2, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a2, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(attmax)
	ld.d	$a0, $a0, %got_pc_lo12(attmax)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_25
# %bb.1:                                # %.preheader140.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$ra, $a0, %got_pc_lo12(randVar)
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockl)
	ld.d	$a0, $a0, %got_pc_lo12(blockl)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockb)
	ld.d	$a0, $a0, %got_pc_lo12(blockb)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$a0, $a0, %got_pc_lo12(blockt)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 269412
	ori	$s8, $a0, 3693
	lu12i.w	$a0, 3
	ori	$s4, $a0, 57
	pcalau12i	$a0, %got_pc_hi20(gridGiven)
	ld.d	$a0, $a0, %got_pc_lo12(gridGiven)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s3, $zero
	move	$s7, $zero
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.outer
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$s3, $s3, 1
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	bge	$s3, $a0, .LBB0_26
.LBB0_3:                                # %.preheader140.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	ld.w	$a6, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	b	.LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=2
	div.w	$t2, $t6, $s2
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=2
	add.w	$t7, $a7, $fp
	slt	$t8, $a3, $t7
	slt	$t7, $a2, $t7
	masknez	$t4, $t4, $t7
	maskeqz	$t7, $fp, $t7
	or	$t4, $t7, $t4
	maskeqz	$t3, $t3, $t8
	masknez	$t4, $t4, $t8
	or	$t3, $t3, $t4
	div.w	$t3, $t3, $s1
	add.w	$t4, $t0, $s0
	slt	$t7, $a5, $t4
	slt	$t4, $a4, $t4
	masknez	$t6, $t6, $t4
	maskeqz	$t4, $s0, $t4
	or	$t4, $t4, $t6
	maskeqz	$t5, $t5, $t7
	masknez	$t4, $t4, $t7
	or	$t4, $t5, $t4
	div.w	$t4, $t4, $s2
	sub.d	$t3, $t3, $t1
	addi.d	$t3, $t3, 1
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	mul.d	$a6, $a6, $s8
	add.d	$a6, $a6, $s4
	bstrpick.d	$t3, $a6, 30, 0
	movgr2fr.w	$fa3, $t3
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa1
	fmul.d	$fa2, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t3, $fa2
	add.w	$t1, $t1, $t3
	sub.d	$t3, $t4, $t2
	addi.d	$t3, $t3, 1
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	mul.d	$a6, $a6, $s8
	add.w	$a6, $a6, $s4
	bstrpick.d	$t3, $a6, 30, 0
	movgr2fr.w	$fa3, $t3
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa1, $fa3, $fa1
	fmul.d	$fa1, $fa1, $fa2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t3, $fa1
	add.w	$t2, $t2, $t3
	or	$t3, $t1, $t2
	bnez	$t3, .LBB0_17
	.p2align	4, , 16
.LBB0_6:                                # %.preheader140
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a6, $a6, $s8
	add.w	$a6, $a6, $s4
	pcalau12i	$a7, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a7, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a7, $a6, 30, 0
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a7, $fa2
	beq	$a0, $a7, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	addi.w	$s6, $a7, 1
	slli.d	$a7, $s6, 3
	ldx.d	$s5, $a1, $a7
	ld.w	$a7, $s5, 8
	bnez	$a7, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	ld.w	$a7, $s5, 12
	sub.w	$t0, $a7, $fp
	sub.w	$t3, $a3, $a7
	sub.w	$t4, $a2, $a7
	bge	$t0, $a2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=2
	div.w	$t1, $t4, $s1
	b	.LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=2
	bge	$t0, $a3, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=2
	div.w	$t0, $fp, $s1
	sub.w	$t1, $zero, $t0
	b	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=2
	div.w	$t1, $t3, $s1
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=2
	ld.w	$t0, $s5, 16
	sub.w	$t2, $t0, $s0
	sub.w	$t5, $a5, $t0
	sub.w	$t6, $a4, $t0
	blt	$t2, $a4, .LBB0_4
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=2
	bge	$t2, $a5, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=2
	div.w	$t2, $s0, $s2
	sub.w	$t2, $zero, $t2
	b	.LBB0_5
.LBB0_16:                               #   in Loop: Header=BB0_6 Depth=2
	div.w	$t2, $t5, $s2
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	st.w	$a6, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	mul.d	$a1, $t1, $s1
	add.w	$a1, $a1, $a7
	mul.d	$a2, $t2, $s2
	add.w	$a2, $a2, $t0
	beqz	$a0, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s5, 56
	alsl.d	$a0, $a0, $s5, 3
	ld.d	$a0, $a0, 152
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	move	$s3, $s7
	ld.d	$s7, $a0, 88
	ld.w	$a0, $s7, 8
	ld.w	$a3, $s7, 12
	add.w	$a0, $a0, $a1
	add.w	$a1, $a3, $a2
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(newxx)
	ld.d	$a0, $a0, %got_pc_lo12(newxx)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s7, 8
	sub.w	$a1, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(newyy)
	ld.d	$a0, $a0, %got_pc_lo12(newyy)
	ld.w	$a0, $a0, 0
	ld.w	$a2, $s7, 12
	move	$s7, $s3
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	sub.w	$a2, $a0, $a2
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(usite1)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	addi.w	$s7, $s7, 1
.LBB0_21:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s5, 132
	beqz	$a0, .LBB0_2
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s5, 72
	blez	$a0, .LBB0_2
# %bb.23:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s6, $zero
	.p2align	4, , 16
.LBB0_24:                               # %.lr.ph
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(selectpin)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 72
	addi.w	$s6, $s6, 1
	blt	$s6, $a0, .LBB0_24
	b	.LBB0_2
.LBB0_25:
	move	$s7, $zero
	move	$s3, $zero
.LBB0_26:                               # %.outer._crit_edge
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	move	$a2, $s7
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end0:
	.size	fuloop, .Lfunc_end0-fuloop
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"range limiter:%d units either way in x"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"   compared to bdxlength:%d\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"range limiter:%d units either way in y"
	.size	.L.str.2, 39

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"   compared to bdylength:%d\n"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"scalex:%d  scaley:%d\n"
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"acceptance breakdown:\n"
	.size	.L.str.5, 23

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"              single cell: %d / %d\n"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\tno. of accepted flips: %d\n"
	.size	.L.str.7, 28

	.section	".note.GNU-stack","",@progbits
	.addrsig
