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
	.dword	0xbf847ae147ae147b              # double -0.01
.LCPI2_3:
	.dword	0x4040000000000000              # double 32
.LCPI2_4:
	.dword	0xc042000000000000              # double -36
.LCPI2_5:
	.dword	0x3fd999999999999a              # double 0.40000000000000002
.LCPI2_6:
	.dword	0x4044000000000000              # double 40
.LCPI2_7:
	.dword	0xc04e000000000000              # double -60
.LCPI2_8:
	.dword	0x404e000000000000              # double 60
.LCPI2_9:
	.dword	0xc056800000000000              # double -90
.LCPI2_10:
	.dword	0x3fe5555555555555              # double 0.66666666666666663
.LCPI2_11:
	.dword	0x3fc5555555555555              # double 0.16666666666666666
.LCPI2_12:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
.LCPI2_13:
	.dword	0xbfe5555555555555              # double -0.66666666666666663
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_14:
	.dword	0xc000000000000000              # double -2
	.dword	0xc010000000000000              # double -4
.LCPI2_15:
	.dword	0xc010000000000000              # double -4
	.dword	0x4000000000000000              # double 2
	.text
	.globl	findratio
	.p2align	5
	.type	findratio,@function
findratio:                              # @findratio
# %bb.0:
	addi.d	$sp, $sp, -1648
	st.d	$ra, $sp, 1640                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1600                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1592                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1584                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1576                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1568                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1560                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1552                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1544                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1536                 # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(N)
	fld.d	$fs0, $s0, %pc_lo12(N)
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	move	$fp, $a1
	bceqz	$fcc0, .LBB2_33
.LBB2_1:                                # %.split
	move	$a4, $zero
	pcalau12i	$s1, %pc_hi20(rootN)
	fst.d	$fa0, $s1, %pc_lo12(rootN)
	vldi	$vr1, -784
	fadd.d	$ft12, $fa0, $fa1
	vldi	$vr2, -1000
	fmul.d	$fa4, $fs0, $fa2
	vldi	$vr2, -1024
	vldi	$vr3, -864
	fmadd.d	$fa5, $fa0, $fa3, $fa2
	vldi	$vr2, -856
	fmul.d	$fa2, $fa0, $fa2
	vldi	$vr3, -984
	fmadd.d	$fa2, $fs0, $fa3, $fa2
	fadd.d	$fa6, $fa2, $fa1
	vldi	$vr1, -880
	fmul.d	$fa1, $fa0, $fa1
	fmadd.d	$fa1, $fs0, $fa3, $fa1
	vldi	$vr2, -896
	fadd.d	$fa7, $fa1, $fa2
	pcalau12i	$a1, %pc_hi20(CC)
	fld.d	$fa2, $a1, %pc_lo12(CC)
	pcalau12i	$a5, %pc_hi20(.LCPI2_0)
	fld.d	$ft0, $a5, %pc_lo12(.LCPI2_0)
	ori	$a6, $zero, 10
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_1)
	ori	$a7, $zero, 100
	lu12i.w	$a1, 244
	ori	$a1, $a1, 575
	movgr2fr.d	$fa1, $zero
                                        # implicit-def: $r12
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	move	$a2, $a4
	bstrpick.d	$a3, $a4, 31, 0
	sltui	$a4, $a4, 1
	maskeqz	$t1, $a6, $a4
	movgr2fr.d	$ft1, $a3
	ffint.d.l	$ft2, $ft1
	move	$a4, $t0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=2
	addi.w	$t1, $a3, 1
	move	$a4, $t0
	beq	$t1, $a7, .LBB2_9
.LBB2_4:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $t1
	bstrpick.d	$t0, $t1, 31, 0
	movgr2fr.d	$ft1, $t0
	ffint.d.l	$ft1, $ft1
	fdiv.d	$ft1, $ft1, $fa3
	fadd.d	$ft1, $ft1, $ft2
	fcmp.clt.d	$fcc0, $ft12, $ft1
	bcnez	$fcc0, .LBB2_11
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=2
	fdiv.d	$ft3, $ft1, $fa4
	fmul.d	$ft4, $ft1, $ft1
	fmul.d	$ft5, $fa5, $ft4
	fmadd.d	$ft4, $ft4, $ft1, $ft5
	fmadd.d	$ft4, $fa6, $ft1, $ft4
	fadd.d	$ft4, $fa7, $ft4
	fmul.d	$ft3, $ft3, $ft4
	fcmp.cule.d	$fcc0, $ft3, $fa2
	movcf2gr	$t0, $fcc0
	sub.d	$t0, $zero, $t0
	ori	$t0, $t0, 1
	bnez	$a2, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=2
	beq	$a3, $a6, .LBB2_3
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=2
	addi.w	$t1, $a4, 0
	fsub.d	$ft3, $ft3, $fa2
	bne	$t0, $t1, .LBB2_12
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=2
	fneg.d	$ft0, $ft3
	fcmp.cult.d	$fcc0, $ft3, $fa1
	fsel	$ft0, $ft3, $ft0, $fcc0
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_9:                                # %.loopexit228
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.w	$a4, $a2, 1
	bltu	$a2, $a1, .LBB2_2
# %bb.10:
	fmov.d	$ft11, $ft1
	move	$a4, $t0
	b	.LBB2_13
.LBB2_11:
	fmov.d	$ft11, $ft1
	b	.LBB2_13
.LBB2_12:
	pcalau12i	$a6, %pc_hi20(.LCPI2_2)
	fld.d	$fa5, $a6, %pc_lo12(.LCPI2_2)
	fabs.d	$fa6, $ft3
	fadd.d	$fa5, $ft1, $fa5
	fcmp.cult.d	$fcc0, $fa6, $ft0
	fsel	$ft11, $fa5, $ft1, $fcc0
.LBB2_13:                               # %.loopexit228.thread
	fcmp.cule.d	$fcc0, $ft1, $ft12
	fmul.d	$ft13, $ft12, $ft12
	bcnez	$fcc0, .LBB2_26
# %bb.14:                               # %.loopexit228.thread
	bltu	$a1, $a2, .LBB2_26
# %bb.15:                               # %.lr.ph265
	frecip.d	$fa4, $fa4
	vldi	$vr5, -896
	vldi	$vr6, -992
	fmadd.d	$fa5, $fa0, $fa6, $fa5
	vldi	$vr6, -840
	fmul.d	$fa7, $fs0, $fa6
	vldi	$vr6, -984
	pcalau12i	$a6, %pc_hi20(.LCPI2_3)
	fld.d	$ft0, $a6, %pc_lo12(.LCPI2_3)
	fmadd.d	$fa6, $fa0, $fa6, $fa7
	vldi	$vr9, -912
	fadd.d	$fa6, $fa6, $ft1
	fmul.d	$ft4, $fs0, $ft0
	fmadd.d	$fa7, $ft4, $fa0, $fa7
	vldi	$vr11, -880
	fmadd.d	$ft0, $fa0, $ft3, $fa7
	vldi	$vr7, -1024
	fadd.d	$ft0, $ft0, $fa7
	fmul.d	$ft1, $ft12, $ft13
	pcalau12i	$a6, %pc_hi20(.LCPI2_4)
	fld.d	$ft5, $a6, %pc_lo12(.LCPI2_4)
	fmul.d	$ft2, $ft12, $ft1
	vldi	$vr14, -976
	fnmadd.d	$ft3, $fa0, $ft6, $ft3
	fmul.d	$ft5, $fs0, $ft5
	vldi	$vr14, -968
	fmadd.d	$ft6, $fa0, $ft6, $ft5
	fadd.d	$ft6, $ft6, $fa7
	fmadd.d	$ft4, $ft4, $fa0, $ft5
	vldi	$vr13, -1008
	fadd.d	$ft7, $ft4, $ft5
	fld.d	$ft4, $a5, %pc_lo12(.LCPI2_0)
	fneg.d	$ft5, $ft6
	fneg.d	$ft6, $ft7
	ori	$a5, $zero, 99
	move	$t0, $a3
	move	$a7, $a2
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_16:                               #   in Loop: Header=BB2_18 Depth=1
	move	$t1, $a4
