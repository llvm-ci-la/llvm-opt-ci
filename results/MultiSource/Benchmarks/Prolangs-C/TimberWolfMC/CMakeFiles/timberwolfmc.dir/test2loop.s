	.file	"test2loop.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test2loop
.LCPI0_0:
	.dword	0x3f50000000000000              # double 9.765625E-4
.LCPI0_1:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	test2loop
	.p2align	5
	.type	test2loop,@function
test2loop:                              # @test2loop
# %bb.0:
	addi.d	$sp, $sp, -288
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
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(totFunc)
	ld.d	$a0, $a0, %got_pc_lo12(totFunc)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(totPen)
	ld.d	$a0, $a0, %got_pc_lo12(totPen)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(T)
	ld.d	$s0, $a0, %got_pc_lo12(T)
	fld.d	$fa0, $s0, 0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	fmul.d	$fa0, $fa0, $fs0
	pcalau12i	$a0, %got_pc_hi20(bdxlength)
	ld.d	$fp, $a0, %got_pc_lo12(bdxlength)
	ld.w	$a0, $fp, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	slti	$a2, $a1, 3
	slt	$a3, $a0, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a2
	fld.d	$fa0, $s0, 0
	ori	$s1, $zero, 3
	maskeqz	$a1, $s1, $a2
	or	$s0, $a1, $a0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs0
	pcalau12i	$a0, %got_pc_hi20(bdylength)
	ld.d	$s2, $a0, %got_pc_lo12(bdylength)
	ld.w	$a0, $s2, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	slti	$a2, $a1, 3
	slt	$a3, $a0, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $s1, $a2
	or	$s1, $a1, $a0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	mul.d	$a1, $s0, $a0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.w	$s5, $a1, $a2
	mul.d	$a0, $s1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.w	$s6, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s4, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a2, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$s5, $sp, 152                   # 8-byte Folded Spill
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	blez	$s3, .LBB0_39
# %bb.1:                                # %.preheader240.lr.ph.preheader
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a0, $a0, %got_pc_lo12(randVar)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bigcell)
	ld.d	$a0, $a0, %got_pc_lo12(bigcell)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(toobig)
	ld.d	$a0, $a0, %got_pc_lo12(toobig)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockl)
	ld.d	$a0, $a0, %got_pc_lo12(blockl)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockb)
	ld.d	$a0, $a0, %got_pc_lo12(blockb)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$a0, $a0, %got_pc_lo12(blockt)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $zero
	lu12i.w	$a1, 269412
	ori	$s4, $a1, 3693
	lu12i.w	$a1, 3
	ori	$fp, $a1, 57
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.outer.sink.split
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(funccost)
	ld.d	$a1, $a1, %got_pc_lo12(funccost)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, 0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(penalty)
	ld.d	$a1, $a1, %got_pc_lo12(penalty)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, 0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_40
.LBB0_3:                                # %.preheader240.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a7, $a1, 0
	movgr2fr.w	$fa0, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$t0, $a1, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a6, $a6, 0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	b	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	beqz	$t0, .LBB0_11
	.p2align	4, , 16
.LBB0_5:                                # %.preheader240
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	mul.d	$a7, $a7, $s4
	add.w	$a7, $a7, $fp
	pcalau12i	$t0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $t0, %pc_lo12(.LCPI0_1)
	bstrpick.d	$t0, $a7, 30, 0
	movgr2fr.w	$fa3, $t0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
	beq	$a0, $t0, .LBB0_5
	.p2align	4, , 16
