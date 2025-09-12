	.file	"usite1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function usite1
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	usite1
	.p2align	5
	.type	usite1,@function
usite1:                                 # @usite1
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s1, 3
	ldx.d	$s2, $a0, $a1
	ld.w	$a3, $s2, 56
	alsl.d	$a0, $a3, $s2, 3
	ld.d	$a0, $a0, 152
	ld.w	$a1, $s2, 12
	ld.w	$a2, $s2, 16
	ld.d	$s3, $a0, 88
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s4, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(overlap)
	ld.d	$s5, $a0, %got_pc_lo12(overlap)
	ld.d	$a7, $s5, 0
	ori	$a5, $zero, 1
	move	$a0, $s1
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	sub.d	$s4, $s4, $a0
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	ld.d	$s6, $a0, %got_pc_lo12(blockarray)
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(binX)
	ld.d	$s7, $a1, %got_pc_lo12(binX)
	ld.w	$a1, $s7, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(binY)
	ld.d	$s8, $a1, %got_pc_lo12(binY)
	ld.w	$a1, $s8, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(occa1ptr)
	ld.d	$a1, $a1, %got_pc_lo12(occa1ptr)
	ld.d	$a7, $s5, 0
	ld.w	$a3, $s2, 56
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	ori	$a5, $zero, 1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $s8, 0
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	add.d	$s6, $a0, $s4
	pcalau12i	$a0, %got_pc_hi20(occa2ptr)
	ld.d	$s4, $a0, %got_pc_lo12(occa2ptr)
	st.d	$a1, $s4, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s2, 56
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(funccost)
	ld.d	$s8, $a0, %got_pc_lo12(funccost)
	ld.w	$s5, $s8, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(ufixnet)
	jirl	$ra, $ra, 0
	add.d	$s5, $a0, $s5
	move	$a0, $s2
	pcaddu18i	$ra, %call36(usoftnet)
	jirl	$ra, $ra, 0
	add.d	$s5, $s5, $a0
	pcalau12i	$a0, %got_pc_hi20(finalShot)
	ld.d	$s7, $a0, %got_pc_lo12(finalShot)
	ld.w	$a0, $s7, 0
	blez	$a0, .LBB0_2
# %bb.1:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(deltaBB)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$s6, $a0, $s6
	b	.LBB0_3
.LBB0_2:
                                        # implicit-def: $r4
                                        # kill: killed $r4
.LBB0_3:
	ld.w	$a1, $s8, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	add.w	$a0, $s6, $s5
	add.w	$a1, $a2, $a1
	bge	$a1, $a0, .LBB0_5
# %bb.4:
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a0, %got_pc_hi20(T)
	ld.d	$a0, $a0, %got_pc_lo12(T)
	fld.d	$fa1, $a0, 0
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a0, $a0, %got_pc_lo12(randVar)
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 269412
	ori	$a2, $a2, 3693
	mul.d	$a1, $a1, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 57
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	st.w	$a1, $a0, 0
	bcnez	$fcc0, .LBB0_12
.LBB0_5:
	ori	$a1, $zero, 1
	move	$a0, $s3
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s2
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $s4, 0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_9
# %bb.6:                                # %.preheader.preheader
	addi.d	$a2, $a1, 4
	.p2align	4, , 16
.LBB0_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	bne	$a3, $s1, .LBB0_7
# %bb.8:
	ld.w	$a3, $a1, 0
	addi.d	$a4, $a3, -1
	st.w	$a4, $a1, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a1, $a1, $a3
	st.w	$a1, $a2, -4
	ld.w	$a1, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$s1, $a0, $a1
.LBB0_9:
	ld.w	$a0, $s7, 0
	st.w	$s0, $s2, 12
	st.w	$fp, $s2, 16
	st.w	$s5, $s8, 0
	blez	$a0, .LBB0_11
# %bb.10:
	sub.d	$s6, $s6, $a5
	pcalau12i	$a0, %got_pc_hi20(bbbl)
	ld.d	$a0, $a0, %got_pc_lo12(bbbl)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(bbleft)
	ld.d	$a1, $a1, %got_pc_lo12(bbleft)
	st.w	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(bbbr)
	ld.d	$a0, $a0, %got_pc_lo12(bbbr)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(bbright)
	ld.d	$a1, $a1, %got_pc_lo12(bbright)
	st.w	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(bbbb)
	ld.d	$a0, $a0, %got_pc_lo12(bbbb)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(bbbottom)
	ld.d	$a1, $a1, %got_pc_lo12(bbbottom)
	st.w	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(bbbt)
	ld.d	$a0, $a0, %got_pc_lo12(bbbt)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(bbtop)
	ld.d	$a1, $a1, %got_pc_lo12(bbtop)
	st.w	$a0, $a1, 0
.LBB0_11:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$s6, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB0_13
.LBB0_12:
	move	$a0, $zero
.LBB0_13:
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end0:
	.size	usite1, .Lfunc_end0-usite1
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
