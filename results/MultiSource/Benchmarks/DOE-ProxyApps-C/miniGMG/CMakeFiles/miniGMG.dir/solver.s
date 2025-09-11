	.file	"solver.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function TelescopingCABiCGStab
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	TelescopingCABiCGStab
	.p2align	5
	.type	TelescopingCABiCGStab,@function
TelescopingCABiCGStab:                  # @TelescopingCABiCGStab
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	lu12i.w	$a4, 2
	ori	$a4, $a4, 880
	sub.d	$sp, $sp, $a4
	fmov.d	$fs4, $fa2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$a4, $a3
	move	$s8, $a2
	move	$s1, $a1
	move	$s2, $a0
	ori	$a2, $zero, 12
	move	$a3, $s8
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 12
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs2, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 136
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fcmp.ceq.d	$fcc0, $fa0, $fs2
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 136
	movgr2cf	$fcc0, $a1
	movcf2gr	$a1, $fcc0
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	or	$fp, $a0, $a1
	bceqz	$fcc0, .LBB0_3
# %bb.1:                                # %.split
	beqz	$fp, .LBB0_4
.LBB0_2:                                # %._crit_edge744
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s8
	move	$a4, $s8
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 880
	add.d	$sp, $sp, $a0
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_3:                                # %call.sqrt
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_2
.LBB0_4:                                # %.lr.ph743
	move	$a3, $zero
	fmul.d	$fs4, $fs4, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1696
	add.d	$s7, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1560
	add.d	$s6, $sp, $a0
	lu52i.d	$s0, $zero, 1023
	ori	$a0, $zero, 1
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slti	$a0, $a2, 4
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	slti	$a2, $a3, 200
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	and	$a2, $a2, $a4
	and	$a2, $a2, $s4
	or	$a0, $a0, $a1
	lu52i.d	$s0, $zero, 1023
	beqz	$a2, .LBB0_2
.LBB0_6:                                # %.preheader565.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_43 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #       Child Loop BB0_47 Depth 3
                                        #         Child Loop BB0_48 Depth 4
                                        #       Child Loop BB0_51 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_60 Depth 3
                                        #       Child Loop BB0_64 Depth 3
                                        #       Child Loop BB0_66 Depth 3
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_95 Depth 3
                                        #         Child Loop BB0_96 Depth 4
                                        #       Child Loop BB0_99 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #       Child Loop BB0_132 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_141 Depth 3
                                        #         Child Loop BB0_142 Depth 4
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_156 Depth 3
                                        #       Child Loop BB0_160 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #       Child Loop BB0_167 Depth 3
                                        #     Child Loop BB0_176 Depth 2
                                        #     Child Loop BB0_179 Depth 2
                                        #     Child Loop BB0_181 Depth 2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	slli.d	$s4, $a0, 2
	addi.w	$fp, $s4, 1
	slli.d	$s3, $fp, 3
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1696
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1560
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1424
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1288
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1152
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1016
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2632
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2496
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2360
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 31, 2
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	addi.d	$s3, $a0, 8
	lu12i.w	$a0, 2
	ori	$a0, $a0, 48
	add.d	$s4, $sp, $a0
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_7:                                # %.preheader565
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s4, $s4, 136
	bnez	$fp, .LBB0_7
# %bb.8:                                # %.preheader564.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a1, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	addi.d	$s4, $a0, 8
	ori	$a0, $a1, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1832
	add.d	$s5, $sp, $a0
	.p2align	4, , 16
.LBB0_9:                                # %.preheader564
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s5, $s5, 136
	bnez	$fp, .LBB0_9
# %bb.10:                               # %.lr.ph590.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a0, $a6, 1
	bstrpick.d	$a1, $a0, 31, 1
	slli.d	$s5, $a1, 1
	move	$a1, $s5
	lu12i.w	$a2, 2
	ori	$a2, $a2, 184
	add.d	$a2, $sp, $a2
	beqz	$a6, .LBB0_13
# %bb.11:                               # %vector.body1121.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
	lu12i.w	$a2, 2
	ori	$a2, $a2, 328
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB0_12:                               # %vector.body1121
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s0, $a2, -144
	st.d	$s0, $a2, 0
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 288
	bne	$s5, $a1, .LBB0_12
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %.lr.ph590
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s0, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 144
	bnez	$a1, .LBB0_13
.LBB0_14:                               # %._crit_edge591
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a1, $a0, 1
	addi.w	$t1, $a1, 0
	addi.w	$a1, $a0, -1
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	bgeu	$t1, $a2, .LBB0_20
# %bb.15:                               # %.lr.ph594.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $t1
	ori	$a3, $zero, 1
	beq	$a1, $a3, .LBB0_18
# %bb.16:                               # %vector.ph1106
                                        #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a3, $a2, -1
	add.d	$a2, $a3, $t1
	slli.d	$a4, $s5, 7
	alsl.d	$a4, $s5, $a4, 4
	lu12i.w	$a5, 2
	ori	$a5, $a5, 472
	add.d	$a5, $sp, $a5
	add.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB0_17:                               # %vector.body1109
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s0, $a4, -144
	st.d	$s0, $a4, 0
	addi.d	$a3, $a3, -2
	addi.d	$a4, $a4, 288
	bnez	$a3, .LBB0_17
.LBB0_18:                               # %.lr.ph594.preheader1136
                                        #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a3, $a2, 7
	alsl.d	$a3, $a2, $a3, 4
	lu12i.w	$a4, 2
	ori	$a4, $a4, 184
	add.d	$a4, $sp, $a4
	add.d	$a3, $a4, $a3
	sub.w	$a2, $a2, $fp
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph594
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s0, $a3, 0
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, 1
	slli.d	$a4, $a2, 31
	addi.d	$a3, $a3, 144
	bgez	$a4, .LBB0_19
.LBB0_20:                               # %.lr.ph596.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a2, $a1, 31, 0
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_22:                               # %vector.ph1095
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a3, $zero
	addi.d	$a1, $a2, -1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 2248
	add.d	$a4, $sp, $a4
	.p2align	4, , 16
.LBB0_23:                               # %vector.body1098
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s0, $a4, -144
	st.d	$s0, $a4, 0
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 288
	bne	$a1, $a3, .LBB0_23
.LBB0_24:                               # %.lr.ph596.preheader1135
                                        #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a3, $a1, 7
	alsl.d	$a3, $a1, $a3, 4
	lu12i.w	$a4, 1
	ori	$a4, $a4, 2104
	add.d	$a4, $sp, $a4
	add.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB0_25:                               # %.lr.ph596
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 144
	bne	$a2, $a1, .LBB0_25
# %bb.26:                               # %.preheader569
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a1, $fp, -1
	bge	$t1, $a1, .LBB0_29
# %bb.27:                               # %.lr.ph598.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a0, -4
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 2
	slli.d	$a2, $s5, 7
	alsl.d	$a2, $s5, $a2, 4
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2392
	add.d	$a3, $sp, $a3
	add.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB0_28:                               # %vector.body1087
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s0, $a2, -144
	st.d	$s0, $a2, 0
	addi.d	$a1, $a1, -2
	addi.d	$a2, $a2, 288
	bnez	$a1, .LBB0_28
.LBB0_29:                               # %.lr.ph601.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a1, $zero, 2
	bgeu	$a6, $a1, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
	addi.d	$a4, $sp, 144
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_31:                               # %vector.ph1074
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a1, $t0, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $sp, 160
	move	$a3, $a1
	addi.d	$a4, $sp, 144
	.p2align	4, , 16
.LBB0_32:                               # %vector.body1077
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr1, $vr0, 15
	vaddi.wu	$vr2, $vr0, 19
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB0_32
.LBB0_33:                               # %.lr.ph601.preheader1134
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a2, $a1, 15
	slli.d	$a3, $a1, 2
	nor	$a5, $a7, $zero
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	add.d	$a1, $a5, $a1
	.p2align	4, , 16
.LBB0_34:                               # %.lr.ph601
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.w	$a2, $a3, $a4
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB0_34
# %bb.35:                               # %.lr.ph606.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a1, $t0, 2
	ld.w	$a2, $sp, 144
	ori	$a3, $zero, 12
	stx.w	$a3, $a1, $a4
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a4, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	move	$s8, $s5
	addi.d	$s0, $sp, 148
	.p2align	4, , 16
.LBB0_36:                               # %.lr.ph606
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $s0, -4
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 0
	ori	$a3, $zero, 10
	move	$a0, $s2
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, 4
	bnez	$s8, .LBB0_36
# %bb.37:                               # %.lr.ph610.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 4
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 152
	alsl.d	$s8, $s5, $a0, 2
	addi.d	$s5, $s5, -1
	.p2align	4, , 16
.LBB0_38:                               # %.lr.ph610
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $s8, -4
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 0
	ori	$a3, $zero, 10
	move	$a0, $s2
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s8, $s8, 4
	bnez	$s5, .LBB0_38
# %bb.39:                               # %.preheader563.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s2, 1316
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 1316
	ori	$a0, $fp, 2
	addi.w	$a6, $a0, 0
	addi.d	$a2, $sp, 216
	addi.d	$a3, $sp, 144
	addi.d	$a4, $sp, 144
	ori	$a7, $zero, 1
	move	$a0, $s2
	move	$a1, $s1
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $s2
	pcaddu18i	$ra, %call36(matmul_grids)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s0, $a0, 1
	addi.d	$s1, $a0, 2
	ori	$a0, $zero, 2664
	add.d	$fp, $sp, $a0
	ori	$a0, $zero, 2800
	add.d	$s5, $sp, $a0
	.p2align	4, , 16
.LBB0_40:                               # %.preheader563
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a0, $s8, 32
	srai.d	$a0, $a0, 29
	addi.d	$a1, $sp, 216
	add.d	$a1, $a1, $a0
	move	$a0, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 216
	add.d	$a0, $s0, $s8
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	fldx.d	$fa0, $a0, $a1
	add.d	$s8, $s8, $s1
	fst.d	$fa0, $fp, 0
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, 136
	bnez	$s2, .LBB0_40
# %bb.41:                               # %.lr.ph685
                                        #   in Loop: Header=BB0_6 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1696
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu52i.d	$fp, $zero, 1023
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1696
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1560
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	stx.d	$fp, $a0, $s6
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1424
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$s5, $a0, 0
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2648
	add.d	$fp, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1032
	add.d	$s0, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1168
	add.d	$s1, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1304
	add.d	$a5, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1712
	add.d	$a7, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1424
	add.d	$t0, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1288
	add.d	$t1, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1152
	add.d	$t2, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1016
	add.d	$t3, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2632
	add.d	$t4, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2496
	add.d	$t5, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2360
	add.d	$t6, $sp, $a0
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
.LBB0_42:                               # %.preheader560.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_43 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #       Child Loop BB0_47 Depth 3
                                        #         Child Loop BB0_48 Depth 4
                                        #       Child Loop BB0_51 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_60 Depth 3
                                        #       Child Loop BB0_64 Depth 3
                                        #       Child Loop BB0_66 Depth 3
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_95 Depth 3
                                        #         Child Loop BB0_96 Depth 4
                                        #       Child Loop BB0_99 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #       Child Loop BB0_132 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_141 Depth 3
                                        #         Child Loop BB0_142 Depth 4
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_156 Depth 3
                                        #       Child Loop BB0_160 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #       Child Loop BB0_167 Depth 3
	ld.w	$a1, $a3, 1312
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $a3, 1312
	lu12i.w	$a1, 2
	ori	$a1, $a1, 48
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_43:                               # %.preheader560
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_44 Depth 4
	move	$a2, $zero
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_44:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        #       Parent Loop BB0_43 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa1, $a1, $a2
	fldx.d	$fa2, $a2, $s7
	addi.d	$a2, $a2, 8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	bne	$s3, $a2, .LBB0_44
# %bb.45:                               # %._crit_edge638
                                        #   in Loop: Header=BB0_43 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t1
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_43
# %bb.46:                               # %.preheader559.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	move	$a0, $zero
	lu12i.w	$a1, 2
	ori	$a1, $a1, 48
	add.d	$a1, $sp, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1576
	add.d	$a6, $sp, $a2
	.p2align	4, , 16
.LBB0_47:                               # %.preheader559
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_48 Depth 4
	move	$a2, $zero
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_48:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        #       Parent Loop BB0_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa1, $a1, $a2
	fldx.d	$fa2, $a2, $s6
	addi.d	$a2, $a2, 8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	bne	$s3, $a2, .LBB0_48
# %bb.49:                               # %._crit_edge646
                                        #   in Loop: Header=BB0_47 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t2
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t2
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_47
# %bb.50:                               # %.preheader558.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1832
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_51:                               # %.preheader558
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_52 Depth 4
	move	$a2, $zero
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_52:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        #       Parent Loop BB0_51 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa1, $a1, $a2
	fldx.d	$fa2, $a2, $s7
	addi.d	$a2, $a2, 8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	bne	$s3, $a2, .LBB0_52
# %bb.53:                               # %._crit_edge654
                                        #   in Loop: Header=BB0_51 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t3
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t3
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_51
# %bb.54:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1288
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2664
	add.d	$a1, $sp, $a1
	move	$a2, $ra
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_55:                               # %.lr.ph.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_55
# %bb.56:                               # %__dot.exit
                                        #   in Loop: Header=BB0_42 Depth=2
	fcmp.ceq.d	$fcc0, $fa0, $fs2
	ori	$s4, $zero, 1
	bcnez	$fcc0, .LBB0_172
# %bb.57:                               #   in Loop: Header=BB0_42 Depth=2
	fdiv.d	$fa6, $fs3, $fa0
	fclass.d	$fa0, $fa6
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_172
# %bb.58:                               # %.lr.ph.i416.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	beqz	$t7, .LBB0_62
# %bb.59:                               # %vector.ph1057
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr0, $vr6, 0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $t8
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_60:                               # %vector.body1062
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a0, -16
	vld	$vr4, $a0, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	vfsub.d	$vr2, $vr4, $vr2
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a3, .LBB0_60
# %bb.61:                               #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_42 Depth=2
	move	$a3, $zero
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
.LBB0_63:                               # %.lr.ph.i416.preheader1133
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $s4, $a3
	alsl.d	$a1, $a3, $t4, 3
	alsl.d	$a2, $a3, $t3, 3
	alsl.d	$a3, $a3, $t2, 3
	.p2align	4, , 16
.LBB0_64:                               # %.lr.ph.i416
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fmul.d	$fa0, $fa6, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB0_64
# %bb.65:                               # %.preheader557.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	move	$a0, $zero
	ori	$a1, $zero, 2800
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_66:                               # %.preheader557
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_67 Depth 4
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2632
	add.d	$a2, $sp, $a2
	move	$a3, $ra
	move	$a4, $a1
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_67:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        #       Parent Loop BB0_66 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a2, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_67
# %bb.68:                               # %__axpy.exit
                                        #   in Loop: Header=BB0_66 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t5
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t5
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_66
# %bb.69:                               # %.lr.ph.i422.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	beqz	$t7, .LBB0_73
# %bb.70:                               # %vector.ph1040
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr0, $vr6, 0
	move	$a0, $a6
	move	$a1, $a5
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2376
	add.d	$a2, $sp, $a2
	move	$a3, $t8
	.p2align	4, , 16
.LBB0_71:                               # %vector.body1045
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a0, -16
	vld	$vr4, $a0, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	vfsub.d	$vr2, $vr4, $vr2
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a3, .LBB0_71
# %bb.72:                               #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_73:                               #   in Loop: Header=BB0_42 Depth=2
	move	$a3, $zero
.LBB0_74:                               # %.lr.ph.i422.preheader1132
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $s4, $a3
	alsl.d	$a1, $a3, $t6, 3
	alsl.d	$a2, $a3, $t1, 3
	alsl.d	$a3, $a3, $s6, 3
	.p2align	4, , 16
.LBB0_75:                               # %.lr.ph.i422
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fmul.d	$fa0, $fa6, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB0_75
# %bb.76:                               # %.lr.ph.i430.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2496
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2360
	add.d	$a1, $sp, $a1
	move	$a2, $ra
	fmov.d	$fs5, $fs2
	.p2align	4, , 16
.LBB0_77:                               # %.lr.ph.i430
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fs5, $fa0, $fa1, $fs5
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_77
# %bb.78:                               # %.lr.ph.i439.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2496
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2632
	add.d	$a1, $sp, $a1
	move	$a2, $ra
	fmov.d	$fs6, $fs2
	.p2align	4, , 16
.LBB0_79:                               # %.lr.ph.i439
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fs6, $fa0, $fa1, $fs6
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_79
# %bb.80:                               # %.lr.ph.preheader.i445
                                        #   in Loop: Header=BB0_42 Depth=2
	beqz	$t7, .LBB0_84
# %bb.81:                               # %vector.ph1023
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr0, $vr6, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	move	$a1, $a7
	move	$a2, $t8
	.p2align	4, , 16
.LBB0_82:                               # %vector.body1028
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a0, -16
	vld	$vr4, $a0, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfadd.d	$vr1, $vr3, $vr1
	vfadd.d	$vr2, $vr4, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB0_82
# %bb.83:                               #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_84:                               #   in Loop: Header=BB0_42 Depth=2
	move	$a2, $zero
.LBB0_85:                               # %.lr.ph.i447.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $s4, $a2
	alsl.d	$a1, $a2, $s7, 3
	alsl.d	$a2, $a2, $t0, 3
	.p2align	4, , 16
.LBB0_86:                               # %.lr.ph.i447
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fmul.d	$fa0, $fa6, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_86
# %bb.87:                               # %.lr.ph.i454.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	beqz	$t7, .LBB0_91
# %bb.88:                               # %vector.ph1006
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr0, $vr6, 0
	move	$a0, $a6
	move	$a1, $a5
	move	$a2, $fp
	move	$a3, $t8
	.p2align	4, , 16
.LBB0_89:                               # %vector.body1011
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a0, -16
	vld	$vr4, $a0, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	vfsub.d	$vr2, $vr4, $vr2
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a3, .LBB0_89
# %bb.90:                               #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_92
	.p2align	4, , 16
.LBB0_91:                               #   in Loop: Header=BB0_42 Depth=2
	move	$a3, $zero
.LBB0_92:                               # %.lr.ph.i454.preheader1131
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $s4, $a3
	alsl.d	$a1, $a3, $t4, 3
	alsl.d	$a2, $a3, $t1, 3
	alsl.d	$a3, $a3, $s6, 3
	.p2align	4, , 16
