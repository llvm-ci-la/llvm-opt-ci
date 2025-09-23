	.file	"uaspect.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function uaspect
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	uaspect
	.p2align	5
	.type	uaspect,@function
uaspect:                                # @uaspect
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
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	move	$s6, $a0
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 3
	ldx.d	$a1, $a0, $a1
	ld.wu	$a0, $a1, 56
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a3, $a0, 0
	addi.d	$a2, $a1, 152
	slli.d	$a0, $a3, 3
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ldx.d	$s1, $a2, $a0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	fld.d	$fa0, $a1, 104
	ori	$a0, $zero, 3
	blt	$a0, $a3, .LBB0_2
# %bb.1:
	fdiv.d	$fa0, $fs0, $fa0
	b	.LBB0_3
.LBB0_2:
	fdiv.d	$fa0, $fa0, $fs0
.LBB0_3:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s8, $a0, 12
	ld.w	$a2, $a0, 16
	ld.d	$a1, $s1, 88
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.w	$s2, $s1, 72
	ld.w	$fp, $s1, 76
	ld.w	$s3, $s1, 80
	ld.w	$s4, $s1, 84
	ld.d	$a0, $a0, 144
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s1, 96
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	fsqrt.d	$fs1, $fa0
	fcmp.cor.d	$fcc0, $fs1, $fs1
	bceqz	$fcc0, .LBB0_134
.LBB0_4:                                # %.split
	sub.d	$a0, $s4, $s3
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs1, $fa0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fcmp.cle.d	$fcc0, $fa1, $fa0
	movcf2gr	$a1, $fcc0
	add.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	sub.d	$a1, $fp, $s2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$a1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fcmp.cle.d	$fcc0, $fa1, $fa0
	srai.d	$s4, $a0, 1
	movcf2gr	$a0, $fcc0
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s5, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$fp, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(overlap)
	ld.d	$a0, $a0, %got_pc_lo12(overlap)
	ld.d	$a7, $a0, 0
	ori	$a5, $zero, 1
	ori	$s7, $zero, 1
	move	$a0, $s6
	move	$a1, $s8
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	sub.d	$a0, $fp, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s8, $a0, %got_pc_lo12(blockarray)
	ld.d	$a0, $s8, 0
	pcalau12i	$a1, %got_pc_hi20(binX)
	ld.d	$s0, $a1, %got_pc_lo12(binX)
	ld.w	$a1, $s0, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(binY)
	ld.d	$fp, $a1, %got_pc_lo12(binY)
	ld.w	$a1, $fp, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(occa1ptr)
	ld.d	$a1, $a1, %got_pc_lo12(occa1ptr)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(overlapx)
	ld.d	$a0, $a0, %got_pc_lo12(overlapx)
	ld.d	$a5, $a0, 0
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s5
	move	$a4, $s4
	fmov.d	$fa0, $fs1
	jirl	$ra, $a5, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $s8, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $fp, 0
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$s0, $a0, $a2
	pcalau12i	$a0, %got_pc_hi20(occa2ptr)
	ld.d	$a0, $a0, %got_pc_lo12(occa2ptr)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s5
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $s4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_7
# %bb.5:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(termarray)
	ld.d	$a2, $a2, %got_pc_lo12(termarray)
	ld.d	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(netarray)
	ld.d	$a3, $a3, %got_pc_lo12(netarray)
	ld.d	$a3, $a3, 0
	vldi	$vr0, -928
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, 16
	sub.d	$a5, $a5, $s2
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a5, $fa2
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	ld.w	$a6, $a4, 20
	fcmp.cle.d	$fcc0, $fa0, $fa1
	add.d	$a5, $a0, $a5
	movcf2gr	$a7, $fcc0
	add.d	$a5, $a5, $a7
	sub.d	$a6, $a6, $s3
	movgr2fr.w	$fa1, $a6
	ld.w	$a6, $a4, 24
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fs1, $fa1
	ftintrz.w.d	$fa2, $fa1
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	movfr2gr.s	$a7, $fa2
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	ld.w	$t0, $a6, 0
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa0, $fa1
	add.d	$a7, $a1, $a7
	movcf2gr	$t1, $fcc0
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a3, $t0
	ld.d	$a6, $a6, 8
	add.d	$a7, $a7, $t1
	ld.d	$a4, $a4, 0
	st.w	$s7, $t0, 32
	st.w	$s7, $a6, 28
	st.w	$a5, $a6, 16
	st.w	$a7, $a6, 20
	bnez	$a4, .LBB0_6
