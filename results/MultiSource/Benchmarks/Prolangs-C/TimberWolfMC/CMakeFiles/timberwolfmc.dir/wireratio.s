	.file	"wireratio.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function wireratio
.LCPI0_0:
	.dword	0x3f847ae147ae147b              # double 0.01
.LCPI0_1:
	.dword	0x400a666666666666              # double 3.2999999999999998
	.text
	.globl	wireratio
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
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $s1, %pc_lo12(a)
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(findratio)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 16
	fld.d	$fa1, $sp, 24
	vldi	$vr2, -892
	fadd.d	$fa2, $fs1, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_0)
	vldi	$vr4, -1020
	fadd.d	$fa4, $fa2, $fa4
	vldi	$vr5, -908
	fmadd.d	$fa4, $fa4, $fa5, $fa3
	movgr2fr.d	$fa5, $zero
	fcmp.clt.d	$fcc0, $fa5, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	fsel	$fa3, $fa3, $fa4, $fcc0
	fst.d	$fa3, $s1, %pc_lo12(a)
	fsub.d	$fs3, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fs0
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function findratio
.LCPI2_0:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI2_1:
	.dword	0x4059000000000000              # double 100
.LCPI2_2:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI2_3:
	.dword	0xbf847ae147ae147b              # double -0.01
.LCPI2_4:
	.dword	0x4040000000000000              # double 32
.LCPI2_5:
	.dword	0xc042000000000000              # double -36
.LCPI2_6:
	.dword	0x3fd999999999999a              # double 0.40000000000000002
.LCPI2_7:
	.dword	0x4044000000000000              # double 40
.LCPI2_8:
	.dword	0xc04e000000000000              # double -60
.LCPI2_9:
	.dword	0x404e000000000000              # double 60
.LCPI2_10:
	.dword	0xc056800000000000              # double -90
.LCPI2_11:
	.dword	0x3fe5555555555555              # double 0.66666666666666663
.LCPI2_12:
	.dword	0x3fc5555555555555              # double 0.16666666666666666
.LCPI2_14:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
.LCPI2_15:
	.dword	0xbfe5555555555555              # double -0.66666666666666663
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_13:
	.dword	0xc018000000000000              # double -6
	.dword	0x4018000000000000              # double 6
.LCPI2_16:
	.dword	0xc000000000000000              # double -2
	.dword	0xc010000000000000              # double -4
.LCPI2_17:
	.dword	0xc010000000000000              # double -4
	.dword	0x4000000000000000              # double 2
	.text
	.globl	findratio
	.p2align	5
	.type	findratio,@function
findratio:                              # @findratio
# %bb.0:
	addi.d	$sp, $sp, -1664
	st.d	$ra, $sp, 1656                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1648                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1640                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1616                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1608                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1600                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1592                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1584                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1576                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1568                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1560                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1552                 # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(N)
	fld.d	$fs0, $s0, %pc_lo12(N)
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	move	$fp, $a1
	bceqz	$fcc0, .LBB2_40
.LBB2_1:                                # %.split592
	move	$a3, $zero
	pcalau12i	$s1, %pc_hi20(rootN)
	fst.d	$fa0, $s1, %pc_lo12(rootN)
	vldi	$vr1, -784
	fadd.d	$ft13, $fa0, $fa1
	vldi	$vr2, -1000
	fmul.d	$fa4, $fs0, $fa2
	vldi	$vr2, -1024
	vldi	$vr3, -864
	fmadd.d	$fa6, $fa0, $fa3, $fa2
	vldi	$vr2, -856
	fmul.d	$fa2, $fa0, $fa2
	vldi	$vr3, -984
	fmadd.d	$fa2, $fs0, $fa3, $fa2
	fadd.d	$fa7, $fa2, $fa1
	vldi	$vr1, -880
	fmul.d	$fa1, $fa0, $fa1
	fmadd.d	$fa1, $fs0, $fa3, $fa1
	vldi	$vr2, -896
	fadd.d	$ft0, $fa1, $fa2
	pcalau12i	$a1, %pc_hi20(CC)
	fld.d	$fa2, $a1, %pc_lo12(CC)
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	fld.d	$fa5, $a4, %pc_lo12(.LCPI2_0)
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$ft1, $a1, %pc_lo12(.LCPI2_2)
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_1)
	movgr2fr.d	$fa1, $zero
	ori	$a6, $zero, 100
	lu12i.w	$a1, 244
	ori	$a1, $a1, 575
                                        # implicit-def: $r6
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_10 Depth 2
	bstrpick.d	$a5, $a3, 31, 0
	movgr2fr.d	$ft2, $a5
	ffint.d.l	$ft2, $ft2
	beqz	$a3, .LBB2_8
# %bb.3:                                # %.split.us.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a5, $zero
	addi.w	$a7, $a2, 0
	.p2align	4, , 16
.LBB2_4:                                # %.split.us
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t0, $a5, 31, 0
	movgr2fr.d	$ft3, $t0
	ffint.d.l	$ft3, $ft3
	fdiv.d	$ft3, $ft3, $fa3
	fadd.d	$ft12, $ft3, $ft2
	fcmp.clt.d	$fcc0, $ft13, $ft12
	bcnez	$fcc0, .LBB2_15
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=2
	fdiv.d	$ft3, $ft12, $fa4
	fmul.d	$ft4, $ft12, $ft12
	fmul.d	$ft5, $fa6, $ft4
	fmadd.d	$ft4, $ft4, $ft12, $ft5
	fmadd.d	$ft4, $fa7, $ft12, $ft4
	fadd.d	$ft4, $ft0, $ft4
	fmul.d	$ft3, $ft3, $ft4
	fcmp.cule.d	$fcc0, $ft3, $fa2
	movcf2gr	$t0, $fcc0
	sub.d	$t0, $zero, $t0
	ori	$t0, $t0, 1
	bne	$t0, $a7, .LBB2_18
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=2
	fsub.d	$fa5, $ft3, $fa2
	fneg.d	$ft3, $fa5
	fcmp.cult.d	$fcc0, $fa5, $fa1
	addi.w	$a5, $a5, 1
	fsel	$fa5, $fa5, $ft3, $fcc0
	bne	$a5, $a6, .LBB2_4
# %bb.7:                                # %.loopexit228
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a5, $a3
	addi.w	$a3, $a3, 1
	blt	$a5, $a1, .LBB2_2
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_8:                                # %.split.peel
                                        #   in Loop: Header=BB2_2 Depth=1
	fadd.d	$ft12, $ft2, $ft1
	fcmp.clt.d	$fcc0, $ft13, $ft12
	ori	$a7, $zero, 1
	bcnez	$fcc0, .LBB2_39
# %bb.9:                                # %.split.peel.next
                                        #   in Loop: Header=BB2_2 Depth=1
	fdiv.d	$ft3, $ft12, $fa4
	fmul.d	$ft4, $ft12, $ft12
	fmul.d	$ft5, $fa6, $ft4
	fmadd.d	$ft4, $ft4, $ft12, $ft5
	fmadd.d	$ft4, $fa7, $ft12, $ft4
	fadd.d	$ft4, $ft0, $ft4
	fmul.d	$ft3, $ft3, $ft4
	fcmp.cule.d	$fcc0, $ft3, $fa2
	movcf2gr	$a2, $fcc0
	sub.d	$a2, $zero, $a2
	ori	$t0, $a2, 1
	ori	$a5, $zero, 11
	.p2align	4, , 16
.LBB2_10:                               # %.split
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a2, $a5, 31, 0
	movgr2fr.d	$ft3, $a2
	ffint.d.l	$ft3, $ft3
	fdiv.d	$ft3, $ft3, $fa3
	fadd.d	$ft12, $ft3, $ft2
	fcmp.clt.d	$fcc0, $ft13, $ft12
	bcnez	$fcc0, .LBB2_16
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=2
	fdiv.d	$ft3, $ft12, $fa4
	fmul.d	$ft4, $ft12, $ft12
	fmul.d	$ft5, $fa6, $ft4
	fmadd.d	$ft4, $ft4, $ft12, $ft5
	fmadd.d	$ft4, $fa7, $ft12, $ft4
	fadd.d	$ft4, $ft0, $ft4
	fmul.d	$ft3, $ft3, $ft4
	fcmp.cule.d	$fcc0, $ft3, $fa2
	movcf2gr	$a2, $fcc0
	sub.d	$a2, $zero, $a2
	ori	$a2, $a2, 1
	addi.w	$a3, $t0, 0
	bne	$a2, $a3, .LBB2_17
# %bb.12:                               #   in Loop: Header=BB2_10 Depth=2
	fsub.d	$fa5, $ft3, $fa2
	fneg.d	$ft3, $fa5
	fcmp.cult.d	$fcc0, $fa5, $fa1
	addi.w	$a5, $a5, 1
	fsel	$fa5, $fa5, $ft3, $fcc0
	move	$t0, $a2
	bne	$a5, $a6, .LBB2_10
# %bb.13:                               #   in Loop: Header=BB2_2 Depth=1
	move	$a3, $zero
	move	$a5, $a3
	addi.w	$a3, $a3, 1
	blt	$a5, $a1, .LBB2_2
