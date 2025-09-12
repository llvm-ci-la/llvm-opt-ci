	.file	"usite2.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function usite2
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	usite2
	.p2align	5
	.type	usite2,@function
usite2:                                 # @usite2
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	move	$s3, $a1
	move	$s6, $a0
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 3
	ldx.d	$s2, $a0, $a1
	slli.d	$a1, $s3, 3
	ldx.d	$a4, $a0, $a1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	ld.w	$s8, $s2, 56
	ld.w	$a1, $s2, 12
	ld.w	$s0, $a4, 56
	alsl.d	$a0, $s8, $s2, 3
	ld.d	$a0, $a0, 152
	ld.w	$a2, $s2, 16
	alsl.d	$a5, $s0, $a4, 3
	ld.d	$a5, $a5, 152
	ld.d	$a0, $a0, 88
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $a4, 12
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$s7, $a4, 16
	ld.d	$a0, $a5, 88
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(overlap)
	ld.d	$s1, $a0, %got_pc_lo12(overlap)
	ld.d	$a7, $s1, 0
	ori	$a5, $zero, 1
	move	$a0, $s6
	move	$a3, $s8
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	ld.d	$fp, $a0, %got_pc_lo12(blockarray)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(binX)
	ld.d	$s4, $a1, %got_pc_lo12(binX)
	ld.w	$a1, $s4, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(binY)
	ld.d	$s5, $a1, %got_pc_lo12(binY)
	ld.w	$a1, $s5, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(occa1ptr)
	ld.d	$a1, $a1, %got_pc_lo12(occa1ptr)
	ld.d	$a7, $s1, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	ori	$a5, $zero, 1
	move	$a0, $s3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s7
	move	$s7, $s0
	move	$a3, $s0
	move	$a4, $s6
	move	$a6, $zero
	jirl	$ra, $a7, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $fp, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $s5, 0
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(occb1ptr)
	ld.d	$a0, $a0, %got_pc_lo12(occb1ptr)
	ld.d	$a7, $s1, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $a0, 0
	move	$a0, $s6
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s3
	move	$a5, $zero
	move	$a6, $s7
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	jirl	$ra, $a7, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $fp, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $s5, 0
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(occa2ptr)
	ld.d	$a0, $a0, %got_pc_lo12(occa2ptr)
	ld.d	$a7, $s1, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $a0, 0
	ori	$a5, $zero, 1
	move	$a0, $s3
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s8
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $s7
	move	$a4, $s6
	move	$a6, $zero
	jirl	$ra, $a7, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $fp, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $s5, 0
	ldx.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(occb2ptr)
	ld.d	$a0, $a0, %got_pc_lo12(occb2ptr)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $a0, 0
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s0
	move	$a3, $s7
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s0
	move	$a3, $s7
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s7
	move	$a1, $zero
	move	$a2, $s8
	move	$a3, $s1
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s8
	move	$a3, $s1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(funccost)
	ld.d	$s4, $a0, %got_pc_lo12(funccost)
	ld.w	$s0, $s4, 0
	move	$s8, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(ufixnet)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s2
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(usoftnet)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
	move	$s1, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(ufixnet)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(usoftnet)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	ld.w	$a2, $s2, 0
	add.d	$s0, $s0, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
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
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	st.w	$a1, $a0, 0
	bcnez	$fcc0, .LBB0_11
.LBB0_2:
	ori	$a1, $zero, 1
	move	$a0, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a1, $a0, .LBB0_6
# %bb.3:                                # %.preheader96.preheader
	addi.d	$a2, $a1, 4
	.p2align	4, , 16
.LBB0_4:                                # %.preheader96
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	bne	$a3, $s6, .LBB0_4
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
	stx.w	$s6, $a0, $a1
.LBB0_6:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a1, $a0, .LBB0_10
# %bb.7:                                # %.preheader.preheader
	addi.d	$a2, $a1, 4
	.p2align	4, , 16
.LBB0_8:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	bne	$a3, $s3, .LBB0_8
# %bb.9:
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
	stx.w	$s3, $a0, $a1
.LBB0_10:
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $s1, 12
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.w	$a0, $s1, 16
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $fp, 12
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $fp, 16
	st.w	$s0, $s4, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $s2, 0
	ori	$a0, $zero, 1
	b	.LBB0_12
.LBB0_11:
	move	$a0, $zero
.LBB0_12:
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end0:
	.size	usite2, .Lfunc_end0-usite2
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
