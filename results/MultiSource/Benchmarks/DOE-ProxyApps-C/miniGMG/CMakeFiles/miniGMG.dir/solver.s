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
	ori	$a4, $a4, 1776
	sub.d	$sp, $sp, $a4
	fmov.d	$fs3, $fa2
	move	$a4, $a3
	move	$a3, $a2
	move	$s1, $a1
	move	$s5, $a0
	ori	$a2, $zero, 12
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 72                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 12
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs5, $fa0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fsqrt.d	$fs4, $fa0
	fcmp.cor.d	$fcc0, $fs4, $fs4
	bceqz	$fcc0, .LBB1_48
.LBB1_1:                                # %.preheader461.preheader.split
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1072
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 2312
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2856
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 2312
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu52i.d	$a1, $zero, 1023
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1208
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1352
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1496
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1640
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1784
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1928
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2072
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2216
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2504
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2648
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2792
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2936
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3080
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3224
	add.d	$a0, $sp, $a0
	stptr.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3368
	add.d	$a0, $sp, $a0
	stptr.d	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3128
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3272
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3416
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3560
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	vst	$vr0, $sp, 1120
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_1)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3704
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3848
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3992
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	vst	$vr0, $sp, 1136
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_2)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 328
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 472
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 616
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	vst	$vr0, $sp, 1152
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_3)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 760
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 904
	add.d	$a0, $sp, $a0
	stptr.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1048
	add.d	$a0, $sp, $a0
	stptr.d	$a1, $a0, 0
	vst	$vr0, $sp, 1168
	ori	$a0, $zero, 31
	lu32i.d	$a0, 12
	movgr2fr.d	$fa0, $zero
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1096                 # 8-byte Folded Spill
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	st.d	$a0, $sp, 1184
	bcnez	$fcc0, .LBB1_47
# %bb.2:                                # %.preheader461.preheader.split
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fs5, $fa0
	bcnez	$fcc0, .LBB1_47
# %bb.3:                                # %.lr.ph
	move	$a1, $zero
	fmul.d	$fa0, $fs3, $fs4
	fst.d	$fa0, $sp, 408                  # 8-byte Folded Spill
	ori	$s8, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2144
	add.d	$s6, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3384
	add.d	$fp, $sp, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sltui	$a0, $a1, 196
	addi.w	$a1, $a1, 4
	ld.d	$a2, $sp, 1104                  # 8-byte Folded Reload
	and	$a0, $a0, $a2
	and	$a0, $a0, $s4
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2144
	add.d	$s6, $sp, $a2
	beqz	$a0, .LBB1_47
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_13 Depth 3
                                        #       Child Loop BB1_17 Depth 3
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_26 Depth 3
                                        #     Child Loop BB1_41 Depth 2
                                        #     Child Loop BB1_44 Depth 2
                                        #     Child Loop BB1_46 Depth 2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2720
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2576
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2288
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2144
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2000
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3520
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3384
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1120
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1120
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1124
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs1
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1124
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1128
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1128
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1132
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1132
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1136
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1136
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1140
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1140
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1144
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1144
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1148
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1148
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1152
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1156
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1156
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1160
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1160
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1164
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1164
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1168
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1168
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1172
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1172
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1176
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1176
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1180
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1180
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1184
	ori	$a3, $zero, 10
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 1316
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 1316
	addi.d	$a2, $sp, 1200
	addi.d	$a3, $sp, 1120
	addi.d	$a4, $sp, 1120
	ori	$a5, $zero, 17
	ori	$a6, $zero, 18
	ori	$a7, $zero, 1
	addi.d	$s3, $sp, 1200
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(matmul_grids)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	ori	$a0, $zero, 3784
	add.d	$s4, $sp, $a0
	ori	$a0, $zero, 3648
	add.d	$s5, $sp, $a0
	.p2align	4, , 16
.LBB1_6:                                # %.preheader453
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a2, $zero, 136
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 136
	fstx.d	$fa0, $s0, $s5
	addi.d	$s3, $s3, 144
	addi.d	$s0, $s0, 8
	addi.d	$s4, $s4, 136
	bne	$s0, $s8, .LBB1_6
# %bb.7:                                # %.preheader455.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a2, $zero, 128
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2728
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu52i.d	$s0, $zero, 1023
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2720
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2576
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2648
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3648
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 232                  # 8-byte Folded Spill
	ori	$a0, $zero, 3656
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 224                  # 8-byte Folded Spill
	ori	$a0, $zero, 3664
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 216                  # 8-byte Folded Spill
	ori	$a0, $zero, 3672
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	ori	$a0, $zero, 3680
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 200                  # 8-byte Folded Spill
	ori	$a0, $zero, 3688
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 192                  # 8-byte Folded Spill
	ori	$a0, $zero, 3696
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 184                  # 8-byte Folded Spill
	ori	$a0, $zero, 3704
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	ori	$a0, $zero, 3712
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	ori	$a0, $zero, 3720
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	ori	$a0, $zero, 3728
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	ori	$a0, $zero, 3736
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	ori	$a0, $zero, 3744
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 136                  # 8-byte Folded Spill
	ori	$a0, $zero, 3752
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 128                  # 8-byte Folded Spill
	ori	$a0, $zero, 3760
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 120                  # 8-byte Folded Spill
	ori	$a0, $zero, 3768
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	ori	$a0, $zero, 3776
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	move	$s3, $zero
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fmov.d	$ft0, $fa0
	fmov.d	$ft5, $fa0
	fmov.d	$ft4, $fa0
	fmov.d	$ft3, $fa0
	fmov.d	$fs0, $fa0
	fmov.d	$ft15, $fa0
	fmov.d	$ft14, $fa0
	fmov.d	$ft13, $fa0
	fmov.d	$ft12, $fa0
	fmov.d	$ft1, $fa0
	fmov.d	$fa6, $fa0
	vld	$vr10, $sp, 48                  # 16-byte Folded Reload
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vori.b	$vr17, $vr0, 0
	vori.b	$vr19, $vr0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1136
	add.d	$a3, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2920
	add.d	$a4, $sp, $a0
	ori	$a0, $zero, 3848
	add.d	$a5, $sp, $a0
	fld.d	$fa0, $sp, 1096                 # 8-byte Folded Reload
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3520
	add.d	$a6, $sp, $a0
	ori	$a7, $zero, 4
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2000
	add.d	$t0, $sp, $a0
.LBB1_8:                                # %.preheader454
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_13 Depth 3
                                        #       Child Loop BB1_17 Depth 3
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_26 Depth 3
	fst.d	$fa0, $sp, 1096                 # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 1312
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $a2, 1312
	vreplvei.d	$vr14, $vr10, 0
	vst	$vr10, $sp, 960                 # 16-byte Folded Spill
	vreplvei.d	$vr15, $vr10, 1
	vreplvei.d	$vr16, $vr17, 0
	vst	$vr17, $sp, 944                 # 16-byte Folded Spill
	vreplvei.d	$vr17, $vr17, 1
	vreplvei.d	$vr18, $vr19, 0
	vst	$vr19, $sp, 928                 # 16-byte Folded Spill
	vreplvei.d	$vr19, $vr19, 1
	move	$a1, $a3
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2288
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_9:                                # %.preheader450
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, -64
	fld.d	$fa1, $a1, -56
	movgr2fr.d	$fs7, $zero
	fmadd.d	$fa0, $fa0, $ft6, $fs7
	fmadd.d	$fa0, $fa1, $ft7, $fa0
	fld.d	$fa1, $a1, -48
	fld.d	$fa2, $a1, -40
	fld.d	$fa3, $a1, -32
	fld.d	$fa4, $a1, -24
	fmadd.d	$fa0, $fa1, $ft8, $fa0
	fmadd.d	$fa0, $fa2, $ft9, $fa0
	fmadd.d	$fa0, $fa3, $ft10, $fa0
	fmadd.d	$fa0, $fa4, $ft11, $fa0
	fld.d	$fa1, $a1, -16
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$fa4, $a1, 8
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fmadd.d	$fa0, $fa2, $ft1, $fa0
	fmadd.d	$fa0, $fa3, $ft12, $fa0
	fmadd.d	$fa0, $fa4, $ft13, $fa0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 24
	fld.d	$fa3, $a1, 32
	fld.d	$fa4, $a1, 40
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fmadd.d	$fa0, $fa2, $ft15, $fa0
	fmadd.d	$fa0, $fa3, $fs0, $fa0
	fmadd.d	$fa0, $fa4, $ft3, $fa0
	fld.d	$fa1, $a1, 48
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 64
	fldx.d	$fa4, $a0, $a2
	fmadd.d	$fa0, $fa1, $ft4, $fa0
	fmadd.d	$fa0, $fa2, $ft5, $fa0
	fmadd.d	$fa0, $fa3, $ft0, $fa0
	fmul.d	$fa1, $fa4, $fs7
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $a2
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s8, .LBB1_9
# %bb.10:                               # %.preheader449.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	vst	$vr24, $sp, 976                 # 16-byte Folded Spill
	vst	$vr23, $sp, 992                 # 16-byte Folded Spill
	vst	$vr22, $sp, 1008                # 16-byte Folded Spill
	vst	$vr21, $sp, 1024                # 16-byte Folded Spill
	vst	$vr20, $sp, 1040                # 16-byte Folded Spill
	vst	$vr9, $sp, 1056                 # 16-byte Folded Spill
	fst.d	$ft0, $sp, 1072                 # 8-byte Folded Spill
	vst	$vr6, $sp, 1104                 # 16-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2576
	add.d	$a0, $sp, $a0
	fld.d	$ft12, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2584
	add.d	$a0, $sp, $a0
	fld.d	$ft13, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2592
	add.d	$a0, $sp, $a0
	fld.d	$ft14, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2600
	add.d	$a0, $sp, $a0
	fld.d	$ft15, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2608
	add.d	$a0, $sp, $a0
	fld.d	$fs0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2616
	add.d	$a0, $sp, $a0
	fld.d	$fs1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2624
	add.d	$a0, $sp, $a0
	fld.d	$fs2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2632
	add.d	$a0, $sp, $a0
	fld.d	$fs3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2640
	add.d	$a0, $sp, $a0
	fld.d	$fs4, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2648
	add.d	$a0, $sp, $a0
	fld.d	$fs5, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2656
	add.d	$a0, $sp, $a0
	fld.d	$fs6, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2664
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2672
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2680
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2688
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2696
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2704
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	move	$a0, $zero
	move	$a1, $a3
	.p2align	4, , 16