.LBB0_93:                               # %.lr.ph.i454
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fmul.d	$fa0, $fa6, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB0_93
# %bb.94:                               # %.preheader556.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	move	$a0, $zero
	ori	$a1, $zero, 2800
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_95:                               # %.preheader556
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_96 Depth 4
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2632
	add.d	$a2, $sp, $a2
	move	$a3, $ra
	move	$a4, $a1
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_96:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        #       Parent Loop BB0_95 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a2, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_96
# %bb.97:                               # %__axpy.exit458
                                        #   in Loop: Header=BB0_95 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t5
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t5
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_95
# %bb.98:                               # %.lr.ph.i462.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2496
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2632
	add.d	$a1, $sp, $a1
	move	$a2, $ra
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_99:                               # %.lr.ph.i462
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_99
# %bb.100:                              # %__dot.exit467
                                        #   in Loop: Header=BB0_42 Depth=2
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fmov.d	$fa1, $fs2
	bcnez	$fcc0, .LBB0_102
# %bb.101:                              # %__dot.exit467.thread
                                        #   in Loop: Header=BB0_42 Depth=2
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB0_169
.LBB0_102:                              #   in Loop: Header=BB0_42 Depth=2
	fcmp.clt.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB0_171
.LBB0_103:                              #   in Loop: Header=BB0_42 Depth=2
	fcmp.ceq.d	$fcc0, $fs6, $fs2
	ori	$s4, $zero, 1
	bcnez	$fcc0, .LBB0_172
# %bb.104:                              #   in Loop: Header=BB0_42 Depth=2
	fdiv.d	$fa7, $fs5, $fs6
	fclass.d	$fa0, $fa7
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_172
# %bb.105:                              # %.lr.ph.i470.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	beqz	$t7, .LBB0_109
# %bb.106:                              # %vector.ph989
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr0, $vr7, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	move	$a1, $a6
	move	$a2, $t8
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_107:                              # %vector.body994
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a0, -16
	vld	$vr4, $a0, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfadd.d	$vr1, $vr3, $vr1
	vfadd.d	$vr2, $vr4, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB0_107
# %bb.108:                              #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_109:                              #   in Loop: Header=BB0_42 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
.LBB0_110:                              # %.lr.ph.i470.preheader1130
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $a3, $a2
	alsl.d	$a1, $a2, $s6, 3
	alsl.d	$a2, $a2, $t0, 3
	.p2align	4, , 16
.LBB0_111:                              # %.lr.ph.i470
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fmul.d	$fa0, $fa7, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_111
# %bb.112:                              # %.lr.ph.preheader.i475
                                        #   in Loop: Header=BB0_42 Depth=2
	fneg.d	$fs5, $fa7
	fmul.d	$fa0, $fa6, $fs5
	beqz	$t7, .LBB0_116
# %bb.113:                              # %vector.ph972
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr1, $vr0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	move	$a1, $a5
	move	$a2, $t8
	.p2align	4, , 16
.LBB0_114:                              # %vector.body977
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a0, -16
	vst	$vr3, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB0_114
# %bb.115:                              #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_116:                              #   in Loop: Header=BB0_42 Depth=2
	move	$a2, $zero
.LBB0_117:                              # %.lr.ph.i477.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $a3, $a2
	alsl.d	$a1, $a2, $t1, 3
	alsl.d	$a2, $a2, $t0, 3
	.p2align	4, , 16
.LBB0_118:                              # %.lr.ph.i477
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_118
# %bb.119:                              # %.lr.ph.i484.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	beqz	$t7, .LBB0_123
# %bb.120:                              # %vector.ph955
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr0, $vr7, 0
	move	$a0, $a6
	move	$a1, $s1
	move	$a2, $t8
	.p2align	4, , 16
.LBB0_121:                              # %vector.body960
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a0, -16
	vld	$vr4, $a0, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	vfsub.d	$vr2, $vr4, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB0_121
# %bb.122:                              #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_124
	.p2align	4, , 16
.LBB0_123:                              #   in Loop: Header=BB0_42 Depth=2
	move	$a2, $zero
.LBB0_124:                              # %.lr.ph.i484.preheader1129
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $a3, $a2
	alsl.d	$a1, $a2, $t2, 3
	alsl.d	$a2, $a2, $s6, 3
	.p2align	4, , 16
.LBB0_125:                              # %.lr.ph.i484
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fmul.d	$fa0, $fa7, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_125
# %bb.126:                              # %.lr.ph.i491.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	beqz	$t7, .LBB0_130
# %bb.127:                              # %vector.ph938
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr0, $vr6, 0
	move	$a0, $a6
	move	$a1, $a5
	move	$a2, $t8
	.p2align	4, , 16
.LBB0_128:                              # %vector.body943
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a0, -16
	vld	$vr4, $a0, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	vfsub.d	$vr2, $vr4, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB0_128
# %bb.129:                              #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_131
	.p2align	4, , 16
.LBB0_130:                              #   in Loop: Header=BB0_42 Depth=2
	move	$a2, $zero
.LBB0_131:                              # %.lr.ph.i491.preheader1128
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $a3, $a2
	alsl.d	$a1, $a2, $t1, 3
	alsl.d	$a2, $a2, $s6, 3
	.p2align	4, , 16
.LBB0_132:                              # %.lr.ph.i491
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fmul.d	$fa0, $fa6, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_132
# %bb.133:                              # %.lr.ph.preheader.i496
                                        #   in Loop: Header=BB0_42 Depth=2
	fmul.d	$fa0, $fa6, $fa7
	beqz	$t7, .LBB0_137
# %bb.134:                              # %vector.ph921
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr1, $vr0, 0
	move	$a0, $a6
	move	$a1, $s0
	move	$a2, $t8
	.p2align	4, , 16
.LBB0_135:                              # %vector.body926
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a0, -16
	vst	$vr3, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB0_135
# %bb.136:                              #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_138
	.p2align	4, , 16
.LBB0_137:                              #   in Loop: Header=BB0_42 Depth=2
	move	$a2, $zero
.LBB0_138:                              # %.lr.ph.i498.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $a3, $a2
	alsl.d	$a1, $a2, $t3, 3
	alsl.d	$a2, $a2, $s6, 3
	.p2align	4, , 16
.LBB0_139:                              # %.lr.ph.i498
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_139
# %bb.140:                              # %.preheader.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	move	$a0, $zero
	ori	$a1, $zero, 2800
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_142 Depth 4
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1560
	add.d	$a2, $sp, $a2
	move	$a3, $ra
	move	$a4, $a1
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_142:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        #       Parent Loop BB0_141 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a2, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_142
# %bb.143:                              # %__axpy.exit502
                                        #   in Loop: Header=BB0_141 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t4
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_141
# %bb.144:                              # %.lr.ph.i506.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2632
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1560
	add.d	$a1, $sp, $a1
	move	$a2, $ra
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_145:                              # %.lr.ph.i506
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_145
# %bb.146:                              # %__dot.exit511
                                        #   in Loop: Header=BB0_42 Depth=2
	fcmp.cule.d	$fcc0, $fa0, $fs2
	fmov.d	$fa1, $fs2
	bcnez	$fcc0, .LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_42 Depth=2
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB0_170
.LBB0_148:                              #   in Loop: Header=BB0_42 Depth=2
	fcmp.clt.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB0_171
.LBB0_149:                              # %.lr.ph.i515.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1560
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2664
	add.d	$a1, $sp, $a1
	move	$a2, $ra
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_150:                              # %.lr.ph.i515
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_150
# %bb.151:                              # %__dot.exit520
                                        #   in Loop: Header=BB0_42 Depth=2
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	ori	$s4, $zero, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1576
	add.d	$a1, $sp, $a1
	bnez	$a0, .LBB0_172
# %bb.152:                              # %__dot.exit520
                                        #   in Loop: Header=BB0_42 Depth=2
	fcmp.ceq.d	$fcc0, $fa7, $fs2
	bcnez	$fcc0, .LBB0_172
# %bb.153:                              #   in Loop: Header=BB0_42 Depth=2
	fdiv.d	$fa1, $fa0, $fs3
	fdiv.d	$fa2, $fa6, $fa7
	fmul.d	$fa1, $fa2, $fa1
	fclass.d	$fa2, $fa1
	movfr2gr.d	$a0, $fa2
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_172
# %bb.154:                              # %.lr.ph.i523.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	beqz	$t7, .LBB0_158
# %bb.155:                              # %vector.ph904
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr2, $vr1, 0
	move	$a0, $a1
	move	$a1, $a7
	move	$a2, $t8
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_156:                              # %vector.body909
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $a1, -16
	vld	$vr4, $a1, 0
	vld	$vr5, $a0, -16
	vld	$vr6, $a0, 0
	vfmul.d	$vr3, $vr2, $vr3
	vfmul.d	$vr4, $vr2, $vr4
	vfadd.d	$vr3, $vr5, $vr3
	vfadd.d	$vr4, $vr6, $vr4
	vst	$vr3, $a1, -16
	vst	$vr4, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB0_156
# %bb.157:                              #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_159
	.p2align	4, , 16
.LBB0_158:                              #   in Loop: Header=BB0_42 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
.LBB0_159:                              # %.lr.ph.i523.preheader1127
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $a4, $a2
	alsl.d	$a1, $a2, $s7, 3
	alsl.d	$a2, $a2, $s6, 3
	.p2align	4, , 16
.LBB0_160:                              # %.lr.ph.i523
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a2, 0
	fmul.d	$fa2, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_160
# %bb.161:                              # %.lr.ph.preheader.i528
                                        #   in Loop: Header=BB0_42 Depth=2
	fmul.d	$fa1, $fa1, $fs5
	beqz	$t7, .LBB0_165
# %bb.162:                              # %vector.ph
                                        #   in Loop: Header=BB0_42 Depth=2
	vreplvei.d	$vr2, $vr1, 0
	move	$a0, $a7
	move	$a1, $a5
	move	$a2, $t8
	.p2align	4, , 16
.LBB0_163:                              # %vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $a1, -16
	vld	$vr4, $a1, 0
	vld	$vr5, $a0, -16
	vld	$vr6, $a0, 0
	vfmul.d	$vr3, $vr2, $vr3
	vfmul.d	$vr4, $vr2, $vr4
	vfadd.d	$vr3, $vr5, $vr3
	vfadd.d	$vr4, $vr6, $vr4
	vst	$vr3, $a0, -16
	vst	$vr4, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB0_163
# %bb.164:                              #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_166
	.p2align	4, , 16
.LBB0_165:                              #   in Loop: Header=BB0_42 Depth=2
	move	$a2, $zero
.LBB0_166:                              # %.lr.ph.i530.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $a4, $a2
	alsl.d	$a1, $a2, $t1, 3
	alsl.d	$a2, $a2, $s7, 3
	.p2align	4, , 16
.LBB0_167:                              # %.lr.ph.i530
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a2, 0
	fmul.d	$fa2, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_167
# %bb.168:                              # %__axpy.exit534
                                        #   in Loop: Header=BB0_42 Depth=2
	addi.w	$s2, $s2, 1
	fmov.d	$fs3, $fa0
	bne	$s2, $t7, .LBB0_42
	b	.LBB0_173
.LBB0_169:                              # %call.sqrt1559
                                        #   in Loop: Header=BB0_42 Depth=2
	vst	$vr6, $sp, 80                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vld	$vr6, $sp, 80                   # 16-byte Folded Reload
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2360
	add.d	$t6, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2496
	add.d	$t5, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2632
	add.d	$t4, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1016
	add.d	$t3, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1152
	add.d	$t2, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1288
	add.d	$t1, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1424
	add.d	$t0, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1712
	add.d	$a7, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1576
	add.d	$a6, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1304
	add.d	$a5, $sp, $a0
	fmov.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs4
	bceqz	$fcc0, .LBB0_103
	b	.LBB0_171
.LBB0_170:                              # %call.sqrt1561
                                        #   in Loop: Header=BB0_42 Depth=2
	vst	$vr6, $sp, 80                   # 16-byte Folded Spill
	vst	$vr7, $sp, 48                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vld	$vr7, $sp, 48                   # 16-byte Folded Reload
	vld	$vr6, $sp, 80                   # 16-byte Folded Reload
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2360
	add.d	$t6, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2496
	add.d	$t5, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2632
	add.d	$t4, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1016
	add.d	$t3, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1152
	add.d	$t2, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1288
	add.d	$t1, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1424
	add.d	$t0, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1712
	add.d	$a7, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1304
	add.d	$a5, $sp, $a0
	fmov.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs4
	bceqz	$fcc0, .LBB0_149
	.p2align	4, , 16
.LBB0_171:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s4, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_174
	.p2align	4, , 16
.LBB0_172:                              #   in Loop: Header=BB0_6 Depth=1
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB0_175
.LBB0_173:                              #   in Loop: Header=BB0_6 Depth=1
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$s4, $zero, 1
	fmov.d	$fs3, $fa0
.LBB0_174:                              # %.lr.ph725.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
.LBB0_175:                              # %.lr.ph725.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 4
	bstrins.d	$s0, $t7, 35, 4
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1424
	add.d	$s1, $sp, $a0
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s5, $sp, 144
	.p2align	4, , 16
.LBB0_176:                              # %.lr.ph725
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $s1, 0
	ldx.w	$a4, $fp, $s5
	vldi	$vr0, -912
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s8
	move	$a3, $s8
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 4
	addi.d	$s1, $s1, 8
	bne	$s0, $fp, .LBB0_176
# %bb.177:                              # %._crit_edge726
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	or	$a0, $a1, $a0
	move	$s1, $s2
	move	$s2, $s3
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_5
# %bb.178:                              # %.lr.ph730.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1696
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	ld.w	$a4, $sp, 144
	ori	$a2, $zero, 14
	ori	$a3, $zero, 14
	move	$a0, $s2
	move	$a1, $s1
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 4
	move	$s3, $s1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1704
	add.d	$s1, $sp, $a0
	addi.d	$s5, $sp, 144
	.p2align	4, , 16
.LBB0_179:                              # %.lr.ph730
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $s1, 0
	ldx.w	$a4, $fp, $s5
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 4
	bnez	$s0, .LBB0_179
# %bb.180:                              # %.lr.ph735.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1560
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	ld.w	$a4, $sp, 144
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s2
	move	$a1, $s3
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$fp, $sp, 148
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1568
	add.d	$s0, $sp, $a0
	move	$s1, $s3
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_181:                              # %.lr.ph735
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $s0, 0
	ld.w	$a4, $fp, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 4
	bnez	$s3, .LBB0_181
	b	.LBB0_5
.Lfunc_end0:
	.size	TelescopingCABiCGStab, .Lfunc_end0-TelescopingCABiCGStab
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function CABiCGStab
.LCPI1_0:
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
.LCPI1_1:
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
.LCPI1_2:
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
.LCPI1_3:
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
.LCPI1_4:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
.LCPI1_5:
	.dword	0x0000000000000000              # double 0
	.dword	0x3ff0000000000000              # double 1
	.text
	.globl	CABiCGStab
	.p2align	5
	.type	CABiCGStab,@function
CABiCGStab:                             # @CABiCGStab
# %bb.0:                                # %.preheader461.preheader
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1520
	sub.d	$sp, $sp, $a4
	fmov.d	$fs2, $fa2
	move	$a4, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a2, $zero, 12
	move	$a3, $fp
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 72                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 992                  # 16-byte Folded Spill
	fsqrt.d	$fs3, $fa0
	fcmp.cor.d	$fcc0, $fs3, $fs3
	bceqz	$fcc0, .LBB1_48
.LBB1_1:                                # %.preheader461.preheader.split
	lu12i.w	$a0, 2
	ori	$a0, $a0, 816
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 2312
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2600
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 2312
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_2)
	vst	$vr0, $sp, 1440
	vst	$vr1, $sp, 1456
	vst	$vr2, $sp, 1472
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_3)
	lu52i.d	$a0, $zero, 1023
	lu12i.w	$a1, 2
	ori	$a1, $a1, 952
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1096
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1240
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1384
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1528
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1672
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1816
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1960
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2248
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2392
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2824
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2968
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3112
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2872
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3016
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3160
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3304
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3448
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3592
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3736
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 72
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 216
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 360
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 648
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 792
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	vst	$vr0, $sp, 1488
	ori	$a0, $zero, 31
	lu32i.d	$a0, 12
	movgr2fr.d	$fa0, $zero
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	vld	$vr1, $sp, 992                  # 16-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	st.d	$a0, $sp, 1504
	bcnez	$fcc0, .LBB1_47
# %bb.2:                                # %.preheader461.preheader.split
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fs4, $fa0
	bcnez	$fcc0, .LBB1_47
# %bb.3:                                # %.lr.ph
	move	$a2, $zero
	fmul.d	$fa0, $fs2, $fs3
	fst.d	$fa0, $sp, 264                  # 8-byte Folded Spill
	addi.d	$a0, $sp, 1512
	addi.d	$a0, $a0, 2047
	addi.d	$a1, $a0, 113
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 3960
	add.d	$a1, $sp, $a1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 129
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 257
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2464
	add.d	$s5, $sp, $a0
	ori	$s6, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2320
	add.d	$s3, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2176
	add.d	$s8, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3264
	add.d	$s7, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3128
	add.d	$s2, $sp, $a0
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sltui	$a0, $a1, 196
	addi.w	$a1, $a1, 4
	ld.d	$a2, $sp, 1152                  # 8-byte Folded Reload
	and	$a0, $a0, $a2
	ld.d	$a2, $sp, 960                   # 8-byte Folded Reload
	and	$a0, $a0, $a2
	vld	$vr0, $sp, 976                  # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 0
	move	$a2, $a1
	beqz	$a0, .LBB1_47
