	.file	"wireratio.c"
	.text
	.globl	wireratio                       # -- Begin function wireratio
	.p2align	5
	.type	wireratio,@function
wireratio:                              # @wireratio
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 32                   # 8-byte Folded Spill
	fmov.d	$fs2, $fa2
	fmov.d	$fs1, $fa1
	fmov.d	$fs0, $fa0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a1, %pc_hi20(N)
	fst.d	$fa0, $a1, %pc_lo12(N)
	vldi	$vr0, -912
	fmax.d	$fa1, $fs0, $fa0
	ori	$a1, $zero, 2
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	addi.d	$fp, $a0, -1
	fmax.d	$fa0, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$s0, $fa2
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$s1, $fa2
	movgr2fr.w	$fa2, $s0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fs4, $fa1, $fa2
	movgr2fr.w	$fa1, $s1
	ffint.d.w	$fa1, $fa1
	fsub.d	$fs5, $fa0, $fa1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	addi.w	$s2, $s0, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs3
	fmadd.d	$fs6, $fs4, $fa0, $fs3
	addi.w	$s1, $s1, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs3
	fmadd.d	$fa0, $fs4, $fa0, $fs3
	fsub.d	$fa0, $fa0, $fs6
	fmadd.d	$fa0, $fs5, $fa0, $fs6
	pcalau12i	$fp, %pc_hi20(CC)
	fst.d	$fa0, $fp, %pc_lo12(CC)
	pcalau12i	$s0, %pc_hi20(bb)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	st.d	$a0, $s0, %pc_lo12(bb)
	pcalau12i	$s1, %pc_hi20(a)
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$s2, $a0, 1016
	st.d	$s2, $s1, %pc_lo12(a)
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(findratio)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 16
	fld.d	$fa1, $sp, 24
	vldi	$vr2, -892
	fadd.d	$fa2, $fs1, $fa2
	vldi	$vr3, -1020
	fadd.d	$fa3, $fa2, $fa3
	vldi	$vr4, -908
	movgr2fr.d	$fa5, $s2
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	movgr2fr.d	$fa4, $zero
	fcmp.clt.d	$fcc0, $fa4, $fa2
	fsel	$fa2, $fa5, $fa3, $fcc0
	fst.d	$fa2, $s1, %pc_lo12(a)
	fsub.d	$fs3, $fa0, $fa1
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1638
	lu32i.d	$a0, -367002
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa1, $fa0, $fs0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s0, %pc_lo12(bb)
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(findratio)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 77
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	movfr2gr.d	$a2, $fs2
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	movfr2gr.d	$a2, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $fp, %pc_lo12(CC)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 74
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 16
	fsub.d	$fa0, $fa0, $fs3
	fld.d	$fs6, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end0:
	.size	wireratio, .Lfunc_end0-wireratio
                                        # -- End function
	.globl	probtree                        # -- Begin function probtree
	.p2align	5
	.type	probtree,@function
probtree:                               # @probtree
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$s0, $fa2
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$s1, $fa2
	movgr2fr.w	$fa2, $s0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fs1, $fa0, $fa2
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fa0, $fa0
	fsub.d	$fs2, $fa1, $fa0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	addi.w	$s2, $s0, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	fmadd.d	$fs3, $fs1, $fa0, $fs0
	addi.w	$s1, $s1, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	fmadd.d	$fa0, $fs1, $fa0, $fs0
	fsub.d	$fa0, $fa0, $fs3
	fmadd.d	$fa0, $fs2, $fa0, $fs3
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	probtree, .Lfunc_end1-probtree
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function findratio
.LCPI2_0:
	.dword	0xc000000000000000              # double -2
	.dword	0xc010000000000000              # double -4
.LCPI2_1:
	.dword	0xc010000000000000              # double -4
	.dword	0x4000000000000000              # double 2
	.text
	.globl	findratio
	.p2align	5
	.type	findratio,@function
findratio:                              # @findratio
# %bb.0:
	addi.d	$sp, $sp, -1712
	st.d	$ra, $sp, 1704                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1696                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1688                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1680                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1672                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1664                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1656                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1648                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1640                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1632                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1624                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1616                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1608                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1600                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1592                 # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(N)
	fld.d	$fs0, $s0, %pc_lo12(N)
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	move	$fp, $a1
	bceqz	$fcc0, .LBB2_40
.LBB2_1:                                # %.split588
	move	$a4, $zero
	pcalau12i	$s1, %pc_hi20(rootN)
	fst.d	$fa0, $s1, %pc_lo12(rootN)
	vldi	$vr1, -784
	fadd.d	$ft13, $fa0, $fa1
	vldi	$vr2, -1000
	fmul.d	$fa3, $fs0, $fa2
	vldi	$vr2, -1024
	vldi	$vr4, -864
	fmadd.d	$fa5, $fa0, $fa4, $fa2
	vldi	$vr2, -856
	fmul.d	$fa2, $fa0, $fa2
	vldi	$vr4, -984
	fmadd.d	$fa2, $fs0, $fa4, $fa2
	fadd.d	$fa6, $fa2, $fa1
	vldi	$vr1, -880
	fmul.d	$fa1, $fa0, $fa1
	fmadd.d	$fa1, $fs0, $fa4, $fa1
	vldi	$vr2, -896
	fadd.d	$fa7, $fa1, $fa2
	pcalau12i	$a1, %pc_hi20(CC)
	fld.d	$fa2, $a1, %pc_lo12(CC)
	ori	$a2, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -97152
	lu52i.d	$a1, $a1, 1042
	movgr2fr.d	$fa4, $a1
	lu12i.w	$a1, -419431
	ori	$a1, $a1, 2458
	lu32i.d	$a1, -419431
	lu52i.d	$a3, $a1, 1019
	movgr2fr.d	$ft0, $a3
	lu32i.d	$a2, -458752
	lu52i.d	$a2, $a2, 1029
	movgr2fr.d	$ft1, $a2
	movgr2fr.d	$fa1, $zero
	ori	$a6, $zero, 100
	lu12i.w	$a2, 244
	ori	$a2, $a2, 575
                                        # implicit-def: $r7
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_10 Depth 2
	bstrpick.d	$a5, $a4, 31, 0
	movgr2fr.d	$ft2, $a5
	ffint.d.l	$ft2, $ft2
	beqz	$a4, .LBB2_8
# %bb.3:                                # %.split.us.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a5, $zero
	addi.w	$a7, $a3, 0
	.p2align	4, , 16
.LBB2_4:                                # %.split.us
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t0, $a5, 31, 0
	movgr2fr.d	$ft3, $t0
	ffint.d.l	$ft3, $ft3
	fdiv.d	$ft3, $ft3, $ft1
	fadd.d	$ft12, $ft3, $ft2
	fcmp.clt.d	$fcc0, $ft13, $ft12
	bcnez	$fcc0, .LBB2_15
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=2
	fdiv.d	$ft3, $ft12, $fa3
	fmul.d	$ft4, $ft12, $ft12
	fmul.d	$ft5, $fa5, $ft4
	fmadd.d	$ft4, $ft4, $ft12, $ft5
	fmadd.d	$ft4, $fa6, $ft12, $ft4
	fadd.d	$ft4, $fa7, $ft4
	fmul.d	$ft3, $ft3, $ft4
	fcmp.cule.d	$fcc0, $ft3, $fa2
	movcf2gr	$t0, $fcc0
	sub.d	$t0, $zero, $t0
	ori	$t0, $t0, 1
	bne	$t0, $a7, .LBB2_18
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=2
	fsub.d	$fa4, $ft3, $fa2
	fneg.d	$ft3, $fa4
	fcmp.cult.d	$fcc0, $fa4, $fa1
	addi.w	$a5, $a5, 1
	fsel	$fa4, $fa4, $ft3, $fcc0
	bne	$a5, $a6, .LBB2_4
# %bb.7:                                # %.loopexit228
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a5, $a4
	addi.w	$a4, $a4, 1
	blt	$a5, $a2, .LBB2_2
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_8:                                # %.split.peel
                                        #   in Loop: Header=BB2_2 Depth=1
	fadd.d	$ft12, $ft2, $ft0
	fcmp.clt.d	$fcc0, $ft13, $ft12
	ori	$a7, $zero, 1
	bcnez	$fcc0, .LBB2_39
# %bb.9:                                # %.split.peel.next
                                        #   in Loop: Header=BB2_2 Depth=1
	fdiv.d	$ft3, $ft12, $fa3
	fmul.d	$ft4, $ft12, $ft12
	fmul.d	$ft5, $fa5, $ft4
	fmadd.d	$ft4, $ft4, $ft12, $ft5
	fmadd.d	$ft4, $fa6, $ft12, $ft4
	fadd.d	$ft4, $fa7, $ft4
	fmul.d	$ft3, $ft3, $ft4
	fcmp.cule.d	$fcc0, $ft3, $fa2
	movcf2gr	$a3, $fcc0
	sub.d	$a3, $zero, $a3
	ori	$t0, $a3, 1
	ori	$a5, $zero, 11
	.p2align	4, , 16
.LBB2_10:                               # %.split
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a3, $a5, 31, 0
	movgr2fr.d	$ft3, $a3
	ffint.d.l	$ft3, $ft3
	fdiv.d	$ft3, $ft3, $ft1
	fadd.d	$ft12, $ft3, $ft2
	fcmp.clt.d	$fcc0, $ft13, $ft12
	bcnez	$fcc0, .LBB2_16
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=2
	fdiv.d	$ft3, $ft12, $fa3
	fmul.d	$ft4, $ft12, $ft12
	fmul.d	$ft5, $fa5, $ft4
	fmadd.d	$ft4, $ft4, $ft12, $ft5
	fmadd.d	$ft4, $fa6, $ft12, $ft4
	fadd.d	$ft4, $fa7, $ft4
	fmul.d	$ft3, $ft3, $ft4
	fcmp.cule.d	$fcc0, $ft3, $fa2
	movcf2gr	$a3, $fcc0
	sub.d	$a3, $zero, $a3
	ori	$a3, $a3, 1
	addi.w	$a4, $t0, 0
	bne	$a3, $a4, .LBB2_17
# %bb.12:                               #   in Loop: Header=BB2_10 Depth=2
	fsub.d	$fa4, $ft3, $fa2
	fneg.d	$ft3, $fa4
	fcmp.cult.d	$fcc0, $fa4, $fa1
	addi.w	$a5, $a5, 1
	fsel	$fa4, $fa4, $ft3, $fcc0
	move	$t0, $a3
	bne	$a5, $a6, .LBB2_10
# %bb.13:                               #   in Loop: Header=BB2_2 Depth=1
	move	$a4, $zero
	move	$a5, $a4
	addi.w	$a4, $a4, 1
	blt	$a5, $a2, .LBB2_2
.LBB2_14:
	move	$a4, $zero
	move	$a7, $zero
                                        # implicit-def: $r9
	bnez	$a7, .LBB2_19
	b	.LBB2_32
.LBB2_15:
	ori	$a7, $zero, 1
	bnez	$a7, .LBB2_19
	b	.LBB2_32
.LBB2_16:
	move	$a4, $zero
	move	$a3, $t0
	bnez	$a7, .LBB2_19
	b	.LBB2_32
.LBB2_17:
	move	$a3, $t0
.LBB2_18:                               # %.split255.us
	move	$a4, $zero
	move	$a7, $zero
	fsub.d	$fa5, $ft3, $fa2
	fabs.d	$fa5, $fa5
	lu12i.w	$a5, 293601
	ori	$a5, $a5, 1147
	lu32i.d	$a5, 293601
	lu52i.d	$a5, $a5, -1032
	movgr2fr.d	$fa6, $a5
	fadd.d	$fa6, $ft12, $fa6
	fcmp.cult.d	$fcc0, $fa5, $fa4
	fsel	$ft12, $fa6, $ft12, $fcc0
                                        # implicit-def: $r9
	beqz	$a7, .LBB2_32
.LBB2_19:                               # %.loopexit368
	blt	$a2, $a4, .LBB2_32
# %bb.20:                               # %.lr.ph291
	frecip.d	$fa3, $fa3
	vldi	$vr4, -896
	vldi	$vr5, -992
	fmadd.d	$fa4, $fa0, $fa5, $fa4
	vldi	$vr5, -840
	fmul.d	$fa6, $fs0, $fa5
	vldi	$vr5, -984
	fmadd.d	$fa5, $fa0, $fa5, $fa6
	vldi	$vr7, -912
	fadd.d	$fa5, $fa5, $fa7
	lu52i.d	$a6, $zero, 1028
	movgr2fr.d	$fa7, $a6
	fmul.d	$ft4, $fs0, $fa7
	fmadd.d	$fa6, $ft4, $fa0, $fa6
	vldi	$vr11, -880
	fmadd.d	$fa7, $fa0, $ft3, $fa6
	vldi	$vr6, -1024
	fadd.d	$fa7, $fa7, $fa6
	fmul.d	$ft0, $ft13, $ft13
	fmul.d	$ft1, $ft13, $ft0
	fmul.d	$ft2, $ft13, $ft1
	vldi	$vr13, -976
	fnmadd.d	$ft3, $fa0, $ft5, $ft3
	ori	$a7, $zero, 0
	ori	$a6, $zero, 0
	lu32i.d	$a6, 131072
	lu52i.d	$a6, $a6, -1020
	movgr2fr.d	$ft5, $a6
	fmul.d	$ft6, $fs0, $ft5
	vldi	$vr13, -968
	fmadd.d	$ft5, $fa0, $ft5, $ft6
	fadd.d	$ft5, $ft5, $fa6
	fneg.d	$ft5, $ft5
	fmadd.d	$ft4, $ft4, $fa0, $ft6
	vldi	$vr14, -1008
	fadd.d	$ft4, $ft4, $ft6
	fneg.d	$ft6, $ft4
	ori	$a6, $zero, 0
	lu32i.d	$a6, -97152
	lu52i.d	$a6, $a6, 1042
	movgr2fr.d	$ft4, $a6
	ori	$a6, $zero, 99
	lu32i.d	$a7, -458752
	lu52i.d	$a7, $a7, 1029
	movgr2fr.d	$ft7, $a7
	addi.w	$a7, $a5, 0
	move	$t1, $a4
	b	.LBB2_23