.LBB1_11:                               # %.preheader449
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa6, $a1, -64
	fld.d	$fa7, $a1, -56
	fmadd.d	$fa6, $fa6, $ft12, $fs7
	fmadd.d	$fa6, $fa7, $ft13, $fa6
	fld.d	$fa7, $a1, -48
	fld.d	$ft0, $a1, -40
	fld.d	$ft1, $a1, -32
	fld.d	$ft2, $a1, -24
	fmadd.d	$fa6, $fa7, $ft14, $fa6
	fmadd.d	$fa6, $ft0, $ft15, $fa6
	fmadd.d	$fa6, $ft1, $fs0, $fa6
	fmadd.d	$fa6, $ft2, $fs1, $fa6
	fld.d	$fa7, $a1, -16
	fld.d	$ft0, $a1, -8
	fld.d	$ft1, $a1, 0
	fld.d	$ft2, $a1, 8
	fmadd.d	$fa6, $fa7, $fs2, $fa6
	fmadd.d	$fa6, $ft0, $fs3, $fa6
	fmadd.d	$fa6, $ft1, $fs4, $fa6
	fmadd.d	$fa6, $ft2, $fs5, $fa6
	fld.d	$fa7, $a1, 16
	fld.d	$ft0, $a1, 24
	fld.d	$ft1, $a1, 32
	fld.d	$ft2, $a1, 40
	fmadd.d	$fa6, $fa7, $fs6, $fa6
	fmadd.d	$fa6, $ft0, $fa0, $fa6
	fmadd.d	$fa6, $ft1, $fa1, $fa6
	fmadd.d	$fa6, $ft2, $fa2, $fa6
	fld.d	$fa7, $a1, 48
	fld.d	$ft0, $a1, 56
	fld.d	$ft1, $a1, 64
	fldx.d	$ft2, $a0, $s6
	fmadd.d	$fa6, $fa7, $fa3, $fa6
	fmadd.d	$fa6, $ft0, $fa4, $fa6
	fmadd.d	$fa6, $ft1, $fa5, $fa6
	fmul.d	$fa7, $ft2, $fs7
	fadd.d	$fa6, $fa6, $fa7
	fstx.d	$fa6, $a0, $s6
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s8, .LBB1_11
# %bb.12:                               # %.preheader448.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	move	$a0, $zero
	move	$a1, $a4
	fld.d	$ft14, $sp, 1096                # 8-byte Folded Reload
	vld	$vr20, $sp, 1104                # 16-byte Folded Reload
	fld.d	$fa5, $sp, 1072                 # 8-byte Folded Reload
	vld	$vr6, $sp, 1056                 # 16-byte Folded Reload
	vld	$vr7, $sp, 1040                 # 16-byte Folded Reload
	vld	$vr8, $sp, 1024                 # 16-byte Folded Reload
	vld	$vr9, $sp, 1008                 # 16-byte Folded Reload
	vld	$vr10, $sp, 992                 # 16-byte Folded Reload
	vld	$vr21, $sp, 976                 # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_13:                               # %.preheader448
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, -64
	fld.d	$fa1, $a1, -56
	fmadd.d	$fa0, $fa0, $ft6, $fs7
	fmadd.d	$fa0, $fa1, $ft7, $fa0
	fld.d	$fa1, $a1, -48
	fld.d	$fa2, $a1, -40
	fld.d	$fa3, $a1, -32
	fld.d	$fa4, $a1, -24
	fmadd.d	$fa0, $fa1, $ft8, $fa0
	fmadd.d	$fa0, $fa2, $ft9, $fa0
	fmadd.d	$fa0, $fa3, $ft10, $fa0
	fmadd.d	$fa0, $fa4, $ft11, $fa0
	fld.d	$fa1, $a1, -16
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$fa4, $a1, 8
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fmadd.d	$fa0, $fa3, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 24
	fld.d	$fa3, $a1, 32
	fld.d	$fa4, $a1, 40
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	fmadd.d	$fa0, $fa2, $ft2, $fa0
	fmadd.d	$fa0, $fa3, $ft13, $fa0
	fmadd.d	$fa0, $fa4, $ft3, $fa0
	fld.d	$fa1, $a1, 48
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 64
	fldx.d	$fa4, $a0, $t0
	fmadd.d	$fa0, $fa1, $ft4, $fa0
	fmadd.d	$fa0, $fa2, $ft5, $fa0
	fmadd.d	$fa0, $fa3, $fa5, $fa0
	fmul.d	$fa1, $fa4, $fs7
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $t0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s8, .LBB1_13
# %bb.14:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	move	$s5, $s1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2288
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $sp, 232                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa0, $fs7
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2296
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2304
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2312
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2320
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	fld.d	$fa5, $sp, 224                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fld.d	$fa1, $sp, 216                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 200                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2328
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2336
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2344
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2352
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	fld.d	$fa5, $sp, 192                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fld.d	$fa1, $sp, 184                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2360
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2368
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2376
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2384
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	fld.d	$fa5, $sp, 160                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fld.d	$fa1, $sp, 152                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 144                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 136                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2392
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2400
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2408
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2416
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	fld.d	$fa5, $sp, 128                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fld.d	$fa1, $sp, 120                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 112                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 104                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	ori	$s4, $zero, 1
	bcnez	$fcc0, .LBB1_36
# %bb.15:                               #   in Loop: Header=BB1_8 Depth=2
	fdiv.d	$ft15, $ft14, $fa0
	fclass.d	$fa0, $ft15
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_36
# %bb.16:                               # %vector.body710
                                        #   in Loop: Header=BB1_8 Depth=2
	move	$a0, $zero
	vreplvei.d	$vr0, $vr23, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2000
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2016
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2160
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	vfsub.d	$vr2, $vr4, $vr2
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3520
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3536
	add.d	$a1, $sp, $a1
	vst	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2032
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2048
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2176
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2192
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	vfsub.d	$vr2, $vr4, $vr2
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3552
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3568
	add.d	$a1, $sp, $a1
	vst	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2064
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2080
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2208
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2224
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	vfsub.d	$vr2, $vr4, $vr2
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3584
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3600
	add.d	$a1, $sp, $a1
	vst	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2096
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2112
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2240
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2256
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	vfsub.d	$vr0, $vr4, $vr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3616
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3632
	add.d	$a1, $sp, $a1
	vst	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2272
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2128
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3520
	add.d	$a1, $sp, $a1
	fld.d	$fs4, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3528
	add.d	$a1, $sp, $a1
	fld.d	$fs3, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3536
	add.d	$a1, $sp, $a1
	fld.d	$fs5, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3544
	add.d	$a1, $sp, $a1
	fld.d	$fs6, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3552
	add.d	$a1, $sp, $a1
	fld.d	$fa5, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3560
	add.d	$a1, $sp, $a1
	fld.d	$fs1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3568
	add.d	$a1, $sp, $a1
	fld.d	$fs2, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3576
	add.d	$a1, $sp, $a1
	fld.d	$fa6, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3584
	add.d	$a1, $sp, $a1
	fld.d	$fa7, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3592
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3600
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3608
	add.d	$a1, $sp, $a1
	fld.d	$ft2, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3616
	add.d	$a1, $sp, $a1
	fld.d	$ft3, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3624
	add.d	$a1, $sp, $a1
	fld.d	$ft4, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3632
	add.d	$a1, $sp, $a1
	fld.d	$ft5, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3640
	add.d	$a1, $sp, $a1
	fld.d	$ft6, $a1, 0
	fmul.d	$fa1, $ft15, $fa1
	fsub.d	$fs0, $fa0, $fa1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3648
	add.d	$a1, $sp, $a1
	fst.d	$fs0, $a1, 0
	move	$a1, $a5
	.p2align	4, , 16