.LBB1_5:                                # %.preheader453
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_7 Depth 3
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_15 Depth 3
                                        #       Child Loop BB1_17 Depth 3
                                        #       Child Loop BB1_24 Depth 3
	vst	$vr1, $sp, 992                  # 16-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2464
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2320
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2176
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3264
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3128
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1440
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1440
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1444
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs1
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1444
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1448
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1448
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1452
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1452
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1456
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1456
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1460
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1460
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1464
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1464
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1468
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1468
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1472
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1476
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1476
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1480
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1480
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1484
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1484
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1488
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1488
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1492
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1492
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1496
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1496
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1500
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1500
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1504
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 1316
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1316
	addi.d	$a2, $sp, 1512
	addi.d	$a3, $sp, 1440
	addi.d	$a4, $sp, 1440
	ori	$a5, $zero, 17
	ori	$a6, $zero, 18
	ori	$a7, $zero, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(matmul_grids)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3960
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 1512
	ori	$a2, $zero, 136
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1648
	fst.d	$fa0, $sp, 936                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 1656
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1792
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 136
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 1800
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1936
	fst.d	$fa0, $sp, 920                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 272
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 1944
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2080
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 408
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2088
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 904                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 544
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2232
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 896                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 680
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2376
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 888                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 816
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 880                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 952
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2664
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2800
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 872                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1088
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2808
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2944
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 864                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1224
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2952
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3088
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 856                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1360
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3096
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3232
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 848                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1496
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3240
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3376
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 840                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1632
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3384
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3520
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 832                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1768
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3528
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $sp, 1512
	ori	$a0, $zero, 2152
	fldx.d	$fa0, $a0, $s4
	fst.d	$fa0, $sp, 824                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1904
	add.d	$a0, $sp, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2296
	fldx.d	$fa0, $a0, $s4
	fst.d	$fa0, $sp, 816                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2440
	fldx.d	$fa0, $a0, $s4
	fst.d	$fa0, $sp, 808                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr21, $a0, %pc_lo12(.LCPI1_4)
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_5)
	vst	$vr0, $sp, 1392                 # 16-byte Folded Spill
	move	$s4, $zero
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	fmov.d	$fa5, $fs0
	fst.d	$fs0, $sp, 1136                 # 8-byte Folded Spill
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1328                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1360                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vori.b	$vr19, $vr0, 0
	vst	$vr0, $sp, 1312                 # 16-byte Folded Spill
	vori.b	$vr18, $vr0, 0
	vori.b	$vr12, $vr0, 0
	vori.b	$vr11, $vr0, 0
	vori.b	$vr6, $vr0, 0
	vori.b	$vr4, $vr0, 0
	vori.b	$vr3, $vr0, 0
	vori.b	$vr2, $vr0, 0
	vst	$vr0, $sp, 1184                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1200                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1216                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1248                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1264                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1280                 # 16-byte Folded Spill
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2664
	add.d	$a3, $sp, $a0
.LBB1_6:                                # %.preheader454
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_15 Depth 3
                                        #       Child Loop BB1_17 Depth 3
                                        #       Child Loop BB1_24 Depth 3
	fst.d	$fs0, $sp, 1432                 # 8-byte Folded Spill
	vst	$vr19, $sp, 1168                # 16-byte Folded Spill
	ld.w	$a1, $s1, 1312
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 1312
	vreplvei.d	$vr7, $vr21, 0
	vst	$vr21, $sp, 1008                # 16-byte Folded Spill
	vreplvei.d	$vr8, $vr21, 1
	vreplvei.d	$vr9, $vr18, 0
	vst	$vr18, $sp, 1024                # 16-byte Folded Spill
	vreplvei.d	$vr10, $vr18, 1
	vreplvei.d	$vr13, $vr12, 0
	vst	$vr12, $sp, 1040                # 16-byte Folded Spill
	vreplvei.d	$vr12, $vr12, 1
	vreplvei.d	$vr14, $vr11, 0
	vst	$vr11, $sp, 1056                # 16-byte Folded Spill
	vreplvei.d	$vr21, $vr11, 1
	vreplvei.d	$vr22, $vr6, 0
	vst	$vr6, $sp, 1072                 # 16-byte Folded Spill
	vreplvei.d	$vr23, $vr6, 1
	vreplvei.d	$vr24, $vr4, 0
	vst	$vr4, $sp, 1088                 # 16-byte Folded Spill
	vreplvei.d	$vr25, $vr4, 1
	vreplvei.d	$vr26, $vr3, 0
	vst	$vr3, $sp, 1104                 # 16-byte Folded Spill
	vreplvei.d	$vr27, $vr3, 1
	vreplvei.d	$vr28, $vr2, 0
	vst	$vr2, $sp, 1120                 # 16-byte Folded Spill
	vreplvei.d	$vr29, $vr2, 1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 880
	add.d	$a2, $sp, $a1
	move	$a1, $a2
	.p2align	4, , 16
.LBB1_7:                                # %.preheader450
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, -64
	fld.d	$fa1, $a1, -56
	movgr2fr.d	$fs6, $zero
	fmadd.d	$fa0, $fa0, $fa7, $fs6
	fmadd.d	$fa0, $fa1, $ft0, $fa0
	fld.d	$fa1, $a1, -48
	fld.d	$fa2, $a1, -40
	fld.d	$fa3, $a1, -32
	fld.d	$fa4, $a1, -24
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	fmadd.d	$fa0, $fa2, $ft2, $fa0
	fmadd.d	$fa0, $fa3, $ft5, $fa0
	fmadd.d	$fa0, $fa4, $ft4, $fa0
	fld.d	$fa1, $a1, -16
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$fa4, $a1, 8
	fmadd.d	$fa0, $fa1, $ft6, $fa0
	fmadd.d	$fa0, $fa2, $ft13, $fa0
	fmadd.d	$fa0, $fa3, $ft14, $fa0
	fmadd.d	$fa0, $fa4, $ft15, $fa0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 24
	fld.d	$fa3, $a1, 32
	fld.d	$fa4, $a1, 40
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fmadd.d	$fa0, $fa2, $fs1, $fa0
	fmadd.d	$fa0, $fa3, $fs2, $fa0
	fmadd.d	$fa0, $fa4, $fs3, $fa0
	fld.d	$fa1, $a1, 48
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 64
	fldx.d	$fa4, $a0, $s5
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fmadd.d	$fa0, $fa2, $fs5, $fa0
	fmadd.d	$fa0, $fa3, $fa5, $fa0
	fmul.d	$fa1, $fa4, $fs6
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $s5
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_7
# %bb.8:                                # %.preheader449.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	vst	$vr14, $sp, 608                 # 16-byte Folded Spill
	vst	$vr12, $sp, 624                 # 16-byte Folded Spill
	vst	$vr13, $sp, 640                 # 16-byte Folded Spill
	vst	$vr10, $sp, 656                 # 16-byte Folded Spill
	vst	$vr9, $sp, 672                  # 16-byte Folded Spill
	vst	$vr8, $sp, 688                  # 16-byte Folded Spill
	vst	$vr7, $sp, 704                  # 16-byte Folded Spill
	fst.d	$fa5, $sp, 1144                 # 8-byte Folded Spill
	move	$a0, $zero
	vld	$vr0, $sp, 1328                 # 16-byte Folded Reload
	vreplvei.d	$vr5, $vr0, 0
	vreplvei.d	$vr20, $vr0, 1
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	vreplvei.d	$vr19, $vr0, 0
	vreplvei.d	$vr18, $vr0, 1
	vld	$vr0, $sp, 1360                 # 16-byte Folded Reload
	vreplvei.d	$vr17, $vr0, 0
	vreplvei.d	$vr16, $vr0, 1
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vreplvei.d	$vr15, $vr0, 0
	vreplvei.d	$vr14, $vr0, 1
	vld	$vr0, $sp, 1392                 # 16-byte Folded Reload
	vreplvei.d	$vr13, $vr0, 0
	vreplvei.d	$vr12, $vr0, 1
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vreplvei.d	$vr11, $vr0, 0
	vreplvei.d	$vr10, $vr0, 1
	vld	$vr0, $sp, 1168                 # 16-byte Folded Reload
	vreplvei.d	$vr9, $vr0, 0
	vreplvei.d	$vr8, $vr0, 1
	vld	$vr0, $sp, 1312                 # 16-byte Folded Reload
	vreplvei.d	$vr7, $vr0, 0
	vreplvei.d	$vr6, $vr0, 1
	move	$a1, $a2
	fld.d	$fa4, $sp, 1136                 # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_9:                                # %.preheader449
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fs7, $a1, -64
	fld.d	$fa0, $a1, -56
	fmadd.d	$fs7, $fs7, $fa5, $fs6
	fmadd.d	$fa0, $fa0, $ft12, $fs7
	fld.d	$fs7, $a1, -48
	fld.d	$fa1, $a1, -40
	fld.d	$fa2, $a1, -32
	fld.d	$fa3, $a1, -24
	fmadd.d	$fa0, $fs7, $ft11, $fa0
	fmadd.d	$fa0, $fa1, $ft10, $fa0
	fmadd.d	$fa0, $fa2, $ft9, $fa0
	fmadd.d	$fa0, $fa3, $ft8, $fa0
	fld.d	$fa1, $a1, -16
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$fs7, $a1, 8
	fmadd.d	$fa0, $fa1, $ft7, $fa0
	fmadd.d	$fa0, $fa2, $ft6, $fa0
	fmadd.d	$fa0, $fa3, $ft5, $fa0
	fmadd.d	$fa0, $fs7, $ft4, $fa0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 24
	fld.d	$fa3, $a1, 32
	fld.d	$fs7, $a1, 40
	fmadd.d	$fa0, $fa1, $ft3, $fa0
	fmadd.d	$fa0, $fa2, $ft2, $fa0
	fmadd.d	$fa0, $fa3, $ft1, $fa0
	fmadd.d	$fa0, $fs7, $ft0, $fa0
	fld.d	$fa1, $a1, 48
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 64
	fldx.d	$fs7, $a0, $s3
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmul.d	$fa1, $fs7, $fs6
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $s3
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_9
# %bb.10:                               # %.preheader448.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	vst	$vr20, $sp, 720                 # 16-byte Folded Spill
	vst	$vr19, $sp, 736                 # 16-byte Folded Spill
	vst	$vr18, $sp, 752                 # 16-byte Folded Spill
	vst	$vr17, $sp, 496                 # 16-byte Folded Spill
	vst	$vr16, $sp, 768                 # 16-byte Folded Spill
	vst	$vr15, $sp, 784                 # 16-byte Folded Spill
	vst	$vr14, $sp, 960                 # 16-byte Folded Spill
	vst	$vr13, $sp, 1152                # 16-byte Folded Spill
	vst	$vr12, $sp, 512                 # 16-byte Folded Spill
	vst	$vr11, $sp, 528                 # 16-byte Folded Spill
	vst	$vr10, $sp, 544                 # 16-byte Folded Spill
	vst	$vr9, $sp, 560                  # 16-byte Folded Spill
	vst	$vr8, $sp, 576                  # 16-byte Folded Spill
	vst	$vr7, $sp, 592                  # 16-byte Folded Spill
	vst	$vr6, $sp, 944                  # 16-byte Folded Spill
	vst	$vr5, $sp, 976                  # 16-byte Folded Spill
	move	$a0, $zero
	move	$a1, $a3
	ori	$a2, $zero, 4024
	add.d	$a2, $sp, $a2
	fld.d	$fa4, $sp, 1144                 # 8-byte Folded Reload
	vld	$vr5, $sp, 704                  # 16-byte Folded Reload
	vld	$vr6, $sp, 688                  # 16-byte Folded Reload
	vld	$vr7, $sp, 672                  # 16-byte Folded Reload
	vld	$vr8, $sp, 656                  # 16-byte Folded Reload
	vld	$vr9, $sp, 640                  # 16-byte Folded Reload
	vld	$vr10, $sp, 624                 # 16-byte Folded Reload
	vld	$vr11, $sp, 608                 # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_11:                               # %.preheader448
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, -64
	fld.d	$fa1, $a1, -56
	fmadd.d	$fa0, $fa0, $fa5, $fs6
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fld.d	$fa1, $a1, -48
	fld.d	$fa2, $a1, -40
	fld.d	$fa3, $a1, -32
	fld.d	$fs7, $a1, -24
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa2, $ft0, $fa0
	fmadd.d	$fa0, $fa3, $ft1, $fa0
	fmadd.d	$fa0, $fs7, $ft2, $fa0
	fld.d	$fa1, $a1, -16
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$fs7, $a1, 8
	fmadd.d	$fa0, $fa1, $ft3, $fa0
	fmadd.d	$fa0, $fa2, $ft13, $fa0
	fmadd.d	$fa0, $fa3, $ft14, $fa0
	fmadd.d	$fa0, $fs7, $ft15, $fa0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 24
	fld.d	$fa3, $a1, 32
	fld.d	$fs7, $a1, 40
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fmadd.d	$fa0, $fa2, $fs1, $fa0
	fmadd.d	$fa0, $fa3, $fs2, $fa0
	fmadd.d	$fa0, $fs7, $fs3, $fa0
	fld.d	$fa1, $a1, 48
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 64
	fldx.d	$fs7, $a0, $s8
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fmadd.d	$fa0, $fa2, $fs5, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmul.d	$fa1, $fs7, $fs6
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $s8
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_11
# %bb.12:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2464
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa0, $fs6
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2472
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2480
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2488
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2496
	add.d	$a0, $sp, $a0
	fld.d	$ft6, $a0, 0
	fld.d	$fa4, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft6, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2504
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2512
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2520
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2528
	add.d	$a0, $sp, $a0
	fld.d	$ft6, $a0, 0
	fld.d	$fa4, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $sp, 888                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft6, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2536
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2544
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2552
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2560
	add.d	$a0, $sp, $a0
	fld.d	$ft6, $a0, 0
	fld.d	$fa4, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft6, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2568
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2576
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2584
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2592
	add.d	$a0, $sp, $a0
	fld.d	$ft6, $a0, 0
	fld.d	$fa4, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$ft6, $fa1, $ft6, $fa0
	fcmp.ceq.d	$fcc0, $ft6, $fs6
	vld	$vr10, $sp, 1152                # 16-byte Folded Reload
	vld	$vr11, $sp, 960                 # 16-byte Folded Reload
	vld	$vr12, $sp, 784                 # 16-byte Folded Reload
	vld	$vr13, $sp, 768                 # 16-byte Folded Reload
	vld	$vr17, $sp, 752                 # 16-byte Folded Reload
	vld	$vr18, $sp, 736                 # 16-byte Folded Reload
	vld	$vr19, $sp, 720                 # 16-byte Folded Reload
	bcnez	$fcc0, .LBB1_36
# %bb.13:                               #   in Loop: Header=BB1_6 Depth=2
	vld	$vr2, $sp, 992                  # 16-byte Folded Reload
	fdiv.d	$ft8, $fa2, $ft6
	fclass.d	$fa0, $ft8
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	vld	$vr3, $sp, 1168                 # 16-byte Folded Reload
	bnez	$a0, .LBB1_37
# %bb.14:                               # %.lr.ph.i362.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2176
	add.d	$a0, $sp, $a0
	vld	$vr15, $a0, 0
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2320
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	vreplvei.d	$vr14, $vr16, 0
	vfmul.d	$vr1, $vr14, $vr15
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2192
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2336
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfsub.d	$vr0, $vr0, $vr1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3264
	add.d	$a1, $sp, $a1
	vst	$vr0, $a1, 0
	vfmul.d	$vr0, $vr14, $vr2
	vfsub.d	$vr0, $vr3, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3280
	add.d	$a1, $sp, $a1
	vst	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2208
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2352
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2216
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2360
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$ft12, $fa1, $fa0
	fmul.d	$fa0, $ft8, $fa2
	fsub.d	$ft13, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2224
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2232
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2376
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$ft14, $fa1, $fa0
	fmul.d	$fa0, $ft8, $fa2
	fsub.d	$ft15, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2240
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2384
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2248
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2392
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$fa4, $fa1, $fa0
	fmul.d	$fa0, $ft8, $fa2
	fsub.d	$fa5, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2256
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2400
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2264
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2408
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$fa6, $fa1, $fa0
	fmul.d	$fa0, $ft8, $fa2
	fsub.d	$fa7, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2272
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2416
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2280
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2424
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$ft0, $fa1, $fa0
	fmul.d	$fa0, $ft8, $fa2
	fsub.d	$ft1, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2288
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2432
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2296
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2440
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$fs4, $fa1, $fa0
	fmul.d	$fa0, $ft8, $fa2
	fsub.d	$fs2, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2304
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3264
	add.d	$a1, $sp, $a1
	fld.d	$fs3, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3272
	add.d	$a1, $sp, $a1
	fld.d	$fs1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3280
	add.d	$a1, $sp, $a1
	fld.d	$fs7, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3288
	add.d	$a1, $sp, $a1
	fld.d	$fs5, $a1, 0
	fmul.d	$fa1, $ft8, $fa1
	fsub.d	$fs0, $fa0, $fa1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3296
	add.d	$a1, $sp, $a1
	fst.d	$ft12, $a1, 0
	move	$a1, $a2
	.p2align	4, , 16