.LBB2_21:                               #   in Loop: Header=BB2_23 Depth=1
	move	$a3, $t1
	move	$t1, $a4
.LBB2_22:                               # %.loopexit
                                        #   in Loop: Header=BB2_23 Depth=1
	move	$t0, $t1
	addi.w	$t1, $t1, 1
	bge	$t0, $a2, .LBB2_32
.LBB2_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_25 Depth 2
                                        #     Child Loop BB2_28 Depth 2
	slt	$t0, $a4, $t1
	masknez	$t0, $a5, $t0
	addi.w	$t0, $t0, 0
	blt	$a6, $t0, .LBB2_22
# %bb.24:                               # %.lr.ph
                                        #   in Loop: Header=BB2_23 Depth=1
	bstrpick.d	$a5, $t1, 31, 0
	movgr2fr.d	$ft8, $a5
	ffint.d.l	$ft8, $ft8
	beq	$t1, $a4, .LBB2_28
	.p2align	4, , 16
.LBB2_25:                               # %.lr.ph.split.us
                                        #   Parent Loop BB2_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$ft9, $t0
	ffint.d.w	$ft9, $ft9
	fdiv.d	$ft9, $ft9, $ft7
	fadd.d	$ft12, $ft9, $ft8
	fmul.d	$ft9, $ft12, $ft12
	fmul.d	$ft10, $ft12, $ft9
	fmul.d	$ft11, $fa4, $ft10
	fneg.d	$ft10, $ft10
	fmadd.d	$ft10, $ft10, $ft12, $ft11
	fmadd.d	$ft9, $fa5, $ft9, $ft10
	fmadd.d	$ft9, $fa7, $ft12, $ft9
	fmadd.d	$ft9, $ft2, $fa6, $ft9
	fmadd.d	$ft9, $ft3, $ft1, $ft9
	fmadd.d	$ft9, $ft5, $ft0, $ft9
	fmadd.d	$ft9, $ft6, $ft13, $ft9
	fmul.d	$ft9, $fa3, $ft9
	fcmp.cule.d	$fcc0, $ft9, $fa2
	movcf2gr	$a5, $fcc0
	sub.d	$a5, $zero, $a5
	ori	$a5, $a5, 1
	addi.w	$t2, $a3, 0
	bne	$a5, $t2, .LBB2_31
# %bb.26:                               # %select.unfold.us
                                        #   in Loop: Header=BB2_25 Depth=2
	fsub.d	$ft4, $ft9, $fa2
	fneg.d	$ft9, $ft4
	fcmp.cult.d	$fcc0, $ft4, $fa1
	addi.w	$t0, $t0, 1
	ori	$a5, $zero, 100
	fsel	$ft4, $ft4, $ft9, $fcc0
	bne	$t0, $a5, .LBB2_25
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_27:                               # %select.unfold
                                        #   in Loop: Header=BB2_28 Depth=2
	addi.w	$t0, $t0, 1
	ori	$a5, $zero, 100
	move	$a3, $t1
	beq	$t0, $a5, .LBB2_21
.LBB2_28:                               # %.lr.ph.split
                                        #   Parent Loop BB2_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$ft9, $t0
	ffint.d.w	$ft9, $ft9
	fdiv.d	$ft9, $ft9, $ft7
	fadd.d	$ft12, $ft9, $ft8
	fmul.d	$ft9, $ft12, $ft12
	fmul.d	$ft10, $ft12, $ft9
	fmul.d	$ft11, $fa4, $ft10
	fneg.d	$ft10, $ft10
	fmadd.d	$ft10, $ft10, $ft12, $ft11
	fmadd.d	$ft9, $fa5, $ft9, $ft10
	fmadd.d	$ft9, $fa7, $ft12, $ft9
	fmadd.d	$ft9, $ft2, $fa6, $ft9
	fmadd.d	$ft9, $ft3, $ft1, $ft9
	fmadd.d	$ft9, $ft5, $ft0, $ft9
	fmadd.d	$ft9, $ft6, $ft13, $ft9
	fmul.d	$ft9, $fa3, $ft9
	fcmp.cule.d	$fcc0, $ft9, $fa2
	movcf2gr	$a5, $fcc0
	sub.d	$a5, $zero, $a5
	ori	$t1, $a5, 1
	beq	$a7, $t0, .LBB2_27
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=2
	addi.w	$a3, $a3, 0
	bne	$t1, $a3, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_28 Depth=2
	fsub.d	$ft4, $ft9, $fa2
	fneg.d	$ft9, $ft4
	fcmp.cult.d	$fcc0, $ft4, $fa1
	fsel	$ft4, $ft4, $ft9, $fcc0
	b	.LBB2_27
.LBB2_31:                               # %.loopexit.thread
	fsub.d	$fa3, $ft9, $fa2
	fabs.d	$fa3, $fa3
	lu12i.w	$a2, 293601
	ori	$a2, $a2, 1147
	lu32i.d	$a2, 293601
	lu52i.d	$a2, $a2, -1032
	movgr2fr.d	$fa4, $a2
	fadd.d	$fa4, $ft12, $fa4
	fcmp.cult.d	$fcc0, $fa3, $ft4
	fsel	$ft12, $fa4, $ft12, $fcc0
.LBB2_32:                               # %.loopexit227
	fmul.d	$ft1, $ft12, $ft12
	fmul.d	$fa7, $ft12, $ft1
	fcmp.cult.d	$fcc0, $ft13, $ft12
	fmul.d	$fs7, $ft12, $fa7
	vst	$vr9, $sp, 1488                 # 16-byte Folded Spill
	fst.d	$fa7, $sp, 1528                 # 8-byte Folded Spill
	bceqz	$fcc0, .LBB2_34
# %bb.33:
	fmul.d	$fa3, $ft12, $fs7
	vldi	$vr4, -876
	vldi	$vr5, -978
	fmadd.d	$fa4, $fa0, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fs7
	vldi	$vr5, -896
	fmadd.d	$fa3, $fa3, $fa5, $fa4
	ori	$a2, $zero, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 262144
	lu52i.d	$a3, $a3, 1028
	movgr2fr.d	$fa4, $a3
	fmul.d	$fa4, $fs0, $fa4
	vldi	$vr5, -962
	fmsub.d	$fa6, $fa0, $fa5, $fa4
	fmadd.d	$fa3, $fa6, $fa7, $fa3
	ori	$a3, $zero, 0
	lu32i.d	$a3, -131072
	lu52i.d	$a4, $a3, -1020
	movgr2fr.d	$fa6, $a4
	fmul.d	$fa6, $fs0, $fa6
	fmadd.d	$fa7, $fa4, $fa0, $fa6
	vldi	$vr8, -1004
	fmadd.d	$fa7, $fa0, $ft0, $fa7
	fadd.d	$fa7, $fa7, $ft0
	fmadd.d	$fa3, $fa7, $ft1, $fa3
	vldi	$vr7, -844
	fmul.d	$fa7, $fs0, $fa7
	fmadd.d	$fa7, $fa4, $fa0, $fa7
	vldi	$vr8, -860
	fmadd.d	$fa7, $fa0, $ft0, $fa7
	vldi	$vr9, -1024
	fadd.d	$fa7, $fa7, $ft1
	fmadd.d	$fa3, $fa7, $ft12, $fa3
	fmul.d	$fa7, $ft13, $ft13
	fmul.d	$ft1, $ft13, $fa7
	fmul.d	$ft2, $ft13, $ft1
	fmul.d	$ft3, $ft13, $ft2
	fmadd.d	$fa5, $fa0, $fa5, $ft0
	fneg.d	$ft2, $ft2
	fmul.d	$fa5, $fa5, $ft2
	vldi	$vr10, -1008
	fmadd.d	$fa5, $ft3, $ft2, $fa5
	lu52i.d	$a3, $a3, 1028
	movgr2fr.d	$ft3, $a3
	fnmadd.d	$fa6, $fa0, $ft3, $fa6
	fmadd.d	$fa5, $fa6, $ft1, $fa5
	lu32i.d	$a2, 425984
	lu52i.d	$a2, $a2, -1019
	movgr2fr.d	$fa6, $a2
	fmul.d	$fa6, $fs0, $fa6
	fmadd.d	$fa6, $fa4, $fa0, $fa6
	vldi	$vr9, -972
	fmadd.d	$fa6, $fa0, $ft1, $fa6
	vldi	$vr9, -988
	fadd.d	$fa6, $fa6, $ft1
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	vldi	$vr6, -834
	fmul.d	$fa6, $fs0, $fa6
	fmadd.d	$fa4, $fa4, $fa0, $fa6
	fmadd.d	$fa4, $fa0, $ft0, $fa4
	fadd.d	$fa4, $fa4, $ft2
	fneg.d	$fa4, $fa4
	fmadd.d	$fa4, $fa4, $ft13, $fa5
	fadd.d	$fa3, $fa4, $fa3
	lu52i.d	$a1, $a1, 1021
	movgr2fr.d	$fa4, $a1
	fmul.d	$fa3, $fa3, $fa4
	vldi	$vr4, -1000
	fmul.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fs0, $fa2
	fdiv.d	$fa2, $fa3, $fa2
	b	.LBB2_35
.LBB2_34:
	vldi	$vr3, -1004
	vldi	$vr4, -850
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa3, $fa3, $fa7
	vldi	$vr5, -1024
	fmadd.d	$fa3, $fs7, $fa5, $fa3
	vldi	$vr5, -834
	fmul.d	$fa5, $fa0, $fa5
	vldi	$vr6, -972
	fmadd.d	$fa5, $fs0, $fa6, $fa5
	fmadd.d	$fa3, $fa5, $ft1, $fa3
	fmul.d	$fa4, $fa0, $fa4
	vldi	$vr5, -962
	fmadd.d	$fa4, $fs0, $fa5, $fa4
	vldi	$vr5, -876
	fadd.d	$fa4, $fa4, $fa5
	fmadd.d	$fa3, $fa4, $ft12, $fa3
	vldi	$vr4, -896
	vldi	$vr5, -988
	fmadd.d	$fa4, $fs0, $fa5, $fa4
	fadd.d	$fa3, $fa4, $fa3
	vldi	$vr4, -1000
	fmul.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fs0, $fa2
	fdiv.d	$fa2, $fa2, $ft12
	fdiv.d	$fa2, $fa3, $fa2
	lu52i.d	$a1, $a1, 1021
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
.LBB2_35:
	lu12i.w	$a1, 349525
	ori	$s2, $a1, 1365
	lu32i.d	$s2, 349525
	lu52i.d	$a1, $s2, 1022
	movgr2fr.d	$fa3, $a1
	fst.d	$fa3, $sp, 1456                 # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $sp, 1480                 # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $a0, 0
	pcalau12i	$s4, %pc_hi20(a)
	fld.d	$fa2, $s4, %pc_lo12(a)
	pcalau12i	$a0, %pc_hi20(bb)
	fld.d	$fa0, $a0, %pc_lo12(bb)
	fadd.d	$fa3, $fa2, $fa0
	pcalau12i	$s3, %pc_hi20(c)
	fst.d	$fa3, $s3, %pc_lo12(c)
	fneg.d	$fa0, $fa1
	fmul.d	$fs1, $fa2, $fa0
	fcmp.cule.d	$fcc0, $ft12, $ft13
	vst	$vr3, $sp, 1568                 # 16-byte Folded Spill
	fmul.d	$fs0, $fa3, $fa0
	vst	$vr20, $sp, 1504                # 16-byte Folded Spill
	vst	$vr2, $sp, 1552                 # 16-byte Folded Spill
	vldi	$vr0, -784
	bcnez	$fcc0, .LBB2_37