.LBB2_17:                               # %.loopexit
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.w	$a7, $a6, 1
	move	$a4, $t1
	bgeu	$a6, $a1, .LBB2_26
.LBB2_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
	move	$a6, $a7
	sltu	$a7, $a2, $a7
	masknez	$a7, $t0, $a7
	blt	$a5, $a7, .LBB2_16
# %bb.19:                               # %.lr.ph
                                        #   in Loop: Header=BB2_18 Depth=1
	bstrpick.d	$t0, $a6, 31, 0
	movgr2fr.d	$ft7, $t0
	ffint.d.l	$ft7, $ft7
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_20:                               # %select.unfold
                                        #   in Loop: Header=BB2_21 Depth=2
	addi.w	$a7, $a7, 1
	ori	$t0, $zero, 100
	move	$a4, $t1
	beq	$a7, $t0, .LBB2_17
.LBB2_21:                               #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$ft8, $a7
	ffint.d.w	$ft8, $ft8
	fdiv.d	$ft8, $ft8, $fa3
	fadd.d	$ft11, $ft8, $ft7
	fmul.d	$ft8, $ft11, $ft11
	fmul.d	$ft9, $ft11, $ft8
	fmul.d	$ft10, $fa5, $ft9
	fneg.d	$ft9, $ft9
	fmadd.d	$ft9, $ft9, $ft11, $ft10
	fmadd.d	$ft8, $fa6, $ft8, $ft9
	fmadd.d	$ft8, $ft0, $ft11, $ft8
	fmadd.d	$ft8, $ft2, $fa7, $ft8
	fmadd.d	$ft8, $ft3, $ft1, $ft8
	fmadd.d	$ft8, $ft5, $ft13, $ft8
	fmadd.d	$ft8, $ft6, $ft12, $ft8
	fmul.d	$ft8, $fa4, $ft8
	fcmp.cule.d	$fcc0, $ft8, $fa2
	movcf2gr	$t0, $fcc0
	sub.d	$t0, $zero, $t0
	ori	$t1, $t0, 1
	bne	$a6, $a2, .LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=2
	beq	$a3, $a7, .LBB2_20
.LBB2_23:                               #   in Loop: Header=BB2_21 Depth=2
	addi.w	$a4, $a4, 0
	fsub.d	$ft8, $ft8, $fa2
	bne	$t1, $a4, .LBB2_25
# %bb.24:                               #   in Loop: Header=BB2_21 Depth=2
	fneg.d	$ft4, $ft8
	fcmp.cult.d	$fcc0, $ft8, $fa1
	fsel	$ft4, $ft8, $ft4, $fcc0
	b	.LBB2_20
.LBB2_25:                               # %.loopexit.thread
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_2)
	fabs.d	$fa4, $ft8
	fadd.d	$fa3, $ft11, $fa3
	fcmp.cult.d	$fcc0, $fa4, $ft4
	fsel	$ft11, $fa3, $ft11, $fcc0
.LBB2_26:                               # %.loopexit227
	fmul.d	$ft1, $ft11, $ft11
	fmul.d	$ft0, $ft11, $ft1
	fcmp.cult.d	$fcc0, $ft12, $ft11
	fmul.d	$fs7, $ft11, $ft0
	vst	$vr9, $sp, 1440                 # 16-byte Folded Spill
	fst.d	$ft0, $sp, 1480                 # 8-byte Folded Spill
	bceqz	$fcc0, .LBB2_28
# %bb.27:
	fmul.d	$fa3, $ft11, $fs7
	vldi	$vr4, -876
	vldi	$vr5, -978
	fmadd.d	$fa4, $fa0, $fa5, $fa4
	pcalau12i	$a1, %pc_hi20(.LCPI2_6)
	fld.d	$fa5, $a1, %pc_lo12(.LCPI2_6)
	fmul.d	$fa4, $fa4, $fs7
	vldi	$vr6, -896
	fmadd.d	$fa3, $fa3, $fa6, $fa4
	fmul.d	$fa4, $fs0, $fa5
	pcalau12i	$a1, %pc_hi20(.LCPI2_7)
	fld.d	$fa5, $a1, %pc_lo12(.LCPI2_7)
	vldi	$vr6, -962
	fmsub.d	$fa7, $fa0, $fa6, $fa4
	fmadd.d	$fa3, $fa7, $ft0, $fa3
	fmul.d	$fa5, $fs0, $fa5
	fmadd.d	$fa7, $fa4, $fa0, $fa5
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
	fmadd.d	$fa3, $fa7, $ft11, $fa3
	fmul.d	$fa7, $ft12, $ft13
	fmul.d	$ft1, $ft12, $fa7
	fmul.d	$ft2, $ft12, $ft1
	fmadd.d	$fa6, $fa0, $fa6, $ft0
	fneg.d	$ft1, $ft1
	fmul.d	$fa6, $fa6, $ft1
	vldi	$vr9, -1008
	pcalau12i	$a1, %pc_hi20(.LCPI2_8)
	fld.d	$ft3, $a1, %pc_lo12(.LCPI2_8)
	pcalau12i	$a1, %pc_hi20(.LCPI2_9)
	fld.d	$ft4, $a1, %pc_lo12(.LCPI2_9)
	fmadd.d	$fa6, $ft2, $ft1, $fa6
	fnmadd.d	$fa5, $fa0, $ft3, $fa5
	fmadd.d	$fa5, $fa5, $fa7, $fa6
	fmul.d	$fa6, $fs0, $ft4
	fmadd.d	$fa6, $fa4, $fa0, $fa6
	vldi	$vr7, -972
	fmadd.d	$fa6, $fa0, $fa7, $fa6
	vldi	$vr7, -988
	fadd.d	$fa6, $fa6, $fa7
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $ft13, $fa5
	vldi	$vr6, -834
	fmul.d	$fa6, $fs0, $fa6
	fmadd.d	$fa4, $fa4, $fa0, $fa6
	fmadd.d	$fa4, $fa0, $ft0, $fa4
	fadd.d	$fa4, $fa4, $ft1
	pcalau12i	$a1, %pc_hi20(.LCPI2_5)
	fld.d	$fa6, $a1, %pc_lo12(.LCPI2_5)
	fneg.d	$fa4, $fa4
	fmadd.d	$fa4, $fa4, $ft12, $fa5
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa3, $fa6
	vldi	$vr4, -1000
	fmul.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fs0, $fa2
	fdiv.d	$fa2, $fa3, $fa2
	b	.LBB2_29
.LBB2_28:
	vldi	$vr3, -1004
	vldi	$vr4, -850
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa3, $fa3, $ft0
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
	fmadd.d	$fa3, $fa4, $ft11, $fa3
	vldi	$vr4, -896
	vldi	$vr5, -988
	fmadd.d	$fa4, $fs0, $fa5, $fa4
	fadd.d	$fa3, $fa4, $fa3
	vldi	$vr4, -1000
	fmul.d	$fa2, $fa2, $fa4
	pcalau12i	$a1, %pc_hi20(.LCPI2_5)
	fld.d	$fa4, $a1, %pc_lo12(.LCPI2_5)
	fmul.d	$fa2, $fs0, $fa2
	fdiv.d	$fa2, $fa2, $ft11
	fdiv.d	$fa2, $fa3, $fa2
	fmul.d	$fa2, $fa2, $fa4
.LBB2_29:
	pcalau12i	$a1, %pc_hi20(.LCPI2_10)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_10)
	fst.d	$fa3, $sp, 1408                 # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $sp, 1432                 # 8-byte Folded Spill
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
	fcmp.cule.d	$fcc0, $ft11, $ft12
	vst	$vr3, $sp, 1520                 # 16-byte Folded Spill
	fmul.d	$fs0, $fa3, $fa0
	vst	$vr19, $sp, 1456                # 16-byte Folded Spill
	vst	$vr2, $sp, 1504                 # 16-byte Folded Spill
	vldi	$vr0, -784
	bcnez	$fcc0, .LBB2_31