.LBB2_14:
	move	$a3, $zero
	move	$a7, $zero
                                        # implicit-def: $r9
	bnez	$a7, .LBB2_19
	b	.LBB2_32
.LBB2_15:
	ori	$a7, $zero, 1
	bnez	$a7, .LBB2_19
	b	.LBB2_32
.LBB2_16:
	move	$a3, $zero
	move	$a2, $t0
	bnez	$a7, .LBB2_19
	b	.LBB2_32
.LBB2_17:
	move	$a2, $t0
.LBB2_18:                               # %.split255.us
	pcalau12i	$a3, %pc_hi20(.LCPI2_3)
	fld.d	$fa6, $a3, %pc_lo12(.LCPI2_3)
	move	$a3, $zero
	move	$a7, $zero
	fsub.d	$fa7, $ft3, $fa2
	fabs.d	$fa7, $fa7
	fadd.d	$fa6, $ft12, $fa6
	fcmp.cult.d	$fcc0, $fa7, $fa5
	fsel	$ft12, $fa6, $ft12, $fcc0
                                        # implicit-def: $r9
	beqz	$a7, .LBB2_32
.LBB2_19:                               # %.loopexit368
	blt	$a1, $a3, .LBB2_32
# %bb.20:                               # %.lr.ph291
	frecip.d	$fa4, $fa4
	vldi	$vr5, -896
	vldi	$vr6, -992
	fmadd.d	$fa5, $fa0, $fa6, $fa5
	vldi	$vr6, -840
	fmul.d	$fa7, $fs0, $fa6
	vldi	$vr6, -984
	pcalau12i	$a6, %pc_hi20(.LCPI2_4)
	fld.d	$ft0, $a6, %pc_lo12(.LCPI2_4)
	fmadd.d	$fa6, $fa0, $fa6, $fa7
	vldi	$vr9, -912
	fadd.d	$fa6, $fa6, $ft1
	fmul.d	$ft5, $fs0, $ft0
	fmadd.d	$fa7, $ft5, $fa0, $fa7
	vldi	$vr12, -880
	fmadd.d	$ft0, $fa0, $ft4, $fa7
	vldi	$vr7, -1024
	fadd.d	$ft0, $ft0, $fa7
	fmul.d	$ft1, $ft13, $ft13
	fmul.d	$ft2, $ft13, $ft1
	pcalau12i	$a6, %pc_hi20(.LCPI2_5)
	fld.d	$ft6, $a6, %pc_lo12(.LCPI2_5)
	fmul.d	$ft3, $ft13, $ft2
	vldi	$vr15, -976
	fnmadd.d	$ft4, $fa0, $ft7, $ft4
	fmul.d	$ft7, $fs0, $ft6
	vldi	$vr14, -968
	fmadd.d	$ft6, $fa0, $ft6, $ft7
	fadd.d	$ft6, $ft6, $fa7
	fneg.d	$ft6, $ft6
	fmadd.d	$ft5, $ft5, $fa0, $ft7
	vldi	$vr15, -1008
	fadd.d	$ft7, $ft5, $ft7
	fld.d	$ft5, $a4, %pc_lo12(.LCPI2_0)
	fneg.d	$ft7, $ft7
	ori	$a4, $zero, 99
	addi.w	$a6, $a5, 0
	move	$t0, $a3
	b	.LBB2_23
.LBB2_21:                               #   in Loop: Header=BB2_23 Depth=1
	move	$a2, $t0
	move	$t0, $a3
.LBB2_22:                               # %.loopexit
                                        #   in Loop: Header=BB2_23 Depth=1
	move	$a7, $t0
	addi.w	$t0, $t0, 1
	bge	$a7, $a1, .LBB2_32
.LBB2_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_25 Depth 2
                                        #     Child Loop BB2_28 Depth 2
	slt	$a7, $a3, $t0
	masknez	$a7, $a5, $a7
	addi.w	$a7, $a7, 0
	blt	$a4, $a7, .LBB2_22
# %bb.24:                               # %.lr.ph
                                        #   in Loop: Header=BB2_23 Depth=1
	bstrpick.d	$a5, $t0, 31, 0
	movgr2fr.d	$ft8, $a5
	ffint.d.l	$ft8, $ft8
	beq	$t0, $a3, .LBB2_28
	.p2align	4, , 16
.LBB2_25:                               # %.lr.ph.split.us
                                        #   Parent Loop BB2_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$ft9, $a7
	ffint.d.w	$ft9, $ft9
	fdiv.d	$ft9, $ft9, $fa3
	fadd.d	$ft12, $ft9, $ft8
	fmul.d	$ft9, $ft12, $ft12
	fmul.d	$ft10, $ft12, $ft9
	fmul.d	$ft11, $fa5, $ft10
	fneg.d	$ft10, $ft10
	fmadd.d	$ft10, $ft10, $ft12, $ft11
	fmadd.d	$ft9, $fa6, $ft9, $ft10
	fmadd.d	$ft9, $ft0, $ft12, $ft9
	fmadd.d	$ft9, $ft3, $fa7, $ft9
	fmadd.d	$ft9, $ft4, $ft2, $ft9
	fmadd.d	$ft9, $ft6, $ft1, $ft9
	fmadd.d	$ft9, $ft7, $ft13, $ft9
	fmul.d	$ft9, $fa4, $ft9
	fcmp.cule.d	$fcc0, $ft9, $fa2
	movcf2gr	$a5, $fcc0
	sub.d	$a5, $zero, $a5
	ori	$a5, $a5, 1
	addi.w	$t1, $a2, 0
	bne	$a5, $t1, .LBB2_31
# %bb.26:                               # %select.unfold.us
                                        #   in Loop: Header=BB2_25 Depth=2
	fsub.d	$ft5, $ft9, $fa2
	fneg.d	$ft9, $ft5
	fcmp.cult.d	$fcc0, $ft5, $fa1
	addi.w	$a7, $a7, 1
	ori	$a5, $zero, 100
	fsel	$ft5, $ft5, $ft9, $fcc0
	bne	$a7, $a5, .LBB2_25
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_27:                               # %select.unfold
                                        #   in Loop: Header=BB2_28 Depth=2
	addi.w	$a7, $a7, 1
	ori	$a5, $zero, 100
	move	$a2, $t0
	beq	$a7, $a5, .LBB2_21
.LBB2_28:                               # %.lr.ph.split
                                        #   Parent Loop BB2_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$ft9, $a7
	ffint.d.w	$ft9, $ft9
	fdiv.d	$ft9, $ft9, $fa3
	fadd.d	$ft12, $ft9, $ft8
	fmul.d	$ft9, $ft12, $ft12
	fmul.d	$ft10, $ft12, $ft9
	fmul.d	$ft11, $fa5, $ft10
	fneg.d	$ft10, $ft10
	fmadd.d	$ft10, $ft10, $ft12, $ft11
	fmadd.d	$ft9, $fa6, $ft9, $ft10
	fmadd.d	$ft9, $ft0, $ft12, $ft9
	fmadd.d	$ft9, $ft3, $fa7, $ft9
	fmadd.d	$ft9, $ft4, $ft2, $ft9
	fmadd.d	$ft9, $ft6, $ft1, $ft9
	fmadd.d	$ft9, $ft7, $ft13, $ft9
	fmul.d	$ft9, $fa4, $ft9
	fcmp.cule.d	$fcc0, $ft9, $fa2
	movcf2gr	$a5, $fcc0
	sub.d	$a5, $zero, $a5
	ori	$t0, $a5, 1
	beq	$a6, $a7, .LBB2_27
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=2
	addi.w	$a2, $a2, 0
	bne	$t0, $a2, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_28 Depth=2
	fsub.d	$ft5, $ft9, $fa2
	fneg.d	$ft9, $ft5
	fcmp.cult.d	$fcc0, $ft5, $fa1
	fsel	$ft5, $ft5, $ft9, $fcc0
	b	.LBB2_27
.LBB2_31:                               # %.loopexit.thread
	pcalau12i	$a1, %pc_hi20(.LCPI2_3)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_3)
	fsub.d	$fa4, $ft9, $fa2
	fabs.d	$fa4, $fa4
	fadd.d	$fa3, $ft12, $fa3
	fcmp.cult.d	$fcc0, $fa4, $ft5
	fsel	$ft12, $fa3, $ft12, $fcc0
.LBB2_32:                               # %.loopexit227
	fmul.d	$ft6, $ft12, $ft12
	fmul.d	$ft7, $ft12, $ft6
	fcmp.cult.d	$fcc0, $ft13, $ft12
	fmul.d	$fs5, $ft12, $ft7
	bceqz	$fcc0, .LBB2_34