.LBB1_17:                               # %.preheader447
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, -64
	fld.d	$fa1, $a1, -56
	fmadd.d	$fa0, $fa0, $fs4, $fs7
	fmadd.d	$fa0, $fa1, $fs3, $fa0
	fld.d	$fa1, $a1, -48
	fld.d	$fa2, $a1, -40
	fld.d	$fa3, $a1, -32
	fld.d	$fa4, $a1, -24
	fmadd.d	$fa0, $fa1, $fs5, $fa0
	fmadd.d	$fa0, $fa2, $fs6, $fa0
	fmadd.d	$fa0, $fa3, $fa5, $fa0
	fmadd.d	$fa0, $fa4, $fs1, $fa0
	fld.d	$fa1, $a1, -16
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$fa4, $a1, 8
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fmadd.d	$fa0, $fa3, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 24
	fld.d	$fa3, $a1, 32
	fld.d	$fa4, $a1, 40
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	fmadd.d	$fa0, $fa2, $ft2, $fa0
	fmadd.d	$fa0, $fa3, $ft3, $fa0
	fmadd.d	$fa0, $fa4, $ft4, $fa0
	fld.d	$fa1, $a1, 48
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 64
	fldx.d	$fa4, $a0, $fp
	fmadd.d	$fa0, $fa1, $ft5, $fa0
	fmadd.d	$fa0, $fa2, $ft6, $fa0
	fmadd.d	$fa0, $fa3, $fs0, $fa0
	fmul.d	$fa1, $fa4, $fs7
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $fp
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s8, .LBB1_17
# %bb.18:                               # %.lr.ph.i366
                                        #   in Loop: Header=BB1_8 Depth=2
	fst.d	$ft6, $sp, 880                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 896                  # 8-byte Folded Spill
	fst.d	$ft4, $sp, 912                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 976                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 992                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 1008                 # 8-byte Folded Spill
	fst.d	$ft0, $sp, 1024                 # 8-byte Folded Spill
	fst.d	$fa7, $sp, 1040                 # 8-byte Folded Spill
	fst.d	$fa6, $sp, 1056                 # 8-byte Folded Spill
	fst.d	$fa5, $sp, 1072                 # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2400
	add.d	$a0, $sp, $a0
	vld	$vr5, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2688
	add.d	$a0, $sp, $a0
	vld	$vr4, $a0, 0
	move	$a0, $zero
	vreplvei.d	$vr11, $vr23, 0
	vfmul.d	$vr0, $vr11, $vr5
	vfsub.d	$vr4, $vr4, $vr0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2384
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2672
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2656
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfmul.d	$vr0, $vr11, $vr0
	vfsub.d	$vr5, $vr1, $vr0
	vfmul.d	$vr0, $vr11, $vr2
	vfsub.d	$vr6, $vr3, $vr0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2352
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2640
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2336
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2624
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfmul.d	$vr0, $vr11, $vr0
	vfsub.d	$vr0, $vr1, $vr0
	vfmul.d	$vr1, $vr11, $vr2
	vfsub.d	$vr1, $vr3, $vr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2320
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2608
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2304
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2592
	add.d	$a1, $sp, $a1
	vld	$vr8, $a1, 0
	vfmul.d	$vr2, $vr11, $vr2
	vfsub.d	$vr2, $vr3, $vr2
	vfmul.d	$vr3, $vr11, $vr7
	vfsub.d	$vr3, $vr8, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2288
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2576
	add.d	$a1, $sp, $a1
	vld	$vr8, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2416
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2704
	add.d	$a1, $sp, $a1
	fld.d	$ft2, $a1, 0
	vfmul.d	$vr7, $vr11, $vr7
	vfsub.d	$vr7, $vr8, $vr7
	fmul.d	$ft0, $ft15, $ft1
	fsub.d	$ft0, $ft2, $ft0
	fst.d	$ft0, $sp, 672                  # 8-byte Folded Spill
	vreplvei.d	$vr8, $vr7, 0
	vst	$vr8, $sp, 656                  # 16-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3384
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	fst.d	$ft0, $sp, 864                  # 8-byte Folded Spill
	vreplvei.d	$vr7, $vr7, 1
	vst	$vr7, $sp, 640                  # 16-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3392
	add.d	$a1, $sp, $a1
	fld.d	$fa7, $a1, 0
	fst.d	$fa7, $sp, 848                  # 8-byte Folded Spill
	vreplvei.d	$vr7, $vr3, 0
	vst	$vr7, $sp, 624                  # 16-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3400
	add.d	$a1, $sp, $a1
	fld.d	$fa7, $a1, 0
	fst.d	$fa7, $sp, 832                  # 8-byte Folded Spill
	vreplvei.d	$vr3, $vr3, 1
	vst	$vr3, $sp, 608                  # 16-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3408
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fst.d	$fa3, $sp, 816                  # 8-byte Folded Spill
	vreplvei.d	$vr3, $vr2, 0
	vst	$vr3, $sp, 592                  # 16-byte Folded Spill
	vreplvei.d	$vr2, $vr2, 1
	vst	$vr2, $sp, 576                  # 16-byte Folded Spill
	vreplvei.d	$vr2, $vr1, 0
	vst	$vr2, $sp, 560                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr1, 1
	vst	$vr1, $sp, 544                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	vst	$vr1, $sp, 528                  # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2432
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	vreplvei.d	$vr0, $vr0, 1
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	vld	$vr0, $sp, 960                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr11, $vr0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	vfadd.d	$vr13, $vr1, $vr0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2464
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	vld	$vr1, $sp, 944                  # 16-byte Folded Reload
	vfmul.d	$vr1, $vr11, $vr1
	vfadd.d	$vr12, $vr2, $vr1
	vld	$vr1, $sp, 928                  # 16-byte Folded Reload
	vfmul.d	$vr1, $vr11, $vr1
	vfadd.d	$vr10, $vr0, $vr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2776
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2488
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	fmul.d	$fa3, $ft15, $ft12
	fadd.d	$ft6, $fa0, $fa3
	vfmul.d	$vr0, $vr11, $vr1
	vfadd.d	$vr9, $vr2, $vr0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2792
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2504
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2808
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2520
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfmul.d	$vr0, $vr11, $vr0
	vfadd.d	$vr8, $vr1, $vr0
	vfmul.d	$vr0, $vr11, $vr2
	vfadd.d	$vr7, $vr3, $vr0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2824
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2536
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2840
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2552
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfmul.d	$vr0, $vr11, $vr0
	vfadd.d	$vr18, $vr1, $vr0
	vfmul.d	$vr0, $vr11, $vr2
	vfadd.d	$vr17, $vr3, $vr0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2288
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2304
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2576
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2592
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfmul.d	$vr0, $vr11, $vr0
	vfmul.d	$vr1, $vr11, $vr1
	vfsub.d	$vr0, $vr2, $vr0
	vfsub.d	$vr1, $vr3, $vr1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3520
	add.d	$a1, $sp, $a1
	vst	$vr0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3536
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2320
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2336
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2608
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2624
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfmul.d	$vr0, $vr11, $vr0
	vfmul.d	$vr1, $vr11, $vr1
	vfsub.d	$vr0, $vr2, $vr0
	vfsub.d	$vr1, $vr3, $vr1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3552
	add.d	$a1, $sp, $a1
	vst	$vr0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3568
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2352
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2640
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2656
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfmul.d	$vr0, $vr11, $vr0
	vfmul.d	$vr1, $vr11, $vr1
	vfsub.d	$vr0, $vr2, $vr0
	vfsub.d	$vr1, $vr3, $vr1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3584
	add.d	$a1, $sp, $a1
	vst	$vr0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3600
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2384
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2672
	add.d	$a1, $sp, $a1
	vld	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2688
	add.d	$a1, $sp, $a1
	vld	$vr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2400
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfmul.d	$vr0, $vr11, $vr0
	vfsub.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr6, 0
	vst	$vr1, $sp, 496                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr6, 1
	vst	$vr1, $sp, 480                  # 16-byte Folded Spill
	vst	$vr11, $sp, 384                 # 16-byte Folded Spill
	vfmul.d	$vr1, $vr11, $vr3
	vfsub.d	$vr1, $vr2, $vr1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3616
	add.d	$a1, $sp, $a1
	vst	$vr0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3632
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2416
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2704
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	vreplvei.d	$vr2, $vr5, 0
	vst	$vr2, $sp, 464                  # 16-byte Folded Spill
	vreplvei.d	$vr2, $vr5, 1
	vst	$vr2, $sp, 448                  # 16-byte Folded Spill
	fmul.d	$fa0, $ft15, $fa0
	fsub.d	$fa0, $fa1, $fa0
	vreplvei.d	$vr1, $vr4, 0
	vst	$vr1, $sp, 432                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr4, 1
	vst	$vr1, $sp, 416                  # 16-byte Folded Spill
	vst	$vr13, $sp, 256                 # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2432
	add.d	$a1, $sp, $a1
	vst	$vr13, $a1, 0
	vst	$vr12, $sp, 272                 # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	vst	$vr12, $a1, 0
	vst	$vr10, $sp, 288                 # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2464
	add.d	$a1, $sp, $a1
	vst	$vr10, $a1, 0
	fst.d	$ft6, $sp, 248                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	fst.d	$ft6, $a1, 0
	vst	$vr9, $sp, 304                  # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2488
	add.d	$a1, $sp, $a1
	vst	$vr9, $a1, 0
	vst	$vr8, $sp, 320                  # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2504
	add.d	$a1, $sp, $a1
	vst	$vr8, $a1, 0
	vst	$vr7, $sp, 336                  # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2520
	add.d	$a1, $sp, $a1
	vst	$vr7, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3416
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 1104                 # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3424
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 960                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3432
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 944                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3440
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 928                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3448
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 800                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3456
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 784                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3464
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 768                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3472
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 752                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3480
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 736                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3488
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 720                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3496
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 704                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3504
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 688                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3512
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 680                  # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3520
	add.d	$a1, $sp, $a1
	fld.d	$ft8, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3528
	add.d	$a1, $sp, $a1
	fld.d	$ft4, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3536
	add.d	$a1, $sp, $a1
	fld.d	$ft5, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3544
	add.d	$a1, $sp, $a1
	fld.d	$ft6, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3552
	add.d	$a1, $sp, $a1
	fld.d	$ft7, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3560
	add.d	$a1, $sp, $a1
	fld.d	$ft0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3568
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3576
	add.d	$a1, $sp, $a1
	fld.d	$ft2, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3584
	add.d	$a1, $sp, $a1
	fld.d	$ft3, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3592
	add.d	$a1, $sp, $a1
	fld.d	$fa4, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3600
	add.d	$a1, $sp, $a1
	fld.d	$fa5, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3608
	add.d	$a1, $sp, $a1
	fld.d	$fa6, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3616
	add.d	$a1, $sp, $a1
	fld.d	$fa7, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3624
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3632
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3640
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	vst	$vr18, $sp, 352                 # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2536
	add.d	$a1, $sp, $a1
	vst	$vr18, $a1, 0
	vst	$vr17, $sp, 368                 # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2552
	add.d	$a1, $sp, $a1
	vst	$vr17, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3648
	add.d	$a1, $sp, $a1
	fst.d	$fa0, $a1, 0
	move	$a1, $a5
	.p2align	4, , 16
.LBB1_19:                               # %.preheader446
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$ft9, $a1, -64
	fld.d	$ft10, $a1, -56
	fmadd.d	$ft9, $ft9, $ft8, $fs7
	fmadd.d	$ft9, $ft10, $ft4, $ft9
	fld.d	$ft10, $a1, -48
	fld.d	$ft11, $a1, -40
	fld.d	$ft12, $a1, -32
	fld.d	$ft13, $a1, -24
	fmadd.d	$ft9, $ft10, $ft5, $ft9
	fmadd.d	$ft9, $ft11, $ft6, $ft9
	fmadd.d	$ft9, $ft12, $ft7, $ft9
	fmadd.d	$ft9, $ft13, $ft0, $ft9
	fld.d	$ft10, $a1, -16
	fld.d	$ft11, $a1, -8
	fld.d	$ft12, $a1, 0
	fld.d	$ft13, $a1, 8
	fmadd.d	$ft9, $ft10, $ft1, $ft9
	fmadd.d	$ft9, $ft11, $ft2, $ft9
	fmadd.d	$ft9, $ft12, $ft3, $ft9
	fmadd.d	$ft9, $ft13, $fa4, $ft9
	fld.d	$ft10, $a1, 16
	fld.d	$ft11, $a1, 24
	fld.d	$ft12, $a1, 32
	fld.d	$ft13, $a1, 40
	fmadd.d	$ft9, $ft10, $fa5, $ft9
	fmadd.d	$ft9, $ft11, $fa6, $ft9
	fmadd.d	$ft9, $ft12, $fa7, $ft9
	fmadd.d	$ft9, $ft13, $fa1, $ft9
	fld.d	$ft10, $a1, 48
	fld.d	$ft11, $a1, 56
	fld.d	$ft12, $a1, 64
	fldx.d	$ft13, $a0, $fp
	fmadd.d	$ft9, $ft10, $fa2, $ft9
	fmadd.d	$ft9, $ft11, $fa3, $ft9
	fmadd.d	$ft9, $ft12, $fa0, $ft9
	fmul.d	$ft10, $ft13, $fs7
	fadd.d	$ft9, $ft9, $ft10
	fstx.d	$ft9, $a0, $fp
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s8, .LBB1_19
# %bb.20:                               # %.lr.ph.i393.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3384
	add.d	$a0, $sp, $a0
	fld.d	$ft9, $a0, 0
	fmadd.d	$ft8, $ft8, $ft9, $fs7
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3392
	add.d	$a0, $sp, $a0
	fld.d	$ft9, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3400
	add.d	$a0, $sp, $a0
	fld.d	$ft10, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3408
	add.d	$a0, $sp, $a0
	fld.d	$ft11, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3416
	add.d	$a0, $sp, $a0
	fld.d	$ft12, $a0, 0
	fmadd.d	$ft4, $ft4, $ft9, $ft8
	fmadd.d	$ft4, $ft5, $ft10, $ft4
	fmadd.d	$ft4, $ft6, $ft11, $ft4
	fmadd.d	$ft4, $ft7, $ft12, $ft4
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3424
	add.d	$a0, $sp, $a0
	fld.d	$ft5, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3432
	add.d	$a0, $sp, $a0
	fld.d	$ft6, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3440
	add.d	$a0, $sp, $a0
	fld.d	$ft7, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3448
	add.d	$a0, $sp, $a0
	fld.d	$ft8, $a0, 0
	fmadd.d	$ft0, $ft0, $ft5, $ft4
	fmadd.d	$ft0, $ft1, $ft6, $ft0
	fmadd.d	$ft0, $ft2, $ft7, $ft0
	fmadd.d	$ft0, $ft3, $ft8, $ft0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3456
	add.d	$a0, $sp, $a0
	fld.d	$ft1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3464
	add.d	$a0, $sp, $a0
	fld.d	$ft2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3472
	add.d	$a0, $sp, $a0
	fld.d	$ft3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3480
	add.d	$a0, $sp, $a0
	fld.d	$ft4, $a0, 0
	fmadd.d	$fa4, $fa4, $ft1, $ft0
	fmadd.d	$fa4, $fa5, $ft2, $fa4
	fmadd.d	$fa4, $fa6, $ft3, $fa4
	fmadd.d	$fa4, $fa7, $ft4, $fa4
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3488
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3496
	add.d	$a0, $sp, $a0
	fld.d	$fa6, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3504
	add.d	$a0, $sp, $a0
	fld.d	$fa7, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3512
	add.d	$a0, $sp, $a0
	fld.d	$ft0, $a0, 0
	fmadd.d	$fa1, $fa1, $fa5, $fa4
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fmadd.d	$fa1, $fa3, $fa7, $fa1
	fmadd.d	$fa0, $fa0, $ft0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs7
	fmov.d	$fa1, $fs7
	bcnez	$fcc0, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_8 Depth=2
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB1_34
.LBB1_22:                               #   in Loop: Header=BB1_8 Depth=2
	fld.d	$fa0, $sp, 408                  # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fld.d	$fa1, $sp, 1072                 # 8-byte Folded Reload
	fld.d	$fa2, $sp, 1056                 # 8-byte Folded Reload
	fld.d	$fa3, $sp, 1040                 # 8-byte Folded Reload
	fld.d	$fa4, $sp, 1024                 # 8-byte Folded Reload
	fld.d	$fa5, $sp, 1008                 # 8-byte Folded Reload
	fld.d	$fa6, $sp, 992                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 976                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 912                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 896                  # 8-byte Folded Reload
	fld.d	$ft2, $sp, 880                  # 8-byte Folded Reload
	bcnez	$fcc0, .LBB1_37
