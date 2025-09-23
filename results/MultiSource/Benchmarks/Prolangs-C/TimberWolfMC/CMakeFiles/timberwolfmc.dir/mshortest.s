	.file	"mshortest.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mshortest
.LCPI0_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	0                               # 0x0
	.text
	.globl	mshortest
	.p2align	5
	.type	mshortest,@function
mshortest:                              # @mshortest
# %bb.0:
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$zero, $sp, 352
	st.d	$zero, $sp, 336
	st.d	$zero, $sp, 328
	st.d	$zero, $sp, 320
	pcalau12i	$a0, %got_pc_hi20(Mpaths)
	ld.d	$s5, $a0, %got_pc_lo12(Mpaths)
	ld.w	$a0, $s5, 0
	bltz	$a0, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $zero
	ori	$fp, $zero, 2
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$a0, $sp, 336
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	alsl.w	$a1, $a0, $fp, 1
	blt	$s0, $a1, .LBB0_2
.LBB0_3:                                # %._crit_edge
	pcalau12i	$a1, %got_pc_hi20(pnodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(pnodeArray)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(numnodes)
	ld.d	$a2, $a2, %got_pc_lo12(numnodes)
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	sub.w	$a2, $a3, $a2
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a1, $a1, $a2
	ld.d	$a3, $a1, 8
	ori	$a2, $zero, 1
	st.w	$a2, $sp, 432
	pcalau12i	$a1, %got_pc_hi20(targetPtr)
	ld.d	$fp, $a1, %got_pc_lo12(targetPtr)
	ld.w	$a1, $fp, 0
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	blez	$a1, .LBB0_7
# %bb.4:                                # %.lr.ph459.preheader
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s0, $a0, %got_pc_lo12(targetList)
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph459
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	slli.d	$a1, $a2, 1
	ldx.h	$a0, $a0, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	add.d	$a0, $a3, $a0
	ld.w	$a1, $a0, 4
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 432
	ld.w	$a1, $fp, 0
	addi.w	$a2, $a0, 1
	st.w	$a2, $sp, 432
	blt	$a0, $a1, .LBB0_5
# %bb.6:                                # %._crit_edge460.loopexit
	ld.w	$a0, $s5, 0
.LBB0_7:                                # %._crit_edge460
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	alsl.d	$a0, $a0, $a2, 1
	addi.w	$a0, $a0, 1
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(bareMinimum)
	ld.d	$a1, $a1, %got_pc_lo12(bareMinimum)
	ld.w	$a1, $a1, 0
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %got_pc_hi20(finalShot)
	ld.d	$a2, $a2, %got_pc_lo12(finalShot)
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(doCompaction)
	ld.d	$a3, $a3, %got_pc_lo12(doCompaction)
	ld.w	$a3, $a3, 0
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	addi.d	$a2, $a2, 1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$fp, $a0, $a1
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	blez	$fp, .LBB0_25
# %bb.8:                                # %.lr.ph475
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s1, $a0, %got_pc_lo12(targetList)
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$s2, $a0, %got_pc_lo12(gnodeArray)
	move	$s3, $zero
	ori	$s4, $zero, 1
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	bge	$s3, $fp, .LBB0_25
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_20 Depth 3
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 384
	addi.d	$a3, $sp, 432
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB0_25
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $sp, 432
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 1
	ldx.h	$s0, $a1, $a0
	ld.d	$a0, $s2, 0
	slli.d	$s5, $s0, 3
	ldx.d	$a1, $a0, $s5
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s0, .LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a3, $a2, 24
	bne	$a3, $s4, .LBB0_22
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	st.w	$zero, $a2, 24
	ld.d	$a1, $a1, 32
	beqz	$a1, .LBB0_18
	.p2align	4, , 16
.LBB0_15:                               # %.lr.ph466
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_16:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	addi.d	$a2, $a3, 32
	bne	$a4, $s0, .LBB0_16
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	st.w	$zero, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_15
.LBB0_18:                               # %._crit_edge467
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $sp, 382
	addi.d	$a0, $sp, 380
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldx.d	$a2, $a1, $s5
	beqz	$a2, .LBB0_23
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph472
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a1, 3
	.p2align	4, , 16
.LBB0_20:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a4, 0
	addi.d	$a3, $a4, 32
	bne	$a5, $s0, .LBB0_20
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	st.w	$s4, $a4, 24
	ld.d	$a2, $a2, 32
	bnez	$a2, .LBB0_19
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $sp, 382
	addi.d	$a0, $sp, 380
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
.LBB0_23:                               # %.loopexit441
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bltz	$a0, .LBB0_9
# %bb.24:                               #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$a0, $s0, $s5, 2
	ldx.w	$a1, $a1, $a0
	ld.w	$a2, $sp, 432
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	b	.LBB0_9
.LBB0_25:                               # %._crit_edge476
	ld.d	$a0, $sp, 320
	beqz	$a0, .LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %.preheader439
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 384
	addi.d	$a3, $sp, 432
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	bnez	$a0, .LBB0_26
.LBB0_27:                               # %.loopexit440
	ld.w	$fp, $s5, 0
	blez	$fp, .LBB0_201
# %bb.28:                               # %.lr.ph490.lr.ph
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s2, $a0, %got_pc_lo12(targetList)
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(gnodeArray)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(tempArray)
	ld.d	$a0, $a0, %got_pc_lo12(tempArray)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s3, $zero
	lu12i.w	$a0, 244140
	ori	$s5, $a0, 2560
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %.thread421
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $sp, 382
	addi.d	$a0, $sp, 380
	ori	$a1, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB0_43
.LBB0_30:                               # %.lr.ph490
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_36 Depth 3
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_58 Depth 2
                                        #       Child Loop BB0_79 Depth 3
                                        #         Child Loop BB0_86 Depth 4
                                        #           Child Loop BB0_87 Depth 5
                                        #           Child Loop BB0_89 Depth 5
                                        #         Child Loop BB0_94 Depth 4
                                        #           Child Loop BB0_95 Depth 5
                                        #             Child Loop BB0_96 Depth 6
                                        #         Child Loop BB0_100 Depth 4
                                        #           Child Loop BB0_101 Depth 5
                                        #           Child Loop BB0_103 Depth 5
                                        #         Child Loop BB0_108 Depth 4
                                        #           Child Loop BB0_109 Depth 5
                                        #             Child Loop BB0_110 Depth 6
                                        #         Child Loop BB0_115 Depth 4
                                        #         Child Loop BB0_142 Depth 4
                                        #         Child Loop BB0_123 Depth 4
                                        #         Child Loop BB0_127 Depth 4
                                        #         Child Loop BB0_133 Depth 4
                                        #         Child Loop BB0_136 Depth 4
                                        #         Child Loop BB0_139 Depth 4
                                        #       Child Loop BB0_64 Depth 3
                                        #         Child Loop BB0_65 Depth 4
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_72 Depth 3
                                        #         Child Loop BB0_73 Depth 4
                                        #           Child Loop BB0_74 Depth 5
                                        #       Child Loop BB0_146 Depth 3
                                        #         Child Loop BB0_147 Depth 4
                                        #         Child Loop BB0_149 Depth 4
                                        #       Child Loop BB0_154 Depth 3
                                        #         Child Loop BB0_155 Depth 4
                                        #           Child Loop BB0_156 Depth 5
                                        #       Child Loop BB0_161 Depth 3
                                        #       Child Loop BB0_187 Depth 3
                                        #       Child Loop BB0_168 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_182 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #     Child Loop BB0_194 Depth 2
                                        #     Child Loop BB0_197 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_41 Depth 3
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 384
	addi.d	$a3, $sp, 432
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB0_201
# %bb.31:                               # %.lr.ph723
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a0, $sp, 432
	ld.d	$a1, $s2, 0
	st.d	$zero, $sp, 368
	slli.d	$a0, $a0, 1
	ldx.hu	$a1, $a1, $a0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ext.w.h	$s1, $a1
	slli.d	$a1, $s1, 3
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ldx.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_32:                               #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s1, .LBB0_32
# %bb.33:                               #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a5, $a2, 24
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	bne	$a5, $s4, .LBB0_29
# %bb.34:                               #   in Loop: Header=BB0_30 Depth=1
	st.w	$zero, $a2, 24
	ld.d	$a1, $a1, 32
	beqz	$a1, .LBB0_38
	.p2align	4, , 16
.LBB0_35:                               # %.lr.ph483
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_36 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_36:                               #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	addi.d	$a2, $a3, 32
	bne	$a4, $s1, .LBB0_36
# %bb.37:                               #   in Loop: Header=BB0_35 Depth=2
	st.w	$zero, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_35
.LBB0_38:                               # %._crit_edge484
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $sp, 382
	addi.d	$a0, $sp, 380
	ori	$a1, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB0_43
# %bb.39:                               #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	beqz	$a1, .LBB0_30
	.p2align	4, , 16
.LBB0_40:                               # %.lr.ph489
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_41:                               #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	addi.d	$a2, $a3, 32
	bne	$a4, $s1, .LBB0_41
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=2
	st.w	$s4, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_40
	b	.LBB0_30
.LBB0_43:                               #   in Loop: Header=BB0_30 Depth=1
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a0
	add.d	$a4, $a3, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	st.w	$a2, $sp, 428
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ld.hu	$a0, $a4, 10
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.h	$a2, $a1, 2
	ori	$fp, $zero, 1
	ori	$s0, $zero, 1
	beqz	$a0, .LBB0_46
# %bb.44:                               # %.lr.ph497.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a1, $a1, 4
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB0_45:                               # %.lr.ph497
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a0, $a1, 0
	ext.w.h	$a0, $a0
	slli.d	$a2, $a0, 3
	alsl.d	$a0, $a0, $a2, 2
	add.d	$a0, $a3, $a0
	ld.hu	$a0, $a0, 10
	addi.w	$s0, $s0, 1
	addi.d	$a1, $a1, 2
	bnez	$a0, .LBB0_45
.LBB0_46:                               # %._crit_edge498
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 420
	addi.d	$a3, $sp, 396
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$a1, $a0, %got_pc_lo12(pathArray)
	ld.w	$a0, $sp, 420
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$fp, $a0, 8
	ld.w	$a0, $sp, 420
	addi.d	$a2, $s0, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 420
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$zero, $a0, 16
	ld.w	$a2, $sp, 420
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	mul.d	$a3, $a2, $a3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a4, $s0, 31, 0
	addi.d	$a3, $s0, 1
	bstrpick.d	$a3, $a3, 31, 0
	pcalau12i	$s6, %pc_hi20(.LCPI0_1)
	ori	$a5, $zero, 8
	bltu	$s0, $a5, .LBB0_52
# %bb.47:                               # %vector.memcheck810
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a5, $a4, 1
	slli.d	$a6, $a3, 1
	sub.d	$a5, $a5, $a6
	add.d	$a5, $a1, $a5
	addi.d	$a6, $a5, 4
	alsl.d	$a7, $a4, $a1, 1
	alsl.d	$t0, $a3, $a0, 1
	addi.d	$a5, $a0, 2
	bgeu	$a6, $t0, .LBB0_49
# %bb.48:                               # %vector.memcheck810
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a6, $a7, 2
	bltu	$a5, $a6, .LBB0_52
.LBB0_49:                               # %vector.ph822
                                        #   in Loop: Header=BB0_30 Depth=1
	bstrpick.d	$a6, $a4, 31, 3
	slli.d	$a6, $a6, 3
	srli.d	$t0, $a4, 3
	ori	$fp, $zero, 1
	bstrins.d	$fp, $t0, 31, 3
	addi.d	$a7, $a7, -14
	move	$t0, $a6
	.p2align	4, , 16
.LBB0_50:                               # %vector.body825
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vld	$vr1, $s6, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $a7, 0
	addi.d	$a5, $a5, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB0_50
# %bb.51:                               # %middle.block831
                                        #   in Loop: Header=BB0_30 Depth=1
	beq	$a6, $a4, .LBB0_54
.LBB0_52:                               # %scalar.ph820.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a4, $a4, 1
	slli.d	$a5, $fp, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $fp, $a0, 1
	sub.d	$a3, $a3, $fp
	.p2align	4, , 16
.LBB0_53:                               # %scalar.ph820
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_53
.LBB0_54:                               # %.loopexit850
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a1, $sp, 428
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB0_189
# %bb.55:                               # %.lr.ph556.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$s0, $zero
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	ori	$fp, $zero, 1
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	b	.LBB0_58
.LBB0_56:                               #   in Loop: Header=BB0_58 Depth=2
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_57:                               # %.backedge
                                        #   in Loop: Header=BB0_58 Depth=2
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	addi.d	$s0, $fp, -1
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_189
.LBB0_58:                               # %.lr.ph556
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_79 Depth 3
                                        #         Child Loop BB0_86 Depth 4
                                        #           Child Loop BB0_87 Depth 5
                                        #           Child Loop BB0_89 Depth 5
                                        #         Child Loop BB0_94 Depth 4
                                        #           Child Loop BB0_95 Depth 5
                                        #             Child Loop BB0_96 Depth 6
                                        #         Child Loop BB0_100 Depth 4
                                        #           Child Loop BB0_101 Depth 5
                                        #           Child Loop BB0_103 Depth 5
                                        #         Child Loop BB0_108 Depth 4
                                        #           Child Loop BB0_109 Depth 5
                                        #             Child Loop BB0_110 Depth 6
                                        #         Child Loop BB0_115 Depth 4
                                        #         Child Loop BB0_142 Depth 4
                                        #         Child Loop BB0_123 Depth 4
                                        #         Child Loop BB0_127 Depth 4
                                        #         Child Loop BB0_133 Depth 4
                                        #         Child Loop BB0_136 Depth 4
                                        #         Child Loop BB0_139 Depth 4
                                        #       Child Loop BB0_64 Depth 3
                                        #         Child Loop BB0_65 Depth 4
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_72 Depth 3
                                        #         Child Loop BB0_73 Depth 4
                                        #           Child Loop BB0_74 Depth 5
                                        #       Child Loop BB0_146 Depth 3
                                        #         Child Loop BB0_147 Depth 4
                                        #         Child Loop BB0_149 Depth 4
                                        #       Child Loop BB0_154 Depth 3
                                        #         Child Loop BB0_155 Depth 4
                                        #           Child Loop BB0_156 Depth 5
                                        #       Child Loop BB0_161 Depth 3
                                        #       Child Loop BB0_187 Depth 3
                                        #       Child Loop BB0_168 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_182 Depth 3
                                        #       Child Loop BB0_185 Depth 3
	ld.w	$a1, $sp, 428
	ld.w	$a2, $sp, 424
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.w	$s3, $s3, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB0_189
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=2
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 424
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a4, $a0, $a1, 3
	add.d	$a0, $a3, $a4
	ld.w	$s7, $a0, 8
	ld.w	$a2, $a0, 12
	ld.wu	$a1, $a0, 16
	ldx.d	$s3, $a3, $a4
	addi.w	$a5, $a1, 0
	st.d	$s7, $sp, 232                   # 8-byte Folded Spill
	bne	$a2, $s7, .LBB0_76
# %bb.60:                               #   in Loop: Header=BB0_58 Depth=2
	addi.w	$s0, $a5, 1
	st.w	$s0, $sp, 400
	blez	$a5, .LBB0_62
# %bb.61:                               # %.lr.ph533.preheader
                                        #   in Loop: Header=BB0_58 Depth=2
	addi.d	$a1, $a0, 24
	slli.d	$a2, $a5, 2
	addi.d	$a0, $sp, 404
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_62:                               # %._crit_edge534
                                        #   in Loop: Header=BB0_58 Depth=2
	alsl.d	$s6, $s7, $s3, 1
	ld.h	$a0, $s6, 2
	slli.d	$a1, $s0, 2
	addi.d	$a2, $sp, 400
	stx.w	$a0, $a1, $a2
	vld	$vr0, $sp, 404
	ld.w	$s0, $sp, 400
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$s8, $s7, 1
	vst	$vr0, $sp, 440
	addi.d	$s2, $s0, 1
	addi.d	$t1, $sp, 436
	blez	$s0, .LBB0_69
# %bb.63:                               # %.lr.ph48.i
                                        #   in Loop: Header=BB0_58 Depth=2
	ldx.h	$a1, $s3, $s8
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 0
	bstrpick.d	$a4, $s2, 31, 0
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB0_64:                               #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_65 Depth 4
                                        #         Child Loop BB0_67 Depth 4
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a6, $t1
	move	$a7, $a2
	beq	$a3, $a6, .LBB0_66
	.p2align	4, , 16
.LBB0_65:                               # %.lr.ph.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_64 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a6, .LBB0_65
.LBB0_66:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_64 Depth=3
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	st.w	$s5, $a7, 12
	ld.w	$a7, $a6, 0
	beq	$a7, $a1, .LBB0_68
	.p2align	4, , 16
.LBB0_67:                               # %.lr.ph42.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_64 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a6, $a6, 32
	ld.w	$a7, $a6, 0
	bne	$a7, $a1, .LBB0_67
.LBB0_68:                               # %._crit_edge43.i
                                        #   in Loop: Header=BB0_64 Depth=3
	addi.d	$a5, $a5, 1
	st.w	$s5, $a6, 12
	bne	$a5, $a4, .LBB0_64
.LBB0_69:                               # %.preheader.i
                                        #   in Loop: Header=BB0_58 Depth=2
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	ori	$a1, $zero, 2
	blt	$s7, $a1, .LBB0_144
# %bb.70:                               # %.lr.ph56.preheader.i
                                        #   in Loop: Header=BB0_58 Depth=2
	ori	$a1, $zero, 1
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_71:                               # %._crit_edge54.i
                                        #   in Loop: Header=BB0_72 Depth=3
	addi.d	$a1, $a1, 1
	beq	$a1, $s7, .LBB0_144
.LBB0_72:                               # %.lr.ph56.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_73 Depth 4
                                        #           Child Loop BB0_74 Depth 5
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s3, $a2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	beqz	$a3, .LBB0_71
	.p2align	4, , 16
.LBB0_73:                               # %.lr.ph53.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_72 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_74 Depth 5
	ld.w	$a4, $a3, 0
	alsl.d	$a4, $a4, $a0, 3
	.p2align	4, , 16
.LBB0_74:                               #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_72 Depth=3
                                        #         Parent Loop BB0_73 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 0
	addi.d	$a4, $a5, 32
	bne	$a6, $a2, .LBB0_74
# %bb.75:                               #   in Loop: Header=BB0_73 Depth=4
	st.w	$s4, $a5, 20
	ld.d	$a3, $a3, 32
	bnez	$a3, .LBB0_73
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_76:                               # %.preheader432
                                        #   in Loop: Header=BB0_58 Depth=2
	sub.d	$a2, $a2, $s7
	addi.w	$a3, $a2, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_57
# %bb.77:                               # %.lr.ph528
                                        #   in Loop: Header=BB0_58 Depth=2
	move	$s8, $zero
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	addi.w	$a4, $a5, 1
	alsl.d	$a3, $s7, $s3, 1
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a3, $sp, 400
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a3, $a4, $a3, 2
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s2, $s7, -1
	addi.d	$a0, $a2, 2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $s7, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$a0, $s7, -2
	addi.d	$a1, $s3, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $s3, -14
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               # %.loopexit426
                                        #   in Loop: Header=BB0_79 Depth=3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.w	$s2, $s2, 1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_57
.LBB0_79:                               #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_86 Depth 4
                                        #           Child Loop BB0_87 Depth 5
                                        #           Child Loop BB0_89 Depth 5
                                        #         Child Loop BB0_94 Depth 4
                                        #           Child Loop BB0_95 Depth 5
                                        #             Child Loop BB0_96 Depth 6
                                        #         Child Loop BB0_100 Depth 4
                                        #           Child Loop BB0_101 Depth 5
                                        #           Child Loop BB0_103 Depth 5
                                        #         Child Loop BB0_108 Depth 4
                                        #           Child Loop BB0_109 Depth 5
                                        #             Child Loop BB0_110 Depth 6
                                        #         Child Loop BB0_115 Depth 4
                                        #         Child Loop BB0_142 Depth 4
                                        #         Child Loop BB0_123 Depth 4
                                        #         Child Loop BB0_127 Depth 4
                                        #         Child Loop BB0_133 Depth 4
                                        #         Child Loop BB0_136 Depth 4
                                        #         Child Loop BB0_139 Depth 4
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	bne	$a1, $s4, .LBB0_83
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $sp, 400
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blez	$a0, .LBB0_82
# %bb.81:                               # %.lr.ph504.preheader
                                        #   in Loop: Header=BB0_79 Depth=3
	addi.d	$a0, $sp, 404
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_82:                               # %._crit_edge505
                                        #   in Loop: Header=BB0_79 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.h	$a0, $a0, 2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.w	$t2, $sp, 400
	ld.w	$s7, $sp, 404
	ld.w	$a0, $sp, 408
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_83:                               #   in Loop: Header=BB0_79 Depth=3
	add.d	$fp, $a1, $s7
	slli.d	$a0, $fp, 1
	ldx.h	$s7, $s3, $a0
	ori	$t2, $zero, 1
	st.w	$t2, $sp, 400
	st.w	$s7, $sp, 404
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
.LBB0_84:                               #   in Loop: Header=BB0_79 Depth=3
	addi.d	$s6, $fp, -1
	ld.w	$s0, $sp, 412
	ld.w	$s8, $sp, 416
	st.w	$s7, $sp, 440
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.w	$a0, $sp, 444
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.w	$s0, $sp, 448
	st.w	$s8, $sp, 452
	addi.d	$a1, $t2, 1
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	addi.d	$t1, $sp, 436
	blez	$t2, .LBB0_91
# %bb.85:                               # %.lr.ph48.i360
                                        #   in Loop: Header=BB0_79 Depth=3
	slli.d	$a1, $s6, 1
	ldx.h	$a1, $s3, $a1
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 0
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 31, 0
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB0_86:                               #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_87 Depth 5
                                        #           Child Loop BB0_89 Depth 5
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a6, $t1
	move	$a7, $a2
	beq	$a3, $a6, .LBB0_88
	.p2align	4, , 16
.LBB0_87:                               # %.lr.ph.i363
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        #         Parent Loop BB0_86 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a6, .LBB0_87
.LBB0_88:                               # %._crit_edge.i365
                                        #   in Loop: Header=BB0_86 Depth=4
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	st.w	$s5, $a7, 12
	ld.w	$a7, $a6, 0
	beq	$a7, $a1, .LBB0_90
	.p2align	4, , 16
.LBB0_89:                               # %.lr.ph42.i367
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        #         Parent Loop BB0_86 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a6, $a6, 32
	ld.w	$a7, $a6, 0
	bne	$a7, $a1, .LBB0_89
.LBB0_90:                               # %._crit_edge43.i369
                                        #   in Loop: Header=BB0_86 Depth=4
	addi.d	$a5, $a5, 1
	st.w	$s5, $a6, 12
	bne	$a5, $a4, .LBB0_86
.LBB0_91:                               # %.preheader.i373
                                        #   in Loop: Header=BB0_79 Depth=3
	st.d	$t2, $sp, 280                   # 8-byte Folded Spill
	ori	$a1, $zero, 3
	blt	$fp, $a1, .LBB0_98
# %bb.92:                               # %.lr.ph56.i376.preheader
                                        #   in Loop: Header=BB0_79 Depth=3
	ori	$a1, $zero, 1
	b	.LBB0_94
	.p2align	4, , 16
.LBB0_93:                               # %._crit_edge54.i386
                                        #   in Loop: Header=BB0_94 Depth=4
	addi.d	$a1, $a1, 1
	beq	$a1, $s6, .LBB0_98
.LBB0_94:                               # %.lr.ph56.i376
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_95 Depth 5
                                        #             Child Loop BB0_96 Depth 6
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s3, $a2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	beqz	$a3, .LBB0_93
	.p2align	4, , 16
.LBB0_95:                               # %.lr.ph53.i380
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        #         Parent Loop BB0_94 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_96 Depth 6
	ld.w	$a4, $a3, 0
	alsl.d	$a4, $a4, $a0, 3
	.p2align	4, , 16
.LBB0_96:                               #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        #         Parent Loop BB0_94 Depth=4
                                        #           Parent Loop BB0_95 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 0
	addi.d	$a4, $a5, 32
	bne	$a6, $a2, .LBB0_96
# %bb.97:                               #   in Loop: Header=BB0_95 Depth=5
	st.w	$s4, $a5, 20
	ld.d	$a3, $a3, 32
	bnez	$a3, .LBB0_95
	b	.LBB0_93
	.p2align	4, , 16
.LBB0_98:                               # %greduce.exit389
                                        #   in Loop: Header=BB0_79 Depth=3
	move	$a0, $s3
	move	$a1, $s6
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	st.w	$s7, $sp, 440
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.w	$a2, $sp, 444
	st.w	$s0, $sp, 448
	st.w	$s8, $sp, 452
	addi.d	$t2, $sp, 436
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	blez	$a2, .LBB0_105
# %bb.99:                               # %.lr.ph50.i391
                                        #   in Loop: Header=BB0_79 Depth=3
	alsl.d	$a2, $s6, $s3, 1
	ld.h	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 0
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB0_100:                              #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_101 Depth 5
                                        #           Child Loop BB0_103 Depth 5
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a7, $t2
	move	$t0, $a3
	beq	$a4, $a7, .LBB0_102
	.p2align	4, , 16
.LBB0_101:                              # %.lr.ph.i394
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        #         Parent Loop BB0_100 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$t0, $t0, 32
	ld.w	$t1, $t0, 0
	bne	$t1, $a7, .LBB0_101
.LBB0_102:                              # %._crit_edge.i396
                                        #   in Loop: Header=BB0_100 Depth=4
	slli.d	$a7, $a7, 3
	ld.w	$t1, $t0, 8
	ldx.d	$a7, $a1, $a7
	st.w	$t1, $t0, 12
	ld.w	$t0, $a7, 0
	beq	$t0, $a2, .LBB0_104
	.p2align	4, , 16
.LBB0_103:                              # %.lr.ph44.i398
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        #         Parent Loop BB0_100 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a2, .LBB0_103
.LBB0_104:                              # %._crit_edge45.i400
                                        #   in Loop: Header=BB0_100 Depth=4
	ld.w	$t0, $a7, 8
	addi.d	$a6, $a6, 1
	st.w	$t0, $a7, 12
	bne	$a6, $a5, .LBB0_100
.LBB0_105:                              # %.preheader.i404
                                        #   in Loop: Header=BB0_79 Depth=3
	ori	$a2, $zero, 3
	blt	$fp, $a2, .LBB0_112
# %bb.106:                              # %.lr.ph58.i407.preheader
                                        #   in Loop: Header=BB0_79 Depth=3
	ori	$a2, $zero, 1
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_107:                              # %._crit_edge56.i417
                                        #   in Loop: Header=BB0_108 Depth=4
	addi.d	$a2, $a2, 1
	beq	$a2, $s6, .LBB0_112
.LBB0_108:                              # %.lr.ph58.i407
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_109 Depth 5
                                        #             Child Loop BB0_110 Depth 6
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $s3, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB0_107
	.p2align	4, , 16
.LBB0_109:                              # %.lr.ph55.i411
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        #         Parent Loop BB0_108 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_110 Depth 6
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB0_110:                              #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        #         Parent Loop BB0_108 Depth=4
                                        #           Parent Loop BB0_109 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB0_110
# %bb.111:                              #   in Loop: Header=BB0_109 Depth=5
	st.w	$zero, $a5, 20
	ld.d	$a4, $a4, 32
	bnez	$a4, .LBB0_109
	b	.LBB0_107
	.p2align	4, , 16
.LBB0_112:                              # %gunreduce.exit420
                                        #   in Loop: Header=BB0_79 Depth=3
	bltz	$a0, .LBB0_78
# %bb.113:                              #   in Loop: Header=BB0_79 Depth=3
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 428
	ld.hu	$a1, $a2, 10
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.h	$a2, $a0, 2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_117
# %bb.114:                              # %.lr.ph510.preheader
                                        #   in Loop: Header=BB0_79 Depth=3
	addi.d	$a2, $a0, 4
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_115:                              # %.lr.ph510
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $a4, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$s7, $s7, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_115
# %bb.116:                              # %._crit_edge511
                                        #   in Loop: Header=BB0_79 Depth=3
	ori	$a1, $zero, 3
	bge	$fp, $a1, .LBB0_118
	b	.LBB0_125
	.p2align	4, , 16
.LBB0_117:                              #   in Loop: Header=BB0_79 Depth=3
	ori	$s7, $zero, 1
	ori	$a1, $zero, 3
	blt	$fp, $a1, .LBB0_125
.LBB0_118:                              # %.lr.ph516.preheader
                                        #   in Loop: Header=BB0_79 Depth=3
	bstrpick.d	$a2, $s2, 31, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.w	$a4, $a1, $s8
	bstrpick.d	$a1, $s7, 31, 0
	ori	$a3, $zero, 7
	bltu	$a4, $a3, .LBB0_121
# %bb.119:                              # %vector.memcheck781
                                        #   in Loop: Header=BB0_79 Depth=3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a3, 1
	alsl.d	$a5, $a1, $a0, 1
	addi.d	$a3, $a5, 2
	bstrpick.d	$a4, $a4, 31, 0
	bgeu	$a3, $a6, .LBB0_141
# %bb.120:                              # %vector.memcheck781
                                        #   in Loop: Header=BB0_79 Depth=3
	slli.d	$a6, $a2, 1
	slli.d	$a7, $a4, 1
	sub.d	$a6, $a6, $a7
	add.d	$a6, $s3, $a6
	add.d	$a5, $a5, $a7
	addi.d	$a5, $a5, 4
	bgeu	$a6, $a5, .LBB0_141
.LBB0_121:                              #   in Loop: Header=BB0_79 Depth=3
	move	$a4, $s7
.LBB0_122:                              # %.lr.ph516.preheader853
                                        #   in Loop: Header=BB0_79 Depth=3
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	alsl.d	$a2, $a2, $s3, 1
	sub.d	$a3, $a4, $s7
	.p2align	4, , 16
.LBB0_123:                              # %.lr.ph516
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, -2
	bne	$s2, $a3, .LBB0_123
.LBB0_124:                              # %._crit_edge517.loopexit
                                        #   in Loop: Header=BB0_79 Depth=3
	move	$s7, $a1
.LBB0_125:                              # %._crit_edge517
                                        #   in Loop: Header=BB0_79 Depth=3
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 420
	addi.d	$a3, $sp, 396
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 420
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$s6, $a0, 8
	ld.w	$a0, $sp, 420
	addi.d	$a2, $s7, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 420
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	blez	$a2, .LBB0_128
# %bb.126:                              # %.lr.ph522.preheader
                                        #   in Loop: Header=BB0_79 Depth=3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 404
	.p2align	4, , 16
.LBB0_127:                              # %.lr.ph522
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $sp, 420
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_127
.LBB0_128:                              # %.preheader427
                                        #   in Loop: Header=BB0_79 Depth=3
	ld.w	$a2, $sp, 420
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a4, $s7, 31, 0
	addi.w	$a6, $s7, 0
	addi.d	$a3, $s7, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 1
	ori	$a7, $zero, 8
	bgeu	$a6, $a7, .LBB0_130
# %bb.129:                              #   in Loop: Header=BB0_79 Depth=3
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	b	.LBB0_135
	.p2align	4, , 16
.LBB0_130:                              # %vector.memcheck757
                                        #   in Loop: Header=BB0_79 Depth=3
	slli.d	$a6, $a4, 1
	slli.d	$a7, $a3, 1
	sub.d	$a6, $a6, $a7
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a6, 4
	alsl.d	$t0, $a4, $a1, 1
	alsl.d	$t1, $a3, $a0, 1
	addi.d	$a6, $a0, 2
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	bgeu	$a7, $t1, .LBB0_132
# %bb.131:                              # %vector.memcheck757
                                        #   in Loop: Header=BB0_79 Depth=3
	addi.d	$a7, $t0, 2
	bltu	$a6, $a7, .LBB0_135
.LBB0_132:                              # %vector.ph769
                                        #   in Loop: Header=BB0_79 Depth=3
	bstrpick.d	$a5, $a4, 31, 3
	slli.d	$a7, $a5, 3
	srli.d	$t1, $a4, 3
	ori	$a5, $zero, 1
	bstrins.d	$a5, $t1, 31, 3
	addi.d	$t0, $t0, -14
	move	$t1, $a7
	.p2align	4, , 16
.LBB0_133:                              # %vector.body772
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a6, 0
	vld	$vr1, $s0, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t0, 0
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, -16
	bnez	$t1, .LBB0_133
# %bb.134:                              # %middle.block778
                                        #   in Loop: Header=BB0_79 Depth=3
	beq	$a7, $a4, .LBB0_137
	.p2align	4, , 16
.LBB0_135:                              # %scalar.ph767.preheader
                                        #   in Loop: Header=BB0_79 Depth=3
	slli.d	$a4, $a4, 1
	slli.d	$a6, $a5, 1
	sub.d	$a4, $a4, $a6
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a5, $a0, 1
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB0_136:                              # %scalar.ph767
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_136
.LBB0_137:                              # %.loopexit848
                                        #   in Loop: Header=BB0_79 Depth=3
	ld.w	$a1, $sp, 428
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$fp, $a0, $a1
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	sub.w	$s0, $s0, $fp
	blez	$s0, .LBB0_78
# %bb.138:                              # %.preheader425.preheader
                                        #   in Loop: Header=BB0_79 Depth=3
	move	$s6, $zero
	.p2align	4, , 16
.LBB0_139:                              # %.preheader425
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 392
	addi.d	$a3, $sp, 388
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 392
	ld.w	$a2, $sp, 388
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 388
	addi.d	$a0, $sp, 336
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, 1
	blt	$s6, $s0, .LBB0_139
# %bb.140:                              #   in Loop: Header=BB0_79 Depth=3
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	b	.LBB0_78
.LBB0_141:                              # %vector.ph794
                                        #   in Loop: Header=BB0_79 Depth=3
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 32, 3
	slli.d	$a7, $a5, 3
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$t0, $a2, $a5, 1
	addi.d	$a5, $a4, 1
	bstrpick.d	$a4, $a5, 32, 3
	slli.d	$a6, $a4, 3
	alsl.d	$a1, $a4, $a1, 3
	sub.d	$a2, $a2, $a6
	alsl.w	$a4, $a4, $s7, 3
	.p2align	4, , 16
.LBB0_142:                              # %vector.body798
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t0, 0
	vld	$vr1, $s0, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a7, $a7, -8
	addi.d	$t0, $t0, -16
	bnez	$a7, .LBB0_142
# %bb.143:                              # %middle.block805
                                        #   in Loop: Header=BB0_79 Depth=3
	beq	$a5, $a6, .LBB0_124
	b	.LBB0_122
	.p2align	4, , 16
.LBB0_144:                              # %greduce.exit
                                        #   in Loop: Header=BB0_58 Depth=2
	move	$a0, $s3
	move	$a1, $s7
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	vld	$vr0, $sp, 288                  # 16-byte Folded Reload
	vst	$vr0, $sp, 440
	addi.d	$t2, $sp, 436
	blez	$s0, .LBB0_151
# %bb.145:                              # %.lr.ph50.i
                                        #   in Loop: Header=BB0_58 Depth=2
	ld.h	$a2, $s6, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 0
	bstrpick.d	$a5, $s2, 31, 0
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB0_146:                              #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_147 Depth 4
                                        #         Child Loop BB0_149 Depth 4
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a7, $t2
	move	$t0, $a3
	beq	$a4, $a7, .LBB0_148
	.p2align	4, , 16
.LBB0_147:                              # %.lr.ph.i352
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_146 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t0, $t0, 32
	ld.w	$t1, $t0, 0
	bne	$t1, $a7, .LBB0_147
.LBB0_148:                              # %._crit_edge.i353
                                        #   in Loop: Header=BB0_146 Depth=3
	slli.d	$a7, $a7, 3
	ld.w	$t1, $t0, 8
	ldx.d	$a7, $a1, $a7
	st.w	$t1, $t0, 12
	ld.w	$t0, $a7, 0
	beq	$t0, $a2, .LBB0_150
	.p2align	4, , 16
.LBB0_149:                              # %.lr.ph44.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_146 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a2, .LBB0_149
.LBB0_150:                              # %._crit_edge45.i
                                        #   in Loop: Header=BB0_146 Depth=3
	ld.w	$t0, $a7, 8
	addi.d	$a6, $a6, 1
	st.w	$t0, $a7, 12
	bne	$a6, $a5, .LBB0_146
.LBB0_151:                              # %.preheader.i356
                                        #   in Loop: Header=BB0_58 Depth=2
	ori	$a2, $zero, 2
	blt	$s7, $a2, .LBB0_158
# %bb.152:                              # %.lr.ph58.preheader.i
                                        #   in Loop: Header=BB0_58 Depth=2
	ori	$a2, $zero, 1
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_153:                              # %._crit_edge56.i
                                        #   in Loop: Header=BB0_154 Depth=3
	addi.d	$a2, $a2, 1
	beq	$a2, $s7, .LBB0_158
.LBB0_154:                              # %.lr.ph58.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_155 Depth 4
                                        #           Child Loop BB0_156 Depth 5
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $s3, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB0_153
	.p2align	4, , 16
.LBB0_155:                              # %.lr.ph55.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_154 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_156 Depth 5
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB0_156:                              #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        #       Parent Loop BB0_154 Depth=3
                                        #         Parent Loop BB0_155 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB0_156
# %bb.157:                              #   in Loop: Header=BB0_155 Depth=4
	st.w	$zero, $a5, 20
	ld.d	$a4, $a4, 32
	bnez	$a4, .LBB0_155
	b	.LBB0_153
	.p2align	4, , 16
.LBB0_158:                              # %gunreduce.exit
                                        #   in Loop: Header=BB0_58 Depth=2
	vpickve2gr.w	$a1, $vr0, 1
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	bltz	$a0, .LBB0_57
# %bb.159:                              #   in Loop: Header=BB0_58 Depth=2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 428
	ld.hu	$a1, $a2, 10
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.h	$a2, $a0, 2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_170
# %bb.160:                              # %.lr.ph539.preheader
                                        #   in Loop: Header=BB0_58 Depth=2
	addi.d	$a2, $a0, 4
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_161:                              # %.lr.ph539
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $a4, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$s7, $s7, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_161
# %bb.162:                              # %.preheader431
                                        #   in Loop: Header=BB0_58 Depth=2
	ori	$a1, $zero, 2
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	blt	$a7, $a1, .LBB0_171
.LBB0_163:                              # %.lr.ph543.preheader
                                        #   in Loop: Header=BB0_58 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	ori	$a2, $zero, 9
	bltu	$a7, $a2, .LBB0_166
# %bb.164:                              # %vector.memcheck729
                                        #   in Loop: Header=BB0_58 Depth=2
	alsl.d	$a3, $a1, $a0, 1
	addi.d	$a2, $a3, 2
	bgeu	$a2, $s6, .LBB0_186
# %bb.165:                              # %vector.memcheck729
                                        #   in Loop: Header=BB0_58 Depth=2
	addi.d	$a4, $a7, -2
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a5, $a4, 1
	alsl.d	$a3, $a4, $a3, 1
	addi.d	$a3, $a3, 4
	sub.d	$a4, $s8, $a5
	add.d	$a4, $s3, $a4
	addi.d	$a4, $a4, -2
	bgeu	$a4, $a3, .LBB0_186
.LBB0_166:                              #   in Loop: Header=BB0_58 Depth=2
	move	$a3, $a7
	move	$a4, $s7
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
.LBB0_167:                              # %.lr.ph543.preheader854
                                        #   in Loop: Header=BB0_58 Depth=2
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	alsl.d	$a2, $a3, $s3, 1
	addi.d	$a2, $a2, -2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	add.d	$a3, $s7, $a3
	nor	$a4, $a4, $zero
	add.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB0_168:                              # %.lr.ph543
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -2
	bnez	$a3, .LBB0_168
.LBB0_169:                              # %._crit_edge544.loopexit
                                        #   in Loop: Header=BB0_58 Depth=2
	move	$s7, $a1
	b	.LBB0_172
.LBB0_170:                              #   in Loop: Header=BB0_58 Depth=2
	ori	$s7, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	bge	$a7, $a1, .LBB0_163
.LBB0_171:                              #   in Loop: Header=BB0_58 Depth=2
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
.LBB0_172:                              # %._crit_edge544
                                        #   in Loop: Header=BB0_58 Depth=2
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 420
	addi.d	$a3, $sp, 396
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 420
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.w	$a2, $a0, 8
	ld.w	$a0, $sp, 420
	addi.d	$a2, $s7, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 420
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$s0, $a0, 16
	blez	$s0, .LBB0_175
# %bb.173:                              # %.lr.ph549.preheader
                                        #   in Loop: Header=BB0_58 Depth=2
	bstrpick.d	$a2, $s2, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 404
	.p2align	4, , 16
.LBB0_174:                              # %.lr.ph549
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $sp, 420
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_174
.LBB0_175:                              # %.preheader430
                                        #   in Loop: Header=BB0_58 Depth=2
	ld.w	$a2, $sp, 420
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a4, $s7, 31, 0
	addi.w	$a6, $s7, 0
	addi.d	$a3, $s7, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 1
	ori	$a7, $zero, 8
	bltu	$a6, $a7, .LBB0_181
# %bb.176:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_58 Depth=2
	slli.d	$a6, $a4, 1
	slli.d	$a7, $a3, 1
	sub.d	$a6, $a6, $a7
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a6, 4
	alsl.d	$t0, $a4, $a1, 1
	alsl.d	$t1, $a3, $a0, 1
	addi.d	$a6, $a0, 2
	bgeu	$a7, $t1, .LBB0_178
# %bb.177:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_58 Depth=2
	addi.d	$a7, $t0, 2
	bltu	$a6, $a7, .LBB0_181
.LBB0_178:                              # %vector.ph
                                        #   in Loop: Header=BB0_58 Depth=2
	bstrpick.d	$a5, $a4, 31, 3
	slli.d	$a7, $a5, 3
	srli.d	$t1, $a4, 3
	ori	$a5, $zero, 1
	bstrins.d	$a5, $t1, 31, 3
	addi.d	$t0, $t0, -14
	move	$t1, $a7
	.p2align	4, , 16
.LBB0_179:                              # %vector.body
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a6, 0
	vld	$vr1, $s6, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t0, 0
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, -16
	bnez	$t1, .LBB0_179
# %bb.180:                              # %middle.block
                                        #   in Loop: Header=BB0_58 Depth=2
	beq	$a7, $a4, .LBB0_183
	.p2align	4, , 16
.LBB0_181:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_58 Depth=2
	slli.d	$a4, $a4, 1
	slli.d	$a6, $a5, 1
	sub.d	$a4, $a4, $a6
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a5, $a0, 1
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB0_182:                              # %scalar.ph
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_182
.LBB0_183:                              # %.loopexit849
                                        #   in Loop: Header=BB0_58 Depth=2
	ld.w	$a1, $sp, 428
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	sub.w	$s0, $fp, $a0
	blez	$s0, .LBB0_56
# %bb.184:                              # %.preheader428.preheader
                                        #   in Loop: Header=BB0_58 Depth=2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_185:                              # %.preheader428
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 392
	addi.d	$a3, $sp, 388
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 392
	ld.w	$a2, $sp, 388
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 388
	addi.d	$a0, $sp, 336
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	blt	$fp, $s0, .LBB0_185
	b	.LBB0_57
.LBB0_186:                              # %vector.ph742
                                        #   in Loop: Header=BB0_58 Depth=2
	addi.d	$a3, $a7, -1
	bstrpick.d	$a5, $a3, 31, 0
	bstrpick.d	$a4, $a5, 31, 3
	slli.d	$a6, $a4, 3
	alsl.d	$a1, $a4, $a1, 3
	sub.d	$a3, $a7, $a6
	alsl.w	$a4, $a4, $s7, 3
	addi.d	$a7, $s6, -16
	move	$t0, $a6
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_187:                              # %vector.body745
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a7, 0
	vld	$vr1, $s6, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB0_187
# %bb.188:                              # %middle.block752
                                        #   in Loop: Header=BB0_58 Depth=2
	bne	$a6, $a5, .LBB0_167
	b	.LBB0_169
.LBB0_189:                              # %._crit_edge557
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 0
	bge	$fp, $s3, .LBB0_193
# %bb.190:                              # %.preheader437.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	sub.d	$s0, $s3, $fp
	.p2align	4, , 16
.LBB0_191:                              # %.preheader437
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 392
	addi.d	$a3, $sp, 388
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 392
	ld.w	$a2, $sp, 388
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 388
	addi.d	$a0, $sp, 336
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB0_191
# %bb.192:                              #   in Loop: Header=BB0_30 Depth=1
	move	$s3, $fp
.LBB0_193:                              # %.loopexit438
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 368
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_195
	.p2align	4, , 16
.LBB0_194:                              # %.preheader435
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	bnez	$a0, .LBB0_194
.LBB0_195:                              # %.loopexit436
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$a0, $s4, .LBB0_200
# %bb.196:                              #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	beqz	$a1, .LBB0_200
	.p2align	4, , 16
.LBB0_197:                              # %.lr.ph566
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_198:                              #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_197 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	addi.d	$a2, $a3, 32
	bne	$a4, $s1, .LBB0_198
# %bb.199:                              #   in Loop: Header=BB0_197 Depth=2
	st.w	$s4, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_197
.LBB0_200:                              # %.outer
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bne	$a0, $fp, .LBB0_30
.LBB0_201:                              # %.outer._crit_edge.preheader
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$s0, $a0, %got_pc_lo12(pathArray)
	pcalau12i	$a0, %got_pc_hi20(pathList)
	ld.d	$s1, $a0, %got_pc_lo12(pathList)
	move	$s2, $zero
	move	$fp, $zero
	ori	$s3, $zero, 7
	ori	$s4, $zero, 1
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	b	.LBB0_203
	.p2align	4, , 16
.LBB0_202:                              # %._crit_edge573
                                        #   in Loop: Header=BB0_203 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$fp, $fp, 1
	bge	$s2, $a0, .LBB0_212
.LBB0_203:                              # %.outer._crit_edge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_207 Depth 2
                                        #     Child Loop BB0_210 Depth 2
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB0_211
# %bb.204:                              #   in Loop: Header=BB0_203 Depth=1
	ld.w	$a0, $sp, 424
	ld.d	$a2, $s0, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a1, $a2, $a0
	ld.d	$a3, $s1, 0
	ld.w	$a4, $a1, 12
	addi.d	$s2, $s2, 1
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $a3, $a1
	ldx.d	$a0, $a2, $a0
	addi.d	$a2, $a4, 1
	st.w	$a2, $a1, 0
	ld.w	$a2, $sp, 428
	alsl.d	$a3, $a4, $a1, 2
	st.w	$a2, $a3, 8
	bltz	$a4, .LBB0_202
# %bb.205:                              # %.lr.ph572.preheader
                                        #   in Loop: Header=BB0_203 Depth=1
	addi.d	$a2, $a4, 2
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $zero, 1
	bltu	$a4, $s3, .LBB0_209
# %bb.206:                              # %vector.ph836
                                        #   in Loop: Header=BB0_203 Depth=1
	addi.d	$a4, $a2, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	move	$a3, $a4
	bstrins.d	$a3, $s4, 2, 0
	addi.d	$a6, $a0, 10
	addi.d	$a7, $a1, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_207:                              # %vector.body839
                                        #   Parent Loop BB0_203 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a6, -8
	ld.d	$t2, $a6, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vinsgr2vr.d	$vr1, $t2, 0
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB0_207
# %bb.208:                              # %middle.block845
                                        #   in Loop: Header=BB0_203 Depth=1
	beq	$a4, $a5, .LBB0_202
.LBB0_209:                              # %.lr.ph572.preheader851
                                        #   in Loop: Header=BB0_203 Depth=1
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a0, $a3, $a0, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_210:                              # %.lr.ph572
                                        #   Parent Loop BB0_203 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a0, 0
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB0_210
	b	.LBB0_202
.LBB0_211:                              # %.split.loop.exit702
	move	$fp, $s2
.LBB0_212:                              # %.split.loop.exit
	ld.d	$a0, $sp, 336
	beqz	$a0, .LBB0_214
	.p2align	4, , 16
.LBB0_213:                              # %.preheader423
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	bnez	$a0, .LBB0_213
.LBB0_214:                              # %.loopexit424
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB0_216
	.p2align	4, , 16
.LBB0_215:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 384
	addi.d	$a3, $sp, 432
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	bnez	$a0, .LBB0_215
.LBB0_216:                              # %.loopexit
	addi.w	$a0, $fp, 0
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.Lfunc_end0:
	.size	mshortest, .Lfunc_end0-mshortest
                                        # -- End function
	.globl	greduce                         # -- Begin function greduce
	.p2align	5
	.type	greduce,@function
greduce:                                # @greduce
# %bb.0:
	addi.d	$sp, $sp, -32
	st.w	$a3, $sp, 16
	st.w	$a4, $sp, 20
	st.w	$a5, $sp, 24
	st.w	$a6, $sp, 28
	pcalau12i	$a3, %got_pc_hi20(gnodeArray)
	ld.d	$a3, $a3, %got_pc_lo12(gnodeArray)
	ld.d	$a3, $a3, 0
	blez	$a2, .LBB1_7
# %bb.1:                                # %.lr.ph48
	slli.d	$a4, $a1, 1
	ldx.h	$a4, $a0, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a3, $a5
	ld.w	$a6, $a5, 0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a7, $zero, 1
	addi.d	$t0, $sp, 12
	lu12i.w	$t1, 244140
	ori	$t1, $t1, 2560
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %._crit_edge43
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a7, $a7, 1
	st.w	$t1, $t2, 12
	beq	$a7, $a2, .LBB1_7
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_6 Depth 2
	slli.d	$t2, $a7, 2
	ldx.w	$t2, $t2, $t0
	move	$t3, $a5
	beq	$a6, $t2, .LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t3, 32
	ld.w	$t4, $t3, 0
	bne	$t4, $t2, .LBB1_4
.LBB1_5:                                # %._crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a3, $t2
	ld.w	$t4, $t2, 0
	st.w	$t1, $t3, 12
	beq	$t4, $a4, .LBB1_2
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph42
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t2, 32
	ld.w	$t3, $t2, 0
	bne	$t3, $a4, .LBB1_6
	b	.LBB1_2
.LBB1_7:                                # %.preheader
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB1_14
# %bb.8:                                # %.lr.ph56.preheader
	ori	$a2, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %._crit_edge54
                                        #   in Loop: Header=BB1_10 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB1_14
.LBB1_10:                               # %.lr.ph56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
                                        #       Child Loop BB1_12 Depth 3
	slli.d	$a5, $a4, 1
	ldx.h	$a5, $a0, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a3, $a6
	beqz	$a6, .LBB1_9
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph53
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_12 Depth 3
	ld.w	$a7, $a6, 0
	alsl.d	$t0, $a7, $a3, 3
	.p2align	4, , 16
.LBB1_12:                               #   Parent Loop BB1_10 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $t0, 0
	ld.w	$t1, $a7, 0
	addi.d	$t0, $a7, 32
	bne	$t1, $a5, .LBB1_12
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=2
	ld.d	$a6, $a6, 32
	st.w	$a2, $a7, 20
	bnez	$a6, .LBB1_11
	b	.LBB1_9
.LBB1_14:                               # %._crit_edge57
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	greduce, .Lfunc_end1-greduce
                                        # -- End function
	.globl	gunreduce                       # -- Begin function gunreduce
	.p2align	5
	.type	gunreduce,@function
gunreduce:                              # @gunreduce
# %bb.0:
	addi.d	$sp, $sp, -32
	st.w	$a3, $sp, 16
	st.w	$a4, $sp, 20
	st.w	$a5, $sp, 24
	st.w	$a6, $sp, 28
	pcalau12i	$a3, %got_pc_hi20(gnodeArray)
	ld.d	$a3, $a3, %got_pc_lo12(gnodeArray)
	ld.d	$a3, $a3, 0
	blez	$a2, .LBB2_7
# %bb.1:                                # %.lr.ph50
	slli.d	$a4, $a1, 1
	ldx.h	$a4, $a0, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a3, $a5
	ld.w	$a6, $a5, 0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a7, $zero, 1
	addi.d	$t0, $sp, 12
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %._crit_edge45
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$t2, $t1, 8
	addi.d	$a7, $a7, 1
	st.w	$t2, $t1, 12
	beq	$a7, $a2, .LBB2_7
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_6 Depth 2
	slli.d	$t1, $a7, 2
	ldx.w	$t1, $t1, $t0
	move	$t2, $a5
	beq	$a6, $t1, .LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t2, 32
	ld.w	$t3, $t2, 0
	bne	$t3, $t1, .LBB2_4
.LBB2_5:                                # %._crit_edge
                                        #   in Loop: Header=BB2_3 Depth=1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a3, $t1
	ld.w	$t3, $t2, 8
	ld.w	$t4, $t1, 0
	st.w	$t3, $t2, 12
	beq	$t4, $a4, .LBB2_2
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph44
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t1, 32
	ld.w	$t2, $t1, 0
	bne	$t2, $a4, .LBB2_6
	b	.LBB2_2
.LBB2_7:                                # %.preheader
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB2_14
# %bb.8:                                # %.lr.ph58.preheader
	ori	$a2, $zero, 1
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %._crit_edge56
                                        #   in Loop: Header=BB2_10 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a1, .LBB2_14
.LBB2_10:                               # %.lr.ph58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_11 Depth 2
                                        #       Child Loop BB2_12 Depth 3
	slli.d	$a4, $a2, 1
	ldx.h	$a4, $a0, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a3, $a5
	beqz	$a5, .LBB2_9
	.p2align	4, , 16
.LBB2_11:                               # %.lr.ph55
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
	ld.w	$a6, $a5, 0
	alsl.d	$a7, $a6, $a3, 3
	.p2align	4, , 16
.LBB2_12:                               #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a7, 0
	ld.w	$t0, $a6, 0
	addi.d	$a7, $a6, 32
	bne	$t0, $a4, .LBB2_12
# %bb.13:                               #   in Loop: Header=BB2_11 Depth=2
	ld.d	$a5, $a5, 32
	st.w	$zero, $a6, 20
	bnez	$a5, .LBB2_11
	b	.LBB2_9
.LBB2_14:                               # %._crit_edge59
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	gunreduce, .Lfunc_end2-gunreduce
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
