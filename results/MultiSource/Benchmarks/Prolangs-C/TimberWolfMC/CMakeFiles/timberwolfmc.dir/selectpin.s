	.file	"selectpin.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function selectpin
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	selectpin
	.p2align	5
	.type	selectpin,@function
selectpin:                              # @selectpin
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 132
	ld.d	$s1, $a0, 144
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a1, %got_pc_hi20(randVar)
	ld.d	$s2, $a1, %got_pc_lo12(randVar)
	ld.w	$a1, $s2, 0
	lu12i.w	$a3, 269412
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a4, %pc_lo12(.LCPI0_0)
	ori	$s3, $a3, 3693
	lu12i.w	$a3, 3
	ori	$s4, $a3, 57
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a1, $a1, $s3
	add.w	$a1, $a1, $s4
	bstrpick.d	$a3, $a1, 30, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	beq	$a2, $a3, .LBB0_1
# %bb.2:                                # %.preheader119
	st.w	$a1, $s2, 0
	addi.w	$a2, $a3, 1
	addi.d	$fp, $a3, 2
	ori	$a3, $zero, 44
	mul.d	$a2, $a2, $a3
	add.d	$a2, $s1, $a2
	addi.d	$s5, $a2, 76
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s5, -48
	addi.w	$fp, $fp, -1
	addi.d	$s5, $s5, -44
	beqz	$a2, .LBB0_3
# %bb.4:
	ld.w	$a2, $s5, -16
	ori	$a3, $zero, 3
	blt	$a2, $a3, .LBB0_7
	.p2align	4, , 16
.LBB0_5:                                # %.preheader116
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	mul.d	$a1, $a1, $s3
	add.w	$a1, $a1, $s4
	st.w	$a1, $s2, 0
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	ld.w	$a3, $s5, -16
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	beq	$a3, $a2, .LBB0_5
# %bb.6:                                # %.loopexit117
	addi.w	$a2, $a2, 1
	b	.LBB0_13
.LBB0_7:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB0_12
# %bb.8:
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB0_32
	.p2align	4, , 16
.LBB0_9:                                # %.preheader118
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	mul.d	$a1, $a1, $s3
	add.w	$a1, $a1, $s4
	st.w	$a1, $s2, 0
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	ld.w	$a3, $s5, -16
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	beq	$a3, $a2, .LBB0_9
# %bb.10:
	beqz	$a2, .LBB0_12
# %bb.11:
	ld.w	$a2, $s5, -8
	b	.LBB0_13
.LBB0_12:
	ld.w	$a2, $s5, -12
.LBB0_13:
	ld.d	$a3, $a0, 216
	alsl.d	$a4, $a2, $a3, 3
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $a3, $a2
	ld.w	$a5, $a4, 4
	sub.d	$a3, $a5, $a2
	addi.d	$a3, $a3, 1
	ld.w	$s0, $s5, -4
	ld.d	$a4, $a0, 136
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	addi.w	$a6, $a5, 1
	addi.d	$a7, $a4, 8
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	mul.d	$a1, $a1, $s3
	add.w	$a1, $a1, $s4
	bstrpick.d	$a3, $a1, 30, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a4, $fa1
	add.w	$a3, $a2, $a4
	st.w	$a1, $s2, 0
	blt	$a5, $a3, .LBB0_14
# %bb.15:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$t0, $zero
	add.d	$a4, $a2, $a4
	slli.d	$t1, $a4, 4
	alsl.d	$a4, $a4, $t1, 2
	add.d	$t1, $a7, $a4
	move	$a4, $a3
	.p2align	4, , 16
.LBB0_16:                               # %.lr.ph
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	add.w	$t0, $t2, $t0
	bge	$t0, $s0, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$t1, $t1, 20
	bne	$a6, $a4, .LBB0_16
	b	.LBB0_14
.LBB0_18:                               # %.thread
	ld.w	$a1, $s5, -28
	beq	$a3, $a1, .LBB0_22
# %bb.19:
	move	$s6, $a0
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(upin)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_21
# %bb.20:
	pcalau12i	$a0, %got_pc_hi20(flips)
	ld.d	$a0, $a0, %got_pc_lo12(flips)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(flipp)
	ld.d	$a0, $a0, %got_pc_lo12(flipp)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
.LBB0_21:
	pcalau12i	$a0, %got_pc_hi20(attp)
	ld.d	$a0, $a0, %got_pc_lo12(attp)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	move	$a0, $s6
.LBB0_22:
	ld.w	$a1, $s5, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_32
# %bb.23:
	ori	$a1, $zero, 2
	blt	$s0, $a1, .LBB0_32
# %bb.24:                               # %.preheader115
	ld.w	$a1, $s2, 0
	bstrpick.d	$a2, $s0, 31, 0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	.p2align	4, , 16
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	mul.d	$a1, $a1, $s3
	add.w	$a1, $a1, $s4
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	beq	$s0, $a2, .LBB0_25
	.p2align	4, , 16
.LBB0_26:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a1, $a1, $s3
	add.w	$a1, $a1, $s4
	bstrpick.d	$a3, $a1, 30, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a4, $fa1
	beq	$s0, $a4, .LBB0_26
# %bb.27:                               # %.preheader
                                        #   in Loop: Header=BB0_26 Depth=1
	beq	$a4, $a2, .LBB0_26
# %bb.28:
	st.w	$a1, $s2, 0
	add.w	$a1, $fp, $a2
	ori	$a5, $zero, 44
	mul.d	$a2, $a1, $a5
	add.d	$a2, $s1, $a2
	ld.w	$a3, $a2, 4
	add.w	$a2, $fp, $a4
	mul.d	$a4, $a2, $a5
	add.d	$a4, $s1, $a4
	ld.w	$a4, $a4, 4
	beq	$a3, $a4, .LBB0_32
# %bb.29:
	pcaddu18i	$ra, %call36(upinswap)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_31
# %bb.30:
	pcalau12i	$a0, %got_pc_hi20(flips)
	ld.d	$a0, $a0, %got_pc_lo12(flips)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(flipp)
	ld.d	$a0, $a0, %got_pc_lo12(flipp)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
.LBB0_31:
	pcalau12i	$a0, %got_pc_hi20(attp)
	ld.d	$a0, $a0, %got_pc_lo12(attp)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
.LBB0_32:
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
	ret
.Lfunc_end0:
	.size	selectpin, .Lfunc_end0-selectpin
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