# %bb.23:                               #   in Loop: Header=BB1_8 Depth=2
	fld.d	$ft3, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs4, $ft3, $fs7
	fld.d	$ft4, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs3, $ft4, $fa0
	fld.d	$ft5, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs5, $ft5, $fa0
	fld.d	$ft6, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs6, $ft6, $fa0
	fld.d	$ft7, $sp, 1104                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft7, $fa0
	fld.d	$ft8, $sp, 960                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs1, $ft8, $fa0
	fld.d	$ft9, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs2, $ft9, $fa0
	fld.d	$ft10, $sp, 928                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft10, $fa0
	fld.d	$ft11, $sp, 800                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $ft11, $fa0
	fld.d	$fa1, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fmov.d	$fa4, $fa1
	fld.d	$fa1, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fmov.d	$fa5, $fa1
	fld.d	$fa1, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa6, $fa1, $fa0
	fmov.d	$fa6, $fa1
	fld.d	$fa1, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa7, $fa1, $fa0
	fmov.d	$fa7, $fa1
	fld.d	$fa1, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa0, $ft0, $fa1, $fa0
	fmov.d	$ft0, $fa1
	fld.d	$fa1, $sp, 704                  # 8-byte Folded Reload
	fmadd.d	$fa0, $ft1, $fa1, $fa0
	fmov.d	$ft1, $fa1
	fld.d	$fa1, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa0, $ft2, $fa1, $fa0
	fmov.d	$ft2, $fa1
	fld.d	$ft12, $sp, 680                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fs0, $ft12, $fa0
	movgr2fr.d	$fa0, $zero
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	ori	$s4, $zero, 1
	bcnez	$fcc0, .LBB1_36
# %bb.24:                               #   in Loop: Header=BB1_8 Depth=2
	vld	$vr2, $sp, 656                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa2, $ft3, $fs7
	vld	$vr3, $sp, 640                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft4, $fa2
	vld	$vr3, $sp, 624                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft5, $fa2
	vld	$vr3, $sp, 608                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft6, $fa2
	vld	$vr3, $sp, 592                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft7, $fa2
	vld	$vr3, $sp, 576                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft8, $fa2
	vld	$vr3, $sp, 560                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft9, $fa2
	vld	$vr3, $sp, 544                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft10, $fa2
	vld	$vr3, $sp, 528                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft11, $fa2
	vld	$vr3, $sp, 512                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	vld	$vr3, $sp, 496                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa5, $fa2
	vld	$vr3, $sp, 480                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	vld	$vr3, $sp, 464                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa7, $fa2
	vld	$vr3, $sp, 448                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft0, $fa2
	vld	$vr3, $sp, 432                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft1, $fa2
	vld	$vr3, $sp, 416                  # 16-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft2, $fa2
	fld.d	$fa3, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft12, $fa2
	fdiv.d	$ft2, $fa2, $fa1
	fclass.d	$fa1, $ft2
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_36
# %bb.25:                               # %.lr.ph.i399.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2624
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	move	$a0, $zero
	fmul.d	$fa1, $ft2, $fa1
	fld.d	$fa2, $sp, 248                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fneg.d	$fa1, $ft2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2576
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	fst.d	$fa1, $sp, 1040                 # 8-byte Folded Spill
	fmul.d	$fa4, $ft15, $fa1
	vreplvei.d	$vr1, $vr10, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2288
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	vfmul.d	$vr3, $vr1, $vr3
	vld	$vr6, $sp, 256                  # 16-byte Folded Reload
	vfadd.d	$vr3, $vr6, $vr3
	vreplvei.d	$vr6, $vr4, 0
	vfmul.d	$vr5, $vr6, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2592
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	vfadd.d	$vr3, $vr3, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2304
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2432
	add.d	$a1, $sp, $a1
	vst	$vr3, $a1, 0
	vfmul.d	$vr3, $vr1, $vr7
	vld	$vr7, $sp, 272                  # 16-byte Folded Reload
	vfadd.d	$vr3, $vr7, $vr3
	vfmul.d	$vr5, $vr6, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2608
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	vfadd.d	$vr3, $vr3, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	vst	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2320
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	vfmul.d	$vr5, $vr1, $vr7
	vld	$vr7, $sp, 288                  # 16-byte Folded Reload
	vfadd.d	$vr5, $vr7, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2336
	add.d	$a1, $sp, $a1
	fld.d	$fa7, $a1, 0
	vfmul.d	$vr3, $vr6, $vr3
	vfadd.d	$vr3, $vr5, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2464
	add.d	$a1, $sp, $a1
	vst	$vr3, $a1, 0
	fmul.d	$fa3, $fa4, $fa7
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2632
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	fadd.d	$fa2, $fa2, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2344
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	fst.d	$fa2, $a1, 0
	vfmul.d	$vr2, $vr1, $vr4
	vld	$vr4, $sp, 304                  # 16-byte Folded Reload
	vfadd.d	$vr2, $vr4, $vr2
	vfmul.d	$vr3, $vr6, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2648
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	vfadd.d	$vr2, $vr2, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2360
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2488
	add.d	$a1, $sp, $a1
	vst	$vr2, $a1, 0
	vfmul.d	$vr2, $vr1, $vr4
	vld	$vr4, $sp, 320                  # 16-byte Folded Reload
	vfadd.d	$vr2, $vr4, $vr2
	vfmul.d	$vr3, $vr6, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2664
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	vfadd.d	$vr2, $vr2, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2376
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2504
	add.d	$a1, $sp, $a1
	vst	$vr2, $a1, 0
	vfmul.d	$vr2, $vr1, $vr4
	vld	$vr4, $sp, 336                  # 16-byte Folded Reload
	vfadd.d	$vr2, $vr4, $vr2
	vfmul.d	$vr3, $vr6, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	vfadd.d	$vr2, $vr2, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2392
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2520
	add.d	$a1, $sp, $a1
	vst	$vr2, $a1, 0
	vfmul.d	$vr2, $vr1, $vr4
	vld	$vr4, $sp, 352                  # 16-byte Folded Reload
	vfadd.d	$vr2, $vr4, $vr2
	vfmul.d	$vr3, $vr6, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2696
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	vfadd.d	$vr2, $vr2, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2408
	add.d	$a1, $sp, $a1
	vld	$vr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2536
	add.d	$a1, $sp, $a1
	vst	$vr2, $a1, 0
	vfmul.d	$vr2, $vr1, $vr4
	vld	$vr4, $sp, 368                  # 16-byte Folded Reload
	vfadd.d	$vr2, $vr4, $vr2
	vfmul.d	$vr3, $vr6, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2272
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2704
	add.d	$a1, $sp, $a1
	fld.d	$fa4, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2416
	add.d	$a1, $sp, $a1
	fld.d	$fa5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2552
	add.d	$a1, $sp, $a1
	vst	$vr2, $a1, 0
	fmul.d	$fa2, $ft2, $fa3
	fsub.d	$fa2, $fa4, $fa2
	fmul.d	$fa3, $ft15, $fa5
	fsub.d	$fa2, $fa2, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	add.d	$a1, $sp, $a1
	vld	$vr4, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2576
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	fmul.d	$fa3, $ft15, $ft2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2288
	add.d	$a1, $sp, $a1
	vld	$vr6, $a1, 0
	vfmul.d	$vr4, $vr1, $vr4
	vfsub.d	$vr4, $vr5, $vr4
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2000
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	vld	$vr9, $sp, 384                  # 16-byte Folded Reload
	vfmul.d	$vr6, $vr9, $vr6
	vfsub.d	$vr6, $vr4, $vr6
	vreplvei.d	$vr4, $vr3, 0
	vfmul.d	$vr5, $vr4, $vr5
	vfadd.d	$vr17, $vr6, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2160
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2576
	add.d	$a1, $sp, $a1
	vst	$vr17, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2592
	add.d	$a1, $sp, $a1
	vld	$vr6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2304
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	vfmul.d	$vr5, $vr1, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2016
	add.d	$a1, $sp, $a1
	vld	$vr8, $a1, 0
	vfsub.d	$vr5, $vr6, $vr5
	vfmul.d	$vr6, $vr9, $vr7
	vfsub.d	$vr5, $vr5, $vr6
	vfmul.d	$vr6, $vr4, $vr8
	vfadd.d	$vr11, $vr5, $vr6
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2176
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2592
	add.d	$a1, $sp, $a1
	vst	$vr11, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2608
	add.d	$a1, $sp, $a1
	vld	$vr6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2320
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	vfmul.d	$vr5, $vr1, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2032
	add.d	$a1, $sp, $a1
	vld	$vr8, $a1, 0
	vfsub.d	$vr5, $vr6, $vr5
	vfmul.d	$vr6, $vr9, $vr7
	vfsub.d	$vr5, $vr5, $vr6
	vfmul.d	$vr6, $vr4, $vr8
	vfadd.d	$vr12, $vr5, $vr6
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2192
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2608
	add.d	$a1, $sp, $a1
	vst	$vr12, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2624
	add.d	$a1, $sp, $a1
	vld	$vr6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2336
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	vfmul.d	$vr5, $vr1, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2048
	add.d	$a1, $sp, $a1
	vld	$vr8, $a1, 0
	vfsub.d	$vr5, $vr6, $vr5
	vfmul.d	$vr6, $vr9, $vr7
	vfsub.d	$vr5, $vr5, $vr6
	vfmul.d	$vr6, $vr4, $vr8
	vfadd.d	$vr13, $vr5, $vr6
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2208
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2624
	add.d	$a1, $sp, $a1
	vst	$vr13, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2640
	add.d	$a1, $sp, $a1
	vld	$vr6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2352
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	vfmul.d	$vr5, $vr1, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2064
	add.d	$a1, $sp, $a1
	vld	$vr8, $a1, 0
	vfsub.d	$vr5, $vr6, $vr5
	vfmul.d	$vr6, $vr9, $vr7
	vfsub.d	$vr5, $vr5, $vr6
	vfmul.d	$vr6, $vr4, $vr8
	vfadd.d	$vr15, $vr5, $vr6
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2224
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2640
	add.d	$a1, $sp, $a1
	vst	$vr15, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2656
	add.d	$a1, $sp, $a1
	vld	$vr6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	vfmul.d	$vr5, $vr1, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2080
	add.d	$a1, $sp, $a1
	vld	$vr8, $a1, 0
	vfsub.d	$vr5, $vr6, $vr5
	vfmul.d	$vr6, $vr9, $vr7
	vfsub.d	$vr5, $vr5, $vr6
	vfmul.d	$vr6, $vr4, $vr8
	vfadd.d	$vr16, $vr5, $vr6
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2240
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2656
	add.d	$a1, $sp, $a1
	vst	$vr16, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2672
	add.d	$a1, $sp, $a1
	vld	$vr6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2384
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	vfmul.d	$vr5, $vr1, $vr5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2096
	add.d	$a1, $sp, $a1
	vld	$vr8, $a1, 0
	vfsub.d	$vr5, $vr6, $vr5
	vfmul.d	$vr6, $vr9, $vr7
	vfsub.d	$vr5, $vr5, $vr6
	vfmul.d	$vr6, $vr4, $vr8
	vfadd.d	$vr18, $vr5, $vr6
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2256
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2688
	add.d	$a1, $sp, $a1
	vld	$vr6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2672
	add.d	$a1, $sp, $a1
	vst	$vr18, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2400
	add.d	$a1, $sp, $a1
	vld	$vr7, $a1, 0
	vfmul.d	$vr1, $vr1, $vr5
	vfsub.d	$vr1, $vr6, $vr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2112
	add.d	$a1, $sp, $a1
	vld	$vr5, $a1, 0
	vfmul.d	$vr6, $vr9, $vr7
	vfsub.d	$vr1, $vr1, $vr6
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2128
	add.d	$a1, $sp, $a1
	fld.d	$fa6, $a1, 0
	vfmul.d	$vr4, $vr4, $vr5
	vfadd.d	$vr20, $vr1, $vr4
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2688
	add.d	$a1, $sp, $a1
	vst	$vr20, $a1, 0
	fmul.d	$fa1, $fa3, $fa6
	fadd.d	$fs1, $fa2, $fa1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2704
	add.d	$a1, $sp, $a1
	fst.d	$fs1, $a1, 0
	vreplvei.d	$vr3, $vr17, 0
	vreplvei.d	$vr30, $vr17, 1
	vreplvei.d	$vr31, $vr11, 0
	vreplvei.d	$vr22, $vr11, 1
	vreplvei.d	$vr24, $vr12, 0
	vreplvei.d	$vr26, $vr12, 1
	vreplvei.d	$vr27, $vr13, 0
	vreplvei.d	$vr28, $vr13, 1
	vreplvei.d	$vr29, $vr15, 0
	vreplvei.d	$vr9, $vr15, 1
	vreplvei.d	$vr14, $vr16, 0
	vreplvei.d	$vr19, $vr16, 1
	vreplvei.d	$vr21, $vr18, 0
	vreplvei.d	$vr6, $vr18, 1
	vreplvei.d	$vr7, $vr20, 0
	vreplvei.d	$vr8, $vr20, 1
	move	$a1, $a5
	vst	$vr3, $sp, 1104                 # 16-byte Folded Spill
	.p2align	4, , 16