.LBB1_15:                               # %.preheader447
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, -64
	fld.d	$fa1, $a1, -56
	fmadd.d	$fa0, $fa0, $fs3, $fs6
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $a1, -48
	fld.d	$fa2, $a1, -40
	fld.d	$fa3, $a1, -32
	fld.d	$ft7, $a1, -24
	fmadd.d	$fa0, $fa1, $fs7, $fa0
	fmadd.d	$fa0, $fa2, $fs5, $fa0
	fmadd.d	$fa0, $fa3, $ft12, $fa0
	fmadd.d	$fa0, $ft7, $ft13, $fa0
	fld.d	$fa1, $a1, -16
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$ft7, $a1, 8
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fmadd.d	$fa0, $fa2, $ft15, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $ft7, $fa5, $fa0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 24
	fld.d	$fa3, $a1, 32
	fld.d	$ft7, $a1, 40
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fmadd.d	$fa0, $fa3, $ft0, $fa0
	fmadd.d	$fa0, $ft7, $ft1, $fa0
	fld.d	$fa1, $a1, 48
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 64
	fldx.d	$ft7, $a0, $s2
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fmadd.d	$fa0, $fa2, $fs2, $fa0
	fmadd.d	$fa0, $fa3, $fs0, $fa0
	fmul.d	$fa1, $ft7, $fs6
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $s2
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_15
# %bb.16:                               # %.lr.ph.i366.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	fst.d	$ft1, $sp, 608                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 624                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 640                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 656                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 672                  # 8-byte Folded Spill
	fst.d	$fa4, $sp, 688                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 704                 # 8-byte Folded Spill
	fst.d	$ft14, $sp, 448                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 464                 # 8-byte Folded Spill
	fst.d	$ft12, $sp, 480                 # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2464
	add.d	$a0, $sp, $a0
	fld.d	$ft7, $a0, 0
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2472
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft8, $ft7
	vld	$vr2, $sp, 976                  # 16-byte Folded Reload
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $sp, 400                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$fa0, $ft11, $fa0
	fst.d	$fa0, $sp, 392                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2488
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft8, $fa1
	fsub.d	$fa1, $ft10, $fa1
	fst.d	$fa1, $sp, 384                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2496
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$fa0, $ft9, $fa0
	fst.d	$fa0, $sp, 376                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2504
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft8, $fa1
	vld	$vr2, $sp, 496                  # 16-byte Folded Reload
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $sp, 368                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2512
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$fa0, $ft5, $fa0
	fst.d	$fa0, $sp, 360                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2520
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft8, $fa1
	fsub.d	$fa1, $ft4, $fa1
	fst.d	$fa1, $sp, 352                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2528
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	fsub.d	$fa0, $ft3, $fa0
	fst.d	$fa0, $sp, 344                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2536
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft8, $fa1
	fsub.d	$fa1, $ft2, $fa1
	fst.d	$fa1, $sp, 336                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2544
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	vld	$vr2, $sp, 512                  # 16-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 328                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2552
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft8, $fa1
	vld	$vr2, $sp, 528                  # 16-byte Folded Reload
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $sp, 320                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2560
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	vld	$vr2, $sp, 544                  # 16-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 312                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2568
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft8, $fa1
	vld	$vr2, $sp, 560                  # 16-byte Folded Reload
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $sp, 304                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2576
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft8, $fa0
	vld	$vr2, $sp, 576                  # 16-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 296                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2584
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft8, $fa1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2592
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	vld	$vr3, $sp, 592                  # 16-byte Folded Reload
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa1, $sp, 288                  # 8-byte Folded Spill
	fmul.d	$fa0, $ft8, $fa0
	vld	$vr1, $sp, 944                  # 16-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 280                  # 8-byte Folded Spill
	fmul.d	$fa0, $ft8, $fa2
	fld.d	$ft14, $sp, 1136                # 8-byte Folded Reload
	fsub.d	$fa0, $ft14, $fa0
	fst.d	$fa0, $sp, 272                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1144                 # 8-byte Folded Reload
	fmul.d	$fa0, $ft8, $fa0
	fld.d	$fa1, $sp, 1432                 # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 1432                 # 8-byte Folded Spill
	vreplvei.d	$vr8, $vr16, 0
	vld	$vr0, $sp, 1120                 # 16-byte Folded Reload
	vfmul.d	$vr0, $vr8, $vr0
	vld	$vr1, $sp, 1104                 # 16-byte Folded Reload
	vfmul.d	$vr1, $vr8, $vr1
	vld	$vr2, $sp, 1088                 # 16-byte Folded Reload
	vfmul.d	$vr2, $vr8, $vr2
	vld	$vr3, $sp, 1072                 # 16-byte Folded Reload
	vfmul.d	$vr3, $vr8, $vr3
	vld	$vr4, $sp, 1056                 # 16-byte Folded Reload
	vfmul.d	$vr4, $vr8, $vr4
	vld	$vr5, $sp, 1008                 # 16-byte Folded Reload
	vfmul.d	$vr5, $vr8, $vr5
	vld	$vr6, $sp, 1024                 # 16-byte Folded Reload
	vfmul.d	$vr6, $vr8, $vr6
	vld	$vr7, $sp, 1040                 # 16-byte Folded Reload
	vst	$vr8, $sp, 240                  # 16-byte Folded Spill
	vfmul.d	$vr7, $vr8, $vr7
	vld	$vr8, $sp, 1216                 # 16-byte Folded Reload
	vfadd.d	$vr8, $vr8, $vr7
	vst	$vr8, $sp, 1216                 # 16-byte Folded Spill
	vld	$vr7, $sp, 1200                 # 16-byte Folded Reload
	vfadd.d	$vr7, $vr7, $vr6
	vst	$vr7, $sp, 1200                 # 16-byte Folded Spill
	vld	$vr6, $sp, 1184                 # 16-byte Folded Reload
	vfadd.d	$vr6, $vr6, $vr5
	vst	$vr6, $sp, 1184                 # 16-byte Folded Spill
	vld	$vr5, $sp, 1232                 # 16-byte Folded Reload
	vfadd.d	$vr5, $vr5, $vr4
	vst	$vr5, $sp, 1232                 # 16-byte Folded Spill
	vld	$vr4, $sp, 1248                 # 16-byte Folded Reload
	vfadd.d	$vr4, $vr4, $vr3
	vst	$vr4, $sp, 1248                 # 16-byte Folded Spill
	vld	$vr3, $sp, 1264                 # 16-byte Folded Reload
	vfadd.d	$vr3, $vr3, $vr2
	vst	$vr3, $sp, 1264                 # 16-byte Folded Spill
	vld	$vr2, $sp, 1280                 # 16-byte Folded Reload
	vfadd.d	$vr2, $vr2, $vr1
	vst	$vr2, $sp, 1280                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1296                 # 16-byte Folded Reload
	vfadd.d	$vr1, $vr1, $vr0
	vst	$vr1, $sp, 1296                 # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2560
	add.d	$a1, $sp, $a1
	vld	$vr10, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2544
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2528
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2464
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2512
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2496
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	vfmul.d	$vr0, $vr14, $vr0
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	vfsub.d	$vr1, $vr1, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3264
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	vst	$vr2, $sp, 128                  # 16-byte Folded Spill
	vfmul.d	$vr0, $vr14, $vr2
	vld	$vr2, $sp, 1344                 # 16-byte Folded Reload
	vfsub.d	$vr2, $vr2, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3280
	add.d	$a1, $sp, $a1
	vst	$vr2, $a1, 0
	vst	$vr3, $sp, 192                  # 16-byte Folded Spill
	vfmul.d	$vr0, $vr14, $vr3
	vld	$vr3, $sp, 1360                 # 16-byte Folded Reload
	vfsub.d	$vr3, $vr3, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3296
	add.d	$a1, $sp, $a1
	vst	$vr3, $a1, 0
	vst	$vr4, $sp, 224                  # 16-byte Folded Spill
	vfmul.d	$vr0, $vr14, $vr4
	vld	$vr4, $sp, 1376                 # 16-byte Folded Reload
	vfsub.d	$vr6, $vr4, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3312
	add.d	$a1, $sp, $a1
	vst	$vr6, $a1, 0
	vst	$vr5, $sp, 176                  # 16-byte Folded Spill
	vfmul.d	$vr0, $vr14, $vr5
	vld	$vr4, $sp, 1392                 # 16-byte Folded Reload
	vfsub.d	$vr8, $vr4, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3328
	add.d	$a1, $sp, $a1
	vst	$vr8, $a1, 0
	vst	$vr7, $sp, 160                  # 16-byte Folded Spill
	vfmul.d	$vr0, $vr14, $vr7
	vld	$vr4, $sp, 1408                 # 16-byte Folded Reload
	vfsub.d	$vr9, $vr4, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3344
	add.d	$a1, $sp, $a1
	vst	$vr9, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2576
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	vst	$vr10, $sp, 144                 # 16-byte Folded Spill
	vfmul.d	$vr0, $vr14, $vr10
	vld	$vr23, $sp, 1168                # 16-byte Folded Reload
	vfsub.d	$vr10, $vr23, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3360
	add.d	$a1, $sp, $a1
	vst	$vr10, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2592
	add.d	$a1, $sp, $a1
	fld.d	$fa5, $a1, 0
	vst	$vr4, $sp, 96                   # 16-byte Folded Spill
	vfmul.d	$vr0, $vr14, $vr4
	vld	$vr4, $sp, 1312                 # 16-byte Folded Reload
	vfsub.d	$vr17, $vr4, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3376
	add.d	$a1, $sp, $a1
	vst	$vr17, $a1, 0
	vst	$vr16, $sp, 960                 # 16-byte Folded Spill
	fst.d	$fa5, $sp, 120                  # 8-byte Folded Spill
	fmul.d	$fa0, $ft8, $fa5
	fsub.d	$fa0, $ft14, $fa0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3392
	add.d	$a1, $sp, $a1
	fst.d	$fa0, $a1, 0
	vreplvei.d	$vr16, $vr1, 0
	vreplvei.d	$vr11, $vr1, 1
	vreplvei.d	$vr12, $vr2, 0
	vreplvei.d	$vr13, $vr2, 1
	vreplvei.d	$vr14, $vr3, 0
	vreplvei.d	$vr4, $vr3, 1
	vreplvei.d	$vr5, $vr6, 0
	vreplvei.d	$vr6, $vr6, 1
	vreplvei.d	$vr7, $vr8, 0
	vreplvei.d	$vr1, $vr8, 1
	vreplvei.d	$vr2, $vr9, 0
	vreplvei.d	$vr3, $vr9, 1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3128
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 1152                 # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3136
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 784                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3144
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 768                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3152
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 752                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3160
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 736                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3168
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 720                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3176
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 592                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3184
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 576                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3192
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 560                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3200
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 544                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3208
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 528                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3216
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 512                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3224
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 496                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3232
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 432                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3240
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 424                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3248
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 416                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3256
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 408                  # 8-byte Folded Spill
	vreplvei.d	$vr15, $vr10, 0
	vreplvei.d	$vr8, $vr10, 1
	vreplvei.d	$vr9, $vr17, 0
	vreplvei.d	$vr10, $vr17, 1
	move	$a1, $a2
	.p2align	4, , 16
.LBB1_17:                               # %.preheader446
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$ft9, $a1, -64
	fld.d	$ft10, $a1, -56
	fmadd.d	$ft9, $ft9, $ft8, $fs6
	fmadd.d	$ft9, $ft10, $ft3, $ft9
	fld.d	$ft10, $a1, -48
	fld.d	$ft11, $a1, -40
	fld.d	$ft12, $a1, -32
	fld.d	$ft13, $a1, -24
	fmadd.d	$ft9, $ft10, $ft4, $ft9
	fmadd.d	$ft9, $ft11, $ft5, $ft9
	fmadd.d	$ft9, $ft12, $ft6, $ft9
	fmadd.d	$ft9, $ft13, $fa4, $ft9
	fld.d	$ft10, $a1, -16
	fld.d	$ft11, $a1, -8
	fld.d	$ft12, $a1, 0
	fld.d	$ft13, $a1, 8
	fmadd.d	$ft9, $ft10, $fa5, $ft9
	fmadd.d	$ft9, $ft11, $fa6, $ft9
	fmadd.d	$ft9, $ft12, $fa7, $ft9
	fmadd.d	$ft9, $ft13, $fa1, $ft9
	fld.d	$ft10, $a1, 16
	fld.d	$ft11, $a1, 24
	fld.d	$ft12, $a1, 32
	fld.d	$ft13, $a1, 40
	fmadd.d	$ft9, $ft10, $fa2, $ft9
	fmadd.d	$ft9, $ft11, $fa3, $ft9
	fmadd.d	$ft9, $ft12, $ft7, $ft9
	fmadd.d	$ft9, $ft13, $ft0, $ft9
	fld.d	$ft10, $a1, 48
	fld.d	$ft11, $a1, 56
	fld.d	$ft12, $a1, 64
	fldx.d	$ft13, $a0, $s2
	fmadd.d	$ft9, $ft10, $ft1, $ft9
	fmadd.d	$ft9, $ft11, $ft2, $ft9
	fmadd.d	$ft9, $ft12, $fa0, $ft9
	fmul.d	$ft10, $ft13, $fs6
	fadd.d	$ft9, $ft9, $ft10
	fstx.d	$ft9, $a0, $s2
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_17
# %bb.18:                               # %.lr.ph.i393.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3128
	add.d	$a0, $sp, $a0
	fld.d	$ft9, $a0, 0
	fmadd.d	$ft8, $ft8, $ft9, $fs6
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3136
	add.d	$a0, $sp, $a0
	fld.d	$ft9, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3144
	add.d	$a0, $sp, $a0
	fld.d	$ft10, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3152
	add.d	$a0, $sp, $a0
	fld.d	$ft11, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3160
	add.d	$a0, $sp, $a0
	fld.d	$ft12, $a0, 0
	fmadd.d	$ft3, $ft3, $ft9, $ft8
	fmadd.d	$ft3, $ft4, $ft10, $ft3
	fmadd.d	$ft3, $ft5, $ft11, $ft3
	fmadd.d	$ft3, $ft6, $ft12, $ft3
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3168
	add.d	$a0, $sp, $a0
	fld.d	$ft4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3176
	add.d	$a0, $sp, $a0
	fld.d	$ft5, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3184
	add.d	$a0, $sp, $a0
	fld.d	$ft6, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3192
	add.d	$a0, $sp, $a0
	fld.d	$ft8, $a0, 0
	fmadd.d	$fa4, $fa4, $ft4, $ft3
	fmadd.d	$fa4, $fa5, $ft5, $fa4
	fmadd.d	$fa4, $fa6, $ft6, $fa4
	fmadd.d	$fa4, $fa7, $ft8, $fa4
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3200
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3208
	add.d	$a0, $sp, $a0
	fld.d	$fa6, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3216
	add.d	$a0, $sp, $a0
	fld.d	$fa7, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3224
	add.d	$a0, $sp, $a0
	fld.d	$ft3, $a0, 0
	fmadd.d	$fa1, $fa1, $fa5, $fa4
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fmadd.d	$fa1, $fa3, $fa7, $fa1
	fmadd.d	$fa1, $ft7, $ft3, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3232
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3240
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3248
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3256
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $ft0, $fa2, $fa1
	fmadd.d	$fa1, $ft1, $fa3, $fa1
	fmadd.d	$fa1, $ft2, $fa4, $fa1
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs6
	fmov.d	$fa1, $fs6
	bcnez	$fcc0, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_6 Depth=2
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB1_32
.LBB1_20:                               #   in Loop: Header=BB1_6 Depth=2
	fld.d	$fa0, $sp, 264                  # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fld.d	$fa2, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 688                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 656                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 640                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 624                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 608                  # 8-byte Folded Reload
	bcnez	$fcc0, .LBB1_38
# %bb.21:                               #   in Loop: Header=BB1_6 Depth=2
	fld.d	$ft1, $sp, 1152                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fs3, $ft1, $fs6
	fld.d	$ft2, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs1, $ft2, $fa0
	fld.d	$ft3, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs7, $ft3, $fa0
	fld.d	$ft4, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs5, $ft4, $fa0
	fld.d	$fa1, $sp, 480                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft5, $fa0
	fld.d	$fa1, $sp, 464                  # 8-byte Folded Reload
	fld.d	$ft6, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft6, $fa0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft7, $fa0
	fld.d	$ft8, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft8, $fa0
	fld.d	$ft9, $sp, 560                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $ft9, $fa0
	fld.d	$fa1, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fmov.d	$fa4, $fa1
	fld.d	$fa1, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fmov.d	$fa5, $fa1
	fld.d	$fa1, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa6, $fa1, $fa0
	fmov.d	$fa6, $fa1
	fld.d	$fa1, $sp, 496                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa7, $fa1, $fa0
	fmov.d	$fa7, $fa1
	fld.d	$fa1, $sp, 432                  # 8-byte Folded Reload
	fmadd.d	$fa0, $ft0, $fa1, $fa0
	fmov.d	$ft0, $fa1
	fld.d	$ft10, $sp, 424                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fs4, $ft10, $fa0
	fld.d	$ft11, $sp, 416                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fs2, $ft11, $fa0
	fld.d	$ft12, $sp, 408                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fs0, $ft12, $fa0
	movgr2fr.d	$fa0, $zero
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_40
# %bb.22:                               #   in Loop: Header=BB1_6 Depth=2
	fld.d	$fa2, $sp, 400                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa2, $ft1, $fs6
	fld.d	$fa3, $sp, 392                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft2, $fa2
	fld.d	$fa3, $sp, 384                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft3, $fa2
	fld.d	$fa3, $sp, 376                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft4, $fa2
	fld.d	$fa3, $sp, 368                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft5, $fa2
	fld.d	$fa3, $sp, 360                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft6, $fa2
	fld.d	$fa3, $sp, 352                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft7, $fa2
	fld.d	$fa3, $sp, 344                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft8, $fa2
	fld.d	$fa3, $sp, 336                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft9, $fa2
	fld.d	$fa3, $sp, 328                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fld.d	$fa3, $sp, 320                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa5, $fa2
	fld.d	$fa3, $sp, 312                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fld.d	$fa3, $sp, 304                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa7, $fa2
	fld.d	$fa3, $sp, 296                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft0, $fa2
	fld.d	$fa3, $sp, 288                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft10, $fa2
	fld.d	$fa3, $sp, 280                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft11, $fa2
	fld.d	$fa3, $sp, 272                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft12, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	fclass.d	$fa1, $fa2
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	fld.d	$fs0, $sp, 1432                 # 8-byte Folded Reload
	bnez	$a0, .LBB1_45