.LBB0_6:                                # %.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mul.d	$a7, $a7, $s4
	add.w	$a7, $a7, $fp
	bstrpick.d	$t1, $a7, 30, 0
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t1, $fa3
	addi.w	$s7, $t1, 1
	beq	$s7, $a1, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	beq	$t0, $t1, .LBB0_5
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=2
	addi.w	$s5, $t0, 1
	slli.d	$t0, $s5, 3
	ldx.d	$s6, $a2, $t0
	ld.w	$t0, $s6, 8
	bge	$t1, $a0, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=2
	addi.w	$t1, $zero, -1
	beq	$t0, $t1, .LBB0_5
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=2
	slli.d	$s2, $s7, 3
	ldx.d	$s8, $a2, $s2
	ld.w	$t1, $s8, 8
	bne	$t0, $t1, .LBB0_5
	b	.LBB0_29
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=2
	ld.w	$t0, $s6, 12
	sub.w	$t1, $t0, $s0
	sub.w	$t4, $a4, $t0
	sub.w	$t5, $a3, $t0
	bge	$t1, $a3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t2, $t5, $ra
	b	.LBB0_16
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=2
	bge	$t1, $a4, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t1, $s0, $ra
	sub.w	$t2, $zero, $t1
	b	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t2, $t4, $ra
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=2
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	ld.w	$t1, $s6, 16
	sub.w	$t3, $t1, $s1
	sub.w	$t6, $a6, $t1
	sub.w	$t7, $a5, $t1
	bge	$t3, $a5, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t3, $t7, $s7
	b	.LBB0_21
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=2
	bge	$t3, $a6, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t3, $s1, $s7
	sub.w	$t3, $zero, $t3
	b	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t3, $t6, $s7
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=2
	add.w	$t8, $t0, $s0
	slt	$s2, $a4, $t8
	slt	$t8, $a3, $t8
	masknez	$t5, $t5, $t8
	maskeqz	$t8, $s0, $t8
	or	$t5, $t8, $t5
	maskeqz	$t4, $t4, $s2
	masknez	$t5, $t5, $s2
	or	$t4, $t4, $t5
	div.w	$t4, $t4, $ra
	add.w	$t5, $t1, $s1
	slt	$t8, $a6, $t5
	slt	$t5, $a5, $t5
	masknez	$t7, $t7, $t5
	maskeqz	$t5, $s1, $t5
	or	$t5, $t5, $t7
	maskeqz	$t6, $t6, $t8
	masknez	$t5, $t5, $t8
	or	$t5, $t6, $t5
	div.w	$t5, $t5, $s7
	sub.d	$t4, $t4, $t2
	addi.d	$t4, $t4, 1
	movgr2fr.w	$fa3, $t4
	ffint.d.w	$fa3, $fa3
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a7, $fp
	bstrpick.d	$t4, $a7, 30, 0
	movgr2fr.w	$fa4, $t4
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa2
	fmul.d	$fa3, $fa4, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t4, $fa3
	add.w	$t2, $t2, $t4
	sub.d	$t4, $t5, $t3
	addi.d	$t4, $t4, 1
	movgr2fr.w	$fa3, $t4
	ffint.d.w	$fa3, $fa3
	mul.d	$a7, $a7, $s4
	add.w	$a7, $a7, $fp
	bstrpick.d	$t4, $a7, 30, 0
	movgr2fr.w	$fa4, $t4
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa2, $fa4, $fa2
	fmul.d	$fa2, $fa2, $fa3
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t4, $fa2
	add.w	$t3, $t3, $t4
	or	$t4, $t2, $t3
	beqz	$t4, .LBB0_5