.LBB0_7:                                # %.preheader742
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a4, $a2, 132
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	blez	$a4, .LBB0_10
# %bb.8:                                # %.lr.ph748
	pcalau12i	$a2, %got_pc_hi20(termarray)
	ld.d	$a2, $a2, %got_pc_lo12(termarray)
	ld.d	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(netarray)
	ld.d	$a3, $a3, %got_pc_lo12(netarray)
	ld.d	$a3, $a3, 0
	addi.d	$a4, $a4, 1
	bstrpick.d	$a5, $a4, 31, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 48
	addi.d	$a5, $a5, -1
	vldi	$vr0, -928
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, 0
	alsl.d	$a7, $a7, $s8, 4
	ld.w	$t0, $a7, 8
	sub.d	$t0, $t0, $s2
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$t0, $fa2
	movgr2fr.w	$fa2, $t0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	ld.w	$a7, $a7, 12
	fcmp.cle.d	$fcc0, $fa0, $fa1
	add.d	$t0, $a0, $t0
	movcf2gr	$t1, $fcc0
	add.d	$t0, $t0, $t1
	sub.d	$a7, $a7, $s3
	ld.w	$t1, $a4, -4
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fs1, $fa1
	slli.d	$a7, $t1, 3
	ldx.d	$a7, $a2, $a7
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$t1, $fa2
	movgr2fr.w	$fa2, $t1
	ld.w	$t2, $a7, 0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa0, $fa1
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a3, $t2
	ld.d	$a7, $a7, 8
	add.d	$t1, $a1, $t1
	movcf2gr	$t3, $fcc0
	add.d	$t1, $t1, $t3
	st.w	$a6, $t2, 32
	st.w	$a6, $a7, 28
	st.w	$t0, $a7, 16
	st.w	$t1, $a7, 20
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 44
	bnez	$a5, .LBB0_9
.LBB0_10:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(funccost)
	ld.d	$s7, $a0, %got_pc_lo12(funccost)
	ld.w	$fp, $s7, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ufixnet)
	jirl	$ra, $ra, 0
	add.d	$fp, $a0, $fp
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(usoftnet)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $s7, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	add.d	$fp, $fp, $a0
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	add.w	$a0, $fp, $s0
	add.w	$a1, $a2, $a1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_12
# %bb.11:
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
	bcnez	$fcc0, .LBB0_27
.LBB0_12:
	ori	$a1, $zero, 1
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s7
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	beq	$a2, $a1, .LBB0_16
# %bb.13:                               # %.preheader741.preheader
	addi.d	$a0, $a2, 4
	.p2align	4, , 16
.LBB0_14:                               # %.preheader741
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a3, $s6, .LBB0_14
# %bb.15:
	ld.w	$a3, $a2, 0
	addi.d	$a4, $a3, -1
	st.w	$a4, $a2, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a2, $a2, $a3
	st.w	$a2, $a0, -4
	ld.w	$a0, $a1, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $a1, 0
	slli.d	$a0, $a0, 2
	stx.w	$s6, $a1, $a0
	move	$a0, $s1
	.p2align	4, , 16
.LBB0_16:                               # %.lr.ph752
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 72
	sub.d	$a1, $a1, $s2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a1, $fa1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ld.w	$a2, $a0, 76
	sub.d	$a1, $a1, $s5
	movcf2gr	$a3, $fcc0
	add.d	$a1, $a1, $a3
	st.w	$a1, $a0, 56
	sub.d	$a1, $a2, $s2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$a1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ld.w	$a2, $a0, 80
	sub.d	$a1, $a1, $s5
	movcf2gr	$a3, $fcc0
	add.d	$a1, $a1, $a3
	st.w	$a1, $a0, 60
	sub.d	$a1, $a2, $s3
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs1, $fa0
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$a1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ld.w	$a2, $a0, 84
	sub.d	$a1, $a1, $s4
	movcf2gr	$a3, $fcc0
	add.d	$a1, $a1, $a3
	st.w	$a1, $a0, 64
	sub.d	$a1, $a2, $s3
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs1, $fa0
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$a1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fcmp.cle.d	$fcc0, $fa1, $fa0
	sub.d	$a1, $a1, $s4
	movcf2gr	$a2, $fcc0
	add.d	$a1, $a1, $a2
	st.w	$a1, $a0, 68
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_16
# %bb.17:                               # %.preheader740
	beqz	$s7, .LBB0_20