# %bb.23:                               # %.lr.ph.i399.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	move	$a0, $zero
	fmul.d	$fa1, $fa2, $ft14
	fadd.d	$fa1, $fs0, $fa1
	fneg.d	$fa3, $fa2
	vst	$vr2, $sp, 1152                 # 16-byte Folded Spill
	vld	$vr30, $sp, 960                 # 16-byte Folded Reload
	fst.d	$fa3, $sp, 784                  # 8-byte Folded Spill
	fmul.d	$fa2, $fs6, $fa3
	vld	$vr3, $sp, 1152                 # 16-byte Folded Reload
	vreplvei.d	$vr3, $vr3, 0
	vld	$vr31, $sp, 1312                # 16-byte Folded Reload
	vfmul.d	$vr4, $vr3, $vr31
	vld	$vr5, $sp, 1296                 # 16-byte Folded Reload
	vfadd.d	$vr4, $vr5, $vr4
	vfmul.d	$vr5, $vr3, $vr23
	vld	$vr6, $sp, 1280                 # 16-byte Folded Reload
	vfadd.d	$vr5, $vr6, $vr5
	vld	$vr20, $sp, 1408                # 16-byte Folded Reload
	vfmul.d	$vr6, $vr3, $vr20
	vld	$vr7, $sp, 1264                 # 16-byte Folded Reload
	vfadd.d	$vr6, $vr7, $vr6
	vld	$vr21, $sp, 1392                # 16-byte Folded Reload
	vfmul.d	$vr7, $vr3, $vr21
	vld	$vr8, $sp, 1248                 # 16-byte Folded Reload
	vfadd.d	$vr7, $vr8, $vr7
	vld	$vr29, $sp, 1328                # 16-byte Folded Reload
	vfmul.d	$vr8, $vr3, $vr29
	vld	$vr9, $sp, 1184                 # 16-byte Folded Reload
	vfadd.d	$vr8, $vr9, $vr8
	vld	$vr28, $sp, 1344                # 16-byte Folded Reload
	vfmul.d	$vr9, $vr3, $vr28
	vld	$vr10, $sp, 1200                # 16-byte Folded Reload
	vfadd.d	$vr9, $vr10, $vr9
	vld	$vr27, $sp, 1360                # 16-byte Folded Reload
	vfmul.d	$vr10, $vr3, $vr27
	vld	$vr11, $sp, 1216                # 16-byte Folded Reload
	vfadd.d	$vr10, $vr11, $vr10
	vld	$vr26, $sp, 1376                # 16-byte Folded Reload
	vfmul.d	$vr11, $vr3, $vr26
	vld	$vr12, $sp, 1232                # 16-byte Folded Reload
	vfadd.d	$vr11, $vr12, $vr11
	vreplvei.d	$vr12, $vr2, 0
	vld	$vr13, $sp, 96                  # 16-byte Folded Reload
	vfmul.d	$vr13, $vr12, $vr13
	vld	$vr14, $sp, 144                 # 16-byte Folded Reload
	vfmul.d	$vr14, $vr12, $vr14
	vld	$vr15, $sp, 160                 # 16-byte Folded Reload
	vfmul.d	$vr15, $vr12, $vr15
	vld	$vr16, $sp, 176                 # 16-byte Folded Reload
	vfmul.d	$vr16, $vr12, $vr16
	vld	$vr17, $sp, 208                 # 16-byte Folded Reload
	vfmul.d	$vr17, $vr12, $vr17
	vld	$vr18, $sp, 128                 # 16-byte Folded Reload
	vfmul.d	$vr18, $vr12, $vr18
	vld	$vr19, $sp, 192                 # 16-byte Folded Reload
	vfmul.d	$vr19, $vr12, $vr19
	vld	$vr25, $sp, 224                 # 16-byte Folded Reload
	vfmul.d	$vr12, $vr12, $vr25
	vfadd.d	$vr11, $vr11, $vr12
	vst	$vr11, $sp, 1232                # 16-byte Folded Spill
	vfadd.d	$vr10, $vr10, $vr19
	vst	$vr10, $sp, 1216                # 16-byte Folded Spill
	vfadd.d	$vr9, $vr9, $vr18
	vst	$vr9, $sp, 1200                 # 16-byte Folded Spill
	vfadd.d	$vr8, $vr8, $vr17
	vst	$vr8, $sp, 1184                 # 16-byte Folded Spill
	vfadd.d	$vr7, $vr7, $vr16
	vst	$vr7, $sp, 1248                 # 16-byte Folded Spill
	vfadd.d	$vr6, $vr6, $vr15
	vst	$vr6, $sp, 1264                 # 16-byte Folded Spill
	vfadd.d	$vr5, $vr5, $vr14
	vst	$vr5, $sp, 1280                 # 16-byte Folded Spill
	vfadd.d	$vr4, $vr4, $vr13
	vst	$vr4, $sp, 1296                 # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2592
	add.d	$a1, $sp, $a1
	fld.d	$fa5, $a1, 0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $sp, 1432                 # 8-byte Folded Spill
	vld	$vr1, $sp, 1152                 # 16-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa4
	fsub.d	$fa1, $ft14, $fa1
	fst.d	$fa5, $sp, 768                  # 8-byte Folded Spill
	fmul.d	$fa2, $fs6, $fa5
	fsub.d	$fa1, $fa1, $fa2
	vld	$vr2, $sp, 1152                 # 16-byte Folded Reload
	fmul.d	$fa2, $fs6, $fa2
	vld	$vr30, $sp, 1152                # 16-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2432
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2416
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2400
	add.d	$a1, $sp, $a1
	vld	$vr6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2384
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2320
	add.d	$a1, $sp, $a1
	vld	$vr8, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2336
	add.d	$a1, $sp, $a1
	vld	$vr9, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2352
	add.d	$a1, $sp, $a1
	vld	$vr10, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	add.d	$a1, $sp, $a1
	vld	$vr11, $a1, 0
	vfmul.d	$vr8, $vr3, $vr8
	vfmul.d	$vr9, $vr3, $vr9
	vfmul.d	$vr10, $vr3, $vr10
	vfmul.d	$vr11, $vr3, $vr11
	vfmul.d	$vr7, $vr3, $vr7
	vfmul.d	$vr6, $vr3, $vr6
	vfmul.d	$vr5, $vr3, $vr5
	vfmul.d	$vr3, $vr3, $vr4
	vfsub.d	$vr3, $vr31, $vr3
	vfsub.d	$vr4, $vr23, $vr5
	vfsub.d	$vr5, $vr20, $vr6
	vfsub.d	$vr6, $vr21, $vr7
	vfsub.d	$vr7, $vr26, $vr11
	vfsub.d	$vr10, $vr27, $vr10
	vfsub.d	$vr9, $vr28, $vr9
	vfsub.d	$vr8, $vr29, $vr8
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2576
	add.d	$a1, $sp, $a1
	vld	$vr29, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2560
	add.d	$a1, $sp, $a1
	vld	$vr28, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2544
	add.d	$a1, $sp, $a1
	vld	$vr27, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2528
	add.d	$a1, $sp, $a1
	vld	$vr26, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2512
	add.d	$a1, $sp, $a1
	vld	$vr23, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2496
	add.d	$a1, $sp, $a1
	vld	$vr21, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2464
	add.d	$a1, $sp, $a1
	vld	$vr11, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	vld	$vr31, $a1, 0
	vld	$vr14, $sp, 240                 # 16-byte Folded Reload
	vfmul.d	$vr12, $vr14, $vr29
	vfmul.d	$vr13, $vr14, $vr28
	vfmul.d	$vr11, $vr14, $vr11
	vfsub.d	$vr8, $vr8, $vr11
	vfmul.d	$vr11, $vr14, $vr31
	vfsub.d	$vr9, $vr9, $vr11
	vfmul.d	$vr11, $vr14, $vr21
	vfsub.d	$vr10, $vr10, $vr11
	vfmul.d	$vr11, $vr14, $vr23
	vfsub.d	$vr7, $vr7, $vr11
	vfmul.d	$vr11, $vr14, $vr27
	vfmul.d	$vr14, $vr14, $vr26
	vfsub.d	$vr6, $vr6, $vr14
	vfsub.d	$vr5, $vr5, $vr11
	vfsub.d	$vr4, $vr4, $vr13
	vfsub.d	$vr3, $vr3, $vr12
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2224
	add.d	$a1, $sp, $a1
	vld	$vr11, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2176
	add.d	$a1, $sp, $a1
	vld	$vr12, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2192
	add.d	$a1, $sp, $a1
	vld	$vr13, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2208
	add.d	$a1, $sp, $a1
	vld	$vr14, $a1, 0
	vreplvei.d	$vr15, $vr2, 0
	vfmul.d	$vr12, $vr15, $vr12
	vfmul.d	$vr13, $vr15, $vr13
	vfmul.d	$vr14, $vr15, $vr14
	vfmul.d	$vr11, $vr15, $vr11
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2240
	add.d	$a1, $sp, $a1
	vld	$vr16, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2256
	add.d	$a1, $sp, $a1
	vld	$vr17, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2272
	add.d	$a1, $sp, $a1
	vld	$vr18, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2288
	add.d	$a1, $sp, $a1
	vld	$vr19, $a1, 0
	vfmul.d	$vr16, $vr15, $vr16
	vfmul.d	$vr17, $vr15, $vr17
	vfmul.d	$vr18, $vr15, $vr18
	vfmul.d	$vr15, $vr15, $vr19
	vfadd.d	$vr15, $vr3, $vr15
	vfadd.d	$vr19, $vr4, $vr18
	vfadd.d	$vr4, $vr5, $vr17
	vfadd.d	$vr5, $vr6, $vr16
	vfadd.d	$vr6, $vr7, $vr11
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2304
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	vfadd.d	$vr7, $vr10, $vr14
	vfadd.d	$vr9, $vr9, $vr13
	vfadd.d	$vr8, $vr8, $vr12
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$ft3, $fa1, $fa2
	vreplvei.d	$vr20, $vr8, 0
	vst	$vr8, $sp, 1328                 # 16-byte Folded Spill
	vreplvei.d	$vr8, $vr8, 1
	vreplvei.d	$vr10, $vr9, 0
	vst	$vr9, $sp, 1344                 # 16-byte Folded Spill
	vreplvei.d	$vr9, $vr9, 1
	vreplvei.d	$vr12, $vr7, 0
	move	$a1, $a2
	vst	$vr7, $sp, 1360                 # 16-byte Folded Spill
	vreplvei.d	$vr7, $vr7, 1
	vreplvei.d	$vr13, $vr6, 0
	vst	$vr6, $sp, 1376                 # 16-byte Folded Spill
	vreplvei.d	$vr6, $vr6, 1
	vreplvei.d	$vr14, $vr5, 0
	vst	$vr5, $sp, 1392                 # 16-byte Folded Spill
	vreplvei.d	$vr16, $vr5, 1
	vreplvei.d	$vr17, $vr4, 0
	vst	$vr4, $sp, 1408                 # 16-byte Folded Spill
	vreplvei.d	$vr18, $vr4, 1
	vreplvei.d	$vr1, $vr19, 0
	vreplvei.d	$vr24, $vr19, 1
	vreplvei.d	$vr25, $vr15, 0
	vst	$vr15, $sp, 1312                # 16-byte Folded Spill
	vreplvei.d	$vr22, $vr15, 1
	vori.b	$vr15, $vr1, 0
	.p2align	4, , 16
.LBB1_24:                               # %.preheader
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -64
	fld.d	$fa2, $a1, -56
	fmadd.d	$fa1, $fa1, $ft12, $fa0
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $a1, -48
	fld.d	$fa3, $a1, -40
	fld.d	$fa4, $a1, -32
	fld.d	$fa5, $a1, -24
	fmadd.d	$fa1, $fa2, $ft2, $fa1
	fmadd.d	$fa1, $fa3, $ft1, $fa1
	fmadd.d	$fa1, $fa4, $ft4, $fa1
	fmadd.d	$fa1, $fa5, $fa7, $fa1
	fld.d	$fa2, $a1, -16
	fld.d	$fa3, $a1, -8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a1, 8
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	fmadd.d	$fa1, $fa4, $ft6, $fa1
	fmadd.d	$fa1, $fa5, $ft8, $fa1
	fld.d	$fa2, $a1, 16
	fld.d	$fa3, $a1, 24
	fld.d	$fa4, $a1, 32
	fld.d	$fa5, $a1, 40
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fmadd.d	$fa1, $fa3, $ft10, $fa1
	fmadd.d	$fa1, $fa4, $ft7, $fa1
	fmadd.d	$fa1, $fa5, $fs0, $fa1
	fld.d	$fa2, $a1, 48
	fld.d	$fa3, $a1, 56
	fld.d	$fa4, $a1, 64
	fldx.d	$fa5, $a0, $s7
	fmadd.d	$fa1, $fa2, $fs1, $fa1
	fmadd.d	$fa1, $fa3, $ft14, $fa1
	fmadd.d	$fa1, $fa4, $ft3, $fa1
	fmul.d	$fa2, $fa5, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a0, $s7
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_24
# %bb.25:                               # %.lr.ph.i424.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3264
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fa1, $ft12, $fa1, $fa0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3272
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3280
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3288
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3296
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $ft0, $fa2, $fa1
	fmadd.d	$fa1, $ft2, $fa3, $fa1
	fmadd.d	$fa1, $ft1, $fa4, $fa1
	fmadd.d	$fa1, $ft4, $fa5, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3304
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3312
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3320
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3328
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fa7, $fa2, $fa1
	fmadd.d	$fa1, $ft5, $fa3, $fa1
	fmadd.d	$fa1, $fa6, $fa4, $fa1
	fmadd.d	$fa1, $ft6, $fa5, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3336
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3344
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3352
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3360
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $ft8, $fa2, $fa1
	fmadd.d	$fa1, $ft9, $fa3, $fa1
	fmadd.d	$fa1, $ft10, $fa4, $fa1
	fmadd.d	$fa1, $ft7, $fa5, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3368
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3376
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3384
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3392
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fs0, $fa2, $fa1
	fmadd.d	$fa1, $fs1, $fa3, $fa1
	fmadd.d	$fa1, $ft14, $fa4, $fa1
	fmadd.d	$fa1, $ft3, $fa5, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	vld	$vr3, $sp, 992                  # 16-byte Folded Reload
	bcnez	$fcc0, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_6 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_33
.LBB1_27:                               #   in Loop: Header=BB1_6 Depth=2
	fld.d	$fa1, $sp, 264                  # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fst.d	$ft3, $sp, 1136                 # 8-byte Folded Spill
	bcnez	$fcc0, .LBB1_34
.LBB1_28:                               # %.lr.ph.i430.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	movgr2fr.d	$fa1, $zero
	fld.d	$fa0, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft12, $fa1
	fld.d	$fa2, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft0, $fa0
	fld.d	$fa2, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft2, $fa0
	fld.d	$fa2, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft1, $fa0
	fld.d	$fa2, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft4, $fa0
	fld.d	$fa2, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fld.d	$fa2, $sp, 888                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft5, $fa0
	fld.d	$fa2, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fld.d	$fa2, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft6, $fa0
	fld.d	$fa2, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft8, $fa0
	fld.d	$fa2, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft9, $fa0
	fld.d	$fa2, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft10, $fa0
	fld.d	$fa2, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft7, $fa0
	fld.d	$fa2, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs0, $fa0
	fld.d	$fa2, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs1, $fa0
	fld.d	$fa2, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft14, $fa0
	fld.d	$fa2, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft3, $fa0
	fclass.d	$fa2, $fa0
	movfr2gr.d	$a0, $fa2
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_35
# %bb.29:                               # %.lr.ph.i430.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	fcmp.ceq.d	$fcc0, $fs6, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.30:                               #   in Loop: Header=BB1_6 Depth=2
	fdiv.d	$fa1, $fa0, $fa3
	vld	$vr2, $sp, 960                  # 16-byte Folded Reload
	fdiv.d	$fa2, $fa2, $fs6
	fmul.d	$fa1, $fa2, $fa1
	fclass.d	$fa2, $fa1
	movfr2gr.d	$a0, $fa2
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_35
# %bb.31:                               # %.lr.ph.i436.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	vreplvei.d	$vr2, $vr1, 0
	vld	$vr3, $sp, 1040                 # 16-byte Folded Reload
	vfmul.d	$vr3, $vr2, $vr3
	vld	$vr4, $sp, 1024                 # 16-byte Folded Reload
	vfmul.d	$vr4, $vr2, $vr4
	vld	$vr5, $sp, 1008                 # 16-byte Folded Reload
	vfmul.d	$vr5, $vr2, $vr5
	vld	$vr6, $sp, 1056                 # 16-byte Folded Reload
	vfmul.d	$vr6, $vr2, $vr6
	vld	$vr7, $sp, 1072                 # 16-byte Folded Reload
	vfmul.d	$vr7, $vr2, $vr7
	vld	$vr8, $sp, 1088                 # 16-byte Folded Reload
	vfmul.d	$vr8, $vr2, $vr8
	vld	$vr9, $sp, 1104                 # 16-byte Folded Reload
	vfmul.d	$vr9, $vr2, $vr9
	vld	$vr10, $sp, 1120                # 16-byte Folded Reload
	vfmul.d	$vr2, $vr2, $vr10
	fld.d	$ft2, $sp, 1144                 # 8-byte Folded Reload
	fmul.d	$ft2, $fa1, $ft2
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $sp, 784                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $ft3
	vld	$vr11, $sp, 1312                # 16-byte Folded Reload
	vfadd.d	$vr2, $vr11, $vr2
	vfadd.d	$vr9, $vr19, $vr9
	vld	$vr11, $sp, 1408                # 16-byte Folded Reload
	vfadd.d	$vr8, $vr11, $vr8
	vld	$vr11, $sp, 1392                # 16-byte Folded Reload
	vfadd.d	$vr7, $vr11, $vr7
	vld	$vr11, $sp, 1376                # 16-byte Folded Reload
	vfadd.d	$vr6, $vr11, $vr6
	vld	$vr11, $sp, 1328                # 16-byte Folded Reload
	vfadd.d	$vr5, $vr11, $vr5
	vld	$vr11, $sp, 1344                # 16-byte Folded Reload
	vfadd.d	$vr4, $vr11, $vr4
	vld	$vr11, $sp, 1360                # 16-byte Folded Reload
	vfadd.d	$vr3, $vr11, $vr3
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2464
	add.d	$a0, $sp, $a0
	vld	$vr11, $a0, 0
	vreplvei.d	$vr12, $vr1, 0
	vfmul.d	$vr13, $vr12, $vr29
	vfmul.d	$vr14, $vr12, $vr28
	vfmul.d	$vr15, $vr12, $vr27
	vfmul.d	$vr16, $vr12, $vr26
	vfmul.d	$vr17, $vr12, $vr23
	vfmul.d	$vr11, $vr12, $vr11
	vfmul.d	$vr18, $vr12, $vr31
	vfmul.d	$vr12, $vr12, $vr21
	vfadd.d	$vr12, $vr3, $vr12
	vfadd.d	$vr18, $vr4, $vr18
	vfadd.d	$vr21, $vr5, $vr11
	vfadd.d	$vr11, $vr6, $vr17
	vfadd.d	$vr6, $vr7, $vr16
	vfadd.d	$vr4, $vr8, $vr15
	vfadd.d	$vr3, $vr9, $vr14
	vfadd.d	$vr2, $vr2, $vr13
	fld.d	$fa5, $sp, 768                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa5
	addi.w	$s4, $s4, 1
	fadd.d	$fa5, $ft2, $fa1
	fmov.d	$fa1, $fa0
	vst	$vr1, $sp, 992                  # 16-byte Folded Spill
	ori	$a0, $zero, 4
	fld.d	$fs0, $sp, 1432                 # 8-byte Folded Reload
	bne	$s4, $a0, .LBB1_6
	b	.LBB1_46
.LBB1_32:                               # %call.sqrt1283
                                        #   in Loop: Header=BB1_6 Depth=2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vld	$vr23, $sp, 1168                # 16-byte Folded Reload
	fld.d	$ft14, $sp, 1136                # 8-byte Folded Reload
	ori	$a0, $zero, 4024
	add.d	$a2, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2664
	add.d	$a3, $sp, $a0
	fmov.d	$fa1, $fa0
	b	.LBB1_20