# %bb.30:
	fadd.d	$fa0, $ft12, $fa0
	fneg.d	$fs2, $fa0
	fst.d	$fs2, $sp, 928                  # 8-byte Folded Spill
	fmul.d	$fs3, $fa2, $fs2
	fmov.d	$fa0, $fs3
	vst	$vr20, $sp, 1312                # 16-byte Folded Spill
	vst	$vr21, $sp, 1328                # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fmul.d	$fs2, $fa0, $fs2
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 1312                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	fmul.d	$fa1, $fa3, $fa1
	vst	$vr1, $sp, 1296                 # 16-byte Folded Spill
	fmul.d	$fa1, $fa3, $fa1
	vldi	$vr2, -1000
	fdiv.d	$fa2, $fa1, $fa2
	fst.d	$fa2, $sp, 1488                 # 8-byte Folded Spill
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	vst	$vr0, $sp, 1200                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI2_11)
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs5
	vst	$vr0, $sp, 1184                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 960                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	fld.d	$fs6, $s1, %pc_lo12(rootN)
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 952                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 136                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 880                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 128                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1392                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vldi	$vr0, -1016
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 672                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 720                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1392                 # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa0
	vst	$vr0, $sp, 1008                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 528                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 448                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 464                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 480                  # 16-byte Folded Spill
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
	vld	$vr1, $sp, 1296                 # 16-byte Folded Reload
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	vst	$vr1, $sp, 1168                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1152                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fs4, $fa0
	vst	$vr0, $sp, 1136                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs5
	vst	$vr0, $sp, 1120                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1216                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1216                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1232                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vldi	$vr0, -896
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 336                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 656                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 560                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1456                 # 16-byte Folded Reload
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs6, $fa0
	vld	$vr0, $sp, 1504                 # 16-byte Folded Reload
	fmul.d	$fs0, $fa0, $fs6
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fmul.d	$fs1, $fa0, $fs6
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -872
	fdiv.d	$fa1, $fs7, $fa1
	vld	$vr2, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa2
	vld	$vr2, $sp, 1504                 # 16-byte Folded Reload
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
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 1488                 # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs5, $fa0
	vst	$vr0, $sp, 1104                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 584                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 608                  # 8-byte Folded Spill
	fld.d	$fa2, $s1, %pc_lo12(rootN)
	vst	$vr2, $sp, 1488                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 616                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 440                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 496                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1488                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 504                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 832                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1280                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 752                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1488                 # 16-byte Folded Reload
	vldi	$vr1, -1016
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 800                  # 8-byte Folded Spill
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
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_12)
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1488                 # 16-byte Folded Reload
	vldi	$vr2, -1000
	fmul.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $sp, 312                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1280                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 704                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 992                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 976                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1040                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1024                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 1480                 # 8-byte Folded Reload
	vldi	$vr2, -872
	fdiv.d	$fa2, $fa1, $fa2
	vst	$vr2, $sp, 1088                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1072                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs3, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1056                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1248                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 368                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fld.d	$fa3, $s3, %pc_lo12(a)
	vst	$vr3, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1248                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1488                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 416                  # 16-byte Folded Spill
	fld.d	$fs3, $sp, 928                  # 8-byte Folded Reload
	fmul.d	$fs0, $fa3, $fs3
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1264                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 512                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr2, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1264                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1488                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	fmul.d	$fs1, $fa2, $fs6
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s2, %pc_lo12(c)
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 688                  # 16-byte Folded Spill
	fmul.d	$fs2, $fa1, $fs6
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 640                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 816                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1360                 # 16-byte Folded Reload
	fmul.d	$fs3, $fa0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 768                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 864                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 848                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 928                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 896                  # 16-byte Folded Spill
	vld	$vr7, $sp, 1360                 # 16-byte Folded Reload
	vori.b	$vr0, $vr7, 0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr1, 16
	vfmul.d	$vr9, $vr0, $vr0
	vori.b	$vr2, $vr0, 0
	vreplvei.d	$vr15, $vr9, 1
	fld.d	$fa0, $sp, 912                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $ft7
	vld	$vr6, $sp, 1344                 # 16-byte Folded Reload
	vori.b	$vr0, $vr6, 0
	vld	$vr3, $sp, 1504                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr3, 16
	vfmul.d	$vr8, $vr0, $vr0
	vori.b	$vr4, $vr0, 0
	vreplvei.d	$vr16, $vr8, 1
	fld.d	$fa0, $sp, 960                  # 8-byte Folded Reload
	fdiv.d	$fa3, $fa0, $ft8
	fsub.d	$fa1, $fa1, $fa3
	fld.d	$fa3, $sp, 1408                 # 8-byte Folded Reload
	fld.d	$fa0, $sp, 952                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fst.d	$fa0, $sp, 952                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 880                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $ft7
	fld.d	$fa0, $sp, 136                  # 8-byte Folded Reload
	fdiv.d	$fa5, $fa0, $ft8
	fsub.d	$fa1, $fa1, $fa5
	fld.d	$fa0, $sp, 128                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	vst	$vr0, $sp, 960                  # 16-byte Folded Spill
	vori.b	$vr0, $vr9, 0
	vori.b	$vr20, $vr9, 0
	vextrins.d	$vr0, $vr7, 0
	vori.b	$vr21, $vr7, 0
	vst	$vr0, $sp, 912                  # 16-byte Folded Spill
	vori.b	$vr1, $vr8, 0
	vori.b	$vr3, $vr8, 0
	vextrins.d	$vr1, $vr6, 0
	vst	$vr1, $sp, 880                  # 16-byte Folded Spill
	vfmul.d	$vr8, $vr2, $vr0
	vreplvei.d	$vr17, $vr8, 1
	vst	$vr8, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr7, $sp, 64                   # 16-byte Folded Reload
	fdiv.d	$ft3, $fa7, $ft9
	vfmul.d	$vr24, $vr4, $vr1
	vreplvei.d	$vr18, $vr24, 1
	vld	$vr1, $sp, 192                  # 16-byte Folded Reload
	fdiv.d	$ft4, $fa1, $ft10
	fsub.d	$ft3, $ft3, $ft4
	fdiv.d	$ft4, $fa7, $ft7
	fdiv.d	$ft5, $fa1, $ft8
	fsub.d	$ft4, $ft4, $ft5
	fneg.d	$ft4, $ft4
	fld.d	$ft1, $sp, 144                  # 8-byte Folded Reload
	fmul.d	$ft4, $ft1, $ft4
	vldi	$vr13, -1024
	fmadd.d	$ft3, $ft3, $ft5, $ft4
	vld	$vr5, $sp, 112                  # 16-byte Folded Reload
	fdiv.d	$ft4, $fa5, $ft9
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	fdiv.d	$ft6, $fa0, $ft10
	fsub.d	$ft4, $ft4, $ft6
	fdiv.d	$ft6, $fa5, $ft7
	fdiv.d	$ft11, $fa0, $ft8
	fsub.d	$ft6, $ft6, $ft11
	fneg.d	$ft6, $ft6
	fmul.d	$ft6, $ft1, $ft6
	fmadd.d	$ft4, $ft4, $ft5, $ft6
	vld	$vr9, $sp, 48                   # 16-byte Folded Reload
	vextrins.d	$vr9, $vr7, 16
	vld	$vr7, $sp, 1216                 # 16-byte Folded Reload
	vextrins.d	$vr7, $vr1, 16
	vori.b	$vr31, $vr20, 0
	vpackod.d	$vr1, $vr2, $vr20
	vfdiv.d	$vr13, $vr9, $vr1
	vori.b	$vr9, $vr1, 0
	vst	$vr1, $sp, 192                  # 16-byte Folded Spill
	vpackod.d	$vr10, $vr4, $vr3
	vfdiv.d	$vr14, $vr7, $vr10
	vst	$vr10, $sp, 144                 # 16-byte Folded Spill
	vfsub.d	$vr13, $vr13, $vr14
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr1, $vr11, 16
	vldi	$vr11, -928
	vld	$vr7, $sp, 1392                 # 16-byte Folded Reload
	vpackev.d	$vr14, $vr7, $vr11
	vfmadd.d	$vr1, $vr14, $vr13, $vr1
	vst	$vr1, $sp, 1216                 # 16-byte Folded Spill
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	vextrins.d	$vr7, $vr5, 16
	vld	$vr1, $sp, 1232                 # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vfdiv.d	$vr13, $vr7, $vr9
	vfdiv.d	$vr20, $vr1, $vr10
	vfsub.d	$vr13, $vr13, $vr20
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr12, 16
	vfmadd.d	$vr0, $vr14, $vr13, $vr0
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	vld	$vr9, $sp, 592                  # 16-byte Folded Reload
	fdiv.d	$ft5, $ft1, $ft9
	vld	$vr30, $sp, 672                 # 16-byte Folded Reload
	fdiv.d	$ft6, $fs6, $ft10
	fsub.d	$ft12, $ft5, $ft6
	vld	$vr11, $sp, 448                 # 16-byte Folded Reload
	fdiv.d	$ft5, $ft3, $ft9
	vld	$vr7, $sp, 528                  # 16-byte Folded Reload
	fdiv.d	$ft6, $fa7, $ft10
	fsub.d	$ft15, $ft5, $ft6
	vori.b	$vr13, $vr8, 0
	vextrins.d	$vr13, $vr21, 0
	vfmul.d	$vr21, $vr2, $vr13
	vori.b	$vr8, $vr2, 0
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	vori.b	$vr13, $vr24, 0
	vextrins.d	$vr13, $vr6, 0
	vfmul.d	$vr22, $vr4, $vr13
	vori.b	$vr5, $vr4, 0
	vst	$vr4, $sp, 32                   # 16-byte Folded Spill
	vreplvei.d	$vr19, $vr21, 1
	vld	$vr6, $sp, 464                  # 16-byte Folded Reload
	fdiv.d	$fs1, $fa6, $ft11
	vreplvei.d	$vr14, $vr22, 1
	vld	$vr1, $sp, 544                  # 16-byte Folded Reload
	fdiv.d	$fs2, $fa1, $ft6
	fsub.d	$fs1, $fs1, $fs2
	vld	$vr10, $sp, 384                 # 16-byte Folded Reload
	fdiv.d	$fs2, $ft2, $ft11
	vld	$vr13, $sp, 480                 # 16-byte Folded Reload
	fdiv.d	$fs3, $ft5, $ft6
	fsub.d	$fs4, $fs2, $fs3
	fneg.d	$ft12, $ft12
	fld.d	$fa0, $sp, 720                  # 8-byte Folded Reload
	fmul.d	$fs5, $fa0, $ft12
	fneg.d	$ft12, $ft15
	fmul.d	$fs3, $fa0, $ft12
	fneg.d	$ft12, $fs1
	fmul.d	$fs2, $fa0, $ft12
	fneg.d	$ft12, $fs4
	fmul.d	$fa0, $fa0, $ft12
	vst	$vr0, $sp, 720                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	fdiv.d	$ft15, $fa0, $ft9
	vld	$vr12, $sp, 208                 # 16-byte Folded Reload
	fdiv.d	$fs1, $ft4, $ft10
	fsub.d	$ft15, $ft15, $fs1
	vextrins.d	$vr0, $vr9, 16
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vextrins.d	$vr12, $vr30, 16
	vpackod.d	$vr28, $vr21, $vr31
	vori.b	$vr20, $vr31, 0
	vfdiv.d	$vr25, $vr0, $vr28
	vpackod.d	$vr30, $vr22, $vr3
	vori.b	$vr0, $vr3, 0
	vfdiv.d	$vr31, $vr12, $vr30
	vfsub.d	$vr31, $vr25, $vr31
	vldi	$vr25, -1008
	vld	$vr2, $sp, 224                  # 16-byte Folded Reload
	vpackev.d	$vr25, $vr25, $vr2
	vextrins.d	$vr23, $vr29, 16
	vfmadd.d	$vr23, $vr31, $vr25, $vr23
	vld	$vr9, $sp, 240                  # 16-byte Folded Reload
	fdiv.d	$fs5, $ft1, $ft9
	vld	$vr2, $sp, 256                  # 16-byte Folded Reload
	fdiv.d	$fs7, $fa2, $ft10
	fsub.d	$fs5, $fs5, $fs7
	vextrins.d	$vr9, $vr11, 16
	vextrins.d	$vr2, $vr7, 16
	vfdiv.d	$vr28, $vr9, $vr28
	vfdiv.d	$vr30, $vr2, $vr30
	vori.b	$vr7, $vr2, 0
	vfsub.d	$vr28, $vr28, $vr30
	vextrins.d	$vr29, $vr27, 16
	vfmadd.d	$vr27, $vr28, $vr25, $vr29
	vld	$vr4, $sp, 288                  # 16-byte Folded Reload
	fdiv.d	$fs4, $fa4, $ft11
	vld	$vr11, $sp, 336                 # 16-byte Folded Reload
	fdiv.d	$fs5, $ft3, $ft6
	fsub.d	$fs4, $fs4, $fs5
	vextrins.d	$vr4, $vr6, 16
	vextrins.d	$vr11, $vr1, 16
	vfmul.d	$vr21, $vr8, $vr21
	vfmul.d	$vr22, $vr5, $vr22
	vld	$vr8, $sp, 1408                 # 16-byte Folded Reload
	vpackod.d	$vr29, $vr21, $vr8
	vfdiv.d	$vr30, $vr4, $vr29
	vori.b	$vr2, $vr24, 0
	vpackod.d	$vr31, $vr22, $vr24
	vfdiv.d	$vr1, $vr11, $vr31
	vfsub.d	$vr1, $vr30, $vr1
	vextrins.d	$vr28, $vr26, 16
	vfmadd.d	$vr1, $vr1, $vr25, $vr28
	vld	$vr30, $sp, 560                 # 16-byte Folded Reload
	fdiv.d	$fs2, $fs6, $ft11
	vld	$vr6, $sp, 656                  # 16-byte Folded Reload
	fdiv.d	$fs4, $fa6, $ft6
	fsub.d	$fs2, $fs2, $fs4
	vextrins.d	$vr30, $vr10, 16
	vextrins.d	$vr6, $vr13, 16
	vfdiv.d	$vr28, $vr30, $vr29
	vfdiv.d	$vr29, $vr6, $vr31
	vfsub.d	$vr28, $vr28, $vr29
	vld	$vr3, $sp, 720                  # 16-byte Folded Reload
	vextrins.d	$vr26, $vr3, 16
	vfmadd.d	$vr26, $vr28, $vr25, $vr26
	vori.b	$vr24, $vr20, 0
	vori.b	$vr25, $vr20, 0
	vld	$vr3, $sp, 1520                 # 16-byte Folded Reload
	vextrins.d	$vr25, $vr3, 0
	vori.b	$vr5, $vr0, 0
	vori.b	$vr28, $vr0, 0
	vld	$vr3, $sp, 1504                 # 16-byte Folded Reload
	vextrins.d	$vr28, $vr3, 0
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vfdiv.d	$vr20, $vr0, $vr25
	vfdiv.d	$vr29, $vr12, $vr28
	vfsub.d	$vr20, $vr20, $vr29
	vld	$vr0, $sp, 1392                 # 16-byte Folded Reload
	vld	$vr3, $sp, 1008                 # 16-byte Folded Reload
	vextrins.d	$vr0, $vr3, 16
	vfmadd.d	$vr3, $vr0, $vr20, $vr23
	vst	$vr3, $sp, 1520                 # 16-byte Folded Spill
	vfdiv.d	$vr23, $vr9, $vr25
	vfdiv.d	$vr25, $vr7, $vr28
	vfsub.d	$vr23, $vr23, $vr25
	vfmadd.d	$vr3, $vr0, $vr23, $vr27
	vst	$vr3, $sp, 1504                 # 16-byte Folded Spill
	vpackod.d	$vr27, $vr8, $vr24
	vori.b	$vr9, $vr24, 0
	vfdiv.d	$vr25, $vr4, $vr27
	vpackod.d	$vr28, $vr2, $vr5
	vori.b	$vr10, $vr5, 0
	vori.b	$vr8, $vr2, 0
	vfdiv.d	$vr29, $vr11, $vr28
	vfsub.d	$vr25, $vr25, $vr29
	vfmadd.d	$vr1, $vr0, $vr25, $vr1
	vst	$vr1, $sp, 1392                 # 16-byte Folded Spill
	vfdiv.d	$vr1, $vr30, $vr27
	vfdiv.d	$vr27, $vr6, $vr28
	vfsub.d	$vr1, $vr1, $vr27
	vfmadd.d	$vr26, $vr0, $vr1, $vr26
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_13)
	fld.d	$fa0, $sp, 608                  # 8-byte Folded Reload
	fdiv.d	$fs3, $fa0, $ft7
	fld.d	$fa0, $sp, 584                  # 8-byte Folded Reload
	fdiv.d	$fs4, $fa0, $ft8
	fsub.d	$fs3, $fs3, $fs4
	fld.d	$fa0, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$fs4, $fs3, $fa1, $fa0
	fld.d	$fa0, $sp, 496                  # 8-byte Folded Reload
	fdiv.d	$fs3, $fa0, $ft7
	fld.d	$fa0, $sp, 440                  # 8-byte Folded Reload
	fdiv.d	$fs5, $fa0, $ft8
	fsub.d	$fs3, $fs3, $fs5
	fld.d	$fa0, $sp, 504                  # 8-byte Folded Reload
	fmadd.d	$fs3, $fs3, $fa1, $fa0
	vld	$vr20, $sp, 272                 # 16-byte Folded Reload
	fdiv.d	$fa1, $ft12, $ft11
	vld	$vr12, $sp, 320                 # 16-byte Folded Reload
	fdiv.d	$fs5, $ft4, $ft6
	fsub.d	$fa1, $fa1, $fs5
	fdiv.d	$fs5, $ft12, $ft9
	fdiv.d	$fs6, $ft4, $ft10
	fsub.d	$fs5, $fs5, $fs6
	fld.d	$fa6, $sp, 312                  # 8-byte Folded Reload
	fmul.d	$fs5, $fa6, $fs5
	vldi	$vr31, -880
	fmadd.d	$fs6, $fa1, $fs7, $fs5
	vld	$vr7, $sp, 352                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa7, $ft11
	vori.b	$vr13, $vr19, 0
	vld	$vr23, $sp, 400                 # 16-byte Folded Reload
	fdiv.d	$fs5, $ft15, $ft6
	fsub.d	$fa1, $fa1, $fs5
	fdiv.d	$fs5, $fa7, $ft9
	fdiv.d	$fa3, $ft15, $ft10
	fsub.d	$fa3, $fs5, $fa3
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fs5, $fa1, $fs7, $fa3
	vld	$vr2, $sp, 752                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $ft9
	vld	$vr0, $sp, 832                  # 16-byte Folded Reload
	fdiv.d	$fa3, $fa0, $ft10
	fsub.d	$fa1, $fa1, $fa3
	fdiv.d	$fa3, $fa2, $ft7
	fdiv.d	$fs7, $fa0, $ft8
	vori.b	$vr25, $vr0, 0
	fsub.d	$fa3, $fa3, $fs7
	fld.d	$fa4, $sp, 800                  # 8-byte Folded Reload
	fmul.d	$fa3, $fa4, $fa3
	vldi	$vr11, -896
	fmadd.d	$fa1, $fa1, $ft3, $fa3
	vld	$vr5, $sp, 736                  # 16-byte Folded Reload
	fdiv.d	$fa3, $fa5, $ft9
	vld	$vr0, $sp, 784                  # 16-byte Folded Reload
	fdiv.d	$ft9, $fa0, $ft10
	fsub.d	$fa3, $fa3, $ft9
	fdiv.d	$ft7, $fa5, $ft7
	fdiv.d	$ft8, $fa0, $ft8
	fsub.d	$ft7, $ft7, $ft8
	fmul.d	$ft7, $fa4, $ft7
	fmadd.d	$ft8, $fa3, $ft3, $ft7
	vldi	$vr3, -896
	vld	$vr11, $sp, 1280                # 16-byte Folded Reload
	vreplvei.d	$vr18, $vr11, 0
	vld	$vr15, $sp, 1488                # 16-byte Folded Reload
	vextrins.d	$vr11, $vr15, 16
	vld	$vr4, $sp, 704                  # 16-byte Folded Reload
	vpackev.d	$vr3, $vr4, $vr3
	vld	$vr4, $sp, 368                  # 16-byte Folded Reload
	vextrins.d	$vr4, $vr2, 16
	vld	$vr2, $sp, 1248                 # 16-byte Folded Reload
	vextrins.d	$vr2, $vr25, 16
	vld	$vr19, $sp, 192                 # 16-byte Folded Reload
	vfdiv.d	$vr15, $vr4, $vr19
	vld	$vr4, $sp, 144                  # 16-byte Folded Reload
	vfdiv.d	$vr17, $vr2, $vr4
	vfsub.d	$vr15, $vr15, $vr17
	vld	$vr2, $sp, 416                  # 16-byte Folded Reload
	vextrins.d	$vr2, $vr1, 16
	vfmul.d	$vr17, $vr11, $vr3
	lu52i.d	$a0, $zero, -1026
	vreplgr2vr.d	$vr1, $a0
	vpackev.d	$vr1, $vr17, $vr1
	vfmadd.d	$vr25, $vr15, $vr1, $vr2
	vld	$vr2, $sp, 512                  # 16-byte Folded Reload
	vextrins.d	$vr2, $vr5, 16
	vfdiv.d	$vr3, $vr2, $vr19
	vld	$vr2, $sp, 1264                 # 16-byte Folded Reload
	vextrins.d	$vr2, $vr0, 16
	vori.b	$vr0, $vr4, 0
	vshuf4i.d	$vr0, $vr10, 6
	vfdiv.d	$vr19, $vr2, $vr0
	vfsub.d	$vr3, $vr3, $vr19
	vld	$vr0, $sp, 624                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr16, 16
	vfmadd.d	$vr16, $vr3, $vr1, $vr0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vreplvei.d	$vr31, $vr21, 0
	vld	$vr5, $sp, 640                  # 16-byte Folded Reload
	fdiv.d	$fa1, $fa5, $fs7
	vld	$vr3, $a0, %pc_lo12(.LCPI2_15)
	vreplvei.d	$vr24, $vr22, 0
	vld	$vr15, $sp, 688                 # 16-byte Folded Reload
	fdiv.d	$ft11, $ft7, $fs0
	fsub.d	$fa1, $fa1, $ft11
	vfmul.d	$vr19, $vr11, $vr3
	vextrins.d	$vr5, $vr20, 16
	vextrins.d	$vr15, $vr12, 16
	vfdiv.d	$vr3, $vr5, $vr9
	vfdiv.d	$vr11, $vr15, $vr10
	vfsub.d	$vr3, $vr3, $vr11
	fneg.d	$fa1, $fa1
	vextrins.d	$vr1, $vr30, 16
	vori.b	$vr11, $vr19, 0
	vshuf4i.d	$vr11, $vr0, 1
	vfmadd.d	$vr30, $vr11, $vr3, $vr1
	vld	$vr20, $sp, 768                 # 16-byte Folded Reload
	fdiv.d	$fa1, $ft12, $fs7
	vld	$vr12, $sp, 816                 # 16-byte Folded Reload
	fdiv.d	$fa3, $ft4, $fs0
	fsub.d	$fa1, $fa1, $fa3
	vextrins.d	$vr20, $vr7, 16
	vextrins.d	$vr12, $vr23, 16
	vfdiv.d	$vr3, $vr20, $vr9
	vfdiv.d	$vr9, $vr12, $vr10
	vfsub.d	$vr3, $vr3, $vr9
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr10, $a0, %pc_lo12(.LCPI2_14)
	fneg.d	$fa1, $fa1
	vextrins.d	$vr1, $vr29, 16
	vfmadd.d	$vr9, $vr11, $vr3, $vr1
	vfmul.d	$vr1, $vr18, $vr10
	vld	$vr11, $sp, 976                 # 16-byte Folded Reload
	fdiv.d	$fa3, $ft3, $ft5
	vld	$vr29, $sp, 992                 # 16-byte Folded Reload
	fdiv.d	$ft2, $fs5, $ft6
	fsub.d	$fa3, $fa3, $ft2
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	fmul.d	$ft2, $fa0, $fs0
	vld	$vr0, $sp, 1360                 # 16-byte Folded Reload
	fmul.d	$fs7, $fa0, $fs7
	vld	$vr0, $sp, 848                  # 16-byte Folded Reload
	fdiv.d	$ft10, $fa0, $fs7
	vld	$vr7, $sp, 864                  # 16-byte Folded Reload
	fdiv.d	$fs0, $fa7, $ft2
	fsub.d	$ft10, $ft10, $fs0
	vextrins.d	$vr0, $vr11, 16
	vextrins.d	$vr7, $vr29, 16
	vfdiv.d	$vr24, $vr0, $vr21
	vfdiv.d	$vr29, $vr7, $vr22
	vori.b	$vr23, $vr7, 0
	vfsub.d	$vr24, $vr24, $vr29
	fmul.d	$fa3, $fa6, $fa3
	fneg.d	$ft10, $ft10
	vextrins.d	$vr18, $vr3, 16
	lu52i.d	$a0, $zero, -1023
	vreplgr2vr.d	$vr3, $a0
	vpackod.d	$vr3, $vr3, $vr19
	vfmadd.d	$vr18, $vr24, $vr3, $vr18
	vld	$vr2, $sp, 1408                 # 16-byte Folded Reload
	vfdiv.d	$vr24, $vr0, $vr2
	vfdiv.d	$vr29, $vr7, $vr8
	vfsub.d	$vr24, $vr24, $vr29
	vfmadd.d	$vr1, $vr1, $vr24, $vr18
	vld	$vr24, $sp, 1024                # 16-byte Folded Reload
	fdiv.d	$ft5, $fs0, $ft5
	vld	$vr18, $sp, 1040                # 16-byte Folded Reload
	fdiv.d	$ft6, $ft10, $ft6
	fsub.d	$ft5, $ft5, $ft6
	fmul.d	$ft5, $fa6, $ft5
	vld	$vr7, $sp, 896                  # 16-byte Folded Reload
	fdiv.d	$ft3, $fa7, $fs7
	vld	$vr6, $sp, 928                  # 16-byte Folded Reload
	fdiv.d	$ft2, $fa6, $ft2
	fsub.d	$ft2, $ft3, $ft2
	vextrins.d	$vr7, $vr24, 16
	vextrins.d	$vr6, $vr18, 16
	vfdiv.d	$vr11, $vr7, $vr21
	vori.b	$vr18, $vr7, 0
	vfdiv.d	$vr14, $vr6, $vr22
	vfsub.d	$vr11, $vr11, $vr14
	fneg.d	$ft2, $ft2
	vextrins.d	$vr10, $vr13, 16
	vfmadd.d	$vr3, $vr11, $vr3, $vr10
	vfdiv.d	$vr7, $vr7, $vr2
	vfdiv.d	$vr8, $vr6, $vr8
	vfsub.d	$vr7, $vr7, $vr8
	vpackev.d	$vr8, $vr19, $vr17
	vfmadd.d	$vr3, $vr8, $vr7, $vr3
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vfdiv.d	$vr7, $vr5, $vr2
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	vfdiv.d	$vr8, $vr15, $vr4
	vfsub.d	$vr7, $vr7, $vr8
	vfmadd.d	$vr7, $vr17, $vr7, $vr30
	vfdiv.d	$vr2, $vr20, $vr2
	vfdiv.d	$vr4, $vr12, $vr4
	vfsub.d	$vr2, $vr2, $vr4
	vfmadd.d	$vr2, $vr17, $vr2, $vr9
	vld	$vr5, $sp, 912                  # 16-byte Folded Reload
	vfdiv.d	$vr4, $vr0, $vr5
	vld	$vr9, $sp, 880                  # 16-byte Folded Reload
	vfdiv.d	$vr8, $vr23, $vr9
	vfsub.d	$vr4, $vr4, $vr8
	vreplvei.d	$vr8, $vr17, 1
	vfmadd.d	$vr1, $vr8, $vr4, $vr1
	vfdiv.d	$vr0, $vr18, $vr5
	vfdiv.d	$vr4, $vr6, $vr9
	vfsub.d	$vr0, $vr0, $vr4
	vfmadd.d	$vr0, $vr8, $vr0, $vr3
	vld	$vr3, $sp, 1200                 # 16-byte Folded Reload
	vld	$vr4, $sp, 1152                 # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	vld	$vr3, $sp, 1184                 # 16-byte Folded Reload
	vld	$vr5, $sp, 1136                 # 16-byte Folded Reload
	vextrins.d	$vr5, $vr3, 16
	vld	$vr11, $sp, 1296                # 16-byte Folded Reload
	fld.d	$fa3, $sp, 952                  # 8-byte Folded Reload
	fmul.d	$fa3, $ft3, $fa3
	vfsub.d	$vr4, $vr4, $vr5
	vld	$vr6, $sp, 1168                 # 16-byte Folded Reload
	vori.b	$vr5, $vr6, 0
	vextrins.d	$vr5, $vr3, 16
	vfmul.d	$vr3, $vr4, $vr6
	vfadd.d	$vr4, $vr4, $vr5
	vshuf4i.d	$vr3, $vr4, 12
	vld	$vr4, $sp, 1120                 # 16-byte Folded Reload
	vld	$vr6, $sp, 960                  # 16-byte Folded Reload
	vextrins.d	$vr4, $vr6, 16
	vfsub.d	$vr3, $vr3, $vr4
	vld	$vr4, $sp, 1328                 # 16-byte Folded Reload
	vreplvei.d	$vr4, $vr4, 0
	vld	$vr6, $sp, 1216                 # 16-byte Folded Reload
	vfmul.d	$vr6, $vr4, $vr6
	vfadd.d	$vr3, $vr3, $vr6
	vld	$vr6, $sp, 1232                 # 16-byte Folded Reload
	vfsub.d	$vr3, $vr3, $vr6
	vld	$vr6, $sp, 1312                 # 16-byte Folded Reload
	vreplvei.d	$vr6, $vr6, 0
	vld	$vr8, $sp, 1520                 # 16-byte Folded Reload
	vfmul.d	$vr8, $vr6, $vr8
	vfadd.d	$vr3, $vr3, $vr8
	vld	$vr8, $sp, 1504                 # 16-byte Folded Reload
	vfsub.d	$vr3, $vr3, $vr8
	vld	$vr8, $sp, 1392                 # 16-byte Folded Reload
	vfadd.d	$vr3, $vr3, $vr8
	vfsub.d	$vr3, $vr3, $vr26
	fld.d	$ft0, $sp, 1480                 # 8-byte Folded Reload
	fmul.d	$ft0, $ft0, $fs4
	vld	$vr12, $sp, 1088                # 16-byte Folded Reload
	vori.b	$vr9, $vr12, 0
	vld	$vr10, $sp, 1104                # 16-byte Folded Reload
	vextrins.d	$vr9, $vr10, 16
	vld	$vr13, $sp, 1072                # 16-byte Folded Reload
	vfmul.d	$vr10, $vr12, $vr13
	vextrins.d	$vr13, $vr8, 16
	vfadd.d	$vr8, $vr9, $vr13
	vld	$vr9, $sp, 1056                 # 16-byte Folded Reload
	vextrins.d	$vr9, $vr11, 16
	vextrins.d	$vr5, $vr27, 16
	vfmul.d	$vr5, $vr9, $vr5
	vfsub.d	$vr8, $vr8, $vr5
	vfadd.d	$vr5, $vr10, $vr5
	vshuf4i.d	$vr5, $vr8, 12
	vld	$vr8, $sp, 1440                 # 16-byte Folded Reload
	vreplvei.d	$vr8, $vr8, 0
	vfmul.d	$vr8, $vr8, $vr25
	vfadd.d	$vr5, $vr5, $vr8
	vfmul.d	$vr4, $vr4, $vr16
	vfsub.d	$vr4, $vr5, $vr4
	vld	$vr5, $sp, 1456                 # 16-byte Folded Reload
	vreplvei.d	$vr5, $vr5, 0
	vfmul.d	$vr5, $vr5, $vr7
	vfadd.d	$vr4, $vr4, $vr5
	vfmul.d	$vr2, $vr6, $vr2
	vfsub.d	$vr2, $vr4, $vr2
	vfadd.d	$vr1, $vr2, $vr1
	vfsub.d	$vr0, $vr1, $vr0
	vfadd.d	$vr0, $vr3, $vr0
	b	.LBB2_32