# %bb.18:
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph755
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s7, 16
	sub.d	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa0, $fa1
	ld.w	$a2, $s7, 20
	sub.d	$a1, $a1, $s5
	movcf2gr	$a3, $fcc0
	add.d	$a1, $a1, $a3
	st.w	$a1, $s7, 8
	sub.d	$a1, $a2, $s3
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fs1, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa0, $fa1
	sub.d	$a1, $a1, $s4
	movcf2gr	$a2, $fcc0
	add.d	$a1, $a1, $a2
	st.w	$a1, $s7, 12
	ld.d	$s7, $s7, 0
	bnez	$s7, .LBB0_19
.LBB0_20:                               # %.preheader739
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 128
	blez	$a0, .LBB0_23
# %bb.21:                               # %.lr.ph758.preheader
	addi.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $s8, 28
	addi.d	$a1, $a1, -1
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB0_22:                               # %.lr.ph758
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, -4
	sub.d	$a2, $a2, $s2
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a2, $fa2
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa0, $fa1
	ld.w	$a3, $a0, 0
	sub.d	$a2, $a2, $s5
	movcf2gr	$a4, $fcc0
	add.d	$a2, $a2, $a4
	st.w	$a2, $a0, -12
	sub.d	$a2, $a3, $s3
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fs1, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a2, $fa2
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa0, $fa1
	sub.d	$a2, $a2, $s4
	movcf2gr	$a3, $fcc0
	add.d	$a2, $a2, $a3
	st.w	$a2, $a0, -8
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB0_22
.LBB0_23:                               # %._crit_edge759
	beqz	$s0, .LBB0_67
# %bb.24:
	vld	$vr0, $s1, 56
	vpickve2gr.w	$a0, $vr0, 2
	vpickve2gr.w	$a1, $vr0, 3
	sub.w	$a4, $a1, $a0
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	addi.d	$a0, $s0, -2
	ori	$a3, $zero, 5
	sub.d	$a1, $a2, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	bltu	$a3, $a0, .LBB0_33
# %bb.25:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_26:
	move	$s7, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ori	$fp, $zero, 1
	move	$a1, $s0
	b	.LBB0_34
.LBB0_27:
	move	$a0, $zero
	b	.LBB0_127
.LBB0_28:
	move	$s7, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$fp, $zero
	move	$s6, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	ori	$a1, $zero, 7
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_34
.LBB0_29:
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$fp, $zero
	move	$s6, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ori	$s7, $zero, 1
	move	$a1, $s0
	b	.LBB0_34
.LBB0_30:
	move	$s7, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$fp, $zero
	move	$s6, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$a1, $s0
	b	.LBB0_34
.LBB0_31:
	move	$s7, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ori	$s6, $zero, 1
	move	$a1, $s0
	b	.LBB0_34
.LBB0_32:
	move	$s7, $zero
	move	$fp, $zero
	move	$s6, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ori	$a1, $zero, 6
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_34
.LBB0_33:
	move	$s7, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$fp, $zero
	move	$s6, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
.LBB0_34:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s8, $a0, 0
	addi.d	$s5, $s8, 56
	addi.d	$s4, $s8, 60
	addi.d	$s3, $s8, 64
	addi.d	$s2, $s8, 68
	vst	$vr0, $s8, 56
	move	$s0, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	andi	$a0, $a2, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	or	$a1, $s7, $a1
	and	$a2, $a2, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	andi	$a3, $a1, 1
	or	$a1, $fp, $s6
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bnez	$a2, .LBB0_37
# %bb.35:
	beqz	$a3, .LBB0_38
# %bb.36:
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_38
.LBB0_37:
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s4, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s5, 0
	addi.d	$a1, $a2, 1
	st.w	$a1, $s4, 0
.LBB0_38:
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	or	$a1, $s6, $a1
	and	$a0, $a0, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	or	$a1, $s7, $a1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bnez	$a0, .LBB0_41
# %bb.39:
	beqz	$a3, .LBB0_42
# %bb.40:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_42
.LBB0_41:
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 0
.LBB0_42:
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 60
	blez	$a0, .LBB0_49