# %bb.33:
	fmul.d	$fa3, $ft12, $fs5
	vldi	$vr4, -876
	vldi	$vr5, -978
	fmadd.d	$fa4, $fa0, $fa5, $fa4
	pcalau12i	$a1, %pc_hi20(.LCPI2_7)
	fld.d	$fa5, $a1, %pc_lo12(.LCPI2_7)
	fmul.d	$fa4, $fa4, $fs5
	vldi	$vr6, -896
	fmadd.d	$fa3, $fa3, $fa6, $fa4
	fmul.d	$fa4, $fs0, $fa5
	pcalau12i	$a1, %pc_hi20(.LCPI2_8)
	fld.d	$fa5, $a1, %pc_lo12(.LCPI2_8)
	vldi	$vr6, -962
	fmsub.d	$fa7, $fa0, $fa6, $fa4
	fmadd.d	$fa3, $fa7, $ft7, $fa3
	fmul.d	$fa5, $fs0, $fa5
	fmadd.d	$fa7, $fa4, $fa0, $fa5
	vldi	$vr8, -1004
	fmadd.d	$fa7, $fa0, $ft0, $fa7
	fadd.d	$fa7, $fa7, $ft0
	fmadd.d	$fa3, $fa7, $ft6, $fa3
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
	fmadd.d	$fa6, $fa0, $fa6, $ft0
	fneg.d	$ft2, $ft2
	fmul.d	$fa6, $fa6, $ft2
	vldi	$vr10, -1008
	pcalau12i	$a1, %pc_hi20(.LCPI2_9)
	fld.d	$ft4, $a1, %pc_lo12(.LCPI2_9)
	pcalau12i	$a1, %pc_hi20(.LCPI2_10)
	fld.d	$ft5, $a1, %pc_lo12(.LCPI2_10)
	fmadd.d	$fa6, $ft3, $ft2, $fa6
	fnmadd.d	$fa5, $fa0, $ft4, $fa5
	fmadd.d	$fa5, $fa5, $ft1, $fa6
	fmul.d	$fa6, $fs0, $ft5
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
	pcalau12i	$a1, %pc_hi20(.LCPI2_6)
	fld.d	$fa6, $a1, %pc_lo12(.LCPI2_6)
	fneg.d	$fa4, $fa4
	fmadd.d	$fa4, $fa4, $ft13, $fa5
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa3, $fa6
	vldi	$vr4, -1000
	fmul.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fs0, $fa2
	fdiv.d	$fa2, $fa3, $fa2
	b	.LBB2_35
.LBB2_34:
	vldi	$vr3, -1004
	vldi	$vr4, -850
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa3, $fa3, $ft7
	vldi	$vr5, -1024
	fmadd.d	$fa3, $fs5, $fa5, $fa3
	vldi	$vr5, -834
	fmul.d	$fa5, $fa0, $fa5
	vldi	$vr6, -972
	fmadd.d	$fa5, $fs0, $fa6, $fa5
	fmadd.d	$fa3, $fa5, $ft6, $fa3
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
	pcalau12i	$a1, %pc_hi20(.LCPI2_6)
	fld.d	$fa4, $a1, %pc_lo12(.LCPI2_6)
	fmul.d	$fa2, $fs0, $fa2
	fdiv.d	$fa2, $fa2, $ft12
	fdiv.d	$fa2, $fa3, $fa2
	fmul.d	$fa2, $fa2, $fa4
.LBB2_35:
	pcalau12i	$a1, %pc_hi20(.LCPI2_11)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_11)
	fst.d	$fa3, $sp, 1456                 # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $sp, 1480                 # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $a0, 0
	pcalau12i	$s3, %pc_hi20(a)
	fld.d	$fa2, $s3, %pc_lo12(a)
	pcalau12i	$a0, %pc_hi20(bb)
	fld.d	$fa0, $a0, %pc_lo12(bb)
	fadd.d	$fa3, $fa2, $fa0
	pcalau12i	$s2, %pc_hi20(c)
	fst.d	$fa3, $s2, %pc_lo12(c)
	fneg.d	$fa0, $fa1
	fmul.d	$fs1, $fa2, $fa0
	fcmp.cule.d	$fcc0, $ft12, $ft13
	vst	$vr3, $sp, 1536                 # 16-byte Folded Spill
	fmul.d	$fs0, $fa3, $fa0
	vst	$vr20, $sp, 1488                # 16-byte Folded Spill
	vst	$vr2, $sp, 1520                 # 16-byte Folded Spill
	vldi	$vr0, -784
	bcnez	$fcc0, .LBB2_37
