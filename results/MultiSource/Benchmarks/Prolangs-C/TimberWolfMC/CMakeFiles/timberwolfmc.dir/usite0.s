	.file	"usite0.c"
	.text
	.globl	usite0                          # -- Begin function usite0
	.p2align	5
	.type	usite0,@function
usite0:                                 # @usite0
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
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 3
	ldx.d	$s1, $a0, $a1
	alsl.d	$a0, $s2, $s1, 3
	ld.d	$a0, $a0, 152
	ld.w	$s3, $s1, 12
	ld.w	$s4, $s1, 16
	ld.d	$a0, $a0, 88
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s5, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(overlap)
	ld.d	$s7, $a0, %got_pc_lo12(overlap)
	ld.d	$a7, $s7, 0
	ld.w	$a3, $s1, 56
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	sub.d	$s5, $s5, $a0
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	ld.d	$s8, $a0, %got_pc_lo12(blockarray)
	ld.d	$a0, $s8, 0
	pcalau12i	$a1, %got_pc_hi20(binX)
	ld.d	$s6, $a1, %got_pc_lo12(binX)
	ld.w	$a1, $s6, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(binY)
	ld.d	$fp, $a1, %got_pc_lo12(binY)
	ld.w	$a1, $fp, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(occa1ptr)
	ld.d	$a1, $a1, %got_pc_lo12(occa1ptr)
	ld.d	$a7, $s7, 0
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	ld.w	$a1, $s6, 0
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $s8, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $fp, 0
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	add.d	$s7, $a0, $s5
	pcalau12i	$a0, %got_pc_hi20(occa2ptr)
	ld.d	$s8, $a0, %got_pc_lo12(occa2ptr)
	st.d	$a1, $s8, 0
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	move	$a3, $s4
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$a4, $s2
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(funccost)
	ld.d	$s4, $a0, %got_pc_lo12(funccost)
	ld.w	$fp, $s4, 0
	move	$s2, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(ufixnet)
	jirl	$ra, $ra, 0
	add.d	$fp, $a0, $fp
	move	$a0, $s1
	pcaddu18i	$ra, %call36(usoftnet)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	ld.w	$a2, $s6, 0
	add.d	$s5, $fp, $a0
	add.w	$a0, $s5, $s7
	add.w	$a1, $a2, $a1
	bge	$a1, $a0, .LBB0_2
# %bb.1:
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
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	lu12i.w	$a2, -1024
	lu52i.d	$a2, $a2, 1053
	movgr2fr.d	$fa2, $a2
	fdiv.d	$fa1, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	st.w	$a1, $a0, 0
	bcnez	$fcc0, .LBB0_7
.LBB0_2:
	ori	$a1, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $s2
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $s8, 0
	beq	$a1, $a0, .LBB0_6
# %bb.3:                                # %.preheader.preheader
	addi.d	$a2, $a1, 4
	.p2align	4, , 16
.LBB0_4:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	bne	$a3, $s0, .LBB0_4
# %bb.5:
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
	stx.w	$s0, $a0, $a1
.LBB0_6:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s1, 56
	st.w	$s5, $s4, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$s7, $a0, 0
	b	.LBB0_8
.LBB0_7:
	move	$s3, $zero
.LBB0_8:
	move	$a0, $s3
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
	.size	usite0, .Lfunc_end0-usite0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