# %bb.36:
	fadd.d	$fa0, $ft13, $fa0
	fneg.d	$fs2, $fa0
	fst.d	$fs2, $sp, 1312                 # 8-byte Folded Spill
	fmul.d	$fs3, $fa2, $fs2
	fmov.d	$fa0, $fs3
	vst	$vr21, $sp, 1392                # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fmul.d	$fs2, $fa0, $fs2
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	fmul.d	$fa2, $fa1, $fa1
	vst	$vr2, $sp, 1264                 # 16-byte Folded Spill
	fmul.d	$fa2, $fa1, $fa2
	vst	$vr2, $sp, 1376                 # 16-byte Folded Spill
	fmul.d	$fa1, $fa1, $fa2
	vldi	$vr2, -1000
	fdiv.d	$fa2, $fa1, $fa2
	fst.d	$fa2, $sp, 1536                 # 8-byte Folded Spill
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	vst	$vr0, $sp, 1248                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	lu52i.d	$a0, $s2, 1020
	movgr2fr.d	$fs5, $a0
	fmul.d	$fa0, $fa0, $fs5
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 1008                 # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 944                  # 8-byte Folded Spill
	fld.d	$fs6, $s1, %pc_lo12(rootN)
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 968                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1440                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vldi	$vr0, -1016
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 184                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 576                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 640                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1440                 # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa0
	vst	$vr0, $sp, 1024                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 480                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 496                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 416                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 432                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1376                 # 16-byte Folded Reload
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	vst	$vr1, $sp, 1216                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1200                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fs4, $fa0
	vst	$vr0, $sp, 1184                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs5
	vst	$vr0, $sp, 1168                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1280                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1280                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1296                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	vldi	$vr0, -896
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 368                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 608                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1504                 # 16-byte Folded Reload
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs6, $fa0
	vld	$vr0, $sp, 1552                 # 16-byte Folded Reload
	fmul.d	$fs0, $fa0, $fs6
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fmul.d	$fs1, $fa0, $fs6
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -872
	fdiv.d	$fa1, $fs7, $fa1
	vld	$vr2, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa2
	vld	$vr2, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa2, $fs4, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fs5, $fa1, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 1536                 # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs5, $fa0
	vst	$vr0, $sp, 1152                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 536                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 528                  # 8-byte Folded Spill
	fld.d	$fa2, $s1, %pc_lo12(rootN)
	vst	$vr2, $sp, 1536                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa3, $fa0, $fa1
	vld	$vr0, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa0
	fsub.d	$fa0, $fa3, $fa1
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 568                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 464                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 456                  # 8-byte Folded Spill
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa2, $fa0, $fa1
	vld	$vr0, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa0
	fsub.d	$fa0, $fa2, $fa1
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 472                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 768                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 656                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	vldi	$vr1, -1016
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 680                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 752                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 704                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 880                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 848                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	vldi	$vr1, -1000
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 792                  # 8-byte Folded Spill
	lu52i.d	$a0, $s2, 1023
	movgr2fr.d	$fa0, $a0
	vld	$vr1, $sp, 1360                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 736                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 864                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 816                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 912                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 896                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1088                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1072                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 1528                 # 8-byte Folded Reload
	vldi	$vr2, -872
	fdiv.d	$fa2, $fa1, $fa2
	vst	$vr2, $sp, 1136                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1120                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs3, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1104                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa2, $fa0, $fa1
	fld.d	$fa3, $s4, %pc_lo12(a)
	vst	$vr3, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr0, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa0, $fa2, $fa1
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	fld.d	$fs3, $sp, 1312                 # 8-byte Folded Reload
	fmul.d	$fs0, $fa3, $fs3
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1328                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 336                  # 16-byte Folded Spill
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa3, $fa0, $fa1
	vld	$vr2, $sp, 1408                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa3, $fa1
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	fmul.d	$fs1, $fa2, $fs6
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s3, %pc_lo12(c)
	vst	$vr1, $sp, 1424                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1056                 # 16-byte Folded Spill
	fmul.d	$fs2, $fa1, $fs6
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 992                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1040                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1424                 # 16-byte Folded Reload
	fmul.d	$fs3, $fa0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 976                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 720                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 688                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 832                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 800                  # 16-byte Folded Spill
	vld	$vr10, $sp, 1424                # 16-byte Folded Reload
	vori.b	$vr0, $vr10, 0
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr1, 16
	vfmul.d	$vr7, $vr0, $vr0
	vori.b	$vr5, $vr0, 0
	vreplvei.d	$vr31, $vr7, 1
	fld.d	$fa0, $sp, 944                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fs7
	vld	$vr9, $sp, 1408                 # 16-byte Folded Reload
	vori.b	$vr6, $vr9, 0
	vld	$vr2, $sp, 1552                 # 16-byte Folded Reload
	vextrins.d	$vr6, $vr2, 16
	vfmul.d	$vr8, $vr6, $vr6
	vreplvei.d	$vr2, $vr8, 1
	fld.d	$fa1, $sp, 1008                 # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa4, $sp, 1456                 # 8-byte Folded Reload
	fld.d	$fa1, $sp, 968                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fst.d	$fa0, $sp, 968                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 928                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fs7
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	vori.b	$vr11, $vr2, 0
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	vst	$vr0, $sp, 1008                 # 16-byte Folded Spill
	vori.b	$vr0, $vr7, 0
	vori.b	$vr3, $vr7, 0
	vst	$vr7, $sp, 1312                 # 16-byte Folded Spill
	vextrins.d	$vr0, $vr10, 0
	vori.b	$vr2, $vr10, 0
	vst	$vr0, $sp, 944                  # 16-byte Folded Spill
	vori.b	$vr1, $vr8, 0
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
	vextrins.d	$vr1, $vr9, 0
	vst	$vr1, $sp, 928                  # 16-byte Folded Spill
	vfmul.d	$vr10, $vr5, $vr0
	vreplvei.d	$vr13, $vr10, 1
	vst	$vr10, $sp, 1456                # 16-byte Folded Spill
	vld	$vr7, $sp, 96                   # 16-byte Folded Reload
	fdiv.d	$fa0, $fa7, $ft5
	vfmul.d	$vr21, $vr6, $vr1
	vreplvei.d	$vr14, $vr21, 1
	vld	$vr18, $sp, 224                 # 16-byte Folded Reload
	fdiv.d	$fa1, $ft10, $ft6
	fsub.d	$fa0, $fa0, $fa1
	fdiv.d	$fa1, $fa7, $fs7
	vori.b	$vr17, $vr11, 0
	vst	$vr11, $sp, 32                  # 16-byte Folded Spill
	fdiv.d	$ft3, $ft10, $ft9
	fsub.d	$fa1, $fa1, $ft3
	fneg.d	$fa1, $fa1
	fld.d	$ft8, $sp, 184                  # 8-byte Folded Reload
	fmul.d	$fa1, $ft8, $fa1
	vldi	$vr12, -1024
	fmadd.d	$ft3, $fa0, $ft4, $fa1
	vld	$vr15, $sp, 144                 # 16-byte Folded Reload
	fdiv.d	$fa0, $ft7, $ft5
	vld	$vr4, $sp, 192                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa4, $ft6
	fsub.d	$fa0, $fa0, $fa1
	fdiv.d	$fa1, $ft7, $fs7
	fdiv.d	$ft9, $fa4, $ft9
	fsub.d	$fa1, $fa1, $ft9
	fneg.d	$fa1, $fa1
	fmul.d	$fa1, $ft8, $fa1
	fmadd.d	$ft4, $fa0, $ft4, $fa1
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vextrins.d	$vr0, $vr7, 16
	vld	$vr1, $sp, 1280                 # 16-byte Folded Reload
	vextrins.d	$vr1, $vr18, 16
	vpackod.d	$vr28, $vr5, $vr3
	vfdiv.d	$vr0, $vr0, $vr28
	vpackod.d	$vr27, $vr6, $vr8
	vfdiv.d	$vr1, $vr1, $vr27
	vfsub.d	$vr0, $vr0, $vr1
	vld	$vr3, $sp, 128                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr11, 16
	vldi	$vr1, -928
	vld	$vr7, $sp, 1440                 # 16-byte Folded Reload
	vpackev.d	$vr1, $vr7, $vr1
	vfmadd.d	$vr0, $vr1, $vr0, $vr3
	vst	$vr0, $sp, 1280                 # 16-byte Folded Spill
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr15, 16
	vld	$vr3, $sp, 1296                 # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfdiv.d	$vr0, $vr0, $vr28
	vfdiv.d	$vr17, $vr3, $vr27
	vfsub.d	$vr0, $vr0, $vr17
	vld	$vr3, $sp, 208                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr12, 16
	vfmadd.d	$vr0, $vr1, $vr0, $vr3
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	vld	$vr26, $sp, 512                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fs2, $ft5
	vld	$vr12, $sp, 576                 # 16-byte Folded Reload
	fdiv.d	$fa1, $ft4, $ft6
	fsub.d	$fa0, $fa0, $fa1
	vld	$vr4, $sp, 400                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa4, $ft5
	vld	$vr11, $sp, 480                 # 16-byte Folded Reload
	fdiv.d	$ft9, $ft3, $ft6
	fsub.d	$fa1, $fa1, $ft9
	vori.b	$vr17, $vr10, 0
	vextrins.d	$vr17, $vr2, 0
	vfmul.d	$vr20, $vr5, $vr17
	vori.b	$vr7, $vr5, 0
	vst	$vr5, $sp, 48                   # 16-byte Folded Spill
	vori.b	$vr17, $vr21, 0
	vori.b	$vr8, $vr21, 0
	vextrins.d	$vr17, $vr9, 0
	vfmul.d	$vr21, $vr6, $vr17
	vst	$vr6, $sp, 64                   # 16-byte Folded Spill
	vreplvei.d	$vr17, $vr20, 1
	vld	$vr10, $sp, 416                 # 16-byte Folded Reload
	fdiv.d	$ft11, $ft2, $ft9
	vreplvei.d	$vr18, $vr21, 1
	vld	$vr9, $sp, 496                  # 16-byte Folded Reload
	fdiv.d	$ft14, $ft1, $ft10
	fsub.d	$ft11, $ft11, $ft14
	vld	$vr15, $sp, 384                 # 16-byte Folded Reload
	fdiv.d	$ft14, $ft7, $ft9
	vld	$vr16, $sp, 432                 # 16-byte Folded Reload
	fdiv.d	$ft15, $ft8, $ft10
	fsub.d	$ft14, $ft14, $ft15
	fneg.d	$fa0, $fa0
	fld.d	$fa2, $sp, 640                  # 8-byte Folded Reload
	fmul.d	$fs1, $fa2, $fa0
	fneg.d	$fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	fneg.d	$fa1, $ft11
	fmul.d	$fs0, $fa2, $fa1
	fneg.d	$fa1, $ft14
	fmul.d	$ft11, $fa2, $fa1
	vld	$vr3, $sp, 240                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa3, $ft5
	vld	$vr2, $sp, 256                  # 16-byte Folded Reload
	fdiv.d	$ft14, $fa2, $ft6
	fsub.d	$fa1, $fa1, $ft14
	vextrins.d	$vr3, $vr26, 16
	vextrins.d	$vr2, $vr12, 16
	vori.b	$vr26, $vr28, 0
	vshuf4i.d	$vr26, $vr20, 12
	vori.b	$vr29, $vr27, 0
	vshuf4i.d	$vr29, $vr21, 12
	vfdiv.d	$vr22, $vr3, $vr26
	vfdiv.d	$vr23, $vr2, $vr29
	vfsub.d	$vr22, $vr22, $vr23
	vldi	$vr23, -1008
	vld	$vr5, $sp, 272                  # 16-byte Folded Reload
	vpackev.d	$vr23, $vr23, $vr5
	vextrins.d	$vr1, $vr25, 16
	vfmadd.d	$vr22, $vr22, $vr23, $vr1
	vld	$vr12, $sp, 288                 # 16-byte Folded Reload
	fdiv.d	$fa1, $ft4, $ft5
	vld	$vr30, $sp, 304                 # 16-byte Folded Reload
	fdiv.d	$fs1, $fs6, $ft6
	fsub.d	$fa1, $fa1, $fs1
	vextrins.d	$vr12, $vr4, 16
	vextrins.d	$vr30, $vr11, 16
	vfdiv.d	$vr25, $vr12, $vr26
	vfdiv.d	$vr26, $vr30, $vr29
	vori.b	$vr11, $vr30, 0
	vfsub.d	$vr25, $vr25, $vr26
	vextrins.d	$vr1, $vr0, 16
	vfmadd.d	$vr0, $vr25, $vr23, $vr1
	vld	$vr5, $sp, 352                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa5, $ft9
	vld	$vr26, $sp, 368                 # 16-byte Folded Reload
	fdiv.d	$fs1, $fs2, $ft10
	fsub.d	$fa1, $fa1, $fs1
	vextrins.d	$vr5, $vr10, 16
	vori.b	$vr10, $vr26, 0
	vextrins.d	$vr10, $vr9, 16
	vfmul.d	$vr4, $vr7, $vr20
	vst	$vr4, $sp, 640                  # 16-byte Folded Spill
	vfmul.d	$vr26, $vr6, $vr21
	vld	$vr7, $sp, 1456                 # 16-byte Folded Reload
	vpackod.d	$vr20, $vr4, $vr7
	vfdiv.d	$vr21, $vr5, $vr20
	vpackod.d	$vr29, $vr26, $vr8
	vfdiv.d	$vr30, $vr10, $vr29
	vfsub.d	$vr21, $vr21, $vr30
	vextrins.d	$vr1, $vr24, 16
	vfmadd.d	$vr1, $vr21, $vr23, $vr1
	vld	$vr9, $sp, 544                  # 16-byte Folded Reload
	fdiv.d	$ft13, $ft1, $ft9
	vld	$vr4, $sp, 608                  # 16-byte Folded Reload
	fdiv.d	$fs0, $fa4, $ft10
	fsub.d	$ft13, $ft13, $fs0
	vextrins.d	$vr9, $vr15, 16
	vextrins.d	$vr4, $vr16, 16
	vfdiv.d	$vr20, $vr9, $vr20
	vfdiv.d	$vr24, $vr4, $vr29
	vfsub.d	$vr20, $vr20, $vr24
	vextrins.d	$vr21, $vr19, 16
	vfmadd.d	$vr23, $vr20, $vr23, $vr21
	vld	$vr20, $sp, 1312                # 16-byte Folded Reload
	vld	$vr6, $sp, 1568                 # 16-byte Folded Reload
	vextrins.d	$vr20, $vr6, 0
	vld	$vr25, $sp, 16                  # 16-byte Folded Reload
	vori.b	$vr21, $vr25, 0
	vld	$vr6, $sp, 1552                 # 16-byte Folded Reload
	vextrins.d	$vr21, $vr6, 0
	vfdiv.d	$vr19, $vr3, $vr20
	vfdiv.d	$vr24, $vr2, $vr21
	vfsub.d	$vr19, $vr19, $vr24
	vld	$vr2, $sp, 1440                 # 16-byte Folded Reload
	vld	$vr3, $sp, 1024                 # 16-byte Folded Reload
	vextrins.d	$vr2, $vr3, 16
	vfmadd.d	$vr3, $vr2, $vr19, $vr22
	vst	$vr3, $sp, 1568                 # 16-byte Folded Spill
	vfdiv.d	$vr20, $vr12, $vr20
	vfdiv.d	$vr21, $vr11, $vr21
	vfsub.d	$vr20, $vr20, $vr21
	vfmadd.d	$vr0, $vr2, $vr20, $vr0
	vst	$vr0, $sp, 1552                 # 16-byte Folded Spill
	vori.b	$vr0, $vr28, 0
	vshuf4i.d	$vr0, $vr7, 12
	vfdiv.d	$vr21, $vr5, $vr0
	vori.b	$vr22, $vr27, 0
	vshuf4i.d	$vr22, $vr8, 12
	vori.b	$vr20, $vr8, 0
	vfdiv.d	$vr24, $vr10, $vr22
	vfsub.d	$vr21, $vr21, $vr24
	vfmadd.d	$vr1, $vr2, $vr21, $vr1
	vst	$vr1, $sp, 1440                 # 16-byte Folded Spill
	vfdiv.d	$vr0, $vr9, $vr0
	vfdiv.d	$vr1, $vr4, $vr22
	vfsub.d	$vr0, $vr0, $vr1
	vfmadd.d	$vr0, $vr2, $vr0, $vr23
	vst	$vr0, $sp, 1024                 # 16-byte Folded Spill
	fld.d	$fa0, $sp, 528                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fs7
	fld.d	$fa1, $sp, 536                  # 8-byte Folded Reload
	vld	$vr7, $sp, 32                   # 16-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa7
	fsub.d	$fa0, $fa0, $fa1
	lu52i.d	$a0, $s2, -1026
	movgr2fr.d	$fa1, $a0
	fld.d	$fa2, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fs0, $fa0, $fa1, $fa2
	fld.d	$fa0, $sp, 456                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fs7
	vori.b	$vr6, $vr31, 0
	fld.d	$fa2, $sp, 464                  # 8-byte Folded Reload
	fdiv.d	$ft15, $fa2, $fa7
	fsub.d	$fa0, $fa0, $ft15
	fld.d	$fa2, $sp, 472                  # 8-byte Folded Reload
	fmadd.d	$ft15, $fa0, $fa1, $fa2
	vld	$vr2, $sp, 656                  # 16-byte Folded Reload
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr2, 16
	vfdiv.d	$vr0, $vr0, $vr28
	vld	$vr4, $sp, 704                  # 16-byte Folded Reload
	vld	$vr1, $sp, 336                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr4, 16
	vfdiv.d	$vr1, $vr1, $vr28
	fdiv.d	$fs4, $fa2, $ft5
	vori.b	$vr3, $vr2, 0
	vld	$vr2, $sp, 768                  # 16-byte Folded Reload
	fdiv.d	$fs5, $fa2, $ft6
	fsub.d	$fs4, $fs4, $fs5
	fdiv.d	$fs5, $fa3, $fa6
	fdiv.d	$fs6, $fa2, $fa7
	vori.b	$vr5, $vr2, 0
	fsub.d	$fs5, $fs5, $fs6
	fld.d	$fs7, $sp, 680                  # 8-byte Folded Reload
	fmul.d	$fs5, $fs7, $fs5
	vldi	$vr2, -896
	fmadd.d	$fs4, $fs4, $fa2, $fs5
	fdiv.d	$fs5, $fa4, $ft5
	vld	$vr3, $sp, 752                  # 16-byte Folded Reload
	fdiv.d	$fs6, $fa3, $ft6
	fsub.d	$fs5, $fs5, $fs6
	fdiv.d	$ft7, $fa4, $fa6
	fdiv.d	$ft8, $fa3, $fa7
	vori.b	$vr6, $vr3, 0
	fsub.d	$ft7, $ft7, $ft8
	fmul.d	$ft7, $fs7, $ft7
	fmadd.d	$ft8, $fs5, $fa2, $ft7
	vld	$vr3, $sp, 1360                 # 16-byte Folded Reload
	vreplvei.d	$vr29, $vr3, 0
	vld	$vr4, $sp, 1536                 # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vld	$vr4, $sp, 736                  # 16-byte Folded Reload
	vpackev.d	$vr15, $vr4, $vr2
	vld	$vr2, $sp, 1344                 # 16-byte Folded Reload
	vextrins.d	$vr2, $vr5, 16
	vfdiv.d	$vr30, $vr2, $vr27
	vfsub.d	$vr0, $vr0, $vr30
	vld	$vr2, $sp, 592                  # 16-byte Folded Reload
	vextrins.d	$vr2, $vr28, 16
	vfmul.d	$vr28, $vr3, $vr15
	lu52i.d	$a0, $zero, -1026
	vreplgr2vr.d	$vr15, $a0
	vpackev.d	$vr30, $vr28, $vr15
	vfmadd.d	$vr22, $vr0, $vr30, $vr2
	vld	$vr0, $sp, 1328                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr6, 16
	vori.b	$vr15, $vr25, 0
	vshuf4i.d	$vr27, $vr25, 6
	vfdiv.d	$vr0, $vr0, $vr27
	vfsub.d	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 624                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr16, 16
	vfmadd.d	$vr21, $vr0, $vr30, $vr1
	vld	$vr10, $sp, 848                 # 16-byte Folded Reload
	fdiv.d	$fa0, $ft2, $ft9
	vld	$vr16, $sp, 880                 # 16-byte Folded Reload
	fdiv.d	$fa1, $ft8, $ft10
	fsub.d	$fa0, $fa0, $fa1
	fdiv.d	$fa1, $ft2, $ft5
	fdiv.d	$fs3, $ft8, $ft6
	fsub.d	$fa1, $fa1, $fs3
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr30, $a0, %pc_lo12(.LCPI2_0)
	fld.d	$fa5, $sp, 792                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa5, $fa1
	vldi	$vr31, -880
	fmadd.d	$fs3, $fa0, $fs7, $fa1
	vfmul.d	$vr30, $vr29, $vr30
	vld	$vr19, $sp, 816                 # 16-byte Folded Reload
	fdiv.d	$fa0, $ft11, $ft9
	vld	$vr7, $sp, 864                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa7, $ft10
	fsub.d	$fa0, $fa0, $fa1
	fdiv.d	$fa1, $ft11, $ft5
	fdiv.d	$ft5, $fa7, $ft6
	fsub.d	$fa1, $fa1, $ft5
	fmul.d	$fa1, $fa5, $fa1
	fmadd.d	$ft5, $fa0, $fs7, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	vld	$vr4, $sp, 896                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa4, $ft9
	vld	$vr12, $sp, 912                 # 16-byte Folded Reload
	fdiv.d	$ft6, $ft4, $ft10
	fsub.d	$fa6, $fa1, $ft6
	vfmul.d	$vr14, $vr3, $vr0
	vreplvei.d	$vr29, $vr26, 0
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	fmul.d	$fa2, $fa0, $fs5
	vld	$vr25, $sp, 640                 # 16-byte Folded Reload
	vreplvei.d	$vr3, $vr25, 0
	vld	$vr0, $sp, 1424                 # 16-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa3
	vld	$vr9, $sp, 688                  # 16-byte Folded Reload
	fdiv.d	$fa0, $ft1, $fa1
	vld	$vr8, $sp, 720                  # 16-byte Folded Reload
	fdiv.d	$ft3, $ft0, $fa2
	fsub.d	$fa0, $fa0, $ft3
	vextrins.d	$vr9, $vr4, 16
	vextrins.d	$vr8, $vr12, 16
	vshuf4i.d	$vr14, $vr0, 1
	vfdiv.d	$vr11, $vr9, $vr25
	vfdiv.d	$vr12, $vr8, $vr26
	vfsub.d	$vr11, $vr11, $vr12
	vori.b	$vr12, $vr14, 0
	vextrins.d	$vr12, $vr31, 16
	fmul.d	$fa4, $fa5, $fa6
	fneg.d	$fa0, $fa0
	vextrins.d	$vr0, $vr4, 16
	vfmadd.d	$vr0, $vr11, $vr12, $vr0
	vld	$vr31, $sp, 1456                # 16-byte Folded Reload
	vfdiv.d	$vr4, $vr9, $vr31
	vfdiv.d	$vr11, $vr8, $vr20
	vfsub.d	$vr4, $vr4, $vr11
	vfmadd.d	$vr0, $vr30, $vr4, $vr0
	vld	$vr30, $sp, 1072                # 16-byte Folded Reload
	fdiv.d	$fa4, $fs6, $ft9
	vld	$vr17, $sp, 1088                # 16-byte Folded Reload
	fdiv.d	$ft3, $ft9, $ft10
	fsub.d	$fa4, $fa4, $ft3
	fmul.d	$fa4, $fa5, $fa4
	vld	$vr6, $sp, 800                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa6, $fa1
	vld	$vr5, $sp, 832                  # 16-byte Folded Reload
	fdiv.d	$fa2, $fa5, $fa2
	fsub.d	$fa1, $fa1, $fa2
	vextrins.d	$vr6, $vr30, 16
	vextrins.d	$vr5, $vr17, 16
	vfdiv.d	$vr2, $vr6, $vr25
	vori.b	$vr18, $vr6, 0
	vfdiv.d	$vr11, $vr5, $vr26
	vori.b	$vr17, $vr5, 0
	vfsub.d	$vr2, $vr2, $vr11
	fneg.d	$fa1, $fa1
	vextrins.d	$vr1, $vr4, 16
	vfmadd.d	$vr1, $vr2, $vr12, $vr1
	vld	$vr11, $sp, 992                 # 16-byte Folded Reload
	fdiv.d	$fa2, $ft3, $fa3
	vld	$vr5, $sp, 1056                 # 16-byte Folded Reload
	fdiv.d	$fa4, $fa5, $fs5
	fsub.d	$fa2, $fa2, $fa4
	vextrins.d	$vr11, $vr10, 16
	vextrins.d	$vr5, $vr16, 16
	vld	$vr12, $sp, 1312                # 16-byte Folded Reload
	vfdiv.d	$vr4, $vr11, $vr12
	vori.b	$vr10, $vr11, 0
	vfdiv.d	$vr11, $vr5, $vr15
	vfsub.d	$vr4, $vr4, $vr11
	fneg.d	$fa2, $fa2
	vextrins.d	$vr2, $vr27, 16
	vfmadd.d	$vr2, $vr14, $vr4, $vr2
	vld	$vr6, $sp, 976                  # 16-byte Folded Reload
	fdiv.d	$fa3, $fa6, $fa3
	vld	$vr11, $sp, 1040                # 16-byte Folded Reload
	fdiv.d	$fa4, $ft3, $fs5
	fsub.d	$fa3, $fa3, $fa4
	vextrins.d	$vr6, $vr19, 16
	vextrins.d	$vr11, $vr7, 16
	vfdiv.d	$vr4, $vr6, $vr12
	vfdiv.d	$vr7, $vr11, $vr15
	vfsub.d	$vr4, $vr4, $vr7
	fneg.d	$fa3, $fa3
	vextrins.d	$vr3, $vr13, 16
	vfmadd.d	$vr3, $vr14, $vr4, $vr3
	vfdiv.d	$vr4, $vr18, $vr31
	vfdiv.d	$vr7, $vr17, $vr20
	vfsub.d	$vr4, $vr4, $vr7
	vshuf4i.d	$vr14, $vr28, 6
	vfmadd.d	$vr1, $vr14, $vr4, $vr1
	vld	$vr12, $sp, 48                  # 16-byte Folded Reload
	vfdiv.d	$vr4, $vr10, $vr12
	vld	$vr10, $sp, 64                  # 16-byte Folded Reload
	vfdiv.d	$vr7, $vr5, $vr10
	vfsub.d	$vr4, $vr4, $vr7
	vfmadd.d	$vr2, $vr28, $vr4, $vr2
	vfdiv.d	$vr4, $vr6, $vr12
	vfdiv.d	$vr5, $vr11, $vr10
	vfsub.d	$vr4, $vr4, $vr5
	vfmadd.d	$vr3, $vr28, $vr4, $vr3
	vld	$vr6, $sp, 944                  # 16-byte Folded Reload
	vfdiv.d	$vr4, $vr9, $vr6
	vld	$vr7, $sp, 928                  # 16-byte Folded Reload
	vfdiv.d	$vr5, $vr8, $vr7
	vfsub.d	$vr4, $vr4, $vr5
	vreplvei.d	$vr5, $vr28, 1
	vfmadd.d	$vr0, $vr5, $vr4, $vr0
	vfdiv.d	$vr4, $vr18, $vr6
	vfdiv.d	$vr6, $vr17, $vr7
	vfsub.d	$vr4, $vr4, $vr6
	vfmadd.d	$vr1, $vr5, $vr4, $vr1
	vld	$vr4, $sp, 1248                 # 16-byte Folded Reload
	vld	$vr5, $sp, 1200                 # 16-byte Folded Reload
	vextrins.d	$vr5, $vr4, 16
	vld	$vr4, $sp, 1232                 # 16-byte Folded Reload
	vld	$vr6, $sp, 1184                 # 16-byte Folded Reload
	vextrins.d	$vr6, $vr4, 16
	vld	$vr11, $sp, 1376                # 16-byte Folded Reload
	fld.d	$fa4, $sp, 968                  # 8-byte Folded Reload
	fmul.d	$fa4, $ft3, $fa4
	vfsub.d	$vr5, $vr5, $vr6
	vld	$vr7, $sp, 1216                 # 16-byte Folded Reload
	vori.b	$vr6, $vr7, 0
	vextrins.d	$vr6, $vr4, 16
	vfmul.d	$vr4, $vr5, $vr7
	vfadd.d	$vr5, $vr5, $vr6
	vshuf4i.d	$vr4, $vr5, 12
	vld	$vr5, $sp, 1168                 # 16-byte Folded Reload
	vld	$vr7, $sp, 1008                 # 16-byte Folded Reload
	vextrins.d	$vr5, $vr7, 16
	vfsub.d	$vr4, $vr4, $vr5
	vld	$vr5, $sp, 1264                 # 16-byte Folded Reload
	vreplvei.d	$vr5, $vr5, 0
	vld	$vr7, $sp, 1280                 # 16-byte Folded Reload
	vfmul.d	$vr7, $vr5, $vr7
	vfadd.d	$vr4, $vr4, $vr7
	vld	$vr7, $sp, 1296                 # 16-byte Folded Reload
	vfsub.d	$vr4, $vr4, $vr7
	vld	$vr7, $sp, 1392                 # 16-byte Folded Reload
	vreplvei.d	$vr7, $vr7, 0
	vld	$vr8, $sp, 1568                 # 16-byte Folded Reload
	vfmul.d	$vr8, $vr7, $vr8
	vfadd.d	$vr4, $vr4, $vr8
	vld	$vr8, $sp, 1552                 # 16-byte Folded Reload
	vfsub.d	$vr4, $vr4, $vr8
	vld	$vr8, $sp, 1440                 # 16-byte Folded Reload
	vfadd.d	$vr4, $vr4, $vr8
	vld	$vr8, $sp, 1024                 # 16-byte Folded Reload
	vfsub.d	$vr4, $vr4, $vr8
	fld.d	$ft0, $sp, 1528                 # 8-byte Folded Reload
	fmul.d	$ft0, $ft0, $fs0
	vld	$vr12, $sp, 1136                # 16-byte Folded Reload
	vori.b	$vr9, $vr12, 0
	vld	$vr10, $sp, 1152                # 16-byte Folded Reload
	vextrins.d	$vr9, $vr10, 16
	vld	$vr13, $sp, 1120                # 16-byte Folded Reload
	vfmul.d	$vr10, $vr12, $vr13
	vextrins.d	$vr13, $vr8, 16
	vfadd.d	$vr8, $vr9, $vr13
	vld	$vr9, $sp, 1104                 # 16-byte Folded Reload
	vextrins.d	$vr9, $vr11, 16
	vextrins.d	$vr6, $vr23, 16
	vfmul.d	$vr6, $vr9, $vr6
	vfsub.d	$vr8, $vr8, $vr6
	vfadd.d	$vr6, $vr10, $vr6
	vshuf4i.d	$vr6, $vr8, 12
	vld	$vr8, $sp, 1488                 # 16-byte Folded Reload
	vreplvei.d	$vr8, $vr8, 0
	vfmul.d	$vr8, $vr8, $vr22
	vfadd.d	$vr6, $vr6, $vr8
	vfmul.d	$vr5, $vr5, $vr21
	vfsub.d	$vr5, $vr6, $vr5
	vld	$vr6, $sp, 1504                 # 16-byte Folded Reload
	vreplvei.d	$vr6, $vr6, 0
	vfmul.d	$vr2, $vr6, $vr2
	vfadd.d	$vr2, $vr5, $vr2
	vfmul.d	$vr3, $vr7, $vr3
	vfsub.d	$vr2, $vr2, $vr3
	vfadd.d	$vr0, $vr2, $vr0
	vfsub.d	$vr0, $vr0, $vr1
	vfadd.d	$vr0, $vr4, $vr0
	b	.LBB2_38