.LBB1_26:                               # %.preheader
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -64
	fld.d	$fa2, $a1, -56
	fmadd.d	$fa1, $fa1, $fa3, $fa0
	fmadd.d	$fa1, $fa2, $fs6, $fa1
	fld.d	$fa2, $a1, -48
	fld.d	$fa3, $a1, -40
	fld.d	$fa4, $a1, -32
	fld.d	$fa5, $a1, -24
	fmadd.d	$fa1, $fa2, $fs7, $fa1
	fmadd.d	$fa1, $fa3, $ft14, $fa1
	fmadd.d	$fa1, $fa4, $fs0, $fa1
	fmadd.d	$fa1, $fa5, $fs2, $fa1
	fld.d	$fa2, $a1, -16
	fld.d	$fa3, $a1, -8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a1, 8
	fmadd.d	$fa1, $fa2, $fs3, $fa1
	fmadd.d	$fa1, $fa3, $fs4, $fa1
	fmadd.d	$fa1, $fa4, $fs5, $fa1
	fmadd.d	$fa1, $fa5, $ft1, $fa1
	fld.d	$fa2, $a1, 16
	fld.d	$fa3, $a1, 24
	fld.d	$fa4, $a1, 32
	fld.d	$fa5, $a1, 40
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fmadd.d	$fa1, $fa3, $ft11, $fa1
	fmadd.d	$fa1, $fa4, $ft13, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fld.d	$fa2, $a1, 48
	fld.d	$fa3, $a1, 56
	fld.d	$fa4, $a1, 64
	fldx.d	$fa5, $a0, $a6
	fmadd.d	$fa1, $fa2, $fa7, $fa1
	fmadd.d	$fa1, $fa3, $ft0, $fa1
	vld	$vr3, $sp, 1104                 # 16-byte Folded Reload
	fmadd.d	$fa1, $fa4, $fs1, $fa1
	fmul.d	$fa2, $fa5, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a0, $a6
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s8, .LBB1_26
# %bb.27:                               # %.lr.ph.i424.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3520
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fa1, $fa3, $fa1, $fa0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3528
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3536
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3544
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3552
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fs6, $fa2, $fa1
	fmadd.d	$fa1, $fs7, $fa3, $fa1
	vst	$vr22, $sp, 1072                # 16-byte Folded Spill
	fmadd.d	$fa1, $ft14, $fa4, $fa1
	vst	$vr24, $sp, 1056                # 16-byte Folded Spill
	fmadd.d	$fa1, $fs0, $fa5, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3560
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3568
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3576
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3584
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fs2, $fa2, $fa1
	fmadd.d	$fa1, $fs3, $fa3, $fa1
	fmadd.d	$fa1, $fs4, $fa4, $fa1
	fmadd.d	$fa1, $fs5, $fa5, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3592
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3600
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3608
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3616
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $ft1, $fa2, $fa1
	fmadd.d	$fa1, $ft6, $fa3, $fa1
	fmadd.d	$fa1, $ft11, $fa4, $fa1
	fmadd.d	$fa1, $ft13, $fa5, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3624
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3632
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3640
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3648
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fa6, $fa2, $fa1
	fmadd.d	$fa1, $fa7, $fa3, $fa1
	fmadd.d	$fa1, $ft0, $fa4, $fa1
	fmadd.d	$fa1, $fs1, $fa5, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_8 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_35
.LBB1_29:                               #   in Loop: Header=BB1_8 Depth=2
	fld.d	$fa1, $sp, 408                  # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fld.d	$ft14, $sp, 1096                # 8-byte Folded Reload
	bcnez	$fcc0, .LBB1_37
# %bb.30:                               # %.lr.ph.i430.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	ori	$a0, $zero, 3648
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	movgr2fr.d	$fa0, $zero
	vld	$vr2, $sp, 1104                 # 16-byte Folded Reload
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	ori	$a0, $zero, 3656
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	ori	$a0, $zero, 3664
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	ori	$a0, $zero, 3672
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	ori	$a0, $zero, 3680
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fa2, $fs6, $fa1
	fmadd.d	$fa1, $fa3, $fs7, $fa1
	vld	$vr2, $sp, 1072                 # 16-byte Folded Reload
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	vld	$vr2, $sp, 1056                 # 16-byte Folded Reload
	fmadd.d	$fa1, $fa5, $fa2, $fa1
	ori	$a0, $zero, 3688
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	ori	$a0, $zero, 3696
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	ori	$a0, $zero, 3704
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	ori	$a0, $zero, 3712
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fa2, $fs2, $fa1
	fmadd.d	$fa1, $fa3, $fs3, $fa1
	fmadd.d	$fa1, $fa4, $fs4, $fa1
	fmadd.d	$fa1, $fa5, $fs5, $fa1
	ori	$a0, $zero, 3720
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	ori	$a0, $zero, 3728
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	ori	$a0, $zero, 3736
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	ori	$a0, $zero, 3744
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fa2, $ft1, $fa1
	fmadd.d	$fa1, $fa3, $ft6, $fa1
	fmadd.d	$fa1, $fa4, $ft11, $fa1
	fmadd.d	$fa1, $fa5, $ft13, $fa1
	ori	$a0, $zero, 3752
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	ori	$a0, $zero, 3760
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	ori	$a0, $zero, 3768
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	ori	$a0, $zero, 3776
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fmadd.d	$fa1, $fa3, $fa7, $fa1
	fmadd.d	$fa1, $fa4, $ft0, $fa1
	fmadd.d	$ft6, $fa5, $fs1, $fa1
	fclass.d	$fa1, $ft6
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	ori	$s4, $zero, 1
	bnez	$a0, .LBB1_36
# %bb.31:                               # %.lr.ph.i430.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	fcmp.ceq.d	$fcc0, $ft2, $fa0
	bcnez	$fcc0, .LBB1_36
# %bb.32:                               #   in Loop: Header=BB1_8 Depth=2
	fdiv.d	$fa0, $ft6, $ft14
	fdiv.d	$fa1, $ft15, $ft2
	fmul.d	$fa0, $fa1, $fa0
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_36
# %bb.33:                               # %.lr.ph.i436.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2848
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa3, $fs1, $fa1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2720
	add.d	$a0, $sp, $a0
	vld	$vr1, $a0, 0
	fld.d	$fa2, $sp, 1040                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa0, $fa2
	vreplvei.d	$vr5, $vr0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2288
	add.d	$a0, $sp, $a0
	vld	$vr0, $a0, 0
	vfmul.d	$vr1, $vr5, $vr1
	vfadd.d	$vr1, $vr17, $vr1
	vreplvei.d	$vr6, $vr4, 0
	vfmul.d	$vr0, $vr6, $vr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2736
	add.d	$a0, $sp, $a0
	vld	$vr2, $a0, 0
	vfadd.d	$vr10, $vr1, $vr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2304
	add.d	$a0, $sp, $a0
	vld	$vr0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2720
	add.d	$a0, $sp, $a0
	vst	$vr10, $a0, 0
	vfmul.d	$vr1, $vr5, $vr2
	vfadd.d	$vr1, $vr11, $vr1
	vfmul.d	$vr0, $vr6, $vr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2752
	add.d	$a0, $sp, $a0
	vld	$vr2, $a0, 0
	vfadd.d	$vr17, $vr1, $vr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2320
	add.d	$a0, $sp, $a0
	vld	$vr0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2736
	add.d	$a0, $sp, $a0
	vst	$vr17, $a0, 0
	vfmul.d	$vr1, $vr5, $vr2
	vfadd.d	$vr1, $vr12, $vr1
	vfmul.d	$vr0, $vr6, $vr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2768
	add.d	$a0, $sp, $a0
	vld	$vr2, $a0, 0
	vfadd.d	$vr19, $vr1, $vr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2336
	add.d	$a0, $sp, $a0
	vld	$vr0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2752
	add.d	$a0, $sp, $a0
	vst	$vr19, $a0, 0
	vfmul.d	$vr1, $vr5, $vr2
	vfadd.d	$vr1, $vr13, $vr1
	vfmul.d	$vr0, $vr6, $vr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2784
	add.d	$a0, $sp, $a0
	vld	$vr2, $a0, 0
	vfadd.d	$vr0, $vr1, $vr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2352
	add.d	$a0, $sp, $a0
	vld	$vr1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2768
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	vfmul.d	$vr2, $vr5, $vr2
	vfadd.d	$vr2, $vr15, $vr2
	vfmul.d	$vr1, $vr6, $vr1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2800
	add.d	$a0, $sp, $a0
	vld	$vr7, $a0, 0
	vfadd.d	$vr1, $vr2, $vr1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2368
	add.d	$a0, $sp, $a0
	vld	$vr2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2784
	add.d	$a0, $sp, $a0
	vst	$vr1, $a0, 0
	vfmul.d	$vr7, $vr5, $vr7
	vfadd.d	$vr7, $vr16, $vr7
	vfmul.d	$vr2, $vr6, $vr2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2816
	add.d	$a0, $sp, $a0
	vld	$vr8, $a0, 0
	vfadd.d	$vr2, $vr7, $vr2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2384
	add.d	$a0, $sp, $a0
	vld	$vr7, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2800
	add.d	$a0, $sp, $a0
	vst	$vr2, $a0, 0
	vfmul.d	$vr8, $vr5, $vr8
	vfadd.d	$vr8, $vr18, $vr8
	vfmul.d	$vr7, $vr6, $vr7
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2832
	add.d	$a0, $sp, $a0
	vld	$vr9, $a0, 0
	vfadd.d	$vr7, $vr8, $vr7
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2816
	add.d	$a0, $sp, $a0
	vst	$vr7, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2400
	add.d	$a0, $sp, $a0
	vld	$vr8, $a0, 0
	vfmul.d	$vr5, $vr5, $vr9
	vfadd.d	$vr5, $vr20, $vr5
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2416
	add.d	$a0, $sp, $a0
	fld.d	$ft1, $a0, 0
	vfmul.d	$vr6, $vr6, $vr8
	vfadd.d	$vr5, $vr5, $vr6
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2832
	add.d	$a0, $sp, $a0
	vst	$vr5, $a0, 0
	fmul.d	$fa4, $fa4, $ft1
	fadd.d	$ft0, $fa3, $fa4
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2848
	add.d	$a0, $sp, $a0
	fst.d	$ft0, $a0, 0
	addi.w	$s3, $s3, 1
	vreplvei.d	$vr6, $vr0, 0
	vreplvei.d	$vr9, $vr0, 1
	vreplvei.d	$vr20, $vr1, 0
	vreplvei.d	$vr21, $vr1, 1
	vreplvei.d	$vr22, $vr2, 0
	vreplvei.d	$vr23, $vr2, 1
	vreplvei.d	$vr24, $vr7, 0
	vreplvei.d	$vr11, $vr7, 1
	vreplvei.d	$vr12, $vr5, 0
	vreplvei.d	$vr13, $vr5, 1
	fmov.d	$fa0, $ft6
	move	$s1, $s5
	bne	$s3, $a7, .LBB1_8
	b	.LBB1_38