# %bb.43:                               # %.lr.ph765
	move	$fp, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	or	$a0, $a2, $a0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	or	$a1, $a2, $a1
	andi	$s7, $a0, 1
	andi	$s6, $a1, 1
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_45 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 60
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB0_49
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s8, 0
	ld.d	$s1, $s1, 0
	addi.d	$s4, $s8, 56
	vld	$vr0, $s1, 56
	addi.d	$s5, $s8, 60
	addi.d	$s3, $s8, 64
	addi.d	$s2, $s8, 68
	vst	$vr0, $s8, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=1
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s5, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s5, 0
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=1
	beqz	$s6, .LBB0_44
# %bb.48:                               #   in Loop: Header=BB0_45 Depth=1
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 0
	b	.LBB0_44
.LBB0_49:                               # %._crit_edge766
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	move	$s6, $s0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_59
# %bb.50:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s1, $a0, 88
	ld.d	$a0, $s7, 8
	addi.d	$s3, $s1, 8
	st.d	$a0, $s1, 8
	addi.d	$s2, $s1, 12
	move	$a0, $s6
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_53
# %bb.51:
	beqz	$a1, .LBB0_54
# %bb.52:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_54
.LBB0_53:
	ld.w	$a0, $s3, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
.LBB0_54:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_57
# %bb.55:
	beqz	$a1, .LBB0_58
# %bb.56:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_58
.LBB0_57:
	ld.w	$a0, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
.LBB0_58:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB0_128
.LBB0_59:                               # %.loopexit738
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 128
	beqz	$a0, .LBB0_67
# %bb.60:
	blez	$a0, .LBB0_67
# %bb.61:                               # %.lr.ph776
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$fp, $zero
	ld.d	$a0, $a0, 96
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	and	$a2, $a2, $a3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	or	$a1, $a3, $a1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	or	$a2, $a3, $a2
	addi.d	$s1, $a0, 20
	addi.d	$s3, $s0, 20
	andi	$s4, $a1, 1
	andi	$s5, $a2, 1
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_63 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 128
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 16
	addi.d	$s3, $s3, 16
	bge	$fp, $a0, .LBB0_67
.LBB0_63:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, -4
	addi.d	$s2, $s1, -4
	st.d	$a0, $s1, -4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=1
	ld.w	$a0, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
.LBB0_65:                               #   in Loop: Header=BB0_63 Depth=1
	beqz	$s5, .LBB0_62
# %bb.66:                               #   in Loop: Header=BB0_63 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	b	.LBB0_62
.LBB0_67:                               # %.loopexit737
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 152
	ld.w	$a1, $a0, 68
	ld.w	$a2, $a0, 64
	ld.w	$a3, $a0, 60
	ld.w	$a0, $a0, 56
	sub.d	$a1, $a1, $a2
	sub.d	$a0, $a3, $a0
	andi	$a1, $a1, 1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	andi	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %.loopexit736
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.d	$s0, $s0, 1
	ori	$a0, $zero, 8
	beq	$s0, $a0, .LBB0_89
.LBB0_69:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_83 Depth 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB0_68
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=1
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$s5, $a1, $a0
	ld.d	$s8, $a1, 0
	addi.d	$s3, $s5, 56
	vld	$vr0, $s8, 56
	addi.d	$s4, $s5, 60
	addi.d	$s2, $s5, 64
	addi.d	$s1, $s5, 68
	vst	$vr0, $s5, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	andi	$a2, $s0, 5
	addi.d	$a0, $a2, -4
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	and	$a0, $a1, $a0
	andi	$a1, $s0, 6
	bnez	$a0, .LBB0_73
# %bb.71:                               #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	beqz	$a3, .LBB0_74
# %bb.72:                               #   in Loop: Header=BB0_69 Depth=1
	ori	$a3, $zero, 2
	bne	$a1, $a3, .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_69 Depth=1
	ld.w	$a3, $s3, 0
	ld.w	$a4, $s4, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $s3, 0
	addi.d	$a3, $a4, 1
	st.w	$a3, $s4, 0
.LBB0_74:                               #   in Loop: Header=BB0_69 Depth=1
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	and	$s7, $a3, $a2
	beqz	$s7, .LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_69 Depth=1
	ld.w	$a2, $s2, 0
	ld.w	$a3, $s1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s2, 0
	addi.d	$a2, $a3, 1
	st.w	$a2, $s1, 0
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_76:                               #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_79
# %bb.77:                               #   in Loop: Header=BB0_69 Depth=1
	ori	$a2, $zero, 7
	beq	$s0, $a2, .LBB0_75