.LBB1_33:                               # %call.sqrt1285
                                        #   in Loop: Header=BB1_6 Depth=2
	fmov.d	$fa0, $fa1
	vst	$vr26, $sp, 720                 # 16-byte Folded Spill
	fmov.d	$fs2, $ft3
	vst	$vr19, $sp, 1168                # 16-byte Folded Spill
	vst	$vr20, $sp, 976                 # 16-byte Folded Spill
	vst	$vr22, $sp, 944                 # 16-byte Folded Spill
	vst	$vr21, $sp, 752                 # 16-byte Folded Spill
	vst	$vr23, $sp, 736                 # 16-byte Folded Spill
	vst	$vr27, $sp, 704                 # 16-byte Folded Spill
	vst	$vr28, $sp, 688                 # 16-byte Folded Spill
	vst	$vr29, $sp, 672                 # 16-byte Folded Spill
	vst	$vr31, $sp, 656                 # 16-byte Folded Spill
	vst	$vr8, $sp, 640                  # 16-byte Folded Spill
	vst	$vr10, $sp, 624                 # 16-byte Folded Spill
	vst	$vr9, $sp, 608                  # 16-byte Folded Spill
	vst	$vr12, $sp, 592                 # 16-byte Folded Spill
	vst	$vr7, $sp, 576                  # 16-byte Folded Spill
	vst	$vr13, $sp, 560                 # 16-byte Folded Spill
	vst	$vr6, $sp, 544                  # 16-byte Folded Spill
	vst	$vr14, $sp, 528                 # 16-byte Folded Spill
	vst	$vr16, $sp, 512                 # 16-byte Folded Spill
	vst	$vr17, $sp, 496                 # 16-byte Folded Spill
	vst	$vr18, $sp, 480                 # 16-byte Folded Spill
	vst	$vr15, $sp, 464                 # 16-byte Folded Spill
	vst	$vr24, $sp, 448                 # 16-byte Folded Spill
	vst	$vr25, $sp, 432                 # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vld	$vr25, $sp, 432                 # 16-byte Folded Reload
	vld	$vr24, $sp, 448                 # 16-byte Folded Reload
	vld	$vr15, $sp, 464                 # 16-byte Folded Reload
	vld	$vr18, $sp, 480                 # 16-byte Folded Reload
	vld	$vr17, $sp, 496                 # 16-byte Folded Reload
	vld	$vr16, $sp, 512                 # 16-byte Folded Reload
	vld	$vr14, $sp, 528                 # 16-byte Folded Reload
	vld	$vr6, $sp, 544                  # 16-byte Folded Reload
	vld	$vr13, $sp, 560                 # 16-byte Folded Reload
	vld	$vr7, $sp, 576                  # 16-byte Folded Reload
	vld	$vr12, $sp, 592                 # 16-byte Folded Reload
	vld	$vr9, $sp, 608                  # 16-byte Folded Reload
	vld	$vr10, $sp, 624                 # 16-byte Folded Reload
	vld	$vr8, $sp, 640                  # 16-byte Folded Reload
	vld	$vr31, $sp, 656                 # 16-byte Folded Reload
	vld	$vr29, $sp, 672                 # 16-byte Folded Reload
	vld	$vr28, $sp, 688                 # 16-byte Folded Reload
	vld	$vr27, $sp, 704                 # 16-byte Folded Reload
	vld	$vr23, $sp, 736                 # 16-byte Folded Reload
	vld	$vr21, $sp, 752                 # 16-byte Folded Reload
	vld	$vr30, $sp, 1152                # 16-byte Folded Reload
	vld	$vr22, $sp, 944                 # 16-byte Folded Reload
	vld	$vr20, $sp, 976                 # 16-byte Folded Reload
	vld	$vr3, $sp, 992                  # 16-byte Folded Reload
	vld	$vr19, $sp, 1168                # 16-byte Folded Reload
	fmov.d	$ft3, $fs2
	vld	$vr26, $sp, 720                 # 16-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2664
	add.d	$a3, $sp, $a0
	fld.d	$fa1, $sp, 264                  # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fst.d	$ft3, $sp, 1136                 # 8-byte Folded Spill
	bceqz	$fcc0, .LBB1_28
.LBB1_34:                               # %.split.loop.exit1036
                                        #   in Loop: Header=BB1_5 Depth=1
	vst	$vr22, $sp, 944                 # 16-byte Folded Spill
	st.d	$zero, $sp, 960                 # 8-byte Folded Spill
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1328                 # 16-byte Folded Spill
	vextrins.d	$vr20, $vr3, 0
	vst	$vr20, $sp, 976                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1360                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1392                 # 16-byte Folded Spill
	vshuf4i.d	$vr0, $vr19, 9
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1312                 # 16-byte Folded Reload
	vshuf4i.d	$vr19, $vr0, 9
	vst	$vr19, $sp, 1168                # 16-byte Folded Spill
	b	.LBB1_39
	.p2align	4, , 16
.LBB1_35:                               # %.split.loop.exit1025
                                        #   in Loop: Header=BB1_5 Depth=1
	vst	$vr22, $sp, 944                 # 16-byte Folded Spill
	st.d	$zero, $sp, 1152                # 8-byte Folded Spill
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1328                 # 16-byte Folded Spill
	vextrins.d	$vr20, $vr3, 0
	vst	$vr20, $sp, 976                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1360                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1392                 # 16-byte Folded Spill
	vshuf4i.d	$vr0, $vr19, 9
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1312                 # 16-byte Folded Reload
	vshuf4i.d	$vr19, $vr0, 9
	vst	$vr19, $sp, 1168                # 16-byte Folded Spill
	b	.LBB1_41
.LBB1_36:                               # %.split.loop.exit1091
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$zero, $sp, 1152                # 8-byte Folded Spill
	vld	$vr1, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr0, $sp, 1328                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1328                 # 16-byte Folded Spill
	vld	$vr0, $sp, 992                  # 16-byte Folded Reload
	vld	$vr2, $sp, 976                  # 16-byte Folded Reload
	vextrins.d	$vr2, $vr0, 0
	vst	$vr2, $sp, 976                  # 16-byte Folded Spill
	vld	$vr0, $sp, 1360                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1376                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1360                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1392                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1408                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1392                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1168                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1312                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1168                 # 16-byte Folded Spill
	b	.LBB1_41
.LBB1_37:                               # %.split.loop.exit1080
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$zero, $sp, 1152                # 8-byte Folded Spill
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1328                 # 16-byte Folded Spill
	vld	$vr1, $sp, 976                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr2, 0
	vst	$vr1, $sp, 976                  # 16-byte Folded Spill
	vld	$vr1, $sp, 1360                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1392                 # 16-byte Folded Spill
	vshuf4i.d	$vr0, $vr3, 9
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1312                 # 16-byte Folded Reload
	vshuf4i.d	$vr3, $vr0, 9
	vst	$vr3, $sp, 1168                 # 16-byte Folded Spill
	b	.LBB1_41
.LBB1_38:                               # %.split.loop.exit1069
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$zero, $sp, 960                 # 8-byte Folded Spill
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1328                 # 16-byte Folded Spill
	vld	$vr1, $sp, 992                  # 16-byte Folded Reload
	vld	$vr2, $sp, 976                  # 16-byte Folded Reload
	vextrins.d	$vr2, $vr1, 0
	vst	$vr2, $sp, 976                  # 16-byte Folded Spill
	vld	$vr1, $sp, 1360                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1392                 # 16-byte Folded Spill
	vshuf4i.d	$vr0, $vr23, 9
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1312                 # 16-byte Folded Reload
	vshuf4i.d	$vr23, $vr0, 9
	vst	$vr23, $sp, 1168                # 16-byte Folded Spill
.LBB1_39:                               #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	b	.LBB1_42
.LBB1_40:                               # %.split.loop.exit1058
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$zero, $sp, 1152                # 8-byte Folded Spill
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1328                 # 16-byte Folded Spill
	vld	$vr1, $sp, 992                  # 16-byte Folded Reload
	vld	$vr2, $sp, 976                  # 16-byte Folded Reload
	vextrins.d	$vr2, $vr1, 0
	vst	$vr2, $sp, 976                  # 16-byte Folded Spill
	vld	$vr1, $sp, 1360                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1392                 # 16-byte Folded Spill
	vshuf4i.d	$vr0, $vr23, 9
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1312                 # 16-byte Folded Reload
	vshuf4i.d	$vr23, $vr0, 9
	vst	$vr23, $sp, 1168                # 16-byte Folded Spill
.LBB1_41:                               #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
.LBB1_42:                               #   in Loop: Header=BB1_5 Depth=1
	ori	$s4, $zero, 1
	fld.d	$fs0, $sp, 1432                 # 8-byte Folded Reload
.LBB1_43:                               #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a4, $sp, 1440
	vld	$vr0, $sp, 1184                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1184                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1444
	vld	$vr0, $sp, 1184                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1448
	vld	$vr0, $sp, 1200                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1200                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1452
	vld	$vr0, $sp, 1200                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1456
	vld	$vr0, $sp, 1216                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1216                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1460
	vld	$vr0, $sp, 1216                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1464
	vld	$vr0, $sp, 1232                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1468
	vld	$vr0, $sp, 1232                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1472
	vld	$vr0, $sp, 1248                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1248                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1476
	vld	$vr0, $sp, 1248                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1480
	vld	$vr0, $sp, 1264                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1264                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1484
	vld	$vr0, $sp, 1264                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1488
	vld	$vr0, $sp, 1280                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1280                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1492
	vld	$vr0, $sp, 1280                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1496
	vld	$vr0, $sp, 1296                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1500
	vld	$vr0, $sp, 1296                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1504
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB1_4
# %bb.44:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a4, $sp, 1440
	vld	$vr0, $sp, 1008                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1008                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	movgr2fr.d	$fs4, $zero
	ori	$a2, $zero, 14
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs4
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1444
	vld	$vr0, $sp, 1008                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1448
	vld	$vr0, $sp, 1024                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1024                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1452
	vld	$vr0, $sp, 1024                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1456
	vld	$vr0, $sp, 1040                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1040                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1460
	vld	$vr0, $sp, 1040                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1464
	vld	$vr0, $sp, 1056                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1056                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1468
	vld	$vr0, $sp, 1056                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1472
	vld	$vr0, $sp, 1072                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1072                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1476
	vld	$vr0, $sp, 1072                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1480
	vld	$vr0, $sp, 1088                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1088                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1484
	vld	$vr0, $sp, 1088                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1488
	vld	$vr0, $sp, 1104                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1104                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1492
	vld	$vr0, $sp, 1104                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1496
	vld	$vr0, $sp, 1120                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1120                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1500
	vld	$vr0, $sp, 1120                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1504
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1144                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1440
	vld	$vr0, $sp, 976                  # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs4
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1444
	vld	$vr0, $sp, 1328                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1328                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1448
	vld	$vr0, $sp, 1328                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1452
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1456
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1460
	vld	$vr0, $sp, 1360                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1360                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1464
	vld	$vr0, $sp, 1360                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1468
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1472
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1476
	vld	$vr0, $sp, 1392                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1392                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1480
	vld	$vr0, $sp, 1392                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1484
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1488
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1492
	vld	$vr0, $sp, 1168                 # 16-byte Folded Reload
	vst	$vr0, $sp, 1168                 # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1496
	vld	$vr0, $sp, 1168                 # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr0, 1
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1500
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	vld	$vr1, $sp, 944                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1504
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1136                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_45:                               # %.split.loop.exit1047
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$zero, $sp, 1152                # 8-byte Folded Spill
	vld	$vr0, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1328                 # 16-byte Folded Spill
	vld	$vr1, $sp, 992                  # 16-byte Folded Reload
	vld	$vr2, $sp, 976                  # 16-byte Folded Reload
	vextrins.d	$vr2, $vr1, 0
	vst	$vr2, $sp, 976                  # 16-byte Folded Spill
	vld	$vr1, $sp, 1360                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1392                 # 16-byte Folded Spill
	vshuf4i.d	$vr0, $vr23, 9
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1312                 # 16-byte Folded Reload
	vshuf4i.d	$vr23, $vr0, 9
	vst	$vr23, $sp, 1168                # 16-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	b	.LBB1_43
.LBB1_46:                               # %.split.loop.exit1102
                                        #   in Loop: Header=BB1_5 Depth=1
	vst	$vr22, $sp, 944                 # 16-byte Folded Spill
	vst	$vr21, $sp, 1008                # 16-byte Folded Spill
	vst	$vr18, $sp, 1024                # 16-byte Folded Spill
	vst	$vr12, $sp, 1040                # 16-byte Folded Spill
	vst	$vr11, $sp, 1056                # 16-byte Folded Spill
	vst	$vr6, $sp, 1072                 # 16-byte Folded Spill
	vst	$vr4, $sp, 1088                 # 16-byte Folded Spill
	vst	$vr3, $sp, 1104                 # 16-byte Folded Spill
	vst	$vr2, $sp, 1120                 # 16-byte Folded Spill
	fst.d	$fa5, $sp, 1144                 # 8-byte Folded Spill
	move	$s4, $zero
	vld	$vr2, $sp, 1344                 # 16-byte Folded Reload
	vld	$vr1, $sp, 1328                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr2, 9
	vst	$vr1, $sp, 1328                 # 16-byte Folded Spill
	vextrins.d	$vr20, $vr0, 0
	vst	$vr20, $sp, 976                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1360                 # 16-byte Folded Reload
	vshuf4i.d	$vr2, $vr1, 9
	vst	$vr2, $sp, 1344                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1376                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1360                 # 16-byte Folded Spill
	vld	$vr1, $sp, 1392                 # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr1, 9
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1408                 # 16-byte Folded Reload
	vshuf4i.d	$vr1, $vr0, 9
	vst	$vr1, $sp, 1392                 # 16-byte Folded Spill
	vshuf4i.d	$vr0, $vr19, 9
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	vld	$vr0, $sp, 1312                 # 16-byte Folded Reload
	vshuf4i.d	$vr19, $vr0, 9
	vst	$vr19, $sp, 1168                # 16-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	b	.LBB1_43
.LBB1_47:                               # %._crit_edge
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $fp
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1520
	add.d	$sp, $sp, $a0
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB1_48:                               # %call.sqrt
	vld	$vr0, $sp, 992                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	b	.LBB1_1
.Lfunc_end1:
	.size	CABiCGStab, .Lfunc_end1-CABiCGStab
                                        # -- End function
	.globl	BiCGStab                        # -- Begin function BiCGStab
	.p2align	5
	.type	BiCGStab,@function
BiCGStab:                               # @BiCGStab
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
	fst.d	$fs7, $sp, 24                   # 8-byte Folded Spill
	fmov.d	$fs3, $fa2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$a4, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a2, $zero, 12
	move	$a3, $fp
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs7, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.1:
	fcmp.ceq.d	$fcc0, $fs2, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.2:                                # %.lr.ph
	fmul.d	$fa0, $fs3, $fa0
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	ori	$s2, $zero, 200
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 1312
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1312
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	ori	$a4, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 16
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 16
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	fdiv.d	$fs3, $fs2, $fa0
	fclass.d	$fa0, $fs3
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_14
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	vldi	$vr0, -912
	ori	$a4, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs3
	ori	$a2, $zero, 15
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 15
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	fld.d	$fa1, $sp, 16                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_14
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	ori	$a4, $zero, 15
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 17
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 17
	ori	$a3, $zero, 17
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	ori	$a2, $zero, 17
	ori	$a3, $zero, 15
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fs4, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	fdiv.d	$fs4, $fa0, $fs4
	fclass.d	$fa0, $fs4
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_14
# %bb.9:                                #   in Loop: Header=BB2_3 Depth=1
	vldi	$vr0, -912
	ori	$a4, $zero, 15
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $fs4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	fneg.d	$fs5, $fs4
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 15
	ori	$a4, $zero, 17
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs5
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.10:                               #   in Loop: Header=BB2_3 Depth=1
	fld.d	$fa1, $sp, 16                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_14
# %bb.11:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.12:                               #   in Loop: Header=BB2_3 Depth=1
	fmov.d	$fs6, $fa0
	fdiv.d	$fa0, $fa0, $fs2
	fdiv.d	$fa1, $fs3, $fs4
	fmul.d	$fs2, $fa1, $fa0
	fclass.d	$fa0, $fs2
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs5
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	ori	$a4, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	fmov.d	$fs2, $fs6
	bnez	$s2, .LBB2_3
.LBB2_14:                               # %.thread
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $fp
	fld.d	$fs7, $sp, 24                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(mul_grids)
	jr	$t8
.Lfunc_end2:
	.size	BiCGStab, .Lfunc_end2-BiCGStab
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function CACG
.LCPI3_0:
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
.LCPI3_1:
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.text
	.globl	CACG
	.p2align	5
	.type	CACG,@function
CACG:                                   # @CACG
# %bb.0:                                # %.preheader247.preheader
	addi.d	$sp, $sp, -1952
	st.d	$ra, $sp, 1944                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1936                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1928                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1920                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1912                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1904                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1896                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1888                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1880                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1872                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1864                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1856                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1848                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1840                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1832                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1824                 # 8-byte Folded Spill
	fmov.d	$fs0, $fa2
	move	$a4, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a2, $zero, 12
	move	$a3, $fp
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 32                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_25
.LBB3_1:                                # %.preheader247.preheader.split
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI3_0)
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr2, $a0, %pc_lo12(.LCPI3_1)
	vst	$vr1, $sp, 1136
	vst	$vr2, $sp, 1152
	ori	$a0, $zero, 23
	movgr2fr.d	$fs3, $zero
	fcmp.ceq.d	$fcc0, $fs2, $fs3
	st.w	$a0, $sp, 1168
	bcnez	$fcc0, .LBB3_24
# %bb.2:                                # %.preheader247.preheader.split
	fcmp.ceq.d	$fcc0, $fs1, $fs3
	bcnez	$fcc0, .LBB3_24
# %bb.3:                                # %.lr.ph
	move	$s2, $zero
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %.loopexit
                                        #   in Loop: Header=BB3_5 Depth=1
	sltui	$a0, $s2, 196
	addi.w	$s2, $s2, 4
	and	$a0, $a0, $s3
	and	$a0, $a0, $s4
	beqz	$a0, .LBB3_24