.LBB2_31:
	fadd.d	$fa0, $ft11, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fs2, $fa2, $fs3
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fmul.d	$fs3, $fa0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1000
	fdiv.d	$fa1, $fs7, $fa1
	vld	$vr2, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa2
	vld	$vr2, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa2, $fs4, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 1360                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	fld.d	$fs7, $a0, %pc_lo12(.LCPI2_11)
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs7
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 1248                 # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 960                  # 8-byte Folded Spill
	fld.d	$fs6, $s1, %pc_lo12(rootN)
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 976                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fst.d	$fa0, $sp, 952                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 896                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1488                 # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 832                  # 16-byte Folded Spill
	vldi	$vr0, -1016
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 848                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 864                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 784                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1216                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1200                 # 16-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fs5, $fs6, $fa0
	vld	$vr0, $sp, 1488                 # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa0
	vst	$vr0, $sp, 1328                 # 16-byte Folded Spill
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
	vst	$vr0, $sp, 1120                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1088                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 1480                 # 8-byte Folded Reload
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	vst	$vr1, $sp, 1312                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fs4, $fa0
	vst	$vr0, $sp, 1280                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fs4, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs7
	vst	$vr0, $sp, 1264                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 768                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1376                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 816                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1392                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 800                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1520                 # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vld	$vr1, $sp, 1504                 # 16-byte Folded Reload
	vld	$vr2, $sp, 1392                 # 16-byte Folded Reload
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 880                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1008                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 992                  # 16-byte Folded Spill
	vldi	$vr0, -896
	fmul.d	$fa0, $fs6, $fa0
	vst	$vr0, $sp, 1024                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1056                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1040                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1104                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1072                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	vld	$vr23, $sp, 1520                # 16-byte Folded Reload
	fmul.d	$fa2, $ft15, $ft15
	fld.d	$fa0, $sp, 960                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $fa2
	vld	$vr22, $sp, 1504                # 16-byte Folded Reload
	fmul.d	$fa4, $ft14, $ft14
	fld.d	$fa0, $sp, 1248                 # 8-byte Folded Reload
	fdiv.d	$fa3, $fa0, $fa4
	fsub.d	$fa1, $fa1, $fa3
	fld.d	$fa6, $sp, 1408                 # 8-byte Folded Reload
	fld.d	$fa0, $sp, 976                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fst.d	$fa0, $sp, 1248                 # 8-byte Folded Spill
	fld.d	$fa0, $sp, 952                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $fa2
	fld.d	$fa0, $sp, 928                  # 8-byte Folded Reload
	fdiv.d	$fa5, $fa0, $fa4
	fsub.d	$fa1, $fa1, $fa5
	fld.d	$fa0, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	fmul.d	$fa5, $ft14, $fa4
	fmul.d	$fa6, $ft15, $fa2
	vld	$vr12, $sp, 832                 # 16-byte Folded Reload
	fdiv.d	$fa7, $ft4, $fa6
	vld	$vr3, $sp, 896                  # 16-byte Folded Reload
	fdiv.d	$ft0, $fa3, $fa5
	fsub.d	$fa7, $fa7, $ft0
	fdiv.d	$ft0, $ft4, $fa2
	fdiv.d	$ft1, $fa3, $fa4
	fsub.d	$ft0, $ft0, $ft1
	fneg.d	$ft0, $ft0
	fld.d	$ft5, $sp, 848                  # 8-byte Folded Reload
	fmul.d	$ft0, $ft5, $ft0
	vldi	$vr9, -1024
	fmadd.d	$fa7, $fa7, $ft1, $ft0
	vld	$vr1, $sp, 784                  # 16-byte Folded Reload
	fdiv.d	$ft0, $fa1, $fa6
	vld	$vr0, $sp, 864                  # 16-byte Folded Reload
	fdiv.d	$ft2, $fa0, $fa5
	fsub.d	$ft0, $ft0, $ft2
	fdiv.d	$ft2, $fa1, $fa2
	fdiv.d	$ft3, $fa0, $fa4
	fsub.d	$ft2, $ft2, $ft3
	fneg.d	$ft2, $ft2
	fmul.d	$ft2, $ft5, $ft2
	fmadd.d	$ft2, $ft0, $ft1, $ft2
	vld	$vr9, $sp, 768                  # 16-byte Folded Reload
	vextrins.d	$vr9, $vr12, 16
	vld	$vr12, $sp, 1376                # 16-byte Folded Reload
	vextrins.d	$vr12, $vr3, 16
	vori.b	$vr8, $vr2, 0
	vextrins.d	$vr8, $vr23, 16
	vfdiv.d	$vr11, $vr9, $vr8
	vori.b	$vr9, $vr4, 0
	vextrins.d	$vr9, $vr22, 16
	vfdiv.d	$vr12, $vr12, $vr9
	vfsub.d	$vr11, $vr11, $vr12
	vld	$vr13, $sp, 816                 # 16-byte Folded Reload
	vextrins.d	$vr13, $vr7, 16
	vldi	$vr7, -928
	vld	$vr3, $sp, 1488                 # 16-byte Folded Reload
	vpackev.d	$vr12, $vr3, $vr7
	vori.b	$vr7, $vr3, 0
	vfmadd.d	$vr3, $vr12, $vr11, $vr13
	vst	$vr3, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr3, $sp, 800                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr1, 16
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vfdiv.d	$vr11, $vr3, $vr8
	vfdiv.d	$vr13, $vr1, $vr9
	vfsub.d	$vr11, $vr11, $vr13
	vld	$vr0, $sp, 880                  # 16-byte Folded Reload
	vextrins.d	$vr0, $vr10, 16
	vfmadd.d	$vr10, $vr12, $vr11, $vr0
	vld	$vr21, $sp, 1200                # 16-byte Folded Reload
	fdiv.d	$ft3, $ft13, $fa6
	vld	$vr20, $sp, 1216                # 16-byte Folded Reload
	fdiv.d	$ft4, $ft12, $fa5
	fsub.d	$ft3, $ft3, $ft4
	vld	$vr1, $sp, 1152                 # 16-byte Folded Reload
	fdiv.d	$ft4, $fa1, $fa6
	vld	$vr30, $sp, 1184                # 16-byte Folded Reload
	fdiv.d	$ft5, $fs6, $fa5
	fsub.d	$ft6, $ft4, $ft5
	fmul.d	$ft4, $ft14, $fa5
	fmul.d	$ft5, $ft15, $fa6
	vld	$vr28, $sp, 1136                # 16-byte Folded Reload
	fdiv.d	$ft7, $fs4, $ft5
	vld	$vr27, $sp, 1168                # 16-byte Folded Reload
	fdiv.d	$ft8, $fs3, $ft4
	fsub.d	$ft7, $ft7, $ft8
	vld	$vr26, $sp, 1088                # 16-byte Folded Reload
	fdiv.d	$ft8, $fs2, $ft5
	vld	$vr25, $sp, 1120                # 16-byte Folded Reload
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
	vld	$vr3, $sp, 992                  # 16-byte Folded Reload
	fdiv.d	$ft6, $fa3, $fa6
	vld	$vr29, $sp, 1008                # 16-byte Folded Reload
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
	vld	$vr0, $sp, 1024                 # 16-byte Folded Reload
	vpackev.d	$vr15, $vr15, $vr0
	vextrins.d	$vr14, $vr19, 16
	vfmadd.d	$vr14, $vr21, $vr15, $vr14
	vld	$vr31, $sp, 1040                # 16-byte Folded Reload
	fdiv.d	$ft11, $fs7, $fa6
	vld	$vr0, $sp, 1056                 # 16-byte Folded Reload
	fdiv.d	$ft13, $fa0, $fa5
	fsub.d	$ft11, $ft11, $ft13
	vextrins.d	$vr31, $vr1, 16
	vextrins.d	$vr0, $vr30, 16
	vfdiv.d	$vr18, $vr31, $vr18
	vfdiv.d	$vr20, $vr0, $vr20
	vfsub.d	$vr18, $vr18, $vr20
	vextrins.d	$vr19, $vr17, 16
	vfmadd.d	$vr17, $vr18, $vr15, $vr19
	vld	$vr20, $sp, 1072                # 16-byte Folded Reload
	fdiv.d	$ft10, $ft12, $ft5
	vld	$vr1, $sp, 1104                 # 16-byte Folded Reload
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
	vld	$vr19, $sp, 1232                # 16-byte Folded Reload
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
	vld	$vr6, $sp, 1328                 # 16-byte Folded Reload
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
	fld.d	$fa2, $sp, 1480                 # 8-byte Folded Reload
	fld.d	$fa1, $sp, 1248                 # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa1
	vld	$vr3, $sp, 1360                 # 16-byte Folded Reload
	vld	$vr4, $sp, 1296                 # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	vld	$vr3, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr9, $sp, 1280                 # 16-byte Folded Reload
	vextrins.d	$vr9, $vr3, 16
	vfsub.d	$vr3, $vr4, $vr9
	vld	$vr9, $sp, 1312                 # 16-byte Folded Reload
	vori.b	$vr4, $vr9, 0
	vextrins.d	$vr4, $vr2, 16
	vfadd.d	$vr2, $vr3, $vr4
	vfmul.d	$vr3, $vr3, $vr9
	vshuf4i.d	$vr3, $vr2, 12
	vld	$vr2, $sp, 1264                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1408                 # 16-byte Folded Reload
	vextrins.d	$vr2, $vr1, 16
	vfsub.d	$vr1, $vr3, $vr2
	vld	$vr2, $sp, 1440                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vld	$vr3, $sp, 1376                 # 16-byte Folded Reload
	vfmul.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vfsub.d	$vr1, $vr1, $vr10
	vld	$vr2, $sp, 1456                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr2, $vr5
	vfadd.d	$vr1, $vr1, $vr2
	vfsub.d	$vr1, $vr1, $vr6
	vfadd.d	$vr1, $vr1, $vr8
	vfsub.d	$vr0, $vr1, $vr0