.LBB1_34:                               # %call.sqrt871
                                        #   in Loop: Header=BB1_8 Depth=2
	vst	$vr23, $sp, 16                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vld	$vr23, $sp, 16                  # 16-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2000
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 4
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3520
	add.d	$a6, $sp, $a0
	ori	$a0, $zero, 3848
	add.d	$a5, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2920
	add.d	$a4, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1136
	add.d	$a3, $sp, $a0
	fmov.d	$fa1, $fa0
	b	.LBB1_22
.LBB1_35:                               # %call.sqrt873
                                        #   in Loop: Header=BB1_8 Depth=2
	fmov.d	$fa0, $fa1
	vst	$vr23, $sp, 16                  # 16-byte Folded Spill
	vst	$vr10, $sp, 1024                # 16-byte Folded Spill
	vst	$vr11, $sp, 1008                # 16-byte Folded Spill
	vst	$vr12, $sp, 992                 # 16-byte Folded Spill
	vst	$vr13, $sp, 976                 # 16-byte Folded Spill
	vst	$vr15, $sp, 960                 # 16-byte Folded Spill
	vst	$vr16, $sp, 944                 # 16-byte Folded Spill
	vst	$vr18, $sp, 928                 # 16-byte Folded Spill
	vst	$vr20, $sp, 912                 # 16-byte Folded Spill
	vst	$vr17, $sp, 896                 # 16-byte Folded Spill
	vst	$vr6, $sp, 880                  # 16-byte Folded Spill
	vst	$vr7, $sp, 864                  # 16-byte Folded Spill
	vst	$vr8, $sp, 848                  # 16-byte Folded Spill
	vst	$vr9, $sp, 832                  # 16-byte Folded Spill
	vst	$vr14, $sp, 816                 # 16-byte Folded Spill
	vst	$vr19, $sp, 800                 # 16-byte Folded Spill
	vst	$vr21, $sp, 784                 # 16-byte Folded Spill
	vst	$vr26, $sp, 768                 # 16-byte Folded Spill
	vst	$vr27, $sp, 752                 # 16-byte Folded Spill
	vst	$vr28, $sp, 736                 # 16-byte Folded Spill
	vst	$vr29, $sp, 720                 # 16-byte Folded Spill
	vst	$vr30, $sp, 704                 # 16-byte Folded Spill
	vst	$vr31, $sp, 688                 # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vld	$vr31, $sp, 688                 # 16-byte Folded Reload
	vld	$vr30, $sp, 704                 # 16-byte Folded Reload
	vld	$vr29, $sp, 720                 # 16-byte Folded Reload
	vld	$vr28, $sp, 736                 # 16-byte Folded Reload
	vld	$vr27, $sp, 752                 # 16-byte Folded Reload
	vld	$vr26, $sp, 768                 # 16-byte Folded Reload
	vld	$vr21, $sp, 784                 # 16-byte Folded Reload
	vld	$vr19, $sp, 800                 # 16-byte Folded Reload
	vld	$vr14, $sp, 816                 # 16-byte Folded Reload
	vld	$vr9, $sp, 832                  # 16-byte Folded Reload
	vld	$vr8, $sp, 848                  # 16-byte Folded Reload
	vld	$vr7, $sp, 864                  # 16-byte Folded Reload
	vld	$vr6, $sp, 880                  # 16-byte Folded Reload
	vld	$vr17, $sp, 896                 # 16-byte Folded Reload
	vld	$vr20, $sp, 912                 # 16-byte Folded Reload
	vld	$vr18, $sp, 928                 # 16-byte Folded Reload
	vld	$vr16, $sp, 944                 # 16-byte Folded Reload
	vld	$vr15, $sp, 960                 # 16-byte Folded Reload
	vld	$vr13, $sp, 976                 # 16-byte Folded Reload
	vld	$vr12, $sp, 992                 # 16-byte Folded Reload
	vld	$vr11, $sp, 1008                # 16-byte Folded Reload
	vld	$vr10, $sp, 1024                # 16-byte Folded Reload
	vld	$vr23, $sp, 16                  # 16-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2000
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 4
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3520
	add.d	$a6, $sp, $a0
	ori	$a0, $zero, 3848
	add.d	$a5, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2920
	add.d	$a4, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1136
	add.d	$a3, $sp, $a0
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_36:                               #   in Loop: Header=BB1_5 Depth=1
	st.d	$zero, $sp, 1072                # 8-byte Folded Spill
	st.d	$zero, $sp, 1104                # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_37:                               #   in Loop: Header=BB1_5 Depth=1
	move	$s4, $zero
	st.d	$zero, $sp, 1056                # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	b	.LBB1_39
.LBB1_38:                               #   in Loop: Header=BB1_5 Depth=1
	st.d	$zero, $sp, 1072                # 8-byte Folded Spill
	st.d	$zero, $sp, 1056                # 8-byte Folded Spill
	ori	$s4, $zero, 1
	fst.d	$ft6, $sp, 1096                 # 8-byte Folded Spill
.LBB1_39:                               #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
.LBB1_40:                               #   in Loop: Header=BB1_5 Depth=1
	move	$s3, $zero
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2432
	add.d	$s0, $sp, $a0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	move	$s6, $s5
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	addi.d	$s7, $sp, 1120
	ori	$s2, $zero, 68
	.p2align	4, , 16
.LBB1_41:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $s0, 0
	ldx.w	$a4, $s3, $s7
	vldi	$vr0, -912
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 4
	addi.d	$s0, $s0, 8
	bne	$s3, $s2, .LBB1_41
# %bb.42:                               #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1056                  # 8-byte Folded Reload
	or	$a0, $a1, $a0
	move	$s1, $s6
	addi.d	$s6, $sp, 1124
	bnez	$a0, .LBB1_4
# %bb.43:                               #   in Loop: Header=BB1_5 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2720
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	ld.w	$a4, $sp, 1120
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 14
	ori	$a3, $zero, 14
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 4
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2728
	add.d	$s3, $sp, $a0
	addi.d	$s7, $sp, 1120
	ori	$s2, $zero, 68
	.p2align	4, , 16
.LBB1_44:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $s3, 0
	ldx.w	$a4, $s0, $s7
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 4
	addi.d	$s3, $s3, 8
	bne	$s0, $s2, .LBB1_44
# %bb.45:                               #   in Loop: Header=BB1_5 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2576
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	ld.w	$a4, $sp, 1120
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2584
	add.d	$s3, $sp, $a0
	ori	$s2, $zero, 64
	.p2align	4, , 16
.LBB1_46:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $s3, 0
	ldx.w	$a4, $s6, $s0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 4
	addi.d	$s3, $s3, 8
	bne	$s0, $s2, .LBB1_46
	b	.LBB1_4
.LBB1_47:                               # %._crit_edge
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s5
	move	$a1, $s1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $a2
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1776
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
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
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
	addi.d	$sp, $sp, -560
	fmov.d	$fs0, $fa2
	move	$a4, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a2, $zero, 12
	move	$a3, $fp
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 24                   # 8-byte Folded Spill
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
	fmov.d	$fs2, $fa0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fsqrt.d	$fs1, $fa0
	fcmp.cor.d	$fcc0, $fs1, $fs1
	bceqz	$fcc0, .LBB3_30
.LBB3_1:                                # %.preheader247.preheader.split
	addi.d	$a0, $sp, 1576
	ori	$a2, $zero, 648
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
	vst	$vr0, $sp, 240
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_1)
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $sp, 1648
	st.d	$a0, $sp, 1728
	st.d	$a0, $sp, 1808
	st.d	$a0, $sp, 1888
	ori	$a1, $zero, 2048
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a1, $zero, 2128
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a1, $zero, 2208
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	vst	$vr0, $sp, 256
	ori	$a0, $zero, 23
	movgr2fr.d	$fa0, $zero
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fcmp.ceq.d	$fcc0, $fs3, $fa0
	st.w	$a0, $sp, 272
	bcnez	$fcc0, .LBB3_29
# %bb.2:                                # %.preheader247.preheader.split
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB3_29
# %bb.3:                                # %.lr.ph
	move	$a1, $zero
	fmul.d	$fa0, $fs0, $fs1
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	addi.d	$s3, $sp, 960
	ori	$a0, $zero, 2224
	add.d	$s5, $sp, $a0
	ori	$s6, $zero, 72
	ori	$a0, $zero, 2368
	add.d	$s7, $sp, $a0
	ori	$a0, $zero, 2296
	add.d	$s8, $sp, $a0
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %.loopexit
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	sltui	$a0, $a1, 196
	addi.w	$a1, $a1, 4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	and	$a0, $a0, $a2
	and	$a0, $a0, $s2
	beqz	$a0, .LBB3_29