# %bb.78:                               #   in Loop: Header=BB0_69 Depth=1
	ori	$a2, $zero, 4
	beq	$s0, $a2, .LBB0_75
	.p2align	4, , 16
.LBB0_79:                               #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 60
	blez	$a2, .LBB0_68
# %bb.80:                               # %.lr.ph782
                                        #   in Loop: Header=BB0_69 Depth=1
	move	$fp, $zero
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sltu	$a2, $zero, $a2
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	and	$a1, $a2, $a1
	or	$s6, $a0, $a1
	b	.LBB0_83
	.p2align	4, , 16
.LBB0_81:                               #   in Loop: Header=BB0_83 Depth=2
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s1, 0
.LBB0_82:                               #   in Loop: Header=BB0_83 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 60
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB0_68
.LBB0_83:                               #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 0
	ld.d	$s8, $s8, 0
	addi.d	$s3, $s5, 56
	vld	$vr0, $s8, 56
	addi.d	$s4, $s5, 60
	addi.d	$s2, $s5, 64
	addi.d	$s1, $s5, 68
	vst	$vr0, $s5, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_83 Depth=2
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s4, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s4, 0
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=2
	bnez	$s7, .LBB0_81
# %bb.86:                               #   in Loop: Header=BB0_83 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_82
# %bb.87:                               #   in Loop: Header=BB0_83 Depth=2
	ori	$a0, $zero, 7
	beq	$s0, $a0, .LBB0_81
# %bb.88:                               #   in Loop: Header=BB0_83 Depth=2
	ori	$a0, $zero, 4
	beq	$s0, $a0, .LBB0_81
	b	.LBB0_82
.LBB0_89:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	beqz	$a0, .LBB0_112
# %bb.90:                               # %.preheader.preheader
	ori	$s0, $zero, 1
	ori	$s5, $zero, 7
	ori	$s7, $zero, 4
	b	.LBB0_92
	.p2align	4, , 16
.LBB0_91:                               # %.loopexit734
                                        #   in Loop: Header=BB0_92 Depth=1
	addi.d	$s0, $s0, 1
	ori	$a0, $zero, 8
	beq	$s0, $a0, .LBB0_112
.LBB0_92:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_106 Depth 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB0_91
# %bb.93:                               #   in Loop: Header=BB0_92 Depth=1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 0
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $a2, $a1
	ld.d	$s8, $a0, 88
	ld.d	$s4, $a1, 88
	ld.d	$a0, $s8, 8
	addi.d	$s2, $s4, 8
	st.d	$a0, $s4, 8
	addi.d	$s1, $s4, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	andi	$a2, $s0, 5
	addi.d	$a0, $a2, -4
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	and	$a0, $a1, $a0
	andi	$a1, $s0, 6
	bnez	$a0, .LBB0_96
# %bb.94:                               #   in Loop: Header=BB0_92 Depth=1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	beqz	$a3, .LBB0_97
# %bb.95:                               #   in Loop: Header=BB0_92 Depth=1
	ori	$a3, $zero, 2
	bne	$a1, $a3, .LBB0_97
.LBB0_96:                               #   in Loop: Header=BB0_92 Depth=1
	ld.w	$a3, $s2, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $s2, 0
.LBB0_97:                               #   in Loop: Header=BB0_92 Depth=1
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	and	$s3, $a3, $a2
	beqz	$s3, .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_92 Depth=1
	ld.w	$a2, $s1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s1, 0
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_99:                               #   in Loop: Header=BB0_92 Depth=1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_102
# %bb.100:                              #   in Loop: Header=BB0_92 Depth=1
	beq	$s0, $s5, .LBB0_98
# %bb.101:                              #   in Loop: Header=BB0_92 Depth=1
	beq	$s0, $s7, .LBB0_98
	.p2align	4, , 16
.LBB0_102:                              #   in Loop: Header=BB0_92 Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 68
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB0_91
# %bb.103:                              # %.lr.ph790
                                        #   in Loop: Header=BB0_92 Depth=1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sltu	$a2, $zero, $a2
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	and	$a1, $a2, $a1
	or	$fp, $a0, $a1
	ori	$s6, $zero, 1
	b	.LBB0_106
	.p2align	4, , 16
.LBB0_104:                              #   in Loop: Header=BB0_106 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB0_105:                              #   in Loop: Header=BB0_106 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	addi.w	$s6, $s6, 1
	bge	$s6, $a0, .LBB0_91