.LBB2_37:
	fadd.d	$fa0, $ft12, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fs2, $fa2, $fs3
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fmul.d	$fs3, $fa0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1000
	fdiv.d	$fa1, $fs7, $fa1
	vld	$vr2, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa2
	vld	$vr2, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa2, $fs4, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	lu52i.d	$a0, $s2, 1020
	movgr2fr.d	$fs7, $a0
	fmul.d	$fa0, $fa0, $fs7
	vst	$vr0, $sp, 1392                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 1056                 # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 1024                 # 8-byte Folded Spill
	fld.d	$fs6, $s1, %pc_lo12(rootN)
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 1040                 # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 976                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 992                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 968                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 944                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1536                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 880                  # 16-byte Folded Spill
	vldi	$vr0, -1016
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 896                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 912                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 832                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1280                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1264                 # 16-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fs5, $fs6, $fa0
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa0
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1248                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1216                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1200                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1184                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1152                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 1528                 # 8-byte Folded Reload
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fs4, $fa0
	vst	$vr0, $sp, 1328                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs7
	vst	$vr0, $sp, 1312                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1424                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 816                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1424                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 864                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1440                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 848                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1568                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1552                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1440                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 928                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1072                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1008                 # 16-byte Folded Spill
	vldi	$vr0, -896
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 1088                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1120                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1104                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1168                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1136                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$ft15, $fa0
	vld	$vr22, $sp, 1568                # 16-byte Folded Reload
	fmul.d	$fa2, $ft14, $ft14
	fld.d	$fa0, $sp, 1024                 # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $fa2
	vld	$vr21, $sp, 1552                # 16-byte Folded Reload
	fmul.d	$fa4, $ft13, $ft13
	fld.d	$fa0, $sp, 1056                 # 8-byte Folded Reload
	fdiv.d	$fa3, $fa0, $fa4
	fsub.d	$fa1, $fa1, $fa3
	fld.d	$fa6, $sp, 1456                 # 8-byte Folded Reload
	fld.d	$fa0, $sp, 1040                 # 8-byte Folded Reload
	fmadd.d	$fa3, $fa1, $fa6, $fa0
	fld.d	$fa0, $sp, 992                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $fa2
	fld.d	$fa0, $sp, 976                  # 8-byte Folded Reload
	fdiv.d	$fa5, $fa0, $fa4
	fsub.d	$fa1, $fa1, $fa5
	fld.d	$fa0, $sp, 968                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	vst	$vr0, $sp, 1456                 # 16-byte Folded Spill
	fmul.d	$fa5, $ft13, $fa4
	fmul.d	$fa6, $ft14, $fa2
	vld	$vr0, $sp, 880                  # 16-byte Folded Reload
	fdiv.d	$fa7, $fa0, $fa6
	vld	$vr12, $sp, 944                 # 16-byte Folded Reload
	fdiv.d	$ft0, $ft4, $fa5
	fsub.d	$fa7, $fa7, $ft0
	fdiv.d	$ft0, $fa0, $fa2
	fdiv.d	$ft1, $ft4, $fa4
	fsub.d	$ft0, $ft0, $ft1
	fneg.d	$ft0, $ft0
	fld.d	$fa1, $sp, 896                  # 8-byte Folded Reload
	fmul.d	$ft0, $fa1, $ft0
	vldi	$vr9, -1024
	fmadd.d	$fa7, $fa7, $ft1, $ft0
	vld	$vr14, $sp, 832                 # 16-byte Folded Reload
	fdiv.d	$ft0, $ft6, $fa6
	vld	$vr13, $sp, 912                 # 16-byte Folded Reload
	fdiv.d	$ft2, $ft5, $fa5
	fsub.d	$ft0, $ft0, $ft2
	fdiv.d	$ft2, $ft6, $fa2
	fdiv.d	$ft3, $ft5, $fa4
	fsub.d	$ft2, $ft2, $ft3
	fneg.d	$ft2, $ft2
	fmul.d	$ft2, $fa1, $ft2
	fmadd.d	$ft0, $ft0, $ft1, $ft2
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 1424                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr12, 16
	vori.b	$vr9, $vr2, 0
	vextrins.d	$vr9, $vr22, 16
	vfdiv.d	$vr10, $vr1, $vr9
	vori.b	$vr11, $vr4, 0
	vextrins.d	$vr11, $vr21, 16
	vfdiv.d	$vr12, $vr0, $vr11
	vfsub.d	$vr10, $vr10, $vr12
	vld	$vr0, $sp, 864                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr7, 16
	vldi	$vr7, -928
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	vpackev.d	$vr12, $vr1, $vr7
	vfmadd.d	$vr7, $vr12, $vr10, $vr0
	vld	$vr0, $sp, 848                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr14, 16
	vfdiv.d	$vr9, $vr0, $vr9
	vld	$vr0, $sp, 1440                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr13, 16
	vfdiv.d	$vr10, $vr0, $vr11
	vfsub.d	$vr9, $vr9, $vr10
	vld	$vr0, $sp, 928                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr8, 16
	vfmadd.d	$vr8, $vr12, $vr9, $vr0
	vld	$vr19, $sp, 1264                # 16-byte Folded Reload
	fdiv.d	$ft1, $ft11, $fa6
	vld	$vr18, $sp, 1280                # 16-byte Folded Reload
	fdiv.d	$ft2, $ft10, $fa5
	fsub.d	$ft1, $ft1, $ft2
	vld	$vr30, $sp, 1216                # 16-byte Folded Reload
	fdiv.d	$ft2, $fs6, $fa6
	vld	$vr27, $sp, 1248                # 16-byte Folded Reload
	fdiv.d	$ft3, $fs3, $fa5
	fsub.d	$ft4, $ft2, $ft3
	fmul.d	$ft2, $ft13, $fa5
	fmul.d	$ft3, $ft14, $fa6
	vld	$vr26, $sp, 1200                # 16-byte Folded Reload
	fdiv.d	$ft5, $fs2, $ft3
	vld	$vr20, $sp, 1232                # 16-byte Folded Reload
	fdiv.d	$ft6, $ft12, $ft2
	fsub.d	$ft5, $ft5, $ft6
	vld	$vr25, $sp, 1152                # 16-byte Folded Reload
	fdiv.d	$ft6, $fs1, $ft3
	vld	$vr24, $sp, 1184                # 16-byte Folded Reload
	fdiv.d	$ft7, $fs0, $ft2
	fsub.d	$ft8, $ft6, $ft7
	fneg.d	$ft1, $ft1
	fmul.d	$ft9, $fs5, $ft1
	fneg.d	$ft1, $ft4
	fmul.d	$ft7, $fs5, $ft1
	fneg.d	$ft1, $ft5
	fmul.d	$ft6, $fs5, $ft1
	fneg.d	$ft1, $ft8
	fmul.d	$ft1, $fs5, $ft1
	vld	$vr29, $sp, 1008                # 16-byte Folded Reload
	fdiv.d	$ft4, $fs5, $fa6
	vld	$vr28, $sp, 1072                # 16-byte Folded Reload
	fdiv.d	$ft5, $fs4, $fa5
	fsub.d	$ft4, $ft4, $ft5
	vextrins.d	$vr29, $vr19, 16
	vextrins.d	$vr28, $vr18, 16
	vori.b	$vr16, $vr2, 0
	vextrins.d	$vr16, $vr11, 16
	vori.b	$vr18, $vr4, 0
	vextrins.d	$vr18, $vr10, 16
	vfdiv.d	$vr13, $vr29, $vr16
	vfdiv.d	$vr19, $vr28, $vr18
	vfsub.d	$vr19, $vr13, $vr19
	vldi	$vr13, -1008
	vld	$vr0, $sp, 1088                 # 16-byte Folded Reload
	vpackev.d	$vr13, $vr13, $vr0
	vextrins.d	$vr12, $vr17, 16
	vfmadd.d	$vr12, $vr19, $vr13, $vr12
	vld	$vr31, $sp, 1104                # 16-byte Folded Reload
	fdiv.d	$ft9, $fs7, $fa6
	vld	$vr0, $sp, 1120                 # 16-byte Folded Reload
	fdiv.d	$ft11, $fa0, $fa5
	fsub.d	$ft9, $ft9, $ft11
	vextrins.d	$vr31, $vr30, 16
	vextrins.d	$vr0, $vr27, 16
	vfdiv.d	$vr16, $vr31, $vr16
	vori.b	$vr30, $vr31, 0
	vfdiv.d	$vr18, $vr0, $vr18
	vfsub.d	$vr16, $vr16, $vr18
	vextrins.d	$vr17, $vr15, 16
	vfmadd.d	$vr15, $vr16, $vr13, $vr17
	vld	$vr18, $sp, 1136                # 16-byte Folded Reload
	fdiv.d	$ft8, $ft10, $ft3
	vld	$vr31, $sp, 1168                # 16-byte Folded Reload
	fdiv.d	$ft9, $fs7, $ft2
	fsub.d	$ft8, $ft8, $ft9
	vextrins.d	$vr18, $vr26, 16
	vori.b	$vr26, $vr18, 0
	fmul.d	$ft9, $ft14, $ft3
	vori.b	$vr18, $vr6, 0
	vextrins.d	$vr18, $vr17, 16
	vextrins.d	$vr31, $vr20, 16
	fmul.d	$ft9, $ft13, $ft2
	vori.b	$vr19, $vr5, 0
	vextrins.d	$vr19, $vr17, 16
	vfdiv.d	$vr17, $vr26, $vr18
	vfdiv.d	$vr20, $vr31, $vr19
	vfsub.d	$vr17, $vr17, $vr20
	vextrins.d	$vr16, $vr14, 16
	vfmadd.d	$vr14, $vr17, $vr13, $vr16
	fdiv.d	$ft3, $ft15, $ft3
	vld	$vr17, $sp, 1296                # 16-byte Folded Reload
	fdiv.d	$ft2, $ft9, $ft2
	fsub.d	$ft2, $ft3, $ft2
	vextrins.d	$vr23, $vr25, 16
	vextrins.d	$vr17, $vr24, 16
	vfdiv.d	$vr11, $vr23, $vr18
	vfdiv.d	$vr16, $vr17, $vr19
	vfsub.d	$vr11, $vr11, $vr16
	vextrins.d	$vr10, $vr9, 16
	vfmadd.d	$vr9, $vr11, $vr13, $vr10
	vori.b	$vr11, $vr22, 0
	vextrins.d	$vr11, $vr2, 16
	vextrins.d	$vr2, $vr6, 16
	vori.b	$vr10, $vr21, 0
	vextrins.d	$vr10, $vr4, 16
	vextrins.d	$vr4, $vr5, 16
	vfdiv.d	$vr5, $vr29, $vr11
	vfdiv.d	$vr6, $vr28, $vr10
	vfsub.d	$vr5, $vr5, $vr6
	vld	$vr6, $sp, 1376                 # 16-byte Folded Reload
	vextrins.d	$vr1, $vr6, 16
	vfmadd.d	$vr5, $vr1, $vr5, $vr12
	vfdiv.d	$vr6, $vr30, $vr11
	vfdiv.d	$vr10, $vr0, $vr10
	vfsub.d	$vr6, $vr6, $vr10
	vfmadd.d	$vr6, $vr1, $vr6, $vr15
	vfdiv.d	$vr10, $vr26, $vr2
	vfdiv.d	$vr11, $vr31, $vr4
	vfsub.d	$vr10, $vr10, $vr11
	vfmadd.d	$vr10, $vr1, $vr10, $vr14
	vfdiv.d	$vr0, $vr23, $vr2
	vfdiv.d	$vr2, $vr17, $vr4
	vfsub.d	$vr0, $vr0, $vr2
	vfmadd.d	$vr0, $vr1, $vr0, $vr9
	fld.d	$fa2, $sp, 1528                 # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa3
	vld	$vr3, $sp, 1408                 # 16-byte Folded Reload
	vld	$vr4, $sp, 1344                 # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	vld	$vr3, $sp, 1392                 # 16-byte Folded Reload
	vld	$vr9, $sp, 1328                 # 16-byte Folded Reload
	vextrins.d	$vr9, $vr3, 16
	vfsub.d	$vr3, $vr4, $vr9
	vld	$vr9, $sp, 1360                 # 16-byte Folded Reload
	vori.b	$vr4, $vr9, 0
	vextrins.d	$vr4, $vr2, 16
	vfadd.d	$vr2, $vr3, $vr4
	vfmul.d	$vr3, $vr3, $vr9
	vshuf4i.d	$vr3, $vr2, 12
	vld	$vr2, $sp, 1312                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1456                 # 16-byte Folded Reload
	vextrins.d	$vr2, $vr1, 16
	vfsub.d	$vr1, $vr3, $vr2
	vld	$vr2, $sp, 1488                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr2, $vr7
	vfadd.d	$vr1, $vr1, $vr2
	vfsub.d	$vr1, $vr1, $vr8
	vld	$vr2, $sp, 1504                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr2, $vr5
	vfadd.d	$vr1, $vr1, $vr2
	vfsub.d	$vr1, $vr1, $vr6
	vfadd.d	$vr1, $vr1, $vr10
	vfsub.d	$vr0, $vr1, $vr0