.LBB3_5:                                # %.preheader243.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	ld.w	$a2, $sp, 1136
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1140
	ld.w	$a3, $sp, 1136
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs1
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1144
	ld.w	$a3, $sp, 1140
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1148
	ld.w	$a3, $sp, 1144
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1152
	ld.w	$a3, $sp, 1148
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1156
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1160
	ld.w	$a3, $sp, 1156
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1164
	ld.w	$a3, $sp, 1160
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1168
	ld.w	$a3, $sp, 1164
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 1316
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1316
	addi.d	$a2, $sp, 1176
	addi.d	$a3, $sp, 1136
	addi.d	$a4, $sp, 1136
	ori	$a5, $zero, 9
	ori	$a6, $zero, 9
	ori	$a7, $zero, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(matmul_grids)
	jirl	$ra, $ra, 0
	vldi	$vr23, -912
	fld.d	$fs6, $sp, 1176
	fld.d	$fa0, $sp, 1184
	fst.d	$fa0, $sp, 984                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1192
	fst.d	$fa0, $sp, 976                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1200
	fst.d	$fa0, $sp, 968                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1208
	fst.d	$fa0, $sp, 960                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1216
	fst.d	$fa0, $sp, 280                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1224
	fst.d	$fa0, $sp, 272                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1232
	fst.d	$fa0, $sp, 264                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1240
	fst.d	$fa0, $sp, 256                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1248
	fst.d	$fa0, $sp, 248                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1256
	fst.d	$fa0, $sp, 240                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1264
	fst.d	$fa0, $sp, 232                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1272
	fst.d	$fa0, $sp, 216                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1280
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1288
	fst.d	$fa0, $sp, 952                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1296
	fst.d	$fa0, $sp, 944                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1304
	fst.d	$fa0, $sp, 936                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1312
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1320
	fst.d	$fa0, $sp, 920                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1328
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1336
	fst.d	$fa0, $sp, 904                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1344
	fst.d	$fa0, $sp, 896                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1352
	fst.d	$fa0, $sp, 888                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1360
	fst.d	$fa0, $sp, 880                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1368
	fst.d	$fa0, $sp, 872                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1376
	fst.d	$fa0, $sp, 864                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1384
	fst.d	$fa0, $sp, 856                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1392
	fst.d	$fa0, $sp, 848                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1400
	fst.d	$fa0, $sp, 840                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1408
	fst.d	$fa0, $sp, 832                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1416
	fst.d	$fa0, $sp, 824                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1424
	fst.d	$fa0, $sp, 816                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1432
	fst.d	$fa0, $sp, 808                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1440
	fst.d	$fa0, $sp, 800                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1448
	fst.d	$fa0, $sp, 792                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1456
	fst.d	$fa0, $sp, 784                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1464
	fst.d	$fa0, $sp, 776                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1472
	fst.d	$fa0, $sp, 768                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1480
	fst.d	$fa0, $sp, 760                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1488
	fst.d	$fa0, $sp, 752                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1496
	fst.d	$fa0, $sp, 744                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1504
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1512
	fst.d	$fa0, $sp, 728                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1520
	fst.d	$fa0, $sp, 720                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1528
	fst.d	$fa0, $sp, 712                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1536
	fst.d	$fa0, $sp, 704                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1544
	fst.d	$fa0, $sp, 696                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1552
	fst.d	$fa0, $sp, 688                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1560
	fst.d	$fa0, $sp, 680                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1568
	fst.d	$fa0, $sp, 672                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1576
	fst.d	$fa0, $sp, 664                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1584
	fst.d	$fa0, $sp, 656                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1592
	fst.d	$fa0, $sp, 648                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1600
	fst.d	$fa0, $sp, 640                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1608
	fst.d	$fa0, $sp, 632                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1616
	fst.d	$fa0, $sp, 624                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1624
	fst.d	$fa0, $sp, 616                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1632
	fst.d	$fa0, $sp, 608                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1640
	fst.d	$fa0, $sp, 600                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1648
	fst.d	$fa0, $sp, 592                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1656
	fst.d	$fa0, $sp, 584                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1664
	fst.d	$fa0, $sp, 576                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1672
	fst.d	$fa0, $sp, 568                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1680
	fst.d	$fa0, $sp, 560                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1688
	fst.d	$fa0, $sp, 552                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1696
	fst.d	$fa0, $sp, 544                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1704
	fst.d	$fa0, $sp, 536                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1712
	fst.d	$fa0, $sp, 528                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1720
	fst.d	$fa0, $sp, 520                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1728
	fst.d	$fa0, $sp, 512                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1736
	fst.d	$fa0, $sp, 504                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1744
	fst.d	$fa0, $sp, 496                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1752
	fst.d	$fa0, $sp, 488                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1760
	fst.d	$fa0, $sp, 480                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1768
	fst.d	$fa0, $sp, 472                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1776
	fst.d	$fa0, $sp, 464                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1784
	fst.d	$fa0, $sp, 456                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1792
	fst.d	$fa0, $sp, 448                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1800
	fst.d	$fa0, $sp, 440                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1808
	fst.d	$fa0, $sp, 432                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1816
	fst.d	$fa0, $sp, 424                  # 8-byte Folded Spill
	ori	$s3, $zero, 4
	fst.d	$fs3, $sp, 1040                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1016                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1008                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1000                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 992                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1056                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1048                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1032                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1024                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 328                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1104                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1088                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1080                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1072                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1064                 # 8-byte Folded Spill
	fmov.d	$ft8, $fs3
	fmov.d	$ft9, $fs3
	fmov.d	$ft10, $fs3
	fmov.d	$ft11, $fs3
	fmov.d	$fs1, $fs3
	fmov.d	$ft14, $fs3
	fmov.d	$fs4, $fs3
	fmov.d	$ft12, $fs3
	fmov.d	$fa5, $fs3
	fmov.d	$fa7, $fs3
	fmov.d	$fa6, $fs3
	fmov.d	$fa2, $fs3
	vldi	$vr24, -912
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 320                  # 8-byte Folded Spill
	fmov.d	$fs5, $fs3
	fst.d	$fs3, $sp, 312                  # 8-byte Folded Spill
	fmov.d	$fs7, $fs3
	fmov.d	$ft2, $fs3
	fmov.d	$ft1, $fs3
	fmov.d	$ft0, $fs3
	fmov.d	$ft3, $fs3
	fst.d	$fs6, $sp, 392                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_6:                                # %.preheader242
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr24, $sp, 400                 # 16-byte Folded Spill
	vst	$vr23, $sp, 288                 # 16-byte Folded Spill
	fst.d	$ft12, $sp, 1112                # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1120                 # 8-byte Folded Spill
	fst.d	$ft14, $sp, 1096                # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1128                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fs0, $fs3, $fs3
	fmadd.d	$fa1, $fa2, $fs3, $fa0
	fmov.d	$fa4, $fa2
	fmadd.d	$fa2, $fa6, $fs3, $fa1
	fadd.d	$fa3, $fs0, $fs3
	fmadd.d	$fa3, $fa4, $fs3, $fa3
	fmov.d	$ft15, $fa4
	fst.d	$fa4, $sp, 416                  # 8-byte Folded Spill
	fmadd.d	$fa3, $fa6, $fs3, $fa3
	fmadd.d	$fa3, $fa7, $fs3, $fa3
	fmadd.d	$fa3, $fa5, $fs3, $fa3
	fmadd.d	$fa3, $ft12, $fs3, $fa3
	fmadd.d	$fa3, $fs4, $fs3, $fa3
	fmadd.d	$fa3, $ft14, $fs3, $fa3
	fmadd.d	$fa3, $fs1, $fs3, $fa3
	fld.d	$fa4, $sp, 1032                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$fs2, $fa3, $fa4
	fmadd.d	$fa3, $fa7, $fs3, $fa2
	fmadd.d	$fa3, $fa5, $fs3, $fa3
	fadd.d	$fa0, $ft15, $fa0
	fmadd.d	$fa0, $fa6, $fs3, $fa0
	fmadd.d	$fa0, $fa7, $fs3, $fa0
	fmadd.d	$fa0, $fa5, $fs3, $fa0
	fmadd.d	$fa0, $ft12, $fs3, $fa0
	fmadd.d	$fa0, $fs4, $fs3, $fa0
	fmadd.d	$fa0, $ft14, $fs3, $fa0
	fmadd.d	$fa0, $fs1, $fs3, $fa0
	fld.d	$fa4, $sp, 1048                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$fs0, $fa0, $fa4
	fmadd.d	$fa0, $ft12, $fs3, $fa3
	fadd.d	$fa1, $fa6, $fa1
	fmadd.d	$fa1, $fa7, $fs3, $fa1
	fmadd.d	$fa1, $fa5, $fs3, $fa1
	fmadd.d	$fa1, $ft12, $fs3, $fa1
	fmadd.d	$fa1, $fs4, $fs3, $fa1
	fmadd.d	$fa1, $ft14, $fs3, $fa1
	fmadd.d	$fa1, $fs1, $fs3, $fa1
	fld.d	$fa4, $sp, 1056                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$ft15, $fa1, $fa4
	fmadd.d	$fa1, $fs4, $fs3, $fa0
	fadd.d	$fa2, $fa7, $fa2
	fmadd.d	$fa2, $fa5, $fs3, $fa2
	fld.d	$fa4, $sp, 1112                 # 8-byte Folded Reload
	fmadd.d	$fa2, $fa4, $fs3, $fa2
	fmadd.d	$fa2, $fs4, $fs3, $fa2
	fmadd.d	$fa2, $ft14, $fs3, $fa2
	fmadd.d	$fa2, $fs1, $fs3, $fa2
	fld.d	$fa4, $sp, 992                  # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$ft12, $fa2, $fa4
	fmadd.d	$fa2, $ft14, $fs3, $fa1
	fmadd.d	$fa2, $fs1, $fs3, $fa2
	fld.d	$fa4, $sp, 1024                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$ft13, $fa2, $fa4
	fld.d	$fa4, $sp, 1000                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$fs4, $fa2, $fa4
	fld.d	$fa2, $sp, 1112                 # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 1120                 # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fs3, $fa2
	fmadd.d	$fa2, $ft14, $fs3, $fa2
	fld.d	$fa3, $sp, 1128                 # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fs3, $fa2
	fld.d	$fa3, $sp, 1008                 # 8-byte Folded Reload
	fmul.d	$fa3, $fa3, $fs3
	fadd.d	$fs1, $fa2, $fa3
	ld.w	$a0, $s1, 1312
	fld.d	$fa2, $sp, 1120                 # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fmadd.d	$fa0, $ft14, $fs3, $fa0
	fld.d	$fa2, $sp, 1128                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	fld.d	$fa2, $sp, 1016                 # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fs3
	fadd.d	$ft14, $fa0, $fa2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1312
	fld.d	$fa0, $sp, 1096                 # 8-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 1128                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs3, $fa0
	fld.d	$fa1, $sp, 1040                 # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fs3
	fadd.d	$fa2, $fa0, $fa1
	fmadd.d	$fa0, $fs6, $ft13, $fs3
	fld.d	$fa1, $sp, 984                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 976                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 968                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 960                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 280                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 272                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 264                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 256                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $ft3, $fs3
	fadd.d	$ft4, $fa0, $fa1
	fld.d	$fa0, $sp, 248                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 240                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 232                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa3, $sp, 216                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $ft15, $fa0
	fld.d	$fa4, $sp, 208                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $ft12, $fa0
	fld.d	$fa1, $sp, 952                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $ft0, $fs3
	fadd.d	$ft3, $fa0, $fa1
	fld.d	$fa0, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 888                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $ft1, $fs3
	fadd.d	$ft0, $fa0, $fa1
	fld.d	$fa0, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 800                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 792                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $ft2, $fs3
	fadd.d	$ft1, $fa0, $fa1
	fld.d	$fa0, $sp, 776                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 760                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 744                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 728                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 712                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $fs7, $fs3
	fadd.d	$ft2, $fa0, $fa1
	fld.d	$fa0, $sp, 704                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 696                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 680                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 664                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 648                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 640                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 312                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fs3
	fadd.d	$fs7, $fa0, $fa1
	fld.d	$fa0, $sp, 632                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 608                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 600                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 584                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $fs5, $fs3
	fadd.d	$fs6, $fa0, $fa1
	fld.d	$fa0, $sp, 560                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 552                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 536                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 520                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 504                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 496                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 320                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fs3
	fadd.d	$fs5, $fa0, $fa1
	fld.d	$fa0, $sp, 488                  # 8-byte Folded Reload
	fst.d	$ft13, $sp, 1024                # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$ft13, $sp, 1128                # 8-byte Folded Reload
	fld.d	$fa1, $sp, 480                  # 8-byte Folded Reload
	fst.d	$fs2, $sp, 1032                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 472                  # 8-byte Folded Reload
	fst.d	$fs0, $sp, 1048                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 464                  # 8-byte Folded Reload
	fst.d	$ft15, $sp, 1056                # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$ft15, $sp, 1112                # 8-byte Folded Reload
	fld.d	$fa1, $sp, 456                  # 8-byte Folded Reload
	fst.d	$ft12, $sp, 992                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fst.d	$fs4, $sp, 1000                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fs4, $sp, 1120                 # 8-byte Folded Reload
	fld.d	$fa1, $sp, 440                  # 8-byte Folded Reload
	fst.d	$fs1, $sp, 1008                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 432                  # 8-byte Folded Reload
	fst.d	$ft14, $sp, 1016                # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fs2, $sp, 1096                 # 8-byte Folded Reload
	fld.d	$fa1, $sp, 424                  # 8-byte Folded Reload
	fst.d	$fa2, $sp, 1040                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 224                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fs3
	fadd.d	$fa1, $fa0, $fa1
	vld	$vr0, $sp, 400                  # 16-byte Folded Reload
	fst.d	$ft4, $sp, 88                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $ft4, $fs3
	fld.d	$fa2, $sp, 416                  # 8-byte Folded Reload
	fst.d	$ft3, $sp, 64                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $ft3, $fa0
	fst.d	$fa6, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 72                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fa6, $ft0, $fa0
	fst.d	$fa7, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 96                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fa7, $ft1, $fa0
	fst.d	$fa5, $sp, 136                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa5, $ft2, $fa0
	fst.d	$fs7, $sp, 312                  # 8-byte Folded Spill
	fmadd.d	$fa0, $ft15, $fs7, $fa0
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fs4, $fs6, $fa0
	fst.d	$fs5, $sp, 320                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fs2, $fs5, $fa0
	fmadd.d	$fa0, $ft13, $fa1, $fa0
	fcmp.ceq.d	$fcc0, $fa0, $fs3
	ori	$s4, $zero, 1
	bcnez	$fcc0, .LBB3_16
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	fst.d	$fa1, $sp, 224                  # 8-byte Folded Spill
	fld.d	$fa1, $sp, 1104                 # 8-byte Folded Reload
	fst.d	$fa1, $sp, 1104                 # 8-byte Folded Spill
	fld.d	$fa1, $sp, 392                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fs3
	fld.d	$fa2, $sp, 984                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 976                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 968                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 960                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 1064                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft7, $fa1
	vld	$vr11, $sp, 288                 # 16-byte Folded Reload
	fld.d	$fs2, $sp, 280                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fs2, $ft3, $fa1
	fld.d	$fs1, $sp, 272                  # 8-byte Folded Reload
	fld.d	$ft6, $sp, 1072                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fs1, $ft6, $fa1
	fld.d	$fs4, $sp, 264                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 1080                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fs4, $ft5, $fa1
	fld.d	$ft15, $sp, 256                 # 8-byte Folded Reload
	fld.d	$ft4, $sp, 1088                 # 8-byte Folded Reload
	fmadd.d	$fa1, $ft15, $ft4, $fa1
	fld.d	$fa2, $sp, 144                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fs3
	fadd.d	$ft14, $fa1, $fa2
	fld.d	$fs5, $sp, 248                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fs5, $ft11, $fs3
	fld.d	$fs6, $sp, 240                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fs6, $ft10, $fa2
	fld.d	$fs7, $sp, 232                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fs7, $ft9, $fa2
	fmadd.d	$fa2, $fa3, $ft8, $fa2
	fmadd.d	$fa2, $fa4, $ft7, $fa2
	fld.d	$fa5, $sp, 952                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $ft3, $fa2
	fld.d	$fa5, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $ft6, $fa2
	fld.d	$fa5, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $ft5, $fa2
	fld.d	$fa5, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $ft4, $fa2
	fld.d	$fa3, $sp, 152                  # 8-byte Folded Reload
	fmul.d	$fa3, $fa3, $fs3
	fadd.d	$ft13, $fa2, $fa3
	fld.d	$fa3, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa3, $ft11, $fs3
	fld.d	$fa5, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft10, $fa3
	fld.d	$fa5, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft9, $fa3
	fld.d	$fa5, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft8, $fa3
	fld.d	$fa5, $sp, 888                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft7, $fa3
	fld.d	$fa5, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft3, $fa3
	fld.d	$fa5, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft6, $fa3
	fld.d	$fa5, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft5, $fa3
	fld.d	$fa5, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft4, $fa3
	fld.d	$fa4, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$ft12, $fa3, $fa4
	fld.d	$fa4, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa4, $ft11, $fs3
	fld.d	$fa5, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft10, $fa4
	fld.d	$fa5, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft9, $fa4
	fld.d	$fa5, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft8, $fa4
	fld.d	$fa5, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft7, $fa4
	fld.d	$fa5, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft3, $fa4
	fld.d	$fa5, $sp, 800                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft6, $fa4
	fld.d	$fa5, $sp, 792                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft5, $fa4
	fld.d	$fa5, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft4, $fa4
	fld.d	$fa5, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa5, $fa5, $fs3
	fadd.d	$fa1, $fa4, $fa5
	fld.d	$fa5, $sp, 776                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa5, $ft11, $fs3
	fld.d	$fa6, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft10, $fa5
	fld.d	$fa6, $sp, 760                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft9, $fa5
	fld.d	$fa6, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft8, $fa5
	fld.d	$fa6, $sp, 744                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft7, $fa5
	fld.d	$fa6, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	fld.d	$fa6, $sp, 728                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft6, $fa5
	fld.d	$fa6, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft5, $fa5
	fld.d	$fa6, $sp, 712                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fld.d	$fa6, $sp, 176                  # 8-byte Folded Reload
	fmul.d	$fa6, $fa6, $fs3
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	fadd.d	$fa0, $fa5, $fa6
	fld.d	$fa6, $sp, 704                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa6, $ft11, $fs3
	fld.d	$fa7, $sp, 696                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft10, $fa6
	fld.d	$fa7, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft9, $fa6
	fld.d	$fa7, $sp, 680                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft8, $fa6
	fld.d	$fa7, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft7, $fa6
	fld.d	$fa7, $sp, 664                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft3, $fa6
	fld.d	$fa7, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft6, $fa6
	fld.d	$fa7, $sp, 648                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft5, $fa6
	fld.d	$fa7, $sp, 640                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft4, $fa6
	fld.d	$fa7, $sp, 184                  # 8-byte Folded Reload
	fmul.d	$fa7, $fa7, $fs3
	fadd.d	$fa6, $fa6, $fa7
	fld.d	$fa7, $sp, 632                  # 8-byte Folded Reload
	fmadd.d	$fa7, $fa7, $ft11, $fs3
	fld.d	$ft0, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft10, $fa7
	fld.d	$ft0, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft9, $fa7
	fld.d	$ft0, $sp, 608                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft8, $fa7
	fld.d	$ft0, $sp, 600                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft7, $fa7
	fld.d	$ft0, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft3, $fa7
	fld.d	$ft0, $sp, 584                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft6, $fa7
	fld.d	$ft0, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft5, $fa7
	fld.d	$ft0, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft4, $fa7
	fld.d	$ft0, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$ft0, $ft0, $fs3
	fadd.d	$fs0, $fa7, $ft0
	fld.d	$ft0, $sp, 560                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft0, $ft11, $fs3
	fld.d	$ft1, $sp, 552                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft10, $ft0
	fld.d	$ft1, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft9, $ft0
	fld.d	$ft1, $sp, 536                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft8, $ft0
	fld.d	$ft1, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft7, $ft0
	fld.d	$ft1, $sp, 520                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft3, $ft0
	fld.d	$ft1, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft6, $ft0
	fld.d	$ft1, $sp, 504                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft5, $ft0
	fld.d	$ft1, $sp, 496                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft4, $ft0
	fld.d	$ft1, $sp, 200                  # 8-byte Folded Reload
	fmul.d	$ft1, $ft1, $fs3
	fadd.d	$ft0, $ft0, $ft1
	fld.d	$ft1, $sp, 488                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $ft11, $fs3
	fld.d	$ft2, $sp, 480                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft10, $ft1
	fld.d	$ft2, $sp, 472                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft9, $ft1
	fld.d	$ft2, $sp, 464                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft8, $ft1
	fld.d	$ft2, $sp, 456                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft7, $ft1
	fld.d	$ft2, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft3, $ft1
	fld.d	$ft2, $sp, 440                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft6, $ft1
	fld.d	$ft2, $sp, 432                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft5, $ft1
	fld.d	$ft2, $sp, 424                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft4, $ft1
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$ft2, $ft2, $fs3
	fadd.d	$fa7, $ft1, $ft2
	fmov.d	$fa2, $ft14
	fmadd.d	$ft2, $ft11, $ft14, $fs3
	fmov.d	$fa3, $ft13
	fmadd.d	$ft2, $ft10, $ft13, $ft2
	fmov.d	$fa4, $ft12
	fmadd.d	$ft2, $ft9, $ft12, $ft2
	fmov.d	$fa5, $fa1
	fmadd.d	$ft2, $ft8, $fa1, $ft2
	fmov.d	$ft1, $fa0
	fmadd.d	$ft2, $ft7, $fa0, $ft2
	fst.d	$fa6, $sp, 200                  # 8-byte Folded Spill
	fmadd.d	$ft2, $ft3, $fa6, $ft2
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fmadd.d	$ft2, $ft6, $fs0, $ft2
	fmadd.d	$ft2, $ft5, $ft0, $ft2
	fmadd.d	$ft2, $ft4, $fa7, $ft2
	fld.d	$ft14, $sp, 960                 # 8-byte Folded Reload
	fmov.d	$ft13, $fs2
	fmov.d	$ft12, $ft15
	fld.d	$fa1, $sp, 968                  # 8-byte Folded Reload
	fld.d	$ft15, $sp, 976                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 984                  # 8-byte Folded Reload
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fdiv.d	$fs0, $ft2, $fa0
	fclass.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB3_17