.LBB2_32:
	vreplvei.d	$vr1, $vr0, 1
	vfdiv.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr0, $vr0, 0
	fld.d	$fa1, $sp, 1432                 # 8-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $fp, 0
	fld.d	$fs7, $sp, 1536                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1544                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1552                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1560                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1568                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1576                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1584                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1592                 # 8-byte Folded Reload
	ld.d	$s3, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1640                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1648
	ret
.LBB2_33:                               # %call.sqrt
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
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	addi.w	$s4, $a0, 1
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
	vreplgr2vr.w	$vr1, $s4
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
	mul.d	$a3, $a3, $s4
	bnez	$a0, .LBB21_6
.LBB21_7:                               # %._crit_edge
	addi.w	$a0, $a3, -1
	ori	$a4, $zero, 1
	div.w	$a5, $a0, $s0
	bne	$a1, $a4, .LBB21_10
# %bb.8:
	move	$a0, $zero
	b	.LBB21_17
.LBB21_9:
	move	$a5, $zero
	move	$a0, $zero
	b	.LBB21_17
.LBB21_10:                              # %.lr.ph84
	ori	$a2, $zero, 9
	ori	$a0, $zero, 1
	bltu	$a1, $a2, .LBB21_14
# %bb.11:                               # %vector.ph138
	addi.w	$a2, $a1, -1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a0, $a2
	bstrins.d	$a0, $a4, 2, 0
	vrepli.w	$vr0, 1
	vreplgr2vr.w	$vr1, $s4
	move	$a4, $a3
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB21_12:                              # %vector.body143
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr0, $vr0, $vr1
	addi.w	$a4, $a4, -8
	vmul.w	$vr2, $vr2, $vr1
	bnez	$a4, .LBB21_12