.LBB2_38:
	vreplvei.d	$vr1, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	fdiv.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 1480                 # 8-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $fp, 0
	fld.d	$fs7, $sp, 1592                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1600                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1608                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1616                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1624                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1632                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1640                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1648                 # 8-byte Folded Reload
	ld.d	$s4, $sp, 1656                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1664                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1672                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1680                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1688                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1696                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1704                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1712
	ret
.LBB2_39:
	move	$a4, $zero
	ori	$a5, $zero, 10
	bnez	$a7, .LBB2_19
	b	.LBB2_32
.LBB2_40:                               # %call.sqrt
	fmov.d	$fa0, $fs0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB2_1
.Lfunc_end2:
	.size	findratio, .Lfunc_end2-findratio
                                        # -- End function
	.globl	Nterm1                          # -- Begin function Nterm1
	.p2align	5
	.type	Nterm1,@function
Nterm1:                                 # @Nterm1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fs0, $fa1
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa2, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	Nterm1, .Lfunc_end3-Nterm1
                                        # -- End function
	.globl	Nterm2                          # -- Begin function Nterm2
	.p2align	5
	.type	Nterm2,@function
Nterm2:                                 # @Nterm2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs4, $fs4
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa3, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa3, $a0, %pc_lo12(rootN)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa4, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa4
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa3, $fa0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa3, $a0
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	Nterm2, .Lfunc_end4-Nterm2
                                        # -- End function
	.globl	Nterm3                          # -- Begin function Nterm3
	.p2align	5
	.type	Nterm3,@function