# %bb.22:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s6, 56
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.w	$a7, $a1, 0
	mul.d	$a1, $t2, $ra
	add.w	$s8, $a1, $t0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	mul.d	$a1, $t3, $a1
	add.w	$s7, $a1, $t1
	pcalau12i	$a1, %got_pc_hi20(gridGiven)
	ld.d	$a1, $a1, %got_pc_lo12(gridGiven)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	alsl.d	$a0, $a0, $s6, 3
	ld.d	$a0, $a0, 152
	ld.d	$s2, $a0, 88
	ld.w	$a0, $s2, 8
	ld.w	$a1, $s2, 12
	add.w	$a0, $a0, $s8
	add.w	$a1, $a1, $s7
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(newxx)
	ld.d	$a0, $a0, %got_pc_lo12(newxx)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s2, 8
	sub.w	$s8, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(newyy)
	ld.d	$a0, $a0, %got_pc_lo12(newyy)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s2, 12
	sub.w	$s7, $a0, $a1
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(usite1)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
# %bb.25:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a3, $a0
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(usiteo1)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_38
# %bb.28:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(usite0)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $s6, 56
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$a7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(gridGiven)
	ld.d	$a0, $a0, %got_pc_lo12(gridGiven)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	alsl.d	$a0, $a1, $s6, 3
	ld.d	$a0, $a0, 152
	ld.w	$a1, $s8, 56
	ld.d	$s3, $a0, 88
	alsl.d	$a0, $a1, $s8, 3
	ld.d	$a0, $a0, 152
	ld.w	$a1, $s8, 12
	ld.w	$a2, $s3, 8
	ld.w	$a3, $s8, 16
	ld.w	$a4, $s3, 12
	ld.d	$a0, $a0, 88
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.w	$a0, $a2, $a1
	add.w	$a1, $a4, $a3
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(newxx)
	ld.d	$a0, $a0, %got_pc_lo12(newxx)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 8
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(newyy)
	ld.d	$a0, $a0, %got_pc_lo12(newyy)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 12
	ld.w	$a2, $s6, 12
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $s3, 8
	ld.w	$a4, $s6, 16
	ld.w	$a5, $s3, 12
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	add.w	$a0, $a3, $a2
	add.w	$a1, $a5, $a4
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 8
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.w	$a3, $s3, 12
	sub.w	$a4, $a0, $a1
	sub.w	$a5, $a2, $a3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(usite2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a2, $s8, 12
	ld.w	$a3, $s8, 16
	ld.w	$a4, $s6, 12
	ld.w	$a5, $s6, 16
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(usite2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a2, $a1, $s2
	ld.w	$s2, $a2, 56
	move	$s3, $a0
	ori	$a1, $zero, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bgez	$s3, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	bltz	$a0, .LBB0_38
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	slti	$a1, $s3, 0
	slti	$a2, $a0, 0
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a2, $a2, $a3
	masknez	$a3, $s3, $a1
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	maskeqz	$a4, $a4, $a1
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	or	$a6, $a4, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a7, $a0, $a2
	beqz	$a5, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=1
	alsl.d	$a0, $a6, $s6, 3
	ld.d	$a0, $a0, 152
	ld.d	$s2, $a0, 88
	alsl.d	$a0, $a7, $s8, 3
	ld.d	$a0, $a0, 152
	ld.w	$a1, $s8, 12
	ld.w	$a2, $s2, 8
	ld.w	$a3, $s8, 16
	ld.w	$a4, $s2, 12
	ld.d	$s3, $a0, 88
	add.w	$a0, $a2, $a1
	add.w	$a1, $a4, $a3
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(newxx)
	ld.d	$a0, $a0, %got_pc_lo12(newxx)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s2, 8
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(newyy)
	ld.d	$s8, $a0, %got_pc_lo12(newyy)
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 12
	ld.w	$a2, $s6, 12
	ld.w	$a3, $s3, 8
	ld.w	$a4, $s6, 16
	ld.w	$a5, $s3, 12
	sub.w	$s2, $a0, $a1
	add.w	$a0, $a3, $a2
	add.w	$a1, $a5, $a4
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 8
	ld.w	$a2, $s8, 0
	ld.w	$a3, $s3, 12
	sub.w	$a4, $a0, $a1
	sub.w	$a5, $a2, $a3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a2, $s8, 12
	ld.w	$s2, $s8, 16
	ld.w	$a4, $s6, 12
	ld.w	$a5, $s6, 16
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $s5
	move	$a1, $s7
	move	$a3, $s2
	pcaddu18i	$ra, %call36(usiteo2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_3
	b	.LBB0_40
.LBB0_39:
	move	$a0, $zero
.LBB0_40:                               # %.outer._crit_edge
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	test2loop, .Lfunc_end0-test2loop
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

	.section	".note.GNU-stack","",@progbits
	.addrsig