# %bb.13:                               # %middle.block148
	vmul.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	beq	$a2, $a3, .LBB21_16
.LBB21_14:                              # %scalar.ph136.preheader
	sub.d	$a0, $a1, $a0
	.p2align	4, , 16
.LBB21_15:                              # %scalar.ph136
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, -1
	mul.d	$a4, $a4, $s4
	bnez	$a0, .LBB21_15
.LBB21_16:                              # %._crit_edge85.loopexit
	addi.w	$a0, $a4, -1
.LBB21_17:                              # %._crit_edge85
	div.w	$s2, $a0, $s0
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $a5, 1
	slli.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$s0, $a0, 16
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $s1, 24
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	blez	$s2, .LBB21_23
# %bb.18:                               # %.lr.ph96
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ori	$s5, $zero, 2
	b	.LBB21_20
	.p2align	4, , 16
.LBB21_19:                              # %._crit_edge92
                                        #   in Loop: Header=BB21_20 Depth=1
	addi.d	$s8, $s8, 1
	add.d	$s5, $s5, $s4
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB21_23
.LBB21_20:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_22 Depth 2
	bltz	$s0, .LBB21_19
# %bb.21:                               # %.lr.ph91
                                        #   in Loop: Header=BB21_20 Depth=1
	slli.d	$a0, $s8, 4
	ldx.w	$s3, $s1, $a0
	move	$s2, $zero
	alsl.d	$s6, $s8, $s1, 4
	.p2align	4, , 16