# %bb.36:
	fadd.d	$fa0, $ft13, $fa0
	fneg.d	$fs7, $fa0
	fmul.d	$fs3, $fa2, $fs7
	fmov.d	$fa0, $fs3
	vst	$vr21, $sp, 1392                # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fmul.d	$fs2, $fa0, $fs7
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 1488                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	vextrins.d	$vr2, $vr1, 16
	vst	$vr2, $sp, 1424                 # 16-byte Folded Spill
	vfmul.d	$vr1, $vr2, $vr2
	vst	$vr1, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 1504                 # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	fld.d	$fs6, $a0, %pc_lo12(.LCPI2_12)
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs6
	vst	$vr0, $sp, 1264                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 992                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 944                  # 8-byte Folded Spill
	fld.d	$fs5, $s1, %pc_lo12(rootN)
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs5, $fa0
	fst.d	$fa0, $sp, 984                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs5, $fa0
	fst.d	$fa0, $sp, 136                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1440                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vldi	$vr0, -1016
	fmul.d	$fa0, $fs5, $fa0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 784                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 736                  # 16-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fa0, $fs5, $fa0
	fst.d	$fa0, $sp, 864                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1440                 # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa0
	vst	$vr0, $sp, 1040                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 656                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 672                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 608                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 576                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fs4, $fa0
	vst	$vr0, $sp, 1248                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs6
	vst	$vr0, $sp, 1216                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1280                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1280                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs5, $fa0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1296                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs5, $fa0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	vldi	$vr0, -896
	fmul.d	$fa0, $fs5, $fa0
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 528                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 496                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 752                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 688                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1488                 # 16-byte Folded Reload
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs5, $fa0
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fmul.d	$fs0, $fa0, $fs5
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fmul.d	$fs1, $fa0, $fs5
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1328                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_13)
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr2, $sp, 1376                 # 16-byte Folded Reload
	vld	$vr4, $sp, 1424                 # 16-byte Folded Reload
	vfmul.d	$vr3, $vr4, $vr2
	vst	$vr3, $sp, 1360                 # 16-byte Folded Spill
	vfmul.d	$vr2, $vr4, $vr3
	vfdiv.d	$vr1, $vr2, $vr1
	vreplvei.d	$vr2, $vr1, 1
	fld.d	$fa4, $sp, 1504                 # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa4
	vst	$vr2, $sp, 1200                 # 16-byte Folded Spill
	vreplvei.d	$vr2, $vr3, 1
	vst	$vr2, $sp, 1168                 # 16-byte Folded Spill
	vldi	$vr3, -1000
	fdiv.d	$fa2, $fa2, $fa3
	vst	$vr2, $sp, 1184                 # 16-byte Folded Spill
	vld	$vr2, $sp, 1328                 # 16-byte Folded Reload
	vextrins.d	$vr2, $vr0, 16
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr0, 0
	vfdiv.d	$vr0, $vr2, $vr0
	vld	$vr3, $sp, 1408                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1344                 # 16-byte Folded Reload
	vextrins.d	$vr3, $vr2, 16
	vld	$vr2, $sp, 1520                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vfdiv.d	$vr2, $vr3, $vr2
	vfsub.d	$vr0, $vr0, $vr2
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 1424                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 552                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 560                  # 8-byte Folded Spill
	fld.d	$fa2, $s1, %pc_lo12(rootN)
	vst	$vr2, $sp, 1504                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 568                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 472                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 480                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 488                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 848                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1344                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 800                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1504                 # 16-byte Folded Reload
	vldi	$vr1, -1016
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 832                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 816                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 768                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 368                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_14)
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1504                 # 16-byte Folded Reload
	vldi	$vr2, -1000
	fmul.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $sp, 312                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 704                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 448                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1024                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1008                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1072                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1056                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 1360                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr3, 0
	vst	$vr1, $sp, 1152                 # 16-byte Folded Spill
	vld	$vr4, $sp, 1424                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr4, 0
	vldi	$vr2, -872
	vfadd.d	$vr1, $vr1, $vr4
	vst	$vr1, $sp, 1136                 # 16-byte Folded Spill
	vextrins.d	$vr4, $vr2, 0
	vfdiv.d	$vr1, $vr3, $vr4
	vst	$vr1, $sp, 1120                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1104                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs3, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1088                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1312                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 256                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fld.d	$fa3, $s3, %pc_lo12(a)
	vst	$vr3, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1312                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 336                  # 16-byte Folded Spill
	fmul.d	$fs0, $fa3, $fs7
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1328                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 320                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr2, $sp, 1408                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 416                  # 16-byte Folded Spill
	fmul.d	$fs1, $fa2, $fs5
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s2, %pc_lo12(c)
	vst	$vr1, $sp, 1424                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	fmul.d	$fs2, $fa1, $fs5
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 432                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 720                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1424                 # 16-byte Folded Reload
	fmul.d	$fs3, $fa0, $fs7
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 640                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 896                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 880                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 960                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 912                  # 16-byte Folded Spill
	vld	$vr7, $sp, 1424                 # 16-byte Folded Reload
	vori.b	$vr0, $vr7, 0
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr1, 16
	vfmul.d	$vr23, $vr0, $vr0
	vori.b	$vr2, $vr0, 0
	vreplvei.d	$vr15, $vr23, 1
	fld.d	$fa0, $sp, 944                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $ft7
	vld	$vr4, $sp, 1408                 # 16-byte Folded Reload
	vori.b	$vr0, $vr4, 0
	vld	$vr3, $sp, 1520                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr3, 16
	vfmul.d	$vr8, $vr0, $vr0
	vori.b	$vr6, $vr0, 0
	vreplvei.d	$vr16, $vr8, 1
	fld.d	$fa0, $sp, 992                  # 8-byte Folded Reload
	fdiv.d	$fa3, $fa0, $ft8
	fsub.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $sp, 1456                 # 8-byte Folded Reload
	fld.d	$fa0, $sp, 984                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fst.d	$fa0, $sp, 984                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 928                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $ft7
	fld.d	$fa0, $sp, 144                  # 8-byte Folded Reload
	fdiv.d	$fa5, $fa0, $ft8
	fsub.d	$fa1, $fa1, $fa5
	fld.d	$fa0, $sp, 136                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	vst	$vr0, $sp, 992                  # 16-byte Folded Spill
	vori.b	$vr0, $vr23, 0
	vextrins.d	$vr0, $vr7, 0
	vori.b	$vr5, $vr7, 0
	vst	$vr0, $sp, 944                  # 16-byte Folded Spill
	vori.b	$vr1, $vr8, 0
	vori.b	$vr9, $vr8, 0
	vextrins.d	$vr1, $vr4, 0
	vori.b	$vr8, $vr4, 0
	vst	$vr1, $sp, 928                  # 16-byte Folded Spill
	vfmul.d	$vr28, $vr2, $vr0
	vreplvei.d	$vr17, $vr28, 1
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	fdiv.d	$ft3, $fa4, $ft9
	vfmul.d	$vr10, $vr6, $vr1
	vreplvei.d	$vr18, $vr10, 1
	vst	$vr10, $sp, 1456                # 16-byte Folded Spill
	vld	$vr3, $sp, 208                  # 16-byte Folded Reload
	fdiv.d	$ft4, $fa3, $ft10
	fsub.d	$ft3, $ft3, $ft4
	fdiv.d	$ft4, $fa4, $ft7
	fdiv.d	$ft5, $fa3, $ft8
	fsub.d	$ft4, $ft4, $ft5
	fneg.d	$ft4, $ft4
	fld.d	$fa7, $sp, 176                  # 8-byte Folded Reload
	fmul.d	$ft4, $fa7, $ft4
	vldi	$vr13, -1024
	fmadd.d	$ft3, $ft3, $ft5, $ft4
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	fdiv.d	$ft4, $fa0, $ft9
	vld	$vr1, $sp, 192                  # 16-byte Folded Reload
	fdiv.d	$ft6, $fa1, $ft10
	fsub.d	$ft4, $ft4, $ft6
	fdiv.d	$ft6, $fa0, $ft7
	fdiv.d	$ft11, $fa1, $ft8
	fsub.d	$ft6, $ft6, $ft11
	fneg.d	$ft6, $ft6
	fmul.d	$ft6, $fa7, $ft6
	fmadd.d	$ft4, $ft4, $ft5, $ft6
	vld	$vr7, $sp, 48                   # 16-byte Folded Reload
	vextrins.d	$vr7, $vr4, 16
	vld	$vr4, $sp, 1280                 # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	vpackod.d	$vr3, $vr2, $vr23
	vfdiv.d	$vr13, $vr7, $vr3
	vori.b	$vr7, $vr3, 0
	vst	$vr3, $sp, 208                  # 16-byte Folded Spill
	vpackod.d	$vr3, $vr6, $vr9
	vori.b	$vr31, $vr9, 0
	vfdiv.d	$vr14, $vr4, $vr3
	vori.b	$vr4, $vr3, 0
	vst	$vr3, $sp, 176                  # 16-byte Folded Spill
	vfsub.d	$vr13, $vr13, $vr14
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr3, $vr11, 16
	vldi	$vr11, -928
	vld	$vr9, $sp, 1440                 # 16-byte Folded Reload
	vpackev.d	$vr14, $vr9, $vr11
	vfmadd.d	$vr3, $vr14, $vr13, $vr3
	vst	$vr3, $sp, 1280                 # 16-byte Folded Spill
	vld	$vr3, $sp, 64                   # 16-byte Folded Reload
	vextrins.d	$vr3, $vr0, 16
	vld	$vr0, $sp, 1296                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr1, 16
	vfdiv.d	$vr13, $vr3, $vr7
	vfdiv.d	$vr19, $vr0, $vr4
	vfsub.d	$vr13, $vr13, $vr19
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr12, 16
	vfmadd.d	$vr0, $vr14, $vr13, $vr0
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	vld	$vr30, $sp, 736                 # 16-byte Folded Reload
	fdiv.d	$ft5, $fs6, $ft9
	vld	$vr11, $sp, 784                 # 16-byte Folded Reload
	fdiv.d	$ft6, $ft3, $ft10
	fsub.d	$ft11, $ft5, $ft6
	vld	$vr4, $sp, 592                  # 16-byte Folded Reload
	fdiv.d	$ft5, $fa4, $ft9
	vld	$vr7, $sp, 656                  # 16-byte Folded Reload
	fdiv.d	$ft6, $fa7, $ft10
	fsub.d	$ft14, $ft5, $ft6
	vori.b	$vr13, $vr28, 0
	vextrins.d	$vr13, $vr5, 0
	vfmul.d	$vr20, $vr2, $vr13
	vori.b	$vr3, $vr2, 0
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	vori.b	$vr13, $vr10, 0
	vextrins.d	$vr13, $vr8, 0
	vfmul.d	$vr21, $vr6, $vr13
	vori.b	$vr0, $vr6, 0
	vst	$vr6, $sp, 32                   # 16-byte Folded Spill
	vreplvei.d	$vr13, $vr20, 1
	vld	$vr5, $sp, 608                  # 16-byte Folded Reload
	fdiv.d	$fs0, $fa5, $ft5
	vreplvei.d	$vr14, $vr21, 1
	vld	$vr1, $sp, 672                  # 16-byte Folded Reload
	fdiv.d	$fs1, $fa1, $ft6
	fsub.d	$fs0, $fs0, $fs1
	vld	$vr9, $sp, 576                  # 16-byte Folded Reload
	fdiv.d	$fs1, $ft1, $ft5
	vld	$vr10, $sp, 624                 # 16-byte Folded Reload
	fdiv.d	$fs2, $ft2, $ft6
	fsub.d	$fs3, $fs1, $fs2
	fneg.d	$ft11, $ft11
	fld.d	$fa6, $sp, 864                  # 8-byte Folded Reload
	fmul.d	$fs5, $fa6, $ft11
	fneg.d	$ft11, $ft14
	fmul.d	$fs2, $fa6, $ft11
	fneg.d	$ft11, $fs0
	fmul.d	$fs1, $fa6, $ft11
	fneg.d	$ft11, $fs3
	fmul.d	$fa2, $fa6, $ft11
	vst	$vr2, $sp, 864                  # 16-byte Folded Spill
	vld	$vr19, $sp, 224                 # 16-byte Folded Reload
	fdiv.d	$ft14, $ft11, $ft9
	vld	$vr12, $sp, 240                 # 16-byte Folded Reload
	fdiv.d	$fs0, $ft4, $ft10
	fsub.d	$ft14, $ft14, $fs0
	vextrins.d	$vr19, $vr30, 16
	vextrins.d	$vr12, $vr11, 16
	vpackod.d	$vr27, $vr20, $vr23
	vfdiv.d	$vr24, $vr19, $vr27
	vpackod.d	$vr30, $vr21, $vr31
	vori.b	$vr8, $vr31, 0
	vfdiv.d	$vr31, $vr12, $vr30
	vfsub.d	$vr31, $vr24, $vr31
	vldi	$vr24, -1008
	vld	$vr2, $sp, 272                  # 16-byte Folded Reload
	vpackev.d	$vr24, $vr24, $vr2
	vextrins.d	$vr22, $vr29, 16
	vfmadd.d	$vr22, $vr31, $vr24, $vr22
	vld	$vr6, $sp, 352                  # 16-byte Folded Reload
	fdiv.d	$fs5, $fa6, $ft9
	vld	$vr2, $sp, 400                  # 16-byte Folded Reload
	fdiv.d	$fs7, $fa2, $ft10
	fsub.d	$fs5, $fs5, $fs7
	vextrins.d	$vr6, $vr4, 16
	vori.b	$vr4, $vr2, 0
	vextrins.d	$vr4, $vr7, 16
	vfdiv.d	$vr27, $vr6, $vr27
	vfdiv.d	$vr30, $vr4, $vr30
	vfsub.d	$vr27, $vr27, $vr30
	vextrins.d	$vr29, $vr26, 16
	vfmadd.d	$vr26, $vr27, $vr24, $vr29
	vld	$vr11, $sp, 496                 # 16-byte Folded Reload
	fdiv.d	$fs3, $ft3, $ft5
	vld	$vr7, $sp, 528                  # 16-byte Folded Reload
	fdiv.d	$fs5, $fa7, $ft6
	fsub.d	$fs3, $fs3, $fs5
	vextrins.d	$vr11, $vr5, 16
	vextrins.d	$vr7, $vr1, 16
	vfmul.d	$vr20, $vr3, $vr20
	vfmul.d	$vr21, $vr0, $vr21
	vst	$vr28, $sp, 144                 # 16-byte Folded Spill
	vpackod.d	$vr29, $vr20, $vr28
	vfdiv.d	$vr30, $vr11, $vr29
	vld	$vr2, $sp, 1456                 # 16-byte Folded Reload
	vpackod.d	$vr31, $vr21, $vr2
	vfdiv.d	$vr1, $vr7, $vr31
	vfsub.d	$vr1, $vr30, $vr1
	vextrins.d	$vr27, $vr25, 16
	vfmadd.d	$vr1, $vr1, $vr24, $vr27
	vld	$vr30, $sp, 688                 # 16-byte Folded Reload
	fdiv.d	$fs1, $fs6, $ft5
	vld	$vr5, $sp, 752                  # 16-byte Folded Reload
	fdiv.d	$fs3, $fa5, $ft6
	fsub.d	$fs1, $fs1, $fs3
	vextrins.d	$vr30, $vr9, 16
	vextrins.d	$vr5, $vr10, 16
	vfdiv.d	$vr27, $vr30, $vr29
	vfdiv.d	$vr29, $vr5, $vr31
	vfsub.d	$vr27, $vr27, $vr29
	vld	$vr0, $sp, 864                  # 16-byte Folded Reload
	vextrins.d	$vr25, $vr0, 16
	vfmadd.d	$vr25, $vr27, $vr24, $vr25
	vori.b	$vr24, $vr23, 0
	vld	$vr3, $sp, 1536                 # 16-byte Folded Reload
	vextrins.d	$vr24, $vr3, 0
	vfdiv.d	$vr19, $vr19, $vr24
	vori.b	$vr10, $vr8, 0
	vori.b	$vr27, $vr8, 0
	vld	$vr8, $sp, 1520                 # 16-byte Folded Reload
	vextrins.d	$vr27, $vr8, 0
	vfdiv.d	$vr29, $vr12, $vr27
	vfsub.d	$vr19, $vr19, $vr29
	vld	$vr3, $sp, 1440                 # 16-byte Folded Reload
	vld	$vr0, $sp, 1040                 # 16-byte Folded Reload
	vextrins.d	$vr3, $vr0, 16
	vfmadd.d	$vr0, $vr3, $vr19, $vr22
	vst	$vr0, $sp, 1536                 # 16-byte Folded Spill
	vfdiv.d	$vr22, $vr6, $vr24
	vfdiv.d	$vr24, $vr4, $vr27
	vfsub.d	$vr22, $vr22, $vr24
	vfmadd.d	$vr0, $vr3, $vr22, $vr26
	vst	$vr0, $sp, 1440                 # 16-byte Folded Spill
	vpackod.d	$vr26, $vr28, $vr23
	vori.b	$vr9, $vr23, 0
	vfdiv.d	$vr24, $vr11, $vr26
	vpackod.d	$vr27, $vr2, $vr10
	vfdiv.d	$vr29, $vr7, $vr27
	vfsub.d	$vr24, $vr24, $vr29
	vfmadd.d	$vr0, $vr3, $vr24, $vr1
	vst	$vr0, $sp, 1040                 # 16-byte Folded Spill
	vfdiv.d	$vr1, $vr30, $vr26
	vfdiv.d	$vr26, $vr5, $vr27
	vfsub.d	$vr1, $vr1, $vr26
	vfmadd.d	$vr25, $vr3, $vr1, $vr25
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_15)
	fld.d	$fa0, $sp, 560                  # 8-byte Folded Reload
	fdiv.d	$fs2, $fa0, $ft7
	fld.d	$fa0, $sp, 552                  # 8-byte Folded Reload
	fdiv.d	$fs3, $fa0, $ft8
	fsub.d	$fs2, $fs2, $fs3
	fld.d	$fa0, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fs2, $fs2, $fa1, $fa0
	fld.d	$fa0, $sp, 480                  # 8-byte Folded Reload
	fdiv.d	$fs3, $fa0, $ft7
	fld.d	$fa0, $sp, 472                  # 8-byte Folded Reload
	fdiv.d	$fs5, $fa0, $ft8
	fsub.d	$fs3, $fs3, $fs5
	fld.d	$fa0, $sp, 488                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs3, $fa1, $fa0
	vld	$vr19, $sp, 288                 # 16-byte Folded Reload
	fdiv.d	$fa1, $ft11, $ft5
	vld	$vr12, $sp, 368                 # 16-byte Folded Reload
	fdiv.d	$fs5, $ft4, $ft6
	fsub.d	$fa1, $fa1, $fs5
	fdiv.d	$fs5, $ft11, $ft9
	fdiv.d	$fs6, $ft4, $ft10
	fsub.d	$fs5, $fs5, $fs6
	fld.d	$fa6, $sp, 312                  # 8-byte Folded Reload
	fmul.d	$fs5, $fa6, $fs5
	vldi	$vr31, -880
	fmadd.d	$fs6, $fa1, $fs7, $fs5
	vld	$vr7, $sp, 384                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa7, $ft5
	vld	$vr22, $sp, 448                 # 16-byte Folded Reload
	fdiv.d	$fs5, $ft14, $ft6
	fsub.d	$fa1, $fa1, $fs5
	fdiv.d	$fs5, $fa7, $ft9
	fdiv.d	$fa3, $ft14, $ft10
	fsub.d	$fa3, $fs5, $fa3
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fs5, $fa1, $fs7, $fa3
	vld	$vr4, $sp, 800                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa4, $ft9
	vld	$vr0, $sp, 848                  # 16-byte Folded Reload
	fdiv.d	$fa3, $fa0, $ft10
	fsub.d	$fa1, $fa1, $fa3
	fdiv.d	$fa3, $fa4, $ft7
	fdiv.d	$fs7, $fa0, $ft8
	vori.b	$vr24, $vr0, 0
	fsub.d	$fa3, $fa3, $fs7
	fld.d	$ft3, $sp, 832                  # 8-byte Folded Reload
	fmul.d	$fa3, $ft3, $fa3
	vldi	$vr31, -896
	fmadd.d	$fa1, $fa1, $fs7, $fa3
	vld	$vr5, $sp, 768                  # 16-byte Folded Reload
	fdiv.d	$fa3, $fa5, $ft9
	vld	$vr0, $sp, 816                  # 16-byte Folded Reload
	fdiv.d	$ft9, $fa0, $ft10
	fsub.d	$fa3, $fa3, $ft9
	fdiv.d	$ft7, $fa5, $ft7
	fdiv.d	$ft8, $fa0, $ft8
	fsub.d	$ft7, $ft7, $ft8
	fmul.d	$ft7, $ft3, $ft7
	fmadd.d	$ft8, $fa3, $fs7, $ft7
	vldi	$vr3, -896
	vld	$vr2, $sp, 1344                 # 16-byte Folded Reload
	vreplvei.d	$vr18, $vr2, 0
	vld	$vr15, $sp, 1504                # 16-byte Folded Reload
	vextrins.d	$vr2, $vr15, 16
	vld	$vr11, $sp, 704                 # 16-byte Folded Reload
	vpackev.d	$vr3, $vr11, $vr3
	vld	$vr11, $sp, 256                 # 16-byte Folded Reload
	vextrins.d	$vr11, $vr4, 16
	vld	$vr4, $sp, 1312                 # 16-byte Folded Reload
	vextrins.d	$vr4, $vr24, 16
	vld	$vr15, $sp, 176                 # 16-byte Folded Reload
	vfdiv.d	$vr15, $vr4, $vr15
	vld	$vr23, $sp, 208                 # 16-byte Folded Reload
	vfdiv.d	$vr17, $vr11, $vr23
	vfsub.d	$vr15, $vr17, $vr15
	vld	$vr4, $sp, 336                  # 16-byte Folded Reload
	vextrins.d	$vr4, $vr1, 16
	vfmul.d	$vr17, $vr2, $vr3
	lu52i.d	$a0, $zero, -1026
	vreplgr2vr.d	$vr1, $a0
	vpackev.d	$vr1, $vr17, $vr1
	vfmadd.d	$vr24, $vr15, $vr1, $vr4
	vld	$vr3, $sp, 320                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr5, 16
	vfdiv.d	$vr3, $vr3, $vr23
	vld	$vr4, $sp, 1328                 # 16-byte Folded Reload
	vextrins.d	$vr4, $vr0, 16
	vori.b	$vr23, $vr10, 0
	vextrins.d	$vr23, $vr8, 16
	vfdiv.d	$vr23, $vr4, $vr23
	vfsub.d	$vr3, $vr3, $vr23
	vld	$vr0, $sp, 416                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr16, 16
	vfmadd.d	$vr16, $vr3, $vr1, $vr0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vreplvei.d	$vr31, $vr20, 0
	vld	$vr11, $sp, 432                 # 16-byte Folded Reload
	fdiv.d	$fa1, $ft3, $fs7
	vld	$vr3, $a0, %pc_lo12(.LCPI2_17)
	vreplvei.d	$vr28, $vr21, 0
	vld	$vr15, $sp, 512                 # 16-byte Folded Reload
	fdiv.d	$ft15, $ft7, $fs4
	fsub.d	$fa1, $fa1, $ft15
	vfmul.d	$vr23, $vr2, $vr3
	vextrins.d	$vr11, $vr19, 16
	vextrins.d	$vr15, $vr12, 16
	vfdiv.d	$vr3, $vr11, $vr9
	vori.b	$vr2, $vr11, 0
	vfdiv.d	$vr11, $vr15, $vr10
	vfsub.d	$vr3, $vr3, $vr11
	fneg.d	$fa1, $fa1
	vextrins.d	$vr1, $vr30, 16
	vori.b	$vr11, $vr23, 0
	vshuf4i.d	$vr11, $vr0, 1
	vfmadd.d	$vr30, $vr11, $vr3, $vr1
	vld	$vr19, $sp, 640                 # 16-byte Folded Reload
	fdiv.d	$fa1, $ft11, $fs7
	vld	$vr12, $sp, 720                 # 16-byte Folded Reload
	fdiv.d	$fa3, $ft4, $fs4
	fsub.d	$fa1, $fa1, $fa3
	vextrins.d	$vr19, $vr7, 16
	vextrins.d	$vr12, $vr22, 16
	vfdiv.d	$vr3, $vr19, $vr9
	vfdiv.d	$vr9, $vr12, $vr10
	vfsub.d	$vr3, $vr3, $vr9
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr10, $a0, %pc_lo12(.LCPI2_16)
	fneg.d	$fa1, $fa1
	vextrins.d	$vr1, $vr29, 16
	vfmadd.d	$vr9, $vr11, $vr3, $vr1
	vfmul.d	$vr1, $vr18, $vr10
	vld	$vr11, $sp, 1008                # 16-byte Folded Reload
	fdiv.d	$fa3, $ft3, $ft5
	vld	$vr29, $sp, 1024                # 16-byte Folded Reload
	fdiv.d	$ft2, $fs5, $ft6
	fsub.d	$fa3, $fa3, $ft2
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	fmul.d	$ft2, $fa0, $fs4
	vld	$vr0, $sp, 1424                 # 16-byte Folded Reload
	fmul.d	$fs7, $fa0, $fs7
	vld	$vr0, $sp, 880                  # 16-byte Folded Reload
	fdiv.d	$ft10, $fa0, $fs7
	vld	$vr7, $sp, 896                  # 16-byte Folded Reload
	fdiv.d	$fs4, $fa7, $ft2
	fsub.d	$ft10, $ft10, $fs4
	vextrins.d	$vr0, $vr11, 16
	vextrins.d	$vr7, $vr29, 16
	vfdiv.d	$vr28, $vr0, $vr20
	vfdiv.d	$vr29, $vr7, $vr21
	vori.b	$vr22, $vr7, 0
	vfsub.d	$vr28, $vr28, $vr29
	fmul.d	$fa3, $fa6, $fa3
	fneg.d	$ft10, $ft10
	vextrins.d	$vr18, $vr3, 16
	lu52i.d	$a0, $zero, -1023
	vreplgr2vr.d	$vr3, $a0
	vpackod.d	$vr3, $vr3, $vr23
	vfmadd.d	$vr18, $vr28, $vr3, $vr18
	vld	$vr4, $sp, 144                  # 16-byte Folded Reload
	vfdiv.d	$vr28, $vr0, $vr4
	vld	$vr8, $sp, 1456                 # 16-byte Folded Reload
	vfdiv.d	$vr29, $vr7, $vr8
	vfsub.d	$vr28, $vr28, $vr29
	vfmadd.d	$vr1, $vr1, $vr28, $vr18
	vld	$vr28, $sp, 1056                # 16-byte Folded Reload
	fdiv.d	$ft5, $fs4, $ft5
	vld	$vr18, $sp, 1072                # 16-byte Folded Reload
	fdiv.d	$ft6, $ft10, $ft6
	fsub.d	$ft5, $ft5, $ft6
	fmul.d	$ft5, $fa6, $ft5
	vld	$vr7, $sp, 912                  # 16-byte Folded Reload
	fdiv.d	$ft3, $fa7, $fs7
	vld	$vr5, $sp, 960                  # 16-byte Folded Reload
	fdiv.d	$ft2, $fa5, $ft2
	fsub.d	$ft2, $ft3, $ft2
	vextrins.d	$vr7, $vr28, 16
	vextrins.d	$vr5, $vr18, 16
	vfdiv.d	$vr11, $vr7, $vr20
	vori.b	$vr18, $vr7, 0
	vfdiv.d	$vr14, $vr5, $vr21
	vfsub.d	$vr11, $vr11, $vr14
	fneg.d	$ft2, $ft2
	vextrins.d	$vr10, $vr13, 16
	vfmadd.d	$vr3, $vr11, $vr3, $vr10
	vfdiv.d	$vr7, $vr7, $vr4
	vfdiv.d	$vr8, $vr5, $vr8
	vfsub.d	$vr7, $vr7, $vr8
	vpackev.d	$vr8, $vr23, $vr17
	vfmadd.d	$vr3, $vr8, $vr7, $vr3
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vfdiv.d	$vr7, $vr2, $vr4
	vld	$vr6, $sp, 32                   # 16-byte Folded Reload
	vfdiv.d	$vr8, $vr15, $vr6
	vfsub.d	$vr7, $vr7, $vr8
	vfmadd.d	$vr7, $vr17, $vr7, $vr30
	vfdiv.d	$vr2, $vr19, $vr4
	vfdiv.d	$vr4, $vr12, $vr6
	vfsub.d	$vr2, $vr2, $vr4
	vfmadd.d	$vr2, $vr17, $vr2, $vr9
	vld	$vr6, $sp, 944                  # 16-byte Folded Reload
	vfdiv.d	$vr4, $vr0, $vr6
	vld	$vr9, $sp, 928                  # 16-byte Folded Reload
	vfdiv.d	$vr8, $vr22, $vr9
	vfsub.d	$vr4, $vr4, $vr8
	vreplvei.d	$vr8, $vr17, 1
	vfmadd.d	$vr1, $vr8, $vr4, $vr1
	vfdiv.d	$vr0, $vr18, $vr6
	vfdiv.d	$vr4, $vr5, $vr9
	vfsub.d	$vr0, $vr0, $vr4
	vfmadd.d	$vr0, $vr8, $vr0, $vr3
	vld	$vr3, $sp, 1168                 # 16-byte Folded Reload
	fld.d	$fa4, $sp, 984                  # 8-byte Folded Reload
	fmul.d	$fa3, $fa3, $fa4
	vld	$vr5, $sp, 1232                 # 16-byte Folded Reload
	vld	$vr4, $sp, 1200                 # 16-byte Folded Reload
	vextrins.d	$vr5, $vr4, 16
	vld	$vr4, $sp, 1264                 # 16-byte Folded Reload
	vld	$vr6, $sp, 1248                 # 16-byte Folded Reload
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr5, $vr6
	vld	$vr6, $sp, 1184                 # 16-byte Folded Reload
	vori.b	$vr5, $vr6, 0
	vextrins.d	$vr5, $vr3, 16
	vfmul.d	$vr3, $vr4, $vr6
	vfadd.d	$vr4, $vr4, $vr5
	vshuf4i.d	$vr3, $vr4, 12
	vld	$vr4, $sp, 1216                 # 16-byte Folded Reload
	vld	$vr6, $sp, 992                  # 16-byte Folded Reload
	vextrins.d	$vr4, $vr6, 16
	vfsub.d	$vr3, $vr3, $vr4
	vld	$vr10, $sp, 1376                # 16-byte Folded Reload
	vreplvei.d	$vr4, $vr10, 1
	vld	$vr6, $sp, 1280                 # 16-byte Folded Reload
	vfmul.d	$vr6, $vr4, $vr6
	vfadd.d	$vr3, $vr3, $vr6
	vld	$vr6, $sp, 1296                 # 16-byte Folded Reload
	vfsub.d	$vr3, $vr3, $vr6
	vld	$vr6, $sp, 1392                 # 16-byte Folded Reload
	vreplvei.d	$vr6, $vr6, 0
	vld	$vr8, $sp, 1536                 # 16-byte Folded Reload
	vfmul.d	$vr8, $vr6, $vr8
	vfadd.d	$vr3, $vr3, $vr8
	vld	$vr8, $sp, 1440                 # 16-byte Folded Reload
	vfsub.d	$vr3, $vr3, $vr8
	vld	$vr8, $sp, 1040                 # 16-byte Folded Reload
	vfadd.d	$vr3, $vr3, $vr8
	vfsub.d	$vr3, $vr3, $vr25
	vld	$vr8, $sp, 1152                 # 16-byte Folded Reload
	fmul.d	$ft0, $ft0, $fs2
	vld	$vr9, $sp, 1120                 # 16-byte Folded Reload
	vld	$vr11, $sp, 1104                # 16-byte Folded Reload
	vfmul.d	$vr9, $vr9, $vr11
	vextrins.d	$vr11, $vr8, 16
	vld	$vr8, $sp, 1136                 # 16-byte Folded Reload
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr11, $sp, 1360                # 16-byte Folded Reload
	vld	$vr12, $sp, 1088                # 16-byte Folded Reload
	vextrins.d	$vr11, $vr12, 0
	vextrins.d	$vr5, $vr27, 16
	vfmul.d	$vr5, $vr11, $vr5
	vfsub.d	$vr8, $vr8, $vr5
	vfadd.d	$vr5, $vr9, $vr5
	vshuf4i.d	$vr5, $vr8, 12
	vreplvei.d	$vr8, $vr10, 0
	vfmul.d	$vr8, $vr8, $vr24
	vfadd.d	$vr5, $vr5, $vr8
	vfmul.d	$vr4, $vr4, $vr16
	vfsub.d	$vr4, $vr5, $vr4
	vld	$vr5, $sp, 1488                 # 16-byte Folded Reload
	vreplvei.d	$vr5, $vr5, 0
	vfmul.d	$vr5, $vr5, $vr7
	vfadd.d	$vr4, $vr4, $vr5
	vfmul.d	$vr2, $vr6, $vr2
	vfsub.d	$vr2, $vr4, $vr2
	vfadd.d	$vr1, $vr2, $vr1
	vfsub.d	$vr0, $vr1, $vr0
	vfadd.d	$vr0, $vr3, $vr0
	b	.LBB2_38
