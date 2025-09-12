	.file	"outsmall.c"
	.text
	.globl	outsmall                        # -- Begin function outsmall
	.p2align	5
	.type	outsmall,@function
outsmall:                               # @outsmall
# %bb.0:
	addi.d	$sp, $sp, -1296
	st.d	$ra, $sp, 1288                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1208                  # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bdxlength)
	ld.d	$a0, $a0, %got_pc_lo12(bdxlength)
	ld.w	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(bdylength)
	ld.d	$a0, $a0, %got_pc_lo12(bdylength)
	ld.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cktName)
	ld.d	$a0, $a0, %got_pc_lo12(cktName)
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_23
# %bb.1:
	move	$fp, $a0
	slt	$a0, $s1, $s0
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1031
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(redoFlag)
	ld.d	$a0, $a0, %got_pc_lo12(redoFlag)
	ld.w	$a0, $a0, 0
	pcalau12i	$s0, %pc_hi20(fpNodes)
	beqz	$a0, .LBB0_3
# %bb.2:
	ld.d	$a0, $s0, %pc_lo12(fpNodes)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB0_3:
	st.d	$fp, $s0, %pc_lo12(fpNodes)
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	add.w	$a0, $a1, $a0
	blez	$a0, .LBB0_22
# %bb.4:                                # %.lr.ph119.preheader
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(PtsOut)
	ld.d	$a3, $a0, %got_pc_lo12(PtsOut)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s4, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(netarray)
	ld.d	$s5, $a0, %got_pc_lo12(netarray)
	pcalau12i	$a0, %got_pc_hi20(termarray)
	ld.d	$s7, $a0, %got_pc_lo12(termarray)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s6, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %got_pc_hi20(pinnames)
	ld.d	$a0, $a0, %got_pc_lo12(pinnames)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a0, $a2, 1
	bge	$a2, $a1, .LBB0_22
.LBB0_6:                                # %.lr.ph119
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$s2, $a1, $a2
	ld.w	$a2, $s2, 56
	alsl.d	$a1, $a2, $s2, 3
	ld.d	$s0, $a1, 152
	ld.d	$s6, $s0, 88
	ld.w	$a1, $s2, 12
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a1, $s2, 16
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $s2, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(initPts)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s0, 0
	beqz	$s4, .LBB0_9
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$s3, $a0, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slli.d	$s5, $a0, 1
	.p2align	4, , 16
.LBB0_8:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s7, $s4, 68
	ld.w	$s8, $s4, 64
	ld.w	$s0, $s4, 60
	ld.w	$s1, $s4, 56
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s8
	move	$a3, $s7
	pcaddu18i	$ra, %call36(addPts)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 0
	add.d	$a0, $s1, $s3
	add.d	$a0, $a0, $s0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 1
	add.d	$a0, $s8, $s5
	add.d	$a0, $a0, $s7
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a4, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB0_8
.LBB0_9:                                # %._crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(unbust)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 0
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_12
# %bb.10:                               # %.lr.ph106.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s0, $zero
	ori	$s1, $zero, 1
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph106
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $a0, $s0
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 12
	add.w	$a2, $a1, $s5
	add.w	$a3, $a0, $s8
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.w	$a1, $a0, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a1, .LBB0_11
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
.LBB0_13:                               # %._crit_edge107
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 12
	add.w	$a2, $a1, $s5
	add.w	$a3, $a0, $s8
	move	$a0, $fp
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	beqz	$s6, .LBB0_18
# %bb.14:                               # %.lr.ph111.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB0_18
.LBB0_16:                               # %.lr.ph111
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s6, 24
	slli.d	$s1, $a0, 3
	ldx.d	$a0, $s0, $s1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s1
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $s6, 12
	ld.w	$a3, $s6, 8
	ld.d	$a2, $a0, 64
	add.w	$a4, $a1, $s8
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_18:                               # %._crit_edge112
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s2, 76
	ori	$a1, $zero, 1
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	move	$s3, $s8
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_5
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s2, 132
	blez	$a0, .LBB0_5
# %bb.20:                               # %.lr.ph115
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_21:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 144
	add.d	$a0, $a0, $s0
	ld.w	$a1, $a0, 44
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $s5, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a3, $a0, 80
	ld.w	$a0, $a0, 84
	ld.d	$a2, $a1, 64
	add.w	$a3, $a3, $s8
	add.w	$a4, $a0, $s3
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 132
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 44
	blt	$s1, $a0, .LBB0_21
	b	.LBB0_5
.LBB0_22:                               # %._crit_edge120
	pcalau12i	$a0, %got_pc_hi20(blockl)
	ld.d	$a0, $a0, %got_pc_lo12(blockl)
	ld.w	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	ld.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(blockb)
	ld.d	$a0, $a0, %got_pc_lo12(blockb)
	ld.w	$s2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$a0, $a0, %got_pc_lo12(blockt)
	ld.w	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 32
	st.d	$s0, $sp, 24
	st.d	$s2, $sp, 16
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $s2
	move	$a5, $s0
	move	$a6, $s3
	move	$a7, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1288                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1296
	ret
.LBB0_23:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$a0, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 184
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	outsmall, .Lfunc_end0-outsmall
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.cfs"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"can't open %s\n"
	.size	.L.str.2, 15

	.type	fpNodes,@object                 # @fpNodes
	.comm	fpNodes,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"L NC;\n94 %s %d %d;\n"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"L NC;\nW %d"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %d %d"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" %d %d;\n"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"PHANTOM"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"L NC;\n"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"W %d %d %d %d %d %d %d %d %d %d %d;\n"
	.size	.L.str.9, 37

	.section	".note.GNU-stack","",@progbits
	.addrsig