.LBB21_22:                              #   Parent Loop BB21_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$a0, $s5, $s2
	add.d	$a1, $s3, $s2
	slli.d	$a2, $a0, 4
	stx.w	$a1, $s1, $a2
	fld.d	$fs0, $s6, 8
	ld.w	$s3, $s6, 0
	alsl.d	$s7, $a0, $s1, 4
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(probability)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fa0
	addi.w	$s2, $s2, 1
	fst.d	$fa0, $s7, 8
	bne	$s4, $s2, .LBB21_22
	b	.LBB21_19
.LBB21_23:                              # %.preheader77
	movgr2fr.d	$fs0, $zero
	fmov.d	$fs1, $fs0
	fmov.d	$fs2, $fs0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	bge	$a3, $a0, .LBB21_28
# %bb.24:                               # %.lr.ph100.preheader
	alsl.d	$a1, $a3, $s1, 4
	addi.d	$a2, $a1, 24
	sub.d	$a0, $a0, $a3
	movgr2fr.d	$fs1, $zero
	move	$a3, $a0
	.p2align	4, , 16
.LBB21_25:                              # %.lr.ph100
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -8
	fld.d	$fa0, $a2, 0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB21_25
# %bb.26:                               # %.lr.ph105.preheader
	addi.d	$a1, $a1, 24
	movgr2fr.d	$fs2, $zero
	.p2align	4, , 16
.LBB21_27:                              # %.lr.ph105
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fadd.d	$fs2, $fs2, $fa0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB21_27
.LBB21_28:                              # %._crit_edge106
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI21_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI21_0)
	fdiv.d	$fa1, $fs1, $fs2
	fcmp.clt.d	$fcc0, $fs1, $fa0
	fsel	$fa0, $fa1, $fs0, $fcc0
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
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