.LBB3_5:                                # %.preheader243.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #       Child Loop BB3_7 Depth 3
                                        #       Child Loop BB3_9 Depth 3
                                        #       Child Loop BB3_11 Depth 3
                                        #       Child Loop BB3_15 Depth 3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 72
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 72
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2296
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 72
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 240
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 244
	ld.w	$a3, $sp, 240
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs1
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 248
	ld.w	$a3, $sp, 244
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 252
	ld.w	$a3, $sp, 248
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 256
	ld.w	$a3, $sp, 252
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 260
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 264
	ld.w	$a3, $sp, 260
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 268
	ld.w	$a3, $sp, 264
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 272
	ld.w	$a3, $sp, 268
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 1316
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1316
	addi.d	$a2, $sp, 280
	addi.d	$a3, $sp, 240
	addi.d	$a4, $sp, 240
	ori	$a5, $zero, 9
	ori	$a6, $zero, 9
	ori	$a7, $zero, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(matmul_grids)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 928
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 648
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vldi	$vr21, -912
	move	$s4, $zero
	fld.d	$fa5, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$ft8, $fa5
	fmov.d	$ft7, $fa5
	fmov.d	$ft0, $fa5
	fmov.d	$fa7, $fa5
	fmov.d	$fa6, $fa5
	fmov.d	$fs2, $fa5
	fmov.d	$ft15, $fa5
	fmov.d	$ft14, $fa5
	fmov.d	$fs1, $fa5
	fmov.d	$fs0, $fa5
	fmov.d	$fs7, $fa5
	fmov.d	$fs6, $fa5
	fmov.d	$fs5, $fa5
	vldi	$vr20, -912
	fmov.d	$fs4, $fa5
	fmov.d	$fs3, $fa5
	fmov.d	$ft11, $fa5
	fmov.d	$ft10, $fa5
	fst.d	$fa5, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 192                  # 8-byte Folded Spill
	ori	$a2, $zero, 4
	.p2align	4, , 16
.LBB3_6:                                # %.preheader242
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_7 Depth 3
                                        #       Child Loop BB3_9 Depth 3
                                        #       Child Loop BB3_11 Depth 3
                                        #       Child Loop BB3_15 Depth 3
	ld.w	$a1, $s1, 1312
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 1312
	addi.d	$a1, $sp, 1608
	.p2align	4, , 16
.LBB3_7:                                # %.preheader238
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, -32
	fld.d	$fa1, $a1, -24
	fmadd.d	$fa0, $fa0, $ft13, $fa5
	fmadd.d	$fa0, $fa1, $ft8, $fa0
	fld.d	$fa1, $a1, -16
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$fa4, $a1, 8
	fmadd.d	$fa0, $fa1, $ft7, $fa0
	fmadd.d	$fa0, $fa2, $ft0, $fa0
	fmadd.d	$fa0, $fa3, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $fa6, $fa0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 24
	fld.d	$fa3, $a1, 32
	fldx.d	$fa4, $a0, $s5
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fmadd.d	$fa0, $fa2, $ft15, $fa0
	fmadd.d	$fa0, $fa3, $ft14, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $s5
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 72
	bne	$a0, $s6, .LBB3_7
# %bb.8:                                # %.preheader237.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	fst.d	$ft0, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 232                  # 8-byte Folded Spill
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	fld.d	$ft1, $a0, 0
	ori	$a0, $zero, 2232
	add.d	$a0, $sp, $a0
	fld.d	$ft0, $a0, 0
	ori	$a0, $zero, 2240
	add.d	$a0, $sp, $a0
	fld.d	$fa7, $a0, 0
	ori	$a0, $zero, 2248
	add.d	$a0, $sp, $a0
	fld.d	$fa6, $a0, 0
	ori	$a0, $zero, 2256
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	ori	$a0, $zero, 2264
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	ori	$a0, $zero, 2280
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	ori	$a0, $zero, 2288
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	move	$a0, $zero
	move	$a1, $s3
	.p2align	4, , 16
.LBB3_9:                                # %.preheader237
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$ft2, $a1, -32
	fld.d	$ft3, $a1, -24
	movgr2fr.d	$fa0, $zero
	fmadd.d	$ft2, $ft2, $ft1, $fa0
	fmadd.d	$ft2, $ft3, $ft0, $ft2
	fld.d	$ft3, $a1, -16
	fld.d	$ft4, $a1, -8
	fld.d	$ft5, $a1, 0
	fld.d	$ft6, $a1, 8
	fmadd.d	$ft2, $ft3, $fa7, $ft2
	fmadd.d	$ft2, $ft4, $fa6, $ft2
	fmadd.d	$ft2, $ft5, $fa5, $ft2
	fmadd.d	$ft2, $ft6, $fa4, $ft2
	fld.d	$ft3, $a1, 16
	fld.d	$ft4, $a1, 24
	fld.d	$ft5, $a1, 32
	fldx.d	$ft6, $a0, $s7
	fmadd.d	$ft2, $ft3, $fa2, $ft2
	fmadd.d	$ft2, $ft4, $fa1, $ft2
	fmadd.d	$ft2, $ft5, $fa3, $ft2
	fmul.d	$ft3, $ft6, $fa0
	fadd.d	$ft2, $ft2, $ft3
	fstx.d	$ft2, $a0, $s7
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 72
	bne	$a0, $s6, .LBB3_9
# %bb.10:                               # %.preheader236.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	fst.d	$ft10, $sp, 128                 # 8-byte Folded Spill
	fst.d	$ft8, $sp, 200                  # 8-byte Folded Spill
	fst.d	$ft7, $sp, 208                  # 8-byte Folded Spill
	move	$a0, $zero
	move	$a1, $s3
	.p2align	4, , 16
.LBB3_11:                               # %.preheader236
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$ft2, $a1, -32
	fld.d	$ft3, $a1, -24
	fmadd.d	$ft2, $ft2, $fs1, $fa0
	fmadd.d	$ft2, $ft3, $fs0, $ft2
	fld.d	$ft3, $a1, -16
	fld.d	$ft4, $a1, -8
	fld.d	$ft5, $a1, 0
	fld.d	$ft6, $a1, 8
	fmadd.d	$ft2, $ft3, $fs7, $ft2
	fmadd.d	$ft2, $ft4, $fs6, $ft2
	fmadd.d	$ft2, $ft5, $fs5, $ft2
	fmadd.d	$ft2, $ft6, $ft12, $ft2
	fld.d	$ft3, $a1, 16
	fld.d	$ft4, $a1, 24
	fld.d	$ft5, $a1, 32
	fldx.d	$ft6, $a0, $s8
	fmadd.d	$ft2, $ft3, $fs4, $ft2
	fmadd.d	$ft2, $ft4, $fs3, $ft2
	fmadd.d	$ft2, $ft5, $ft11, $ft2
	fmul.d	$ft3, $ft6, $fa0
	fadd.d	$ft2, $ft2, $ft3
	fstx.d	$ft2, $a0, $s8
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 72
	bne	$a0, $s6, .LBB3_11
# %bb.12:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	fld.d	$ft2, $a0, 0
	ori	$a0, $zero, 2376
	add.d	$a0, $sp, $a0
	fld.d	$ft3, $a0, 0
	fst.d	$ft3, $sp, 120                  # 8-byte Folded Spill
	ori	$a0, $zero, 2384
	add.d	$a0, $sp, $a0
	fld.d	$ft3, $a0, 0
	fst.d	$ft3, $sp, 112                  # 8-byte Folded Spill
	ori	$a0, $zero, 2392
	add.d	$a0, $sp, $a0
	fld.d	$ft5, $a0, 0
	ori	$a0, $zero, 2400
	add.d	$a0, $sp, $a0
	fld.d	$ft6, $a0, 0
	ori	$a0, $zero, 2408
	add.d	$a0, $sp, $a0
	fld.d	$ft7, $a0, 0
	ori	$a0, $zero, 2416
	add.d	$a0, $sp, $a0
	fld.d	$ft8, $a0, 0
	ori	$a0, $zero, 2424
	add.d	$a0, $sp, $a0
	fld.d	$ft9, $a0, 0
	ori	$a0, $zero, 2432
	add.d	$a0, $sp, $a0
	fld.d	$ft10, $a0, 0
	fmadd.d	$ft2, $ft13, $ft2, $fa0
	fld.d	$ft3, $sp, 200                  # 8-byte Folded Reload
	fld.d	$ft4, $sp, 120                  # 8-byte Folded Reload
	fmadd.d	$ft2, $ft3, $ft4, $ft2
	fld.d	$ft3, $sp, 208                  # 8-byte Folded Reload
	fld.d	$ft4, $sp, 112                  # 8-byte Folded Reload
	fmadd.d	$ft2, $ft3, $ft4, $ft2
	fld.d	$ft3, $sp, 216                  # 8-byte Folded Reload
	fmadd.d	$ft2, $ft3, $ft5, $ft2
	fld.d	$ft3, $sp, 224                  # 8-byte Folded Reload
	fmadd.d	$ft2, $ft3, $ft6, $ft2
	fld.d	$ft3, $sp, 232                  # 8-byte Folded Reload
	fmadd.d	$ft2, $ft3, $ft7, $ft2
	fmadd.d	$ft2, $fs2, $ft8, $ft2
	fmadd.d	$ft2, $ft15, $ft9, $ft2
	fmadd.d	$ft2, $ft14, $ft10, $ft2
	fcmp.ceq.d	$fcc0, $ft2, $fa0
	ori	$s2, $zero, 1
	fst.d	$fs2, $sp, 104                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB3_24
# %bb.13:                               #   in Loop: Header=BB3_6 Depth=2
	ori	$a0, $zero, 2296
	add.d	$a0, $sp, $a0
	fld.d	$ft3, $a0, 0
	fmadd.d	$ft3, $fs1, $ft3, $fa0
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	fld.d	$ft4, $a0, 0
	ori	$a0, $zero, 2312
	add.d	$a0, $sp, $a0
	fld.d	$ft5, $a0, 0
	ori	$a0, $zero, 2320
	add.d	$a0, $sp, $a0
	fld.d	$ft6, $a0, 0
	ori	$a0, $zero, 2328
	add.d	$a0, $sp, $a0
	fld.d	$ft7, $a0, 0
	fmadd.d	$ft3, $fs0, $ft4, $ft3
	fmadd.d	$ft3, $fs7, $ft5, $ft3
	fmadd.d	$ft3, $fs6, $ft6, $ft3
	fmadd.d	$ft3, $fs5, $ft7, $ft3
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	fld.d	$ft4, $a0, 0
	ori	$a0, $zero, 2344
	add.d	$a0, $sp, $a0
	fld.d	$ft5, $a0, 0
	ori	$a0, $zero, 2352
	add.d	$a0, $sp, $a0
	fld.d	$ft6, $a0, 0
	ori	$a0, $zero, 2360
	add.d	$a0, $sp, $a0
	fld.d	$ft7, $a0, 0
	fmadd.d	$ft3, $ft12, $ft4, $ft3
	fmadd.d	$ft3, $fs4, $ft5, $ft3
	fmadd.d	$ft3, $fs3, $ft6, $ft3
	fmadd.d	$ft4, $ft11, $ft7, $ft3
	fdiv.d	$ft2, $ft4, $ft2
	fclass.d	$ft3, $ft2
	movfr2gr.d	$a0, $ft3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	fld.d	$ft10, $sp, 128                 # 8-byte Folded Reload
	bnez	$a0, .LBB3_23