.LBB0_106:                              #   Parent Loop BB0_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 0
	ld.d	$s4, $s4, 0
	ld.d	$a0, $s8, 8
	addi.d	$s2, $s4, 8
	st.d	$a0, $s4, 8
	addi.d	$s1, $s4, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=2
	bnez	$s3, .LBB0_104
# %bb.109:                              #   in Loop: Header=BB0_106 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_105
# %bb.110:                              #   in Loop: Header=BB0_106 Depth=2
	beq	$s0, $s5, .LBB0_104
# %bb.111:                              #   in Loop: Header=BB0_106 Depth=2
	beq	$s0, $s7, .LBB0_104
	b	.LBB0_105
.LBB0_112:                              # %.loopexit735
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 128
	beqz	$a0, .LBB0_126
# %bb.113:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 96
	addi.d	$a1, $a1, 20
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ori	$s0, $zero, 1
	ori	$s4, $zero, 8
	ori	$s5, $zero, 7
	ori	$s7, $zero, 4
	b	.LBB0_115
	.p2align	4, , 16
.LBB0_114:                              # %.loopexit
                                        #   in Loop: Header=BB0_115 Depth=1
	addi.d	$s0, $s0, 1
	beq	$s0, $s4, .LBB0_126
.LBB0_115:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_120 Depth 2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a1, .LBB0_114
# %bb.116:                              #   in Loop: Header=BB0_115 Depth=1
	blez	$a0, .LBB0_114
# %bb.117:                              # %.lr.ph796
                                        #   in Loop: Header=BB0_115 Depth=1
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	move	$fp, $zero
	ld.d	$a0, $a0, 96
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sltu	$a1, $zero, $a1
	andi	$a2, $s0, 5
	andi	$a3, $s0, 6
	addi.d	$a3, $a3, -2
	sltui	$a3, $a3, 1
	and	$a1, $a1, $a3
	addi.d	$a3, $a2, -4
	sltui	$a3, $a3, 1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	and	$a3, $a4, $a3
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	and	$s6, $a4, $a2
	or	$s8, $a3, $a1
	addi.d	$s1, $a0, 20
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_120
	.p2align	4, , 16
.LBB0_118:                              #   in Loop: Header=BB0_120 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB0_119:                              #   in Loop: Header=BB0_120 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 128
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 16
	addi.d	$s3, $s3, 16
	bge	$fp, $a0, .LBB0_114
.LBB0_120:                              #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, -4
	addi.d	$s2, $s1, -4
	st.d	$a0, $s1, -4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_120 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
.LBB0_122:                              #   in Loop: Header=BB0_120 Depth=2
	bnez	$s6, .LBB0_118
# %bb.123:                              #   in Loop: Header=BB0_120 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_119
# %bb.124:                              #   in Loop: Header=BB0_120 Depth=2
	beq	$s0, $s5, .LBB0_118
# %bb.125:                              #   in Loop: Header=BB0_120 Depth=2
	beq	$s0, $s7, .LBB0_118
	b	.LBB0_119
.LBB0_126:                              # %.loopexit733
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fst.d	$fs0, $a0, 96
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	ori	$a0, $zero, 1
.LBB0_127:
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
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
.LBB0_128:                              # %.lr.ph772
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	or	$a0, $a2, $a0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	or	$a1, $a2, $a1
	ori	$fp, $zero, 1
	andi	$s4, $a0, 1
	andi	$s5, $a1, 1
	b	.LBB0_130
	.p2align	4, , 16
.LBB0_129:                              #   in Loop: Header=BB0_130 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB0_59
.LBB0_130:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $s7, 0
	ld.d	$s1, $s1, 0
	ld.d	$a0, $s7, 8
	addi.d	$s3, $s1, 8
	st.d	$a0, $s1, 8
	addi.d	$s2, $s1, 12
	move	$a0, $s6
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_130 Depth=1
	ld.w	$a0, $s3, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
.LBB0_132:                              #   in Loop: Header=BB0_130 Depth=1
	beqz	$s5, .LBB0_129
# %bb.133:                              #   in Loop: Header=BB0_130 Depth=1
	ld.w	$a0, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
	b	.LBB0_129
.LBB0_134:                              # %call.sqrt
	move	$s0, $a3
	move	$s5, $a2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a2, $s5
	move	$a3, $s0
	fmov.d	$fs1, $fa0
	b	.LBB0_4
.Lfunc_end0:
	.size	uaspect, .Lfunc_end0-uaspect
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_30-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