Nterm3:                                 # @Nterm3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs2, $fa2
	fmul.d	$fa4, $fs4, $fs4
	fmul.d	$fa5, $fs4, $fa4
	fdiv.d	$fa5, $fa0, $fa5
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa6, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs1, $fa3
	fsub.d	$fa3, $fa5, $fa3
	vldi	$vr5, -888
	fmul.d	$fa5, $fa6, $fa5
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa4, $fa2
	fmul.d	$fa2, $fa5, $fa2
	vldi	$vr4, -1024
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa4, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa4
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	Nterm3, .Lfunc_end5-Nterm3
                                        # -- End function
	.globl	Nterm4                          # -- Begin function Nterm4
	.p2align	5
	.type	Nterm4,@function
Nterm4:                                 # @Nterm4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs2, $fs2
	fmul.d	$fa2, $fs2, $fa1
	fmul.d	$fa3, $fs2, $fa2
	fmul.d	$fa4, $fs4, $fs4
	fmul.d	$fa5, $fs4, $fa4
	fmul.d	$fa6, $fs4, $fa5
	fdiv.d	$fa6, $fa0, $fa6
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa7, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs1, $fa3
	fsub.d	$fa3, $fa6, $fa3
	vldi	$vr6, -872
	fmul.d	$fa6, $fa7, $fa6
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa5, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa5, $a0, %pc_lo12(N)
	fmul.d	$fa2, $fa6, $fa2
	vldi	$vr6, -1008
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fadd.d	$fa3, $fa5, $fa5
	fdiv.d	$fa0, $fa0, $fa4
	fdiv.d	$fa1, $fs1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	Nterm4, .Lfunc_end6-Nterm4
                                        # -- End function
	.globl	Nterm5                          # -- Begin function Nterm5
	.p2align	5
	.type	Nterm5,@function
Nterm5:                                 # @Nterm5
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs1, $a0, %pc_lo12(a)
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs2, $fa0
	fmul.d	$fa0, $fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs3, $a0, %pc_lo12(c)
	fmov.d	$fs0, $fa0
	fmul.d	$fa0, $fs3, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs1, $fs1
	fmul.d	$fa1, $fs1, $fa1
	fmul.d	$fa2, $fs1, $fa1
	fmul.d	$fa3, $fs1, $fa2
	fmul.d	$fa4, $fs3, $fs3
	fmul.d	$fa4, $fs3, $fa4
	fmul.d	$fa5, $fs3, $fa4
	fmul.d	$fa6, $fs3, $fa5
	fdiv.d	$fa6, $fa0, $fa6
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa7, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs0, $fa3
	fsub.d	$fa3, $fa6, $fa3
	vldi	$vr6, -872
	fmul.d	$fa6, $fa7, $fa6
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs0, $fa2
	fsub.d	$fa2, $fa5, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa5, $a0, %pc_lo12(N)
	fmul.d	$fa2, $fa6, $fa2
	vldi	$vr6, -1008
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fadd.d	$fa3, $fa5, $fa5
	fdiv.d	$fa0, $fa0, $fa4
	fdiv.d	$fa1, $fs0, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	Nterm5, .Lfunc_end7-Nterm5
                                        # -- End function
	.globl	Dterm1                          # -- Begin function Dterm1
	.p2align	5
	.type	Dterm1,@function
Dterm1:                                 # @Dterm1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa2, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	Dterm1, .Lfunc_end8-Dterm1
                                        # -- End function
	.globl	Dterm2                          # -- Begin function Dterm2
	.p2align	5
	.type	Dterm2,@function
Dterm2:                                 # @Dterm2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs4, $fs4
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa3, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa3, $a0, %pc_lo12(rootN)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa4, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa4
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa3, $fa0
	vldi	$vr3, -928
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	Dterm2, .Lfunc_end9-Dterm2
                                        # -- End function
	.globl	Dterm3                          # -- Begin function Dterm3
	.p2align	5
	.type	Dterm3,@function
Dterm3:                                 # @Dterm3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs2, $fs2
	fmul.d	$fa2, $fs2, $fa1
	fmul.d	$fa3, $fs4, $fs4
	fmul.d	$fa4, $fs4, $fa3
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa4, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa4, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa1, $fs1, $fa1
	fsub.d	$fa1, $fa3, $fa1
	vldi	$vr3, -896
	fmul.d	$fa3, $fa4, $fa3
	fmadd.d	$fa1, $fa3, $fa1, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa2, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa3, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	Dterm3, .Lfunc_end10-Dterm3
                                        # -- End function
	.globl	Dterm4                          # -- Begin function Dterm4
	.p2align	5
	.type	Dterm4,@function
Dterm4:                                 # @Dterm4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs1, $a0, %pc_lo12(a)
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs2, $fa0
	fmul.d	$fa0, $fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs3, $a0, %pc_lo12(c)
	fmov.d	$fs0, $fa0
	fmul.d	$fa0, $fs3, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs1, $fs1
	fmul.d	$fa2, $fs1, $fa1
	fmul.d	$fa3, $fs1, $fa2
	fmul.d	$fa4, $fs3, $fs3
	fmul.d	$fa5, $fs3, $fa4
	fmul.d	$fa6, $fs3, $fa5
	fdiv.d	$fa6, $fa0, $fa6
	fdiv.d	$fa3, $fs0, $fa3
	fsub.d	$fa3, $fa6, $fa3
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa6, $a0, %pc_lo12(rootN)
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs0, $fa2
	fsub.d	$fa2, $fa5, $fa2
	vldi	$vr5, -896
	fmul.d	$fa5, $fa6, $fa5
	fmadd.d	$fa2, $fa5, $fa2, $fa3
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fa4
	fdiv.d	$fa1, $fs0, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	Dterm4, .Lfunc_end11-Dterm4
                                        # -- End function
	.globl	NNterm1                         # -- Begin function NNterm1
	.p2align	5
	.type	NNterm1,@function