# %bb.14:                               # %.lr.ph.i216.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	fst.d	$ft4, $sp, 120                  # 8-byte Folded Spill
	move	$a0, $zero
	fmul.d	$ft3, $ft2, $ft13
	fadd.d	$ft10, $ft10, $ft3
	fld.d	$ft8, $sp, 200                  # 8-byte Folded Reload
	fmul.d	$ft3, $ft2, $ft8
	fld.d	$ft4, $sp, 136                  # 8-byte Folded Reload
	fadd.d	$ft4, $ft4, $ft3
	fst.d	$ft4, $sp, 136                  # 8-byte Folded Spill
	fld.d	$ft7, $sp, 208                  # 8-byte Folded Reload
	fmul.d	$ft3, $ft2, $ft7
	fld.d	$ft4, $sp, 144                  # 8-byte Folded Reload
	fadd.d	$ft4, $ft4, $ft3
	fst.d	$ft4, $sp, 144                  # 8-byte Folded Spill
	fld.d	$ft6, $sp, 216                  # 8-byte Folded Reload
	fmul.d	$ft3, $ft2, $ft6
	fld.d	$ft4, $sp, 152                  # 8-byte Folded Reload
	fadd.d	$ft4, $ft4, $ft3
	fst.d	$ft4, $sp, 152                  # 8-byte Folded Spill
	fld.d	$ft5, $sp, 224                  # 8-byte Folded Reload
	fmul.d	$ft3, $ft2, $ft5
	fld.d	$ft4, $sp, 160                  # 8-byte Folded Reload
	fadd.d	$ft4, $ft4, $ft3
	fst.d	$ft4, $sp, 160                  # 8-byte Folded Spill
	fld.d	$ft4, $sp, 232                  # 8-byte Folded Reload
	fmul.d	$ft3, $ft2, $ft4
	fld.d	$ft9, $sp, 168                  # 8-byte Folded Reload
	fadd.d	$ft9, $ft9, $ft3
	fst.d	$ft9, $sp, 168                  # 8-byte Folded Spill
	fmul.d	$ft3, $ft2, $fs2
	fld.d	$ft9, $sp, 176                  # 8-byte Folded Reload
	fadd.d	$ft9, $ft9, $ft3
	fst.d	$ft9, $sp, 176                  # 8-byte Folded Spill
	fmul.d	$ft3, $ft2, $ft15
	fld.d	$ft9, $sp, 184                  # 8-byte Folded Reload
	fadd.d	$ft9, $ft9, $ft3
	fst.d	$ft9, $sp, 184                  # 8-byte Folded Spill
	fmul.d	$ft3, $ft2, $ft14
	fld.d	$ft9, $sp, 192                  # 8-byte Folded Reload
	fadd.d	$ft9, $ft9, $ft3
	fst.d	$ft9, $sp, 192                  # 8-byte Folded Spill
	fmul.d	$ft1, $ft2, $ft1
	fsub.d	$fs1, $fs1, $ft1
	fmul.d	$ft0, $ft2, $ft0
	fsub.d	$fs0, $fs0, $ft0
	fmul.d	$fa7, $ft2, $fa7
	fsub.d	$fs7, $fs7, $fa7
	fmul.d	$fa6, $ft2, $fa6
	fsub.d	$fs6, $fs6, $fa6
	fmul.d	$fa5, $ft2, $fa5
	fsub.d	$fs5, $fs5, $fa5
	fmul.d	$fa4, $ft2, $fa4
	fsub.d	$ft12, $ft12, $fa4
	fmul.d	$fa2, $ft2, $fa2
	fsub.d	$fs4, $fs4, $fa2
	fmul.d	$fa1, $ft2, $fa1
	fsub.d	$fs3, $fs3, $fa1
	fmul.d	$fa1, $ft2, $fa3
	fsub.d	$ft11, $ft11, $fa1
	move	$a1, $s3
	.p2align	4, , 16
.LBB3_15:                               # %.preheader
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -32
	fld.d	$fa2, $a1, -24
	fmadd.d	$fa1, $fa1, $fs1, $fa0
	fmadd.d	$fa1, $fa2, $fs0, $fa1
	fld.d	$fa2, $a1, -16
	fld.d	$fa3, $a1, -8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a1, 8
	fmadd.d	$fa1, $fa2, $fs7, $fa1
	fmadd.d	$fa1, $fa3, $fs6, $fa1
	fmadd.d	$fa1, $fa4, $fs5, $fa1
	fmadd.d	$fa1, $fa5, $ft12, $fa1
	fld.d	$fa2, $a1, 16
	fld.d	$fa3, $a1, 24
	fld.d	$fa4, $a1, 32
	fldx.d	$fa5, $a0, $s8
	fmadd.d	$fa1, $fa2, $fs4, $fa1
	fmadd.d	$fa1, $fa3, $fs3, $fa1
	fmadd.d	$fa1, $fa4, $ft11, $fa1
	fmul.d	$fa2, $fa5, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a0, $s8
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 72
	bne	$a0, $s6, .LBB3_15
# %bb.16:                               # %.lr.ph.i225.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	ori	$a0, $zero, 2296
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fa1, $fs1, $fa1, $fa0
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	ori	$a0, $zero, 2312
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	ori	$a0, $zero, 2320
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	ori	$a0, $zero, 2328
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fs0, $fa2, $fa1
	fmadd.d	$fa1, $fs7, $fa3, $fa1
	fmadd.d	$fa1, $fs6, $fa4, $fa1
	fmadd.d	$fa1, $fs5, $fa5, $fa1
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	ori	$a0, $zero, 2344
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	ori	$a0, $zero, 2352
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	ori	$a0, $zero, 2360
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $ft12, $fa2, $fa1
	fmadd.d	$fa1, $fs4, $fa3, $fa1
	fmadd.d	$fa1, $fs3, $fa4, $fa1
	fmadd.d	$fs2, $ft11, $fa5, $fa1
	fcmp.cule.d	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB3_18
# %bb.17:                               #   in Loop: Header=BB3_6 Depth=2
	fsqrt.d	$fa0, $fs2
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_22
.LBB3_18:                               #   in Loop: Header=BB3_6 Depth=2
	fld.d	$fa1, $sp, 88                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_25
# %bb.19:                               #   in Loop: Header=BB3_6 Depth=2
	movgr2fr.d	$fa0, $zero
	fcmp.ceq.d	$fcc0, $fs2, $fa0
	ori	$s2, $zero, 1
	bcnez	$fcc0, .LBB3_23
# %bb.20:                               #   in Loop: Header=BB3_6 Depth=2
	fld.d	$fa0, $sp, 120                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fs2, $fa0
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB3_23
# %bb.21:                               # %.lr.ph.i231.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	fmul.d	$fa1, $fa0, $ft13
	fadd.d	$ft13, $fs1, $fa1
	fmul.d	$fa1, $fa0, $ft8
	fadd.d	$ft8, $fs0, $fa1
	fmul.d	$fa1, $fa0, $ft7
	fadd.d	$ft7, $fs7, $fa1
	fmul.d	$fa1, $fa0, $ft6
	fadd.d	$ft0, $fs6, $fa1
	fmul.d	$fa1, $fa0, $ft5
	fadd.d	$fa7, $fs5, $fa1
	fmul.d	$fa1, $fa0, $ft4
	fadd.d	$fa6, $ft12, $fa1
	fld.d	$fa1, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fs2, $fs4, $fa1
	fmul.d	$fa1, $fa0, $ft15
	fadd.d	$ft15, $fs3, $fa1
	fmul.d	$fa0, $fa0, $ft14
	addi.w	$s4, $s4, 1
	fadd.d	$ft14, $ft11, $fa0
	fld.d	$fa5, $sp, 96                   # 8-byte Folded Reload
	bne	$s4, $a2, .LBB3_6
	b	.LBB3_26
.LBB3_22:                               # %call.sqrt521
                                        #   in Loop: Header=BB3_6 Depth=2
	fmov.d	$fa0, $fs2
	fst.d	$ft11, $sp, 112                 # 8-byte Folded Spill
	vst	$vr20, $sp, 64                  # 16-byte Folded Spill
	vst	$vr21, $sp, 48                  # 16-byte Folded Spill
	fst.d	$ft14, $sp, 40                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 32                  # 8-byte Folded Spill
	fst.d	$ft10, $sp, 128                 # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$ft10, $sp, 128                 # 8-byte Folded Reload
	fld.d	$ft8, $sp, 200                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 208                  # 8-byte Folded Reload
	fld.d	$ft6, $sp, 216                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 224                  # 8-byte Folded Reload
	fld.d	$ft4, $sp, 232                  # 8-byte Folded Reload
	fld.d	$ft15, $sp, 32                  # 8-byte Folded Reload
	fld.d	$ft14, $sp, 40                  # 8-byte Folded Reload
	vld	$vr21, $sp, 48                  # 16-byte Folded Reload
	vld	$vr20, $sp, 64                  # 16-byte Folded Reload
	fld.d	$ft11, $sp, 112                 # 8-byte Folded Reload
	ori	$a2, $zero, 4
	b	.LBB3_18
	.p2align	4, , 16
.LBB3_23:                               #   in Loop: Header=BB3_5 Depth=1
	fst.d	$ft15, $sp, 32                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 40                  # 8-byte Folded Spill
	vst	$vr21, $sp, 48                  # 16-byte Folded Spill
	vst	$vr20, $sp, 64                  # 16-byte Folded Spill
	fst.d	$ft11, $sp, 112                 # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	ori	$s4, $zero, 1
	b	.LBB3_27
.LBB3_24:                               #   in Loop: Header=BB3_5 Depth=1
	fst.d	$ft15, $sp, 32                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 40                  # 8-byte Folded Spill
	vst	$vr21, $sp, 48                  # 16-byte Folded Spill
	vst	$vr20, $sp, 64                  # 16-byte Folded Spill
	fst.d	$ft11, $sp, 112                 # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	ori	$s4, $zero, 1
	fld.d	$ft10, $sp, 128                 # 8-byte Folded Reload
	b	.LBB3_27
.LBB3_25:                               #   in Loop: Header=BB3_5 Depth=1
	fst.d	$ft15, $sp, 32                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 40                  # 8-byte Folded Spill
	vst	$vr21, $sp, 48                  # 16-byte Folded Spill
	vst	$vr20, $sp, 64                  # 16-byte Folded Spill
	fst.d	$ft11, $sp, 112                 # 8-byte Folded Spill
	move	$s2, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	b	.LBB3_27
.LBB3_26:                               #   in Loop: Header=BB3_5 Depth=1
	fst.d	$ft8, $sp, 200                  # 8-byte Folded Spill
	fst.d	$ft7, $sp, 208                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 32                  # 8-byte Folded Spill
	fst.d	$ft14, $sp, 40                  # 8-byte Folded Spill
	vst	$vr21, $sp, 48                  # 16-byte Folded Spill
	vst	$vr20, $sp, 64                  # 16-byte Folded Spill
	fst.d	$ft11, $sp, 112                 # 8-byte Folded Spill
	move	$s4, $zero
	ori	$s2, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_27:                               #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a4, $sp, 240
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $ft10
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 244
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 136                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 248
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 144                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 252
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 152                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 256
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 260
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 264
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 268
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 184                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 272
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 192                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB3_4
# %bb.28:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a4, $sp, 240
	movgr2fr.d	$fs2, $zero
	ori	$a2, $zero, 14
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs2
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 244
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 200                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 248
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 252
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 216                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 256
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 224                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 260
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 232                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 264
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 104                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 268
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 272
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 40                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 240
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 244
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 248
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs7
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 252
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 256
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs5
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 260
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 264
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 268
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 272
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 112                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	b	.LBB3_4
.LBB3_29:                               # %._crit_edge
	addi.d	$sp, $sp, 560
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
.LBB3_30:                               # %call.sqrt
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
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