# %bb.8:                                # %.lr.ph.i216.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	fmov.d	$fa6, $ft0
	fst.d	$ft2, $sp, 56                   # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1024                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft11, $ft11, $fa0
	fld.d	$fa0, $sp, 1032                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft10, $ft10, $fa0
	fld.d	$fa0, $sp, 1048                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft9, $ft9, $fa0
	fld.d	$fa0, $sp, 1056                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft8, $ft8, $fa0
	fld.d	$fa0, $sp, 992                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft0, $ft7, $fa0
	fld.d	$fa0, $sp, 1000                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft3, $ft3, $fa0
	fld.d	$fa0, $sp, 1008                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft6, $ft6, $fa0
	fld.d	$fa0, $sp, 1016                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft5, $ft5, $fa0
	fld.d	$fa0, $sp, 1040                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft4, $ft4, $fa0
	movgr2fr.d	$fa0, $zero
	fld.d	$ft2, $sp, 392                  # 8-byte Folded Reload
	fmadd.d	$ft2, $ft2, $ft11, $fa0
	fmadd.d	$ft2, $fs2, $ft10, $ft2
	fmadd.d	$ft2, $ft15, $ft9, $ft2
	fmadd.d	$ft2, $fa1, $ft8, $ft2
	fmadd.d	$ft2, $ft14, $ft0, $ft2
	fmadd.d	$ft2, $ft13, $ft3, $ft2
	fmadd.d	$ft2, $fs1, $ft6, $ft2
	fmadd.d	$ft2, $fs4, $ft5, $ft2
	fmadd.d	$ft2, $ft12, $ft4, $ft2
	fmul.d	$fa1, $fa2, $fa0
	fadd.d	$fs1, $ft2, $fa1
	fmadd.d	$fa1, $fs5, $ft11, $fa0
	fmadd.d	$fa1, $fs6, $ft10, $fa1
	fmadd.d	$fa1, $fs7, $ft9, $fa1
	fld.d	$fa2, $sp, 216                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 208                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$ft2, $sp, 952                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft2, $ft3, $fa1
	fld.d	$ft2, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft2, $ft6, $fa1
	fld.d	$ft2, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft2, $ft5, $fa1
	fld.d	$ft2, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft2, $ft4, $fa1
	fmul.d	$fa2, $fa3, $fa0
	fadd.d	$ft14, $fa1, $fa2
	fld.d	$fa1, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 888                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $fa4, $fa0
	fadd.d	$ft13, $fa1, $fa2
	fld.d	$fa1, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 800                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 792                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $fa5, $fa0
	fadd.d	$ft12, $fa1, $fa2
	fld.d	$fa1, $sp, 776                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 760                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 744                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 728                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 712                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $ft1, $fa0
	fadd.d	$ft2, $fa1, $fa2
	fld.d	$fa1, $sp, 704                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 696                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 680                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 664                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 648                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 640                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fld.d	$fa2, $sp, 200                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa0
	fadd.d	$fa5, $fa1, $fa2
	fld.d	$fa1, $sp, 632                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 608                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 600                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 584                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fld.d	$fa2, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa0
	fadd.d	$fa4, $fa1, $fa2
	fld.d	$fa1, $sp, 560                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 552                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 536                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 520                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 504                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 496                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $fa6, $fa0
	fadd.d	$fa3, $fa1, $fa2
	fld.d	$fa1, $sp, 488                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 480                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 472                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 464                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 456                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 440                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 432                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 424                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $fa7, $fa0
	fadd.d	$ft15, $fa1, $fa2
	fst.d	$fs1, $sp, 144                  # 8-byte Folded Spill
	fmadd.d	$fa1, $ft11, $fs1, $fa0
	fst.d	$ft14, $sp, 152                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft10, $ft14, $fa1
	fst.d	$ft13, $sp, 160                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft9, $ft13, $fa1
	fst.d	$ft12, $sp, 168                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft8, $ft12, $fa1
	fst.d	$ft2, $sp, 176                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 1064                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft0, $ft2, $fa1
	vori.b	$vr20, $vr11, 0
	fst.d	$fa5, $sp, 184                  # 8-byte Folded Spill
	fmadd.d	$fa1, $ft3, $fa5, $fa1
	fst.d	$fa4, $sp, 192                  # 8-byte Folded Spill
	fst.d	$ft6, $sp, 1072                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft6, $fa4, $fa1
	fst.d	$fa3, $sp, 200                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 1080                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft5, $fa3, $fa1
	fst.d	$ft4, $sp, 1088                 # 8-byte Folded Spill
	fmadd.d	$fs2, $ft4, $ft15, $fa1
	fcmp.cule.d	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_6 Depth=2
	fsqrt.d	$fa0, $fs2
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_14
.LBB3_10:                               #   in Loop: Header=BB3_6 Depth=2
	vld	$vr7, $sp, 400                  # 16-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa7
	fld.d	$ft14, $sp, 1104                # 8-byte Folded Reload
	fadd.d	$ft14, $ft14, $fa1
	fld.d	$fa6, $sp, 416                  # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa6
	fld.d	$fa2, $sp, 328                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 328                  # 8-byte Folded Spill
	fld.d	$fa5, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa5
	fld.d	$fa2, $sp, 336                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 336                  # 8-byte Folded Spill
	fld.d	$fa4, $sp, 128                  # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa4
	fld.d	$fa2, $sp, 344                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 344                  # 8-byte Folded Spill
	fld.d	$fa3, $sp, 136                  # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa3
	fld.d	$fa2, $sp, 352                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 352                  # 8-byte Folded Spill
	fld.d	$fs5, $sp, 1112                 # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fs5
	fld.d	$fa2, $sp, 360                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 360                  # 8-byte Folded Spill
	fld.d	$fs4, $sp, 1120                 # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fs4
	fld.d	$ft1, $sp, 368                  # 8-byte Folded Reload
	fadd.d	$ft1, $ft1, $fa1
	fld.d	$ft13, $sp, 1096                # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $ft13
	fld.d	$ft0, $sp, 376                  # 8-byte Folded Reload
	fadd.d	$ft0, $ft0, $fa1
	fld.d	$fs1, $sp, 1128                 # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fs1
	fld.d	$fa2, $sp, 48                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fld.d	$fa2, $sp, 384                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fld.d	$fs7, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fst.d	$fa2, $sp, 384                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 376                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 368                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB3_19
# %bb.11:                               #   in Loop: Header=BB3_6 Depth=2
	fst.d	$ft15, $sp, 112                 # 8-byte Folded Spill
	movgr2fr.d	$fa0, $zero
	fcmp.ceq.d	$fcc0, $fs2, $fa0
	ori	$s4, $zero, 1
	vori.b	$vr23, $vr20, 0
	bcnez	$fcc0, .LBB3_15
# %bb.12:                               #   in Loop: Header=BB3_6 Depth=2
	fld.d	$fa0, $sp, 56                   # 8-byte Folded Reload
	fdiv.d	$fa0, $fs2, $fa0
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB3_15
# %bb.13:                               # %.lr.ph.i231.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	fst.d	$ft14, $sp, 1104                # 8-byte Folded Spill
	fmul.d	$fa1, $fa0, $fa7
	fadd.d	$fs0, $ft11, $fa1
	fmul.d	$fa1, $fa0, $fa6
	fadd.d	$fa2, $ft10, $fa1
	fmul.d	$fa1, $fa0, $fa5
	fadd.d	$fa6, $ft9, $fa1
	fmul.d	$fa1, $fa0, $fa4
	fadd.d	$fa7, $ft8, $fa1
	fmul.d	$fa1, $fa0, $fa3
	fld.d	$fa3, $sp, 1064                 # 8-byte Folded Reload
	fadd.d	$fa5, $fa3, $fa1
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$ft12, $ft15, $fa1
	fmul.d	$fa1, $fa0, $fs4
	fld.d	$fa3, $sp, 1072                 # 8-byte Folded Reload
	fadd.d	$fs4, $fa3, $fa1
	fmul.d	$fa1, $fa0, $ft13
	fld.d	$fa3, $sp, 1080                 # 8-byte Folded Reload
	fadd.d	$ft14, $fa3, $fa1
	fmul.d	$fa0, $fa0, $fs1
	addi.w	$s3, $s3, -1
	fld.d	$fa1, $sp, 1088                 # 8-byte Folded Reload
	fadd.d	$fs1, $fa1, $fa0
	fld.d	$fs6, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft0, $sp, 64                   # 8-byte Folded Reload
	bnez	$s3, .LBB3_6
	b	.LBB3_20
.LBB3_14:                               # %call.sqrt1004
                                        #   in Loop: Header=BB3_6 Depth=2
	fmov.d	$fa0, $fs2
	vst	$vr20, $sp, 288                 # 16-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 16                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 8                   # 8-byte Folded Spill
	fmov.d	$fs1, $ft15
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$ft15, $fs1
	fld.d	$ft11, $sp, 8                   # 8-byte Folded Reload
	fld.d	$ft10, $sp, 16                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft8, $sp, 112                  # 8-byte Folded Reload
	vld	$vr20, $sp, 288                 # 16-byte Folded Reload
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_5 Depth=1
	fmov.d	$fs2, $ft13
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	vst	$vr23, $sp, 288                 # 16-byte Folded Spill
	move	$s3, $zero
	ori	$s5, $zero, 1
	b	.LBB3_22
.LBB3_16:                               #   in Loop: Header=BB3_5 Depth=1
	fmov.d	$fs5, $ft15
	fmov.d	$fs1, $ft13
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1064                 # 8-byte Folded Reload
	fst.d	$fa0, $sp, 1064                 # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1072                 # 8-byte Folded Reload
	fst.d	$fa0, $sp, 1072                 # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1080                 # 8-byte Folded Reload
	fst.d	$fa0, $sp, 1080                 # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1088                 # 8-byte Folded Reload
	fst.d	$fa0, $sp, 1088                 # 8-byte Folded Spill
	b	.LBB3_18
.LBB3_17:                               #   in Loop: Header=BB3_5 Depth=1
	fld.d	$fs5, $sp, 1112                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1120                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1096                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1128                 # 8-byte Folded Reload
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft7, $sp, 1064                 # 8-byte Folded Spill
	fst.d	$ft6, $sp, 1072                 # 8-byte Folded Spill
	fst.d	$ft5, $sp, 1080                 # 8-byte Folded Spill
	fst.d	$ft4, $sp, 1088                 # 8-byte Folded Spill
.LBB3_18:                               #   in Loop: Header=BB3_5 Depth=1
	move	$s3, $zero
	ori	$s5, $zero, 1
	b	.LBB3_21
.LBB3_19:                               #   in Loop: Header=BB3_5 Depth=1
	fmov.d	$fs2, $ft13
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	vst	$vr20, $sp, 288                 # 16-byte Folded Spill
	move	$s4, $zero
	ori	$s3, $zero, 1
	ori	$s5, $zero, 1
	b	.LBB3_22
.LBB3_20:                               #   in Loop: Header=BB3_5 Depth=1
	vst	$vr24, $sp, 400                 # 16-byte Folded Spill
	fst.d	$fa2, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 136                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft12
	fmov.d	$fs2, $ft14
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	vst	$vr23, $sp, 288                 # 16-byte Folded Spill
	move	$s5, $zero
	ori	$s4, $zero, 1
	ori	$s3, $zero, 1
.LBB3_21:                               #   in Loop: Header=BB3_5 Depth=1
	fld.d	$ft14, $sp, 1104                # 8-byte Folded Reload
.LBB3_22:                               #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a4, $sp, 1136
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $ft14
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1140
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 328                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1144
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 336                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1148
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 344                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1152
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 352                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1156
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 360                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1160
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 368                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1164
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 376                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1168
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 384                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB3_4
# %bb.23:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a4, $sp, 1136
	movgr2fr.d	$fs6, $zero
	ori	$a2, $zero, 14
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs6
	vld	$vr1, $sp, 400                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1140
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 416                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1144
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 120                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1148
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 128                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1152
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 136                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1156
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs5
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1160
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1164
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1168
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1136
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs6
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1140
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs7
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1144
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 40                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1148
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 112                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1152
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1064                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1156
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	vld	$vr1, $sp, 288                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1160
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1072                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1164
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1080                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1168
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1088                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	b	.LBB3_4
.LBB3_24:                               # %._crit_edge
	fld.d	$fs7, $sp, 1824                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1832                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1840                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1848                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1856                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1864                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1872                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1880                 # 8-byte Folded Reload
	ld.d	$s5, $sp, 1888                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1896                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1904                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1912                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1920                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1928                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1936                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1944                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1952
	ret
.LBB3_25:                               # %call.sqrt
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_1
.Lfunc_end3:
	.size	CACG, .Lfunc_end3-CACG
                                        # -- End function
	.globl	CG                              # -- Begin function CG
	.p2align	5
	.type	CG,@function
CG:                                     # @CG
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 8                    # 8-byte Folded Spill
	fmov.d	$fs3, $fa2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$a4, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a2, $zero, 12
	move	$a3, $fp
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs5, $zero
	fcmp.ceq.d	$fcc0, $fs4, $fs5
	bcnez	$fcc0, .LBB4_9
# %bb.1:                                # %.lr.ph
	fmov.d	$fs2, $fa0
	fmul.d	$fs4, $fs3, $fs4
	ori	$s2, $zero, 200
	.p2align	4, , 16
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 1312
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1312
	ori	$a2, $zero, 16
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 16
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB4_9
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	fdiv.d	$fs3, $fs2, $fa0
	fclass.d	$fa0, $fs3
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB4_9
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=1
	vldi	$vr0, -912
	ori	$a4, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs3
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB4_9
# %bb.5:                                #   in Loop: Header=BB4_2 Depth=1
	fcmp.clt.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB4_9
# %bb.6:                                #   in Loop: Header=BB4_2 Depth=1
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB4_9
# %bb.7:                                #   in Loop: Header=BB4_2 Depth=1
	fmov.d	$fs3, $fa0
	fdiv.d	$fa1, $fa0, $fs2
	fclass.d	$fa0, $fa1
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_2 Depth=1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	ori	$a4, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	fmov.d	$fs2, $fs3
	bnez	$s2, .LBB4_2
.LBB4_9:                                # %.thread
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end4:
	.size	CG, .Lfunc_end4-CG
                                        # -- End function
	.globl	IterativeSolver                 # -- Begin function IterativeSolver
	.p2align	5
	.type	IterativeSolver,@function
IterativeSolver:                        # @IterativeSolver
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(smooth)
	jr	$t8
.Lfunc_end5:
	.size	IterativeSolver, .Lfunc_end5-IterativeSolver
                                        # -- End function
	.globl	IterativeSolver_NumGrids        # -- Begin function IterativeSolver_NumGrids
	.p2align	5
	.type	IterativeSolver_NumGrids,@function
IterativeSolver_NumGrids:               # @IterativeSolver_NumGrids
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	IterativeSolver_NumGrids, .Lfunc_end6-IterativeSolver_NumGrids
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