.LBB2_37:
	fadd.d	$fa0, $ft12, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fs2, $fa2, $fs3
	fmov.d	$fa0, $fs2
	vst	$vr14, $sp, 1392                # 16-byte Folded Spill
	fst.d	$ft7, $sp, 1504                 # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fmul.d	$fs3, $fa0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1000
	fdiv.d	$fa1, $fs5, $fa1
	vld	$vr2, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa2
	vld	$vr2, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa2, $fs4, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	fld.d	$fs7, $a0, %pc_lo12(.LCPI2_12)
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs7
	vst	$vr0, $sp, 1360                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 1264                 # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 984                  # 8-byte Folded Spill
	fld.d	$fs6, $s1, %pc_lo12(rootN)
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 992                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 944                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 960                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 912                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1440                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 848                  # 16-byte Folded Spill
	vldi	$vr0, -1016
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 864                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 880                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 800                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1216                 # 16-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fs5, $fs6, $fa0
	vld	$vr0, $sp, 1440                 # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa0
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1200                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1168                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1184                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1152                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1136                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1104                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 1504                 # 8-byte Folded Reload
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	vst	$vr1, $sp, 1328                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1312                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fs4, $fa0
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs7
	vst	$vr0, $sp, 1280                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 784                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1408                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 832                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1424                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 816                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1536                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1424                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 896                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1024                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1008                 # 16-byte Folded Spill
	vldi	$vr0, -896
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 1040                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1072                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1056                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1120                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1088                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1248                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	vld	$vr23, $sp, 1536                # 16-byte Folded Reload
	fmul.d	$fa2, $ft15, $ft15
	fld.d	$fa0, $sp, 984                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $fa2
	vld	$vr22, $sp, 1520                # 16-byte Folded Reload
	fmul.d	$fa4, $ft14, $ft14
	fld.d	$fa0, $sp, 1264                 # 8-byte Folded Reload
	fdiv.d	$fa3, $fa0, $fa4
	fsub.d	$fa1, $fa1, $fa3
	fld.d	$fa6, $sp, 1456                 # 8-byte Folded Reload
	fld.d	$fa0, $sp, 992                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fst.d	$fa0, $sp, 1264                 # 8-byte Folded Spill
	fld.d	$fa0, $sp, 960                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $fa2
	fld.d	$fa0, $sp, 944                  # 8-byte Folded Reload
	fdiv.d	$fa5, $fa0, $fa4
	fsub.d	$fa1, $fa1, $fa5
	fld.d	$fa0, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	vst	$vr0, $sp, 1456                 # 16-byte Folded Spill
	fmul.d	$fa5, $ft14, $fa4
	fmul.d	$fa6, $ft15, $fa2
	vld	$vr12, $sp, 848                 # 16-byte Folded Reload
	fdiv.d	$fa7, $ft4, $fa6
	vld	$vr3, $sp, 912                  # 16-byte Folded Reload
	fdiv.d	$ft0, $fa3, $fa5
	fsub.d	$fa7, $fa7, $ft0
	fdiv.d	$ft0, $ft4, $fa2
	fdiv.d	$ft1, $fa3, $fa4
	fsub.d	$ft0, $ft0, $ft1
	fneg.d	$ft0, $ft0
	fld.d	$ft5, $sp, 864                  # 8-byte Folded Reload
	fmul.d	$ft0, $ft5, $ft0
	vldi	$vr9, -1024
	fmadd.d	$fa7, $fa7, $ft1, $ft0
	vld	$vr1, $sp, 800                  # 16-byte Folded Reload
	fdiv.d	$ft0, $fa1, $fa6
	vld	$vr0, $sp, 880                  # 16-byte Folded Reload
	fdiv.d	$ft2, $fa0, $fa5
	fsub.d	$ft0, $ft0, $ft2
	fdiv.d	$ft2, $fa1, $fa2
	fdiv.d	$ft3, $fa0, $fa4
	fsub.d	$ft2, $ft2, $ft3
	fneg.d	$ft2, $ft2
	fmul.d	$ft2, $ft5, $ft2
	fmadd.d	$ft2, $ft0, $ft1, $ft2
	vld	$vr9, $sp, 784                  # 16-byte Folded Reload
	vextrins.d	$vr9, $vr12, 16
	vld	$vr12, $sp, 1408                # 16-byte Folded Reload
	vextrins.d	$vr12, $vr3, 16
	vori.b	$vr8, $vr2, 0
	vextrins.d	$vr8, $vr23, 16
	vfdiv.d	$vr11, $vr9, $vr8
	vori.b	$vr9, $vr4, 0
	vextrins.d	$vr9, $vr22, 16
	vfdiv.d	$vr12, $vr12, $vr9
	vfsub.d	$vr11, $vr11, $vr12
	vld	$vr13, $sp, 832                 # 16-byte Folded Reload
	vextrins.d	$vr13, $vr7, 16
	vldi	$vr7, -928
	vld	$vr3, $sp, 1440                 # 16-byte Folded Reload
	vpackev.d	$vr12, $vr3, $vr7
	vori.b	$vr7, $vr3, 0
	vfmadd.d	$vr3, $vr12, $vr11, $vr13
	vst	$vr3, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr3, $sp, 816                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr1, 16
	vld	$vr1, $sp, 1424                 # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vfdiv.d	$vr11, $vr3, $vr8
	vfdiv.d	$vr13, $vr1, $vr9
	vfsub.d	$vr11, $vr11, $vr13
	vld	$vr0, $sp, 896                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr10, 16
	vfmadd.d	$vr10, $vr12, $vr11, $vr0
	vld	$vr21, $sp, 1216                # 16-byte Folded Reload
	fdiv.d	$ft3, $ft13, $fa6
	vld	$vr20, $sp, 1232                # 16-byte Folded Reload
	fdiv.d	$ft4, $ft12, $fa5
	fsub.d	$ft3, $ft3, $ft4
	vld	$vr1, $sp, 1168                 # 16-byte Folded Reload
	fdiv.d	$ft4, $fa1, $fa6
	vld	$vr30, $sp, 1200                # 16-byte Folded Reload
	fdiv.d	$ft5, $fs6, $fa5
	fsub.d	$ft6, $ft4, $ft5
	fmul.d	$ft4, $ft14, $fa5
	fmul.d	$ft5, $ft15, $fa6
	vld	$vr28, $sp, 1152                # 16-byte Folded Reload
	fdiv.d	$ft7, $fs4, $ft5
	vld	$vr27, $sp, 1184                # 16-byte Folded Reload
	fdiv.d	$ft8, $fs3, $ft4
	fsub.d	$ft7, $ft7, $ft8
	vld	$vr26, $sp, 1104                # 16-byte Folded Reload
	fdiv.d	$ft8, $fs2, $ft5
	vld	$vr25, $sp, 1136                # 16-byte Folded Reload
	fdiv.d	$ft9, $fs1, $ft4
	fsub.d	$ft10, $ft8, $ft9
	fneg.d	$ft3, $ft3
	fmul.d	$ft11, $fs5, $ft3
	fneg.d	$ft3, $ft6
	fmul.d	$ft9, $fs5, $ft3
	fneg.d	$ft3, $ft7
	fmul.d	$ft8, $fs5, $ft3
	fneg.d	$ft3, $ft10
	fmul.d	$ft3, $fs5, $ft3
	vld	$vr3, $sp, 1008                 # 16-byte Folded Reload
	fdiv.d	$ft6, $fa3, $fa6
	vld	$vr29, $sp, 1024                # 16-byte Folded Reload
	fdiv.d	$ft7, $fs5, $fa5
	fsub.d	$ft6, $ft6, $ft7
	vextrins.d	$vr3, $vr21, 16
	vextrins.d	$vr29, $vr20, 16
	vori.b	$vr18, $vr2, 0
	vextrins.d	$vr18, $vr13, 16
	vori.b	$vr20, $vr4, 0
	vextrins.d	$vr20, $vr12, 16
	vfdiv.d	$vr15, $vr3, $vr18
	vfdiv.d	$vr21, $vr29, $vr20
	vfsub.d	$vr21, $vr15, $vr21
	vldi	$vr15, -1008
	vld	$vr0, $sp, 1040                 # 16-byte Folded Reload
	vpackev.d	$vr15, $vr15, $vr0
	vextrins.d	$vr14, $vr19, 16
	vfmadd.d	$vr14, $vr21, $vr15, $vr14
	vld	$vr31, $sp, 1056                # 16-byte Folded Reload
	fdiv.d	$ft11, $fs7, $fa6
	vld	$vr0, $sp, 1072                 # 16-byte Folded Reload
	fdiv.d	$ft13, $fa0, $fa5
	fsub.d	$ft11, $ft11, $ft13
	vextrins.d	$vr31, $vr1, 16
	vextrins.d	$vr0, $vr30, 16
	vfdiv.d	$vr18, $vr31, $vr18
	vfdiv.d	$vr20, $vr0, $vr20
	vfsub.d	$vr18, $vr18, $vr20
	vextrins.d	$vr19, $vr17, 16
	vfmadd.d	$vr17, $vr18, $vr15, $vr19
	vld	$vr20, $sp, 1088                # 16-byte Folded Reload
	fdiv.d	$ft10, $ft12, $ft5
	vld	$vr1, $sp, 1120                 # 16-byte Folded Reload
	fdiv.d	$ft11, $fa1, $ft4
	fsub.d	$ft10, $ft10, $ft11
	vextrins.d	$vr20, $vr28, 16
	vori.b	$vr28, $vr20, 0
	fmul.d	$ft11, $ft15, $ft5
	vori.b	$vr20, $vr6, 0
	vextrins.d	$vr20, $vr19, 16
	vextrins.d	$vr1, $vr27, 16
	fmul.d	$ft11, $ft14, $ft4
	vori.b	$vr21, $vr5, 0
	vextrins.d	$vr21, $vr19, 16
	vfdiv.d	$vr19, $vr28, $vr20
	vfdiv.d	$vr22, $vr1, $vr21
	vfsub.d	$vr19, $vr19, $vr22
	vextrins.d	$vr18, $vr16, 16
	vfmadd.d	$vr16, $vr19, $vr15, $vr18
	fdiv.d	$ft5, $fs0, $ft5
	vld	$vr19, $sp, 1248                # 16-byte Folded Reload
	fdiv.d	$ft4, $ft11, $ft4
	fsub.d	$ft4, $ft5, $ft4
	vextrins.d	$vr24, $vr26, 16
	vextrins.d	$vr19, $vr25, 16
	vfdiv.d	$vr13, $vr24, $vr20
	vfdiv.d	$vr18, $vr19, $vr21
	vfsub.d	$vr13, $vr13, $vr18
	vextrins.d	$vr12, $vr11, 16
	vfmadd.d	$vr11, $vr13, $vr15, $vr12
	vextrins.d	$vr2, $vr6, 16
	vextrins.d	$vr4, $vr5, 16
	vshuf4i.d	$vr8, $vr0, 1
	vfdiv.d	$vr5, $vr3, $vr8
	vshuf4i.d	$vr9, $vr0, 1
	vfdiv.d	$vr6, $vr29, $vr9
	vfsub.d	$vr5, $vr5, $vr6
	vld	$vr6, $sp, 1344                 # 16-byte Folded Reload
	vextrins.d	$vr7, $vr6, 16
	vfmadd.d	$vr5, $vr7, $vr5, $vr14
	vfdiv.d	$vr6, $vr31, $vr8
	vfdiv.d	$vr8, $vr0, $vr9
	vfsub.d	$vr6, $vr6, $vr8
	vfmadd.d	$vr6, $vr7, $vr6, $vr17
	vfdiv.d	$vr8, $vr28, $vr2
	vfdiv.d	$vr9, $vr1, $vr4
	vfsub.d	$vr8, $vr8, $vr9
	vfmadd.d	$vr8, $vr7, $vr8, $vr16
	vfdiv.d	$vr0, $vr24, $vr2
	vfdiv.d	$vr2, $vr19, $vr4
	vfsub.d	$vr0, $vr0, $vr2
	vfmadd.d	$vr0, $vr7, $vr0, $vr11
	fld.d	$fa2, $sp, 1504                 # 8-byte Folded Reload
	fld.d	$fa1, $sp, 1264                 # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa1
	vld	$vr3, $sp, 1376                 # 16-byte Folded Reload
	vld	$vr4, $sp, 1312                 # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	vld	$vr3, $sp, 1360                 # 16-byte Folded Reload
	vld	$vr9, $sp, 1296                 # 16-byte Folded Reload
	vextrins.d	$vr9, $vr3, 16
	vfsub.d	$vr3, $vr4, $vr9
	vld	$vr9, $sp, 1328                 # 16-byte Folded Reload
	vori.b	$vr4, $vr9, 0
	vextrins.d	$vr4, $vr2, 16
	vfadd.d	$vr2, $vr3, $vr4
	vfmul.d	$vr3, $vr3, $vr9
	vshuf4i.d	$vr3, $vr2, 12
	vld	$vr2, $sp, 1280                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1456                 # 16-byte Folded Reload
	vextrins.d	$vr2, $vr1, 16
	vfsub.d	$vr1, $vr3, $vr2
	vld	$vr2, $sp, 1392                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vld	$vr3, $sp, 1408                 # 16-byte Folded Reload
	vfmul.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vfsub.d	$vr1, $vr1, $vr10
	vld	$vr2, $sp, 1488                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr2, $vr5
	vfadd.d	$vr1, $vr1, $vr2
	vfsub.d	$vr1, $vr1, $vr6
	vfadd.d	$vr1, $vr1, $vr8
	vfsub.d	$vr0, $vr1, $vr0
