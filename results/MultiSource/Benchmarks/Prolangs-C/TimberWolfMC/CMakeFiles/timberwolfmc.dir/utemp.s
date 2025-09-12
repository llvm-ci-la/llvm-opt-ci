	.file	"utemp.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0                          # -- Begin function utemp
.LCPI0_0:
	.dword	0x3fea3d70a3d70a3d              # double 0.81999999999999995
	.dword	0x3fe6666666666666              # double 0.69999999999999996
.LCPI0_1:
	.dword	0x3fe999999999999a              # double 0.80000000000000004
	.dword	0x3feb333333333333              # double 0.84999999999999998
	.text
	.globl	utemp
	.p2align	5
	.type	utemp,@function
utemp:                                  # @utemp
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
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 136                  # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(Tsave)
	ld.d	$a0, $a0, %got_pc_lo12(Tsave)
	fld.d	$fa0, $a0, 0
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -497152
	lu52i.d	$a1, $a1, 1039
	movgr2fr.d	$fa1, $a1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$s8, %pc_hi20(count)
	st.w	$zero, $s8, %pc_lo12(count)
	vldi	$vr1, -988
	fmul.d	$fs0, $fa0, $fa1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 487424
	lu52i.d	$a1, $a1, 1034
	movgr2fr.d	$fa1, $a1
	fmul.d	$fs1, $fa0, $fa1
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $sp, 32                   # 8-byte Folded Spill
	vldi	$vr1, -972
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $sp, 24                   # 8-byte Folded Spill
	vldi	$vr1, -1004
	fmul.d	$fs4, $fa0, $fa1
	pcalau12i	$a0, %got_pc_hi20(finalShot)
	ld.d	$a0, $a0, %got_pc_lo12(finalShot)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(T)
	ld.d	$s2, $a1, %got_pc_lo12(T)
	lu12i.w	$a1, -251659
	ori	$a1, $a1, 3113
	lu32i.d	$a1, -251659
	lu52i.d	$a1, $a1, 1022
	movgr2fr.d	$fs2, $a1
	lu12i.w	$a1, 167772
	ori	$a1, $a1, 655
	lu32i.d	$a1, -94372
	lu52i.d	$a1, $a1, 1022
	movgr2fr.d	$fs6, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	addi.d	$a1, $a1, %pc_lo12(.LCPI0_1)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fpo)
	ld.d	$s7, $a1, %got_pc_lo12(fpo)
	pcalau12i	$a1, %got_pc_hi20(funccost)
	ld.d	$s0, $a1, %got_pc_lo12(funccost)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(penalty)
	ld.d	$s1, $a1, %got_pc_lo12(penalty)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(overfill)
	ld.d	$fp, $a1, %got_pc_lo12(overfill)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a1, -69906
	ori	$a1, $a1, 3823
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a1, 104857
	ori	$a1, $a1, 2457
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a1, 69905
	ori	$s3, $a1, 272
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$s6, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$s5, $a1, %got_pc_lo12(stdout)
	pcalau12i	$a1, %got_pc_hi20(doCompaction)
	ld.d	$s4, $a1, %got_pc_lo12(doCompaction)
	lu12i.w	$a1, -419431
	ori	$a1, $a1, 2458
	lu32i.d	$a1, -419431
	lu52i.d	$a2, $a1, 1022
	movgr2fr.d	$fs7, $a2
	lu52i.d	$a1, $a1, 1020
	movgr2fr.d	$fs3, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LCPI0_0)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s2, 0
	beqz	$a0, .LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	fcmp.clt.d	$fcc0, $fa0, $fs0
	movcf2gr	$a1, $fcc0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	fldx.d	$fs5, $a2, $a1
	blez	$a0, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(fuloop)
	jirl	$ra, $ra, 0
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	fcmp.clt.d	$fcc0, $fs1, $fa0
	fmov.d	$fs5, $fs2
	bcnez	$fcc0, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fmov.d	$fs5, $fs6
	bcnez	$fcc0, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	fld.d	$fa1, $sp, 24                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	fldx.d	$fs5, $a1, $a0
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(uloop)
	jirl	$ra, $ra, 0
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s7, 0
	ld.w	$a2, $s0, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.w	$a2, $s1, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.w	$a2, $fp, 0
	ld.w	$a3, $s0, 0
	ld.d	$a0, $s7, 0
	add.d	$a1, $a2, $a1
	add.w	$a2, $a1, $a3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.w	$a2, $fp, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $s2, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, %pc_lo12(count)
	ld.d	$a0, $s7, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s8, %pc_lo12(count)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, %pc_lo12(count)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	bltu	$s3, $a0, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, %pc_lo12(count)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s4, 0
	fmul.d	$fa0, $fs5, $fa0
	fst.d	$fa0, $s2, 0
	bge	$a0, $a1, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	fcmp.clt.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	bnez	$a0, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	fcmp.clt.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	bne	$a0, $a1, .LBB0_1
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	fcmp.cule.d	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB0_1
.LBB0_16:
	ld.d	$a0, $s7, 0
	ld.w	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s1, 0
	ld.w	$a3, $fp, 0
	ld.d	$a0, $s7, 0
	add.d	$a1, $a2, $a1
	add.w	$a2, $a1, $a3
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.w	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(attmax)
	ld.d	$a1, $a1, %got_pc_lo12(attmax)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	fld.d	$fs7, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end0:
	.size	utemp, .Lfunc_end0-utemp
                                        # -- End function
	.type	count,@object                   # @count
	.comm	count,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"THE ROUTE COST OF THE CURRENT PLACEMENT: %d\n"
	.size	.L.str, 45

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"THE CURRENT PENALTY IS: %d   "
	.size	.L.str.1, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"THE CURRENT TOTAL COST IS: %d\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"THE CURRENT OVERFILL IS: %d\n"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"TEMPERATURE = kT where k=1.0 and T=%g   "
	.size	.L.str.4, 41

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"OFFSET: %d\n"
	.size	.L.str.5, 12

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ITERATION NUMBER:%8d\n\n\n"
	.size	.L.str.6, 24

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%3d "
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"FINAL ROUTING COST OF THE PLACEMENT: %d\n"
	.size	.L.str.9, 41

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"FINAL VALUE OF PENALTY IS: %d   "
	.size	.L.str.10, 33

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"FINAL VALUE OF TOTAL COST IS: %d\n"
	.size	.L.str.11, 34

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"THE FINAL OVERFILL IS: %d\n"
	.size	.L.str.12, 27

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"MAX NUMBER OF ATTEMPTED FLIPS PER T:%8d\n"
	.size	.L.str.13, 41

	.section	".note.GNU-stack","",@progbits
	.addrsig