NNterm1:                                # @NNterm1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fs0, $fa1
	vldi	$vr2, -872
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa2, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	NNterm1, .Lfunc_end12-NNterm1
                                        # -- End function
	.globl	NNterm2                         # -- Begin function NNterm2
	.p2align	5
	.type	NNterm2,@function
NNterm2:                                # @NNterm2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs4, $fs4
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa3, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa3, $a0, %pc_lo12(rootN)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa4, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa4
	fmul.d	$fa0, $fa3, $fa0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, -1026
	movgr2fr.d	$fa3, $a0
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	NNterm2, .Lfunc_end13-NNterm2
                                        # -- End function
	.globl	NNterm3                         # -- Begin function NNterm3
	.p2align	5
	.type	NNterm3,@function
NNterm3:                                # @NNterm3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs2, $fa2
	fmul.d	$fa4, $fs4, $fs4
	fmul.d	$fa5, $fs4, $fa4
	fdiv.d	$fa5, $fa0, $fa5
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa6, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs1, $fa3
	fsub.d	$fa3, $fa5, $fa3
	vldi	$vr5, -1016
	fmul.d	$fa5, $fa6, $fa5
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa4, $fa2
	fmul.d	$fa2, $fa5, $fa2
	vldi	$vr4, -896
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa5, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa5
	fmul.d	$fa3, $fa3, $fa4
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	NNterm3, .Lfunc_end14-NNterm3
                                        # -- End function
	.globl	NNterm4                         # -- Begin function NNterm4
	.p2align	5
	.type	NNterm4,@function
NNterm4:                                # @NNterm4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs2, $fs2
	fmul.d	$fa2, $fs2, $fa1
	fmul.d	$fa3, $fs2, $fa2
	fmul.d	$fa4, $fs4, $fs4
	fmul.d	$fa5, $fs4, $fa4
	fmul.d	$fa6, $fs4, $fa5
	fdiv.d	$fa6, $fa0, $fa6
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa7, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs1, $fa3
	fsub.d	$fa3, $fa6, $fa3
	vldi	$vr6, -1000
	fmul.d	$fa6, $fa7, $fa6
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa5, $fa2
	fmul.d	$fa2, $fa6, $fa2
	vldi	$vr5, -880
	fmadd.d	$fa2, $fa3, $fa5, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa1, $fs1, $fa1
	fsub.d	$fa1, $fa4, $fa1
	fmul.d	$fa4, $fa3, $fa5
	fmadd.d	$fa1, $fa4, $fa1, $fa2
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa2, $fa7, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa3, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	NNterm4, .Lfunc_end15-NNterm4
                                        # -- End function
	.globl	NNterm5                         # -- Begin function NNterm5
	.p2align	5
	.type	NNterm5,@function
NNterm5:                                # @NNterm5
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs1, $a0, %pc_lo12(a)
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs2, $fa0
	fmul.d	$fa0, $fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs3, $a0, %pc_lo12(c)
	fmov.d	$fs0, $fa0
	fmul.d	$fa0, $fs3, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs1, $fs1
	fmul.d	$fa2, $fs1, $fa1
	fmul.d	$fa3, $fs1, $fa2
	fmul.d	$fa4, $fs1, $fa3
	fmul.d	$fa5, $fs3, $fs3
	fmul.d	$fa6, $fs3, $fa5
	fmul.d	$fa7, $fs3, $fa6
	fmul.d	$ft0, $fs3, $fa7
	fdiv.d	$ft0, $fa0, $ft0
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$ft1, $a0, %pc_lo12(rootN)
	fdiv.d	$fa4, $fs0, $fa4
	fsub.d	$fa4, $ft0, $fa4
	vldi	$vr8, -1000
	fmul.d	$ft0, $ft1, $ft0
	fdiv.d	$fa7, $fa0, $fa7
	fdiv.d	$fa3, $fs0, $fa3
	fsub.d	$fa3, $fa7, $fa3
	fmul.d	$fa3, $ft0, $fa3
	vldi	$vr7, -880
	fmadd.d	$fa3, $fa4, $fa7, $fa3
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa4, $a0, %pc_lo12(N)
	fdiv.d	$fa6, $fa0, $fa6
	fdiv.d	$fa2, $fs0, $fa2
	fsub.d	$fa2, $fa6, $fa2
	fmul.d	$fa6, $fa4, $fa7
	fmadd.d	$fa2, $fa6, $fa2, $fa3
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa3, $a0
	fmul.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $ft1, $fa3
	fdiv.d	$fa0, $fa0, $fa5
	fdiv.d	$fa1, $fs0, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	NNterm5, .Lfunc_end16-NNterm5
                                        # -- End function
	.globl	DDterm1                         # -- Begin function DDterm1
	.p2align	5
	.type	DDterm1,@function
DDterm1:                                # @DDterm1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	vldi	$vr2, -872
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa2, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	DDterm1, .Lfunc_end17-DDterm1
                                        # -- End function
	.globl	DDterm2                         # -- Begin function DDterm2
	.p2align	5
	.type	DDterm2,@function
DDterm2:                                # @DDterm2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs4, $fs4
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa3, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa3, $a0, %pc_lo12(rootN)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa4, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa4
	fmul.d	$fa0, $fa3, $fa0
	vldi	$vr3, -800
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	DDterm2, .Lfunc_end18-DDterm2
                                        # -- End function
	.globl	DDterm3                         # -- Begin function DDterm3
	.p2align	5
	.type	DDterm3,@function
DDterm3:                                # @DDterm3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs2, $fs2
	fmul.d	$fa2, $fs2, $fa1
	fmul.d	$fa3, $fs4, $fs4
	fmul.d	$fa4, $fs4, $fa3
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa5, $a0, %pc_lo12(rootN)
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa4, $fa2
	fadd.d	$fa4, $fa5, $fa5
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa1, $fs1, $fa1
	fsub.d	$fa1, $fa3, $fa1
	fmsub.d	$fa1, $fa4, $fa1, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa2, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa3, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa3
	vldi	$vr3, -896
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	DDterm3, .Lfunc_end19-DDterm3
                                        # -- End function
	.globl	DDterm4                         # -- Begin function DDterm4
	.p2align	5
	.type	DDterm4,@function
DDterm4:                                # @DDterm4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs1, $a0, %pc_lo12(a)
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs2, $fa0
	fmul.d	$fa0, $fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs3, $a0, %pc_lo12(c)
	fmov.d	$fs0, $fa0
	fmul.d	$fa0, $fs3, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs1, $fs1
	fmul.d	$fa2, $fs1, $fa1
	fmul.d	$fa3, $fs1, $fa2
	fmul.d	$fa4, $fs3, $fs3
	fmul.d	$fa5, $fs3, $fa4
	fmul.d	$fa6, $fs3, $fa5
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa7, $a0, %pc_lo12(rootN)
	fdiv.d	$fa6, $fa0, $fa6
	fdiv.d	$fa3, $fs0, $fa3
	fsub.d	$fa3, $fa6, $fa3
	fadd.d	$fa6, $fa7, $fa7
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs0, $fa2
	fsub.d	$fa2, $fa5, $fa2
	fmsub.d	$fa2, $fa6, $fa2, $fa3
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa1, $fs0, $fa1
	fsub.d	$fa1, $fa4, $fa1
	vldi	$vr4, -896
	fmul.d	$fa4, $fa3, $fa4
	fmadd.d	$fa1, $fa4, $fa1, $fa2
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa2, $fa7, $fa2
	fdiv.d	$fa0, $fa0, $fs3
	fdiv.d	$fa3, $fs0, $fs1
	fsub.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	DDterm4, .Lfunc_end20-DDterm4
                                        # -- End function
	.globl	getptree                        # -- Begin function getptree
	.p2align	5
	.type	getptree,@function
getptree:                               # @getptree
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	addi.d	$s1, $a0, 1
	blez	$a1, .LBB21_9
# %bb.1:                                # %.lr.ph
	ori	$a0, $zero, 1
	ori	$a2, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a1, $a2, .LBB21_5
# %bb.2:                                # %vector.ph
	bstrpick.d	$a0, $a1, 30, 3
	slli.w	$a2, $a0, 3
	srli.d	$a3, $a1, 3
	ori	$a0, $zero, 1
	bstrins.d	$a0, $a3, 30, 3
	vrepli.w	$vr0, 1
	vreplgr2vr.w	$vr1, $s1
	move	$a3, $a2
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB21_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr0, $vr0, $vr1
	addi.w	$a3, $a3, -8
	vmul.w	$vr2, $vr2, $vr1
	bnez	$a3, .LBB21_3
# %bb.4:                                # %middle.block
	vmul.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a1, $a2, .LBB21_7
.LBB21_5:                               # %scalar.ph.preheader
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB21_6:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, -1
	mul.d	$a3, $a3, $s1
	bnez	$a0, .LBB21_6
.LBB21_7:                               # %._crit_edge
	addi.w	$a0, $a3, -1
	ori	$a4, $zero, 1
	div.w	$s2, $a0, $s0
	bne	$a1, $a4, .LBB21_10
# %bb.8:
	move	$a0, $zero
	b	.LBB21_17
.LBB21_9:
	move	$s2, $zero
	move	$a0, $zero
	b	.LBB21_17
.LBB21_10:                              # %.lr.ph91
	ori	$a2, $zero, 9
	ori	$a0, $zero, 1
	bltu	$a1, $a2, .LBB21_14
# %bb.11:                               # %vector.ph178
	addi.w	$a2, $a1, -1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a0, $a2
	bstrins.d	$a0, $a4, 2, 0
	vrepli.w	$vr0, 1
	vreplgr2vr.w	$vr1, $s1
	move	$a4, $a3
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB21_12:                              # %vector.body183
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr0, $vr0, $vr1
	addi.w	$a4, $a4, -8
	vmul.w	$vr2, $vr2, $vr1
	bnez	$a4, .LBB21_12
# %bb.13:                               # %middle.block188
	vmul.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	beq	$a2, $a3, .LBB21_16
.LBB21_14:                              # %scalar.ph176.preheader
	sub.d	$a0, $a1, $a0
	.p2align	4, , 16
.LBB21_15:                              # %scalar.ph176
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, -1
	mul.d	$a4, $a4, $s1
	bnez	$a0, .LBB21_15
.LBB21_16:                              # %._crit_edge92.loopexit
	addi.w	$a0, $a4, -1
.LBB21_17:                              # %._crit_edge92
	div.w	$s3, $a0, $s0
	addi.w	$a0, $s2, 1
	slli.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$s0, $a0, 16
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, 24
	blez	$s3, .LBB21_51
# %bb.18:                               # %.lr.ph105
	bltz	$s0, .LBB21_51
# %bb.19:                               # %.lr.ph100.preheader
	addi.d	$a1, $s3, 1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 1
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 1
	b	.LBB21_21
	.p2align	4, , 16
.LBB21_20:                              # %._crit_edge101
                                        #   in Loop: Header=BB21_21 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB21_51
.LBB21_21:                              # %.lr.ph100
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_26 Depth 2
                                        #       Child Loop BB21_35 Depth 3
                                        #       Child Loop BB21_37 Depth 3
                                        #       Child Loop BB21_30 Depth 3
                                        #       Child Loop BB21_32 Depth 3
                                        #       Child Loop BB21_46 Depth 3
                                        #       Child Loop BB21_49 Depth 3
                                        #       Child Loop BB21_42 Depth 3
                                        #       Child Loop BB21_44 Depth 3
	move	$t3, $zero
	mul.d	$a4, $s1, $a3
	slli.d	$a5, $a3, 4
	ldx.w	$t0, $a0, $a5
	sub.d	$a4, $a4, $s0
	alsl.d	$a5, $a3, $a0, 4
	ori	$a6, $zero, 1
	move	$a7, $fp
	move	$t1, $s0
	b	.LBB21_26
.LBB21_22:                              #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr4, -912
.LBB21_23:                              # %factorial.exit31.i14.i
                                        #   in Loop: Header=BB21_26 Depth=2
	fdiv.d	$fa3, $fa3, $fa4
.LBB21_24:                              # %combination.exit37.i
                                        #   in Loop: Header=BB21_26 Depth=2
	fmul.d	$fa2, $fa2, $fa3
.LBB21_25:                              # %probability.exit
                                        #   in Loop: Header=BB21_26 Depth=2
	alsl.d	$t3, $a4, $a0, 4
	fmul.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t3, 8
	addi.w	$t3, $t2, 1
	addi.d	$t1, $t1, -1
	addi.w	$a7, $a7, -1
	addi.d	$a6, $a6, 1
	beq	$s0, $t2, .LBB21_20
.LBB21_26:                              #   Parent Loop BB21_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_35 Depth 3
                                        #       Child Loop BB21_37 Depth 3
                                        #       Child Loop BB21_30 Depth 3
                                        #       Child Loop BB21_32 Depth 3
                                        #       Child Loop BB21_46 Depth 3
                                        #       Child Loop BB21_49 Depth 3
                                        #       Child Loop BB21_42 Depth 3
                                        #       Child Loop BB21_44 Depth 3
	move	$t2, $t3
	addi.w	$a4, $a4, 1
	add.d	$t0, $t0, $t3
	slli.d	$t3, $a4, 4
	stx.w	$t0, $a0, $t3
	ld.w	$t0, $a5, 0
	fld.d	$fa1, $a5, 8
	add.w	$t3, $t0, $t2
	fmov.d	$fa2, $fa0
	blt	$fp, $t3, .LBB21_25