.LBB2_38:
	vreplvei.d	$vr1, $vr0, 1
	vfdiv.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr0, $vr0, 0
	fld.d	$fa1, $sp, 1480                 # 8-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $fp, 0
	fld.d	$fs7, $sp, 1552                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1560                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1568                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1576                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1584                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1592                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1600                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1608                 # 8-byte Folded Reload
	ld.d	$s3, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1640                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1648                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1656                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1664
	ret
.LBB2_39:
	move	$a3, $zero
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Nterm2
.LCPI4_0:
	.dword	0x3fe5555555555555              # double 0.66666666666666663
	.text
	.globl	Nterm2
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
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa5, $a0, %pc_lo12(.LCPI4_0)
	fsub.d	$fa0, $fa0, $fa4
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa5, $fa0
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function NNterm2
.LCPI13_0:
	.dword	0xbfe5555555555555              # double -0.66666666666666663
	.text
	.globl	NNterm2
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
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI13_0)
	fdiv.d	$fa5, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa5
	fmul.d	$fa0, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa4, $fa0
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function NNterm4
.LCPI15_0:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
	.text
	.globl	NNterm4
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
	pcalau12i	$a0, %pc_hi20(.LCPI15_0)
	fld.d	$fa6, $a0, %pc_lo12(.LCPI15_0)
	fsub.d	$fa1, $fa4, $fa1
	fmul.d	$fa4, $fa3, $fa5
	fmadd.d	$fa1, $fa4, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa6
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function NNterm5
.LCPI16_0:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
	.text
	.globl	NNterm5
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
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.d	$ft0, $a0, %pc_lo12(.LCPI16_0)
	fsub.d	$fa2, $fa6, $fa2
	fmul.d	$fa6, $fa4, $fa7
	fmadd.d	$fa2, $fa6, $fa2, $fa3
	fmul.d	$fa3, $fa4, $ft0
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DDterm4
.LCPI20_0:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
	.text
	.globl	DDterm4
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
	pcalau12i	$a0, %pc_hi20(.LCPI20_0)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI20_0)
	vldi	$vr5, -896
	fmul.d	$fa5, $fa3, $fa5
	fmadd.d	$fa1, $fa5, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa4
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function getptree
.LCPI21_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	getptree
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
	pcalau12i	$a0, %pc_hi20(.LCPI21_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI21_0)
	fdiv.d	$fa1, $fs1, $fs2
	fcmp.clt.d	$fcc0, $fs1, $fa0
	fsel	$fa0, $fa1, $fs0, $fcc0
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