# %bb.27:                               #   in Loop: Header=BB21_26 Depth=2
	sub.w	$t3, $s0, $t2
	vldi	$vr2, -912
	sub.w	$t4, $t0, $t3
	bge	$t3, $t4, .LBB21_33
# %bb.28:                               # %.preheader.i.i
                                        #   in Loop: Header=BB21_26 Depth=2
	blez	$t3, .LBB21_39
# %bb.29:                               # %.lr.ph40.i.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	move	$t4, $t0
	move	$t5, $t1
	.p2align	4, , 16
.LBB21_30:                              # %.lr.ph40.i.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa3, $t4
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	addi.w	$t5, $t5, -1
	addi.w	$t4, $t4, -1
	bnez	$t5, .LBB21_30
# %bb.31:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr3, -912
	.p2align	4, , 16
.LBB21_32:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t4, $t3
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa4, $t3
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa4
	addi.w	$t3, $t4, -1
	bltu	$a2, $t4, .LBB21_32
	b	.LBB21_38
	.p2align	4, , 16
.LBB21_33:                              # %.preheader32.i.i
                                        #   in Loop: Header=BB21_26 Depth=2
	bge	$t3, $t0, .LBB21_36
# %bb.34:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	move	$t5, $t0
	.p2align	4, , 16
.LBB21_35:                              # %.lr.ph.i.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa3, $t5
	ffint.d.w	$fa3, $fa3
	addi.w	$t5, $t5, -1
	fmul.d	$fa2, $fa2, $fa3
	blt	$t3, $t5, .LBB21_35
.LBB21_36:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr3, -912
	blez	$t4, .LBB21_38
	.p2align	4, , 16
.LBB21_37:                              # %.lr.ph.i28.i.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t3, $t4
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa4, $t4
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa4
	addi.w	$t4, $t3, -1
	bltu	$a2, $t3, .LBB21_37
.LBB21_38:                              # %factorial.exit31.i.i
                                        #   in Loop: Header=BB21_26 Depth=2
	fdiv.d	$fa2, $fa2, $fa3
.LBB21_39:                              # %combination.exit.i
                                        #   in Loop: Header=BB21_26 Depth=2
	sub.w	$t3, $fp, $t0
	sub.w	$t4, $t3, $t2
	bge	$t2, $t4, .LBB21_45
# %bb.40:                               # %.preheader.i24.i
                                        #   in Loop: Header=BB21_26 Depth=2
	beqz	$t2, .LBB21_50
# %bb.41:                               # %.lr.ph40.i29.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	move	$t4, $zero
	vldi	$vr3, -912
	.p2align	4, , 16
.LBB21_42:                              # %.lr.ph40.i29.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $t3, $t4
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	addi.w	$t4, $t4, -1
	add.w	$t5, $t2, $t4
	fmul.d	$fa3, $fa3, $fa4
	bnez	$t5, .LBB21_42
# %bb.43:                               # %.lr.ph.i.i34.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr4, -912
	move	$t3, $a6
	.p2align	4, , 16
.LBB21_44:                              # %.lr.ph.i.i34.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$t3, $t3, -1
	bstrpick.d	$t4, $t3, 31, 0
	movgr2fr.d	$fa5, $t4
	ffint.d.l	$fa5, $fa5
	fmul.d	$fa4, $fa4, $fa5
	bltu	$a2, $t3, .LBB21_44
	b	.LBB21_23
	.p2align	4, , 16
.LBB21_45:                              # %.preheader32.i10.i
                                        #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr3, -912
	bge	$t2, $t3, .LBB21_47
	.p2align	4, , 16
.LBB21_46:                              # %.lr.ph.i20.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa4, $t3
	ffint.d.w	$fa4, $fa4
	addi.w	$t3, $t3, -1
	fmul.d	$fa3, $fa3, $fa4
	blt	$t2, $t3, .LBB21_46
.LBB21_47:                              # %._crit_edge.i12.i
                                        #   in Loop: Header=BB21_26 Depth=2
	blez	$t4, .LBB21_22
# %bb.48:                               # %.lr.ph.i28.i17.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	sub.w	$t3, $zero, $t0
	vldi	$vr4, -912
	.p2align	4, , 16
.LBB21_49:                              # %.lr.ph.i28.i17.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $a7, $t3
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa5, $t4
	ffint.d.l	$fa5, $fa5
	addi.w	$t3, $t3, -1
	add.d	$t4, $a7, $t3
	addi.w	$t4, $t4, 1
	fmul.d	$fa4, $fa4, $fa5
	bltu	$a2, $t4, .LBB21_49
	b	.LBB21_23
.LBB21_50:                              #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr3, -912
	b	.LBB21_24
.LBB21_51:                              # %.preheader77
	movgr2fr.d	$fs0, $zero
	fmov.d	$fs1, $fs0
	fmov.d	$fs2, $fs0
	bge	$s3, $s2, .LBB21_56
# %bb.52:                               # %.lr.ph109.preheader
	alsl.d	$a2, $s3, $a0, 4
	addi.d	$a3, $a2, 24
	sub.d	$a1, $s2, $s3
	movgr2fr.d	$fs1, $zero
	move	$a4, $a1
	.p2align	4, , 16
.LBB21_53:                              # %.lr.ph109
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -8
	fld.d	$fa0, $a3, 0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	addi.w	$a4, $a4, -1
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB21_53
# %bb.54:                               # %.lr.ph114.preheader
	addi.d	$a2, $a2, 24
	movgr2fr.d	$fs2, $zero
	.p2align	4, , 16
.LBB21_55:                              # %.lr.ph114
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fadd.d	$fs2, $fs2, $fa0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB21_55
.LBB21_56:                              # %._crit_edge115
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs1, $fs2
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa1, $a0
	fcmp.clt.d	$fcc0, $fs1, $fa1
	fsel	$fa0, $fa0, $fs0, $fcc0
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end21:
	.size	getptree, .Lfunc_end21-getptree
                                        # -- End function
	.globl	probability                     # -- Begin function probability
	.p2align	5
	.type	probability,@function
probability:                            # @probability
# %bb.0:
	add.w	$a4, $a2, $a0
	bge	$a3, $a4, .LBB22_2
# %bb.1:
	movgr2fr.d	$fa0, $zero
	ret
.LBB22_2:
	sub.w	$a1, $a1, $a2
	vldi	$vr0, -912
	sub.w	$a4, $a0, $a1
	bge	$a1, $a4, .LBB22_8
# %bb.3:                                # %.preheader.i
	blez	$a1, .LBB22_15
# %bb.4:                                # %.lr.ph40.i.preheader
	move	$a4, $a0
	move	$a5, $a1
	.p2align	4, , 16
.LBB22_5:                               # %.lr.ph40.i
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	addi.w	$a5, $a5, -1
	addi.w	$a4, $a4, -1
	bnez	$a5, .LBB22_5
# %bb.6:                                # %.lr.ph.i.i.preheader
	vldi	$vr1, -912
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB22_7:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a1, $a5, -1
	bltu	$a4, $a5, .LBB22_7
	b	.LBB22_14
.LBB22_8:                               # %.preheader32.i
	bge	$a1, $a0, .LBB22_11
# %bb.9:                                # %.lr.ph.i.preheader
	move	$a5, $a0
	.p2align	4, , 16
.LBB22_10:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	addi.w	$a5, $a5, -1
	fmul.d	$fa0, $fa0, $fa1
	blt	$a1, $a5, .LBB22_10
.LBB22_11:                              # %._crit_edge.i
	vldi	$vr1, -912
	blez	$a4, .LBB22_14
# %bb.12:                               # %.lr.ph.i28.i.preheader
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB22_13:                              # %.lr.ph.i28.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a4
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a4, $a5, -1
	bltu	$a1, $a5, .LBB22_13
.LBB22_14:                              # %factorial.exit31.i
	fdiv.d	$fa0, $fa0, $fa1
.LBB22_15:                              # %combination.exit
	sub.w	$a0, $a3, $a0
	vldi	$vr1, -912
	sub.w	$a1, $a0, $a2
	bge	$a2, $a1, .LBB22_21
# %bb.16:                               # %.preheader.i24
	blez	$a2, .LBB22_27
# %bb.17:                               # %.lr.ph40.i29.preheader
	move	$a1, $a2
	.p2align	4, , 16
.LBB22_18:                              # %.lr.ph40.i29
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a1, $a1, -1
	addi.w	$a0, $a0, -1
	bnez	$a1, .LBB22_18
# %bb.19:                               # %.lr.ph.i.i34.preheader
	vldi	$vr2, -912
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB22_20:                              # %.lr.ph.i.i34
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa3, $a2
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	addi.w	$a2, $a1, -1
	bltu	$a0, $a1, .LBB22_20
	b	.LBB22_26
.LBB22_21:                              # %.preheader32.i10
	bge	$a2, $a0, .LBB22_23
	.p2align	4, , 16
.LBB22_22:                              # %.lr.ph.i20
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	addi.w	$a0, $a0, -1
	fmul.d	$fa1, $fa1, $fa2
	blt	$a2, $a0, .LBB22_22
.LBB22_23:                              # %._crit_edge.i12
	vldi	$vr2, -912
	blez	$a1, .LBB22_26
# %bb.24:                               # %.lr.ph.i28.i17.preheader
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB22_25:                              # %.lr.ph.i28.i17
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa3, $a1
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	addi.w	$a1, $a2, -1
	bltu	$a0, $a2, .LBB22_25
.LBB22_26:                              # %factorial.exit31.i14
	fdiv.d	$fa1, $fa1, $fa2
.LBB22_27:                              # %combination.exit37
	fmul.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end22:
	.size	probability, .Lfunc_end22-probability
                                        # -- End function
	.globl	combination                     # -- Begin function combination
	.p2align	5
	.type	combination,@function
combination:                            # @combination
# %bb.0:
	vldi	$vr0, -912
	sub.w	$a2, $a0, $a1
	bge	$a1, $a2, .LBB23_6
# %bb.1:                                # %.preheader
	blez	$a1, .LBB23_12
# %bb.2:                                # %.lr.ph40.preheader
	move	$a2, $a1
	.p2align	4, , 16
.LBB23_3:                               # %.lr.ph40
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, -1
	bnez	$a2, .LBB23_3
# %bb.4:                                # %.lr.ph.i.preheader
	vldi	$vr1, -912
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB23_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a1, $a2, -1
	bltu	$a0, $a2, .LBB23_5
	b	.LBB23_11
.LBB23_6:                               # %.preheader32
	bge	$a1, $a0, .LBB23_8
	.p2align	4, , 16
.LBB23_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	addi.w	$a0, $a0, -1
	fmul.d	$fa0, $fa0, $fa1
	blt	$a1, $a0, .LBB23_7
.LBB23_8:                               # %._crit_edge
	vldi	$vr1, -912
	blez	$a2, .LBB23_11
# %bb.9:                                # %.lr.ph.i28.preheader
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB23_10:                              # %.lr.ph.i28
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa2, $a2
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a2, $a1, -1
	bltu	$a0, $a1, .LBB23_10
.LBB23_11:                              # %factorial.exit31
	fdiv.d	$fa0, $fa0, $fa1
.LBB23_12:                              # %factorial.exit
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	ret
.Lfunc_end23:
	.size	combination, .Lfunc_end23-combination
                                        # -- End function
	.globl	factorial                       # -- Begin function factorial
	.p2align	5
	.type	factorial,@function
factorial:                              # @factorial
# %bb.0:
	vldi	$vr0, -912
	blez	$a0, .LBB24_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB24_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	addi.w	$a0, $a2, -1
	bltu	$a1, $a2, .LBB24_2
.LBB24_3:                               # %._crit_edge
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	ret
.Lfunc_end24:
	.size	factorial, .Lfunc_end24-factorial
                                        # -- End function
	.type	N,@object                       # @N
	.comm	N,8,8
	.type	CC,@object                      # @CC
	.comm	CC,8,8
	.type	bb,@object                      # @bb
	.comm	bb,8,8
	.type	a,@object                       # @a
	.comm	a,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n\n_________________________________________________________________________\n\n"
	.size	.L.str, 78

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"DISTINCT NETS PER CELL ---------------- : %.2f\n"
	.size	.L.str.1, 48

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"NETS PER DISTINCT NET  ---------------- : %.2f\n"
	.size	.L.str.2, 48

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"CELLS PER DISTINCT NET ---------------- : %.2f\n"
	.size	.L.str.3, 48

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"AVE. # CELLS CONNECTED TO A CELL ------ : %.2f\n"
	.size	.L.str.4, 48

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"_________________________________________________________________________\n"
	.size	.L.str.5, 75

	.type	rootN,@object                   # @rootN
	.comm	rootN,8,8
	.type	c,@object                       # @c
	.comm	c,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
