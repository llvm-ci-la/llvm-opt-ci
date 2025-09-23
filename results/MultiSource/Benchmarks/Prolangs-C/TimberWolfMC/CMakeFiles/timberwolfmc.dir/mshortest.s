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
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.d	$zero, $sp, 344
	st.d	$zero, $sp, 328
	st.d	$zero, $sp, 320
	st.d	$zero, $sp, 312
	pcalau12i	$a0, %got_pc_hi20(Mpaths)
	ld.d	$s7, $a0, %got_pc_lo12(Mpaths)
	ld.w	$a0, $s7, 0
	bltz	$a0, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $zero
	ori	$fp, $zero, 2
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$a0, $sp, 328
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	alsl.w	$a1, $a0, $fp, 1
	blt	$s0, $a1, .LBB0_2
.LBB0_3:                                # %._crit_edge
	pcalau12i	$a1, %got_pc_hi20(pnodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(pnodeArray)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(numnodes)
	ld.d	$a2, $a2, %got_pc_lo12(numnodes)
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a2, $a3, $a2
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a1, $a1, $a2
	ld.d	$s8, $a1, 8
	ori	$a2, $zero, 1
	st.w	$a2, $sp, 420
	pcalau12i	$a1, %got_pc_hi20(targetPtr)
	ld.d	$fp, $a1, %got_pc_lo12(targetPtr)
	ld.w	$a1, $fp, 0
	blez	$a1, .LBB0_7
# %bb.4:                                # %.lr.ph380.preheader
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s0, $a0, %got_pc_lo12(targetList)
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph380
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	slli.d	$a1, $a2, 1
	ldx.h	$a0, $a0, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	add.d	$a0, $s8, $a0
	ld.w	$a1, $a0, 4
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 420
	ld.w	$a1, $fp, 0
	addi.w	$a2, $a0, 1
	st.w	$a2, $sp, 420
	blt	$a0, $a1, .LBB0_5
# %bb.6:                                # %._crit_edge381.loopexit
	ld.w	$a0, $s7, 0
.LBB0_7:                                # %._crit_edge381
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
	blez	$fp, .LBB0_24
# %bb.8:                                # %.lr.ph396
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s1, $a0, %got_pc_lo12(targetList)
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$s2, $a0, %got_pc_lo12(gnodeArray)
	move	$s3, $zero
	ori	$s4, $zero, 1
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	bge	$s3, $fp, .LBB0_24
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_20 Depth 3
	addi.d	$a0, $sp, 312
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 372
	addi.d	$a3, $sp, 420
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336
	beqz	$a0, .LBB0_24
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $sp, 420
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
	bne	$a3, $s4, .LBB0_17
	.p2align	4, , 16
.LBB0_14:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
	ld.d	$a1, $a1, 32
	st.w	$zero, $a2, 24
	beqz	$a1, .LBB0_18
# %bb.15:                               # %.lr.ph387
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_16:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s0, .LBB0_16
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_17:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.h	$a2, $sp, 370
	addi.d	$a0, $sp, 368
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_18:                               # %._crit_edge388
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.h	$a2, $sp, 370
	addi.d	$a0, $sp, 368
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldx.d	$a2, $a1, $s5
	beqz	$a2, .LBB0_22
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph393
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
	ld.w	$a3, $a2, 0
	alsl.d	$a4, $a3, $a1, 3
	.p2align	4, , 16
.LBB0_20:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a4, 0
	ld.w	$a5, $a3, 0
	addi.d	$a4, $a3, 32
	bne	$a5, $s0, .LBB0_20
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a2, $a2, 32
	st.w	$s4, $a3, 24
	bnez	$a2, .LBB0_19
.LBB0_22:                               # %.loopexit370
                                        #   in Loop: Header=BB0_10 Depth=1
	bltz	$a0, .LBB0_9
# %bb.23:                               #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$a0, $s0, $s5, 2
	ldx.w	$a1, $s8, $a0
	ld.w	$a2, $sp, 420
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	b	.LBB0_9
.LBB0_24:                               # %._crit_edge397
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB0_26
	.p2align	4, , 16
.LBB0_25:                               # %.preheader368
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 312
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 372
	addi.d	$a3, $sp, 420
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336
	bnez	$a0, .LBB0_25
.LBB0_26:                               # %.loopexit369
	ld.w	$fp, $s7, 0
	blez	$fp, .LBB0_165
# %bb.27:                               # %.lr.ph411.lr.ph
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s1, $a0, %got_pc_lo12(targetList)
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$s2, $a0, %got_pc_lo12(gnodeArray)
	ori	$s3, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(tempArray)
	ld.d	$a0, $a0, %got_pc_lo12(tempArray)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s5, $zero
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 192                   # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               # %.thread350
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.h	$a2, $sp, 370
	addi.d	$a0, $sp, 368
	ori	$a1, $zero, 1
	move	$a3, $s4
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB0_41
.LBB0_29:                               # %.lr.ph411
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_63 Depth 2
                                        #       Child Loop BB0_76 Depth 3
                                        #         Child Loop BB0_84 Depth 4
                                        #         Child Loop BB0_107 Depth 4
                                        #         Child Loop BB0_91 Depth 4
                                        #         Child Loop BB0_97 Depth 4
                                        #         Child Loop BB0_110 Depth 4
                                        #         Child Loop BB0_104 Depth 4
                                        #         Child Loop BB0_115 Depth 4
                                        #         Child Loop BB0_118 Depth 4
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_126 Depth 3
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_151 Depth 3
                                        #     Child Loop BB0_155 Depth 2
                                        #     Child Loop BB0_158 Depth 2
                                        #     Child Loop BB0_161 Depth 2
                                        #       Child Loop BB0_162 Depth 3
                                        #     Child Loop BB0_38 Depth 2
                                        #       Child Loop BB0_39 Depth 3
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 372
	addi.d	$a3, $sp, 420
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336
	beqz	$a0, .LBB0_165
# %bb.30:                               # %.lr.ph618
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.w	$a0, $sp, 420
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 1
	ldx.hu	$a1, $a1, $a0
	ld.d	$a0, $s2, 0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ext.w.h	$s4, $a1
	slli.d	$a1, $s4, 3
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ldx.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 0
	st.d	$zero, $sp, 360
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_31:                               #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s4, .LBB0_31
# %bb.32:                               #   in Loop: Header=BB0_29 Depth=1
	ld.w	$a5, $a2, 24
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	bne	$a5, $s3, .LBB0_28
	.p2align	4, , 16
.LBB0_33:                               #   Parent Loop BB0_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
	ld.d	$a1, $a1, 32
	st.w	$zero, $a2, 24
	beqz	$a1, .LBB0_36
# %bb.34:                               # %.lr.ph404
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_35:                               #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s4, .LBB0_35
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_36:                               # %._crit_edge405
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.h	$a2, $sp, 370
	addi.d	$a0, $sp, 368
	ori	$a1, $zero, 1
	move	$a3, $s4
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB0_41
# %bb.37:                               #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	beqz	$a1, .LBB0_29
	.p2align	4, , 16
.LBB0_38:                               # %.lr.ph410
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_39 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_39:                               #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s4, .LBB0_39
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=2
	ld.d	$a1, $a1, 32
	st.w	$s3, $a2, 24
	bnez	$a1, .LBB0_38
	b	.LBB0_29
.LBB0_41:                               #   in Loop: Header=BB0_29 Depth=1
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 2
	ldx.w	$a2, $s8, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	add.d	$a0, $s8, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.hu	$a0, $a0, 10
	st.w	$a2, $sp, 416
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.h	$a2, $a1, 2
	ori	$fp, $zero, 1
	ori	$s0, $zero, 1
	beqz	$a0, .LBB0_44
# %bb.42:                               # %.lr.ph418.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	addi.d	$a1, $a1, 4
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB0_43:                               # %.lr.ph418
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a0, $a1, 0
	ext.w.h	$a0, $a0
	slli.d	$a2, $a0, 3
	alsl.d	$a0, $a0, $a2, 2
	add.d	$a0, $s8, $a0
	ld.hu	$a0, $a0, 10
	addi.w	$s0, $s0, 1
	addi.d	$a1, $a1, 2
	bnez	$a0, .LBB0_43
.LBB0_44:                               # %iter.check754
                                        #   in Loop: Header=BB0_29 Depth=1
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 408
	addi.d	$a3, $sp, 384
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$a1, $a0, %got_pc_lo12(pathArray)
	ld.w	$a0, $sp, 408
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$fp, $a0, 8
	ld.w	$a0, $sp, 408
	addi.d	$a2, $s0, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 408
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$zero, $a0, 16
	ld.w	$a2, $sp, 408
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	mul.d	$a3, $a2, $a3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a5, $s0, 31, 0
	addi.d	$a3, $s0, 1
	bstrpick.d	$a3, $a3, 31, 0
	pcalau12i	$t2, %pc_hi20(.LCPI0_1)
	slli.d	$a4, $a5, 1
	ori	$a6, $zero, 8
	bltu	$s0, $a6, .LBB0_57
# %bb.45:                               # %vector.memcheck741
                                        #   in Loop: Header=BB0_29 Depth=1
	slli.d	$a6, $a3, 1
	sub.d	$a6, $a4, $a6
	add.d	$a6, $a1, $a6
	addi.d	$a6, $a6, 4
	alsl.d	$a7, $a3, $a0, 1
	alsl.d	$t0, $a5, $a1, 1
	bgeu	$a6, $a7, .LBB0_47
# %bb.46:                               # %vector.memcheck741
                                        #   in Loop: Header=BB0_29 Depth=1
	addi.d	$a6, $t0, 2
	addi.d	$a7, $a0, 2
	bltu	$a7, $a6, .LBB0_57
.LBB0_47:                               # %vector.main.loop.iter.check756
                                        #   in Loop: Header=BB0_29 Depth=1
	ori	$a6, $zero, 16
	bgeu	$s0, $a6, .LBB0_52
# %bb.48:                               #   in Loop: Header=BB0_29 Depth=1
	move	$a6, $zero
.LBB0_49:                               # %vec.epilog.ph771
                                        #   in Loop: Header=BB0_29 Depth=1
	bstrpick.d	$a7, $a5, 31, 3
	slli.d	$a7, $a7, 3
	srli.d	$t0, $a5, 3
	ori	$fp, $zero, 1
	bstrins.d	$fp, $t0, 31, 3
	alsl.d	$t0, $a6, $a0, 1
	slli.d	$t1, $a6, 1
	addi.d	$t0, $t0, 2
	sub.d	$t1, $a4, $t1
	add.d	$t1, $a1, $t1
	addi.d	$t1, $t1, -14
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB0_50:                               # %vec.epilog.vector.body777
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t2, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t1, 0
	addi.d	$t0, $t0, 16
	addi.d	$a6, $a6, 8
	addi.d	$t1, $t1, -16
	bnez	$a6, .LBB0_50
# %bb.51:                               # %vec.epilog.middle.block783
                                        #   in Loop: Header=BB0_29 Depth=1
	bne	$a7, $a5, .LBB0_57
	b	.LBB0_59
.LBB0_52:                               # %vector.ph757
                                        #   in Loop: Header=BB0_29 Depth=1
	bstrpick.d	$a6, $a5, 31, 4
	slli.d	$a6, $a6, 4
	addi.d	$a7, $a0, 18
	addi.d	$t0, $t0, -14
	move	$t1, $a6
	.p2align	4, , 16
.LBB0_53:                               # %vector.body760
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t2, %pc_lo12(.LCPI0_1)
	vld	$vr1, $a7, -16
	vld	$vr2, $a7, 0
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr0, $vr1
	vst	$vr3, $t0, 0
	vshuf.h	$vr0, $vr0, $vr2
	vst	$vr0, $t0, -16
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB0_53
# %bb.54:                               # %middle.block767
                                        #   in Loop: Header=BB0_29 Depth=1
	beq	$a6, $a5, .LBB0_59
# %bb.55:                               # %vec.epilog.iter.check772
                                        #   in Loop: Header=BB0_29 Depth=1
	andi	$a7, $a5, 8
	bnez	$a7, .LBB0_49
# %bb.56:                               #   in Loop: Header=BB0_29 Depth=1
	addi.d	$fp, $a6, 1
.LBB0_57:                               # %vec.epilog.scalar.ph770.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	slli.d	$a5, $fp, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $fp, $a0, 1
	sub.d	$a3, $a3, $fp
	.p2align	4, , 16
.LBB0_58:                               # %vec.epilog.scalar.ph770
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_58
.LBB0_59:                               # %.loopexit803
                                        #   in Loop: Header=BB0_29 Depth=1
	st.d	$t2, $sp, 176                   # 8-byte Folded Spill
	ld.w	$a1, $sp, 416
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 416
	addi.d	$a3, $sp, 412
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	beqz	$a0, .LBB0_153
# %bb.60:                               # %.lr.ph477.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	st.d	$zero, $sp, 280                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	ori	$fp, $zero, 1
	b	.LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_63 Depth=2
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_62:                               # %.backedge
                                        #   in Loop: Header=BB0_63 Depth=2
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 416
	addi.d	$a3, $sp, 412
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	addi.d	$a1, $fp, -1
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_153
.LBB0_63:                               # %.lr.ph477
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
                                        #         Child Loop BB0_84 Depth 4
                                        #         Child Loop BB0_107 Depth 4
                                        #         Child Loop BB0_91 Depth 4
                                        #         Child Loop BB0_97 Depth 4
                                        #         Child Loop BB0_110 Depth 4
                                        #         Child Loop BB0_104 Depth 4
                                        #         Child Loop BB0_115 Depth 4
                                        #         Child Loop BB0_118 Depth 4
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_126 Depth 3
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_151 Depth 3
	ld.w	$a1, $sp, 416
	ld.w	$a2, $sp, 412
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.w	$s5, $s5, 1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB0_153
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=2
	ld.w	$a0, $sp, 412
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a4, $a0, $a1, 3
	add.d	$a0, $a3, $a4
	ld.w	$a5, $a0, 8
	ld.w	$a2, $a0, 12
	ld.wu	$a1, $a0, 16
	ldx.d	$a3, $a3, $a4
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	addi.w	$a3, $a1, 0
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	bne	$a2, $a5, .LBB0_72
# %bb.65:                               #   in Loop: Header=BB0_63 Depth=2
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	addi.w	$s0, $a3, 1
	st.w	$s0, $sp, 388
	blez	$a3, .LBB0_67
# %bb.66:                               # %.lr.ph454.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	addi.d	$a1, $a0, 24
	slli.d	$a2, $a3, 2
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_67:                               # %._crit_edge455
                                        #   in Loop: Header=BB0_63 Depth=2
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $s6, $s7, 1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.h	$a0, $a0, 2
	slli.d	$a1, $s0, 2
	addi.d	$a2, $sp, 388
	stx.w	$a0, $a1, $a2
	ld.w	$s0, $sp, 388
	ld.w	$a3, $sp, 392
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	ld.w	$s5, $sp, 396
	ld.w	$s2, $sp, 400
	ld.w	$fp, $sp, 404
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	move	$a4, $s5
	move	$a5, $s2
	move	$a6, $fp
	pcaddu18i	$ra, %call36(greduce)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $s6
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$a3, $s4
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	st.d	$s5, $sp, 248                   # 8-byte Folded Spill
	move	$a4, $s5
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	move	$a5, $s2
	st.d	$fp, $sp, 232                   # 8-byte Folded Spill
	move	$a6, $fp
	pcaddu18i	$ra, %call36(gunreduce)
	jirl	$ra, $ra, 0
	bltz	$s1, .LBB0_61
# %bb.68:                               #   in Loop: Header=BB0_63 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.hu	$a1, $a0, 10
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	add.d	$a2, $a2, $s1
	st.w	$a2, $sp, 416
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.h	$a2, $a0, 2
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_120
# %bb.69:                               # %.lr.ph460.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	addi.d	$a2, $a0, 4
	ori	$s1, $zero, 1
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_70:                               # %.lr.ph460
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $s8, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_70
# %bb.71:                               # %.preheader360
                                        #   in Loop: Header=BB0_63 Depth=2
	ori	$a1, $zero, 2
	bge	$fp, $a1, .LBB0_121
	b	.LBB0_128
	.p2align	4, , 16
.LBB0_72:                               # %.preheader361
                                        #   in Loop: Header=BB0_63 Depth=2
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $a5
	addi.w	$a3, $a2, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_62
# %bb.73:                               # %.lr.ph449
                                        #   in Loop: Header=BB0_63 Depth=2
	move	$s2, $zero
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a6, $a3, 1
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a4, 1
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a3, $sp, 388
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a3, $a6, $a3, 2
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s5, $a5, -1
	addi.d	$a0, $a2, 2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a0, $a5, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$a0, $a5, -2
	addi.d	$a1, $a4, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $a4, -14
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_74:                               #   in Loop: Header=BB0_76 Depth=3
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
.LBB0_75:                               # %.loopexit355
                                        #   in Loop: Header=BB0_76 Depth=3
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.w	$s5, $s5, 1
	addi.d	$s2, $s2, 1
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_62
.LBB0_76:                               #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_84 Depth 4
                                        #         Child Loop BB0_107 Depth 4
                                        #         Child Loop BB0_91 Depth 4
                                        #         Child Loop BB0_97 Depth 4
                                        #         Child Loop BB0_110 Depth 4
                                        #         Child Loop BB0_104 Depth 4
                                        #         Child Loop BB0_115 Depth 4
                                        #         Child Loop BB0_118 Depth 4
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	bne	$a1, $s3, .LBB0_80
# %bb.77:                               #   in Loop: Header=BB0_76 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $sp, 388
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blez	$a0, .LBB0_79
# %bb.78:                               # %.lr.ph425.preheader
                                        #   in Loop: Header=BB0_76 Depth=3
	addi.d	$a0, $sp, 392
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_79:                               # %._crit_edge426
                                        #   in Loop: Header=BB0_76 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.h	$a0, $a0, 2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.w	$s7, $sp, 388
	ld.w	$s8, $sp, 392
	ld.w	$a0, $sp, 396
	ld.w	$a1, $sp, 400
	ld.w	$a3, $sp, 404
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_80:                               #   in Loop: Header=BB0_76 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a0
	slli.d	$a0, $a4, 1
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ldx.h	$s8, $s0, $a0
	ori	$s7, $zero, 1
	st.w	$s7, $sp, 388
	st.w	$s8, $sp, 392
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
.LBB0_81:                               #   in Loop: Header=BB0_76 Depth=3
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	addi.w	$s6, $a4, -1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	addi.w	$s2, $a0, 0
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	addi.w	$s3, $a1, 0
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	addi.w	$fp, $a3, 0
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s3
	move	$a6, $fp
	pcaddu18i	$ra, %call36(greduce)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s6
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$a3, $s4
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	move	$s0, $s6
	move	$a1, $s6
	move	$s6, $s7
	move	$a2, $s7
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s3
	move	$a6, $fp
	pcaddu18i	$ra, %call36(gunreduce)
	jirl	$ra, $ra, 0
	bltz	$s1, .LBB0_74
# %bb.82:                               #   in Loop: Header=BB0_76 Depth=3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.hu	$a1, $a0, 10
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	add.d	$a2, $a2, $s1
	st.w	$a2, $sp, 416
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.h	$a2, $a0, 2
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_93
# %bb.83:                               # %.lr.ph431.preheader
                                        #   in Loop: Header=BB0_76 Depth=3
	addi.d	$a2, $a0, 4
	ori	$fp, $zero, 1
	ori	$s3, $zero, 1
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_84:                               # %.lr.ph431
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        #       Parent Loop BB0_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $s8, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$fp, $fp, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_84
# %bb.85:                               # %._crit_edge432
                                        #   in Loop: Header=BB0_76 Depth=3
	ori	$a1, $zero, 3
	blt	$a4, $a1, .LBB0_94
.LBB0_86:                               # %.lr.ph437.preheader
                                        #   in Loop: Header=BB0_76 Depth=3
	bstrpick.d	$a2, $s5, 31, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.w	$a3, $a1, $s2
	bstrpick.d	$a1, $fp, 31, 0
	ori	$a4, $zero, 15
	bltu	$a3, $a4, .LBB0_89
# %bb.87:                               # %vector.memcheck710
                                        #   in Loop: Header=BB0_76 Depth=3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 1
	alsl.d	$t0, $a1, $a0, 1
	addi.d	$a5, $t0, 2
	bstrpick.d	$a3, $a3, 31, 0
	bgeu	$a5, $a4, .LBB0_106
# %bb.88:                               # %vector.memcheck710
                                        #   in Loop: Header=BB0_76 Depth=3
	slli.d	$a4, $a2, 1
	slli.d	$a5, $a3, 1
	sub.d	$a4, $a4, $a5
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
	add.d	$a5, $t0, $a5
	addi.d	$a5, $a5, 4
	bgeu	$a4, $a5, .LBB0_106
.LBB0_89:                               #   in Loop: Header=BB0_76 Depth=3
	move	$a3, $fp
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
.LBB0_90:                               # %.lr.ph437.preheader806
                                        #   in Loop: Header=BB0_76 Depth=3
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a4, 1
	sub.d	$a3, $a3, $fp
	.p2align	4, , 16
.LBB0_91:                               # %.lr.ph437
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        #       Parent Loop BB0_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, -2
	bne	$s5, $a3, .LBB0_91
.LBB0_92:                               # %._crit_edge438.loopexit
                                        #   in Loop: Header=BB0_76 Depth=3
	move	$fp, $a1
	b	.LBB0_95
	.p2align	4, , 16
.LBB0_93:                               #   in Loop: Header=BB0_76 Depth=3
	ori	$fp, $zero, 1
	ori	$s3, $zero, 1
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bge	$a4, $a1, .LBB0_86
.LBB0_94:                               #   in Loop: Header=BB0_76 Depth=3
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
.LBB0_95:                               # %._crit_edge438
                                        #   in Loop: Header=BB0_76 Depth=3
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 408
	addi.d	$a3, $sp, 384
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 408
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$s0, $a0, 8
	ld.w	$a0, $sp, 408
	addi.d	$a2, $fp, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 408
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$s6, $a0, 16
	blez	$s6, .LBB0_98
# %bb.96:                               # %.lr.ph443.preheader
                                        #   in Loop: Header=BB0_76 Depth=3
	addi.d	$a0, $s6, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 392
	.p2align	4, , 16
.LBB0_97:                               # %.lr.ph443
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        #       Parent Loop BB0_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $sp, 408
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_97
.LBB0_98:                               # %iter.check677
                                        #   in Loop: Header=BB0_76 Depth=3
	ld.w	$a2, $sp, 408
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a5, $fp, 31, 0
	addi.w	$a7, $fp, 0
	addi.d	$a3, $fp, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a6, $zero, 1
	slli.d	$a4, $a5, 1
	ori	$t0, $zero, 7
	bgeu	$t0, $a7, .LBB0_114
# %bb.99:                               # %vector.memcheck664
                                        #   in Loop: Header=BB0_76 Depth=3
	slli.d	$t0, $a3, 1
	sub.d	$t0, $a4, $t0
	add.d	$t0, $a1, $t0
	addi.d	$t1, $t0, 4
	alsl.d	$t2, $a3, $a0, 1
	alsl.d	$t0, $a5, $a1, 1
	bgeu	$t1, $t2, .LBB0_101
# %bb.100:                              # %vector.memcheck664
                                        #   in Loop: Header=BB0_76 Depth=3
	addi.d	$t1, $t0, 2
	addi.d	$t2, $a0, 2
	bltu	$t2, $t1, .LBB0_114
.LBB0_101:                              # %vector.main.loop.iter.check679
                                        #   in Loop: Header=BB0_76 Depth=3
	ori	$a6, $zero, 16
	bgeu	$a7, $a6, .LBB0_109
# %bb.102:                              #   in Loop: Header=BB0_76 Depth=3
	move	$a7, $zero
.LBB0_103:                              #   in Loop: Header=BB0_76 Depth=3
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a6, $a5, 31, 3
	slli.d	$t0, $a6, 3
	srli.d	$t1, $a5, 3
	ori	$a6, $zero, 1
	bstrins.d	$a6, $t1, 31, 3
	alsl.d	$t1, $a7, $a0, 1
	slli.d	$t2, $a7, 1
	addi.d	$t1, $t1, 2
	sub.d	$t2, $a4, $t2
	add.d	$t2, $a1, $t2
	addi.d	$t2, $t2, -14
	sub.d	$a7, $a7, $t0
	.p2align	4, , 16
.LBB0_104:                              # %vec.epilog.vector.body700
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        #       Parent Loop BB0_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t1, 0
	vld	$vr1, $t3, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t2, 0
	addi.d	$t1, $t1, 16
	addi.d	$a7, $a7, 8
	addi.d	$t2, $t2, -16
	bnez	$a7, .LBB0_104
# %bb.105:                              # %vec.epilog.middle.block706
                                        #   in Loop: Header=BB0_76 Depth=3
	bne	$t0, $a5, .LBB0_114
	b	.LBB0_116
.LBB0_106:                              # %vector.ph723
                                        #   in Loop: Header=BB0_76 Depth=3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 32, 4
	slli.d	$a6, $a4, 4
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a7, $a2, $a4, 1
	addi.d	$a4, $a3, 1
	bstrpick.d	$a3, $a4, 32, 4
	slli.d	$a5, $a3, 4
	alsl.d	$a1, $a3, $a1, 4
	sub.d	$a2, $a2, $a5
	alsl.w	$a3, $a3, $fp, 4
	addi.d	$t0, $t0, 18
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_107:                              # %vector.body727
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        #       Parent Loop BB0_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t1, %pc_lo12(.LCPI0_1)
	vld	$vr1, $a7, 0
	vld	$vr2, $a7, -16
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr0, $vr1
	vshuf.h	$vr0, $vr0, $vr2
	vst	$vr3, $t0, -16
	vst	$vr0, $t0, 0
	addi.d	$t0, $t0, 32
	addi.d	$a6, $a6, -16
	addi.d	$a7, $a7, -32
	bnez	$a6, .LBB0_107
# %bb.108:                              # %middle.block736
                                        #   in Loop: Header=BB0_76 Depth=3
	bne	$a4, $a5, .LBB0_90
	b	.LBB0_92
.LBB0_109:                              # %vector.ph680
                                        #   in Loop: Header=BB0_76 Depth=3
	bstrpick.d	$a6, $a5, 31, 4
	slli.d	$a7, $a6, 4
	addi.d	$a6, $a0, 18
	addi.d	$t0, $t0, -14
	move	$t1, $a7
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_110:                              # %vector.body683
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        #       Parent Loop BB0_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t2, %pc_lo12(.LCPI0_1)
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr0, $vr1
	vst	$vr3, $t0, 0
	vshuf.h	$vr0, $vr0, $vr2
	vst	$vr0, $t0, -16
	addi.d	$a6, $a6, 32
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB0_110
# %bb.111:                              # %middle.block690
                                        #   in Loop: Header=BB0_76 Depth=3
	beq	$a7, $a5, .LBB0_116
# %bb.112:                              # %vec.epilog.iter.check695
                                        #   in Loop: Header=BB0_76 Depth=3
	andi	$a6, $a5, 8
	bnez	$a6, .LBB0_103
# %bb.113:                              #   in Loop: Header=BB0_76 Depth=3
	addi.d	$a6, $a7, 1
	.p2align	4, , 16
.LBB0_114:                              # %vec.epilog.scalar.ph693.preheader
                                        #   in Loop: Header=BB0_76 Depth=3
	slli.d	$a5, $a6, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a6, $a0, 1
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB0_115:                              # %vec.epilog.scalar.ph693
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        #       Parent Loop BB0_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_115
.LBB0_116:                              # %.loopexit801
                                        #   in Loop: Header=BB0_76 Depth=3
	ld.w	$a1, $sp, 416
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.d	$fp, $a0, $a1
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	sub.w	$s0, $s0, $fp
	blez	$s0, .LBB0_75
# %bb.117:                              # %.preheader354.preheader
                                        #   in Loop: Header=BB0_76 Depth=3
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_118:                              # %.preheader354
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        #       Parent Loop BB0_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 380
	addi.d	$a3, $sp, 376
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 380
	ld.w	$a2, $sp, 376
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 376
	addi.d	$a0, $sp, 328
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	blt	$s1, $s0, .LBB0_118
# %bb.119:                              #   in Loop: Header=BB0_76 Depth=3
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	b	.LBB0_75
.LBB0_120:                              #   in Loop: Header=BB0_63 Depth=2
	ori	$s1, $zero, 1
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	blt	$fp, $a1, .LBB0_128
.LBB0_121:                              # %.lr.ph464.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	bstrpick.d	$a1, $s1, 31, 0
	ori	$a2, $zero, 17
	bltu	$fp, $a2, .LBB0_124
# %bb.122:                              # %vector.memcheck635
                                        #   in Loop: Header=BB0_63 Depth=2
	alsl.d	$a6, $a1, $a0, 1
	addi.d	$a2, $a6, 2
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB0_139
# %bb.123:                              # %vector.memcheck635
                                        #   in Loop: Header=BB0_63 Depth=2
	addi.d	$a2, $fp, -2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 1
	alsl.d	$a2, $a2, $a6, 1
	addi.d	$a2, $a2, 4
	slli.d	$a4, $fp, 1
	sub.d	$a3, $a4, $a3
	add.d	$a3, $t2, $a3
	addi.d	$a3, $a3, -2
	bgeu	$a3, $a2, .LBB0_139
.LBB0_124:                              #   in Loop: Header=BB0_63 Depth=2
	move	$a2, $fp
	move	$a3, $s1
.LBB0_125:                              # %.lr.ph464.preheader807
                                        #   in Loop: Header=BB0_63 Depth=2
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	alsl.d	$a2, $a2, $t2, 1
	addi.d	$a2, $a2, -2
	add.d	$a4, $s1, $fp
	nor	$a3, $a3, $zero
	add.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB0_126:                              # %.lr.ph464
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -2
	bnez	$a3, .LBB0_126
.LBB0_127:                              # %._crit_edge465.loopexit
                                        #   in Loop: Header=BB0_63 Depth=2
	move	$s1, $a1
.LBB0_128:                              # %._crit_edge465
                                        #   in Loop: Header=BB0_63 Depth=2
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 408
	addi.d	$a3, $sp, 384
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 408
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$fp, $a0, 8
	ld.w	$a0, $sp, 408
	addi.d	$a2, $s1, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 408
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$s0, $a0, 16
	blez	$s0, .LBB0_131
# %bb.129:                              # %.lr.ph470.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	addi.d	$a0, $s0, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 392
	.p2align	4, , 16
.LBB0_130:                              # %.lr.ph470
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $sp, 408
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_130
.LBB0_131:                              # %iter.check
                                        #   in Loop: Header=BB0_63 Depth=2
	ld.w	$a2, $sp, 408
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a5, $s1, 31, 0
	addi.w	$a7, $s1, 0
	addi.d	$a3, $s1, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a6, $zero, 1
	slli.d	$a4, $a5, 1
	ori	$t0, $zero, 7
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	bgeu	$t0, $a7, .LBB0_147
# %bb.132:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_63 Depth=2
	slli.d	$t0, $a3, 1
	sub.d	$t0, $a4, $t0
	add.d	$t0, $a1, $t0
	addi.d	$t1, $t0, 4
	alsl.d	$t2, $a3, $a0, 1
	alsl.d	$t0, $a5, $a1, 1
	bgeu	$t1, $t2, .LBB0_134
# %bb.133:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_63 Depth=2
	addi.d	$t1, $t0, 2
	addi.d	$t2, $a0, 2
	bltu	$t2, $t1, .LBB0_147
.LBB0_134:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_63 Depth=2
	ori	$a6, $zero, 16
	bgeu	$a7, $a6, .LBB0_142
# %bb.135:                              #   in Loop: Header=BB0_63 Depth=2
	move	$a7, $zero
.LBB0_136:                              #   in Loop: Header=BB0_63 Depth=2
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a6, $a5, 31, 3
	slli.d	$t0, $a6, 3
	srli.d	$t1, $a5, 3
	ori	$a6, $zero, 1
	bstrins.d	$a6, $t1, 31, 3
	alsl.d	$t1, $a7, $a0, 1
	slli.d	$t2, $a7, 1
	addi.d	$t1, $t1, 2
	sub.d	$t2, $a4, $t2
	add.d	$t2, $a1, $t2
	addi.d	$t2, $t2, -14
	sub.d	$a7, $a7, $t0
	.p2align	4, , 16
.LBB0_137:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t1, 0
	vld	$vr1, $t3, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t2, 0
	addi.d	$t1, $t1, 16
	addi.d	$a7, $a7, 8
	addi.d	$t2, $t2, -16
	bnez	$a7, .LBB0_137
# %bb.138:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_63 Depth=2
	bne	$t0, $a5, .LBB0_147
	b	.LBB0_149
.LBB0_139:                              # %vector.ph647
                                        #   in Loop: Header=BB0_63 Depth=2
	addi.d	$a2, $fp, -1
	bstrpick.d	$a4, $a2, 31, 0
	bstrpick.d	$a3, $a4, 31, 4
	slli.d	$a5, $a3, 4
	alsl.d	$a1, $a3, $a1, 4
	sub.d	$a2, $fp, $a5
	alsl.w	$a3, $a3, $s1, 4
	addi.d	$a6, $a6, 18
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a7, $a7, -16
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_140:                              # %vector.body650
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t1, %pc_lo12(.LCPI0_1)
	vld	$vr1, $a7, 0
	vld	$vr2, $a7, -16
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr0, $vr1
	vshuf.h	$vr0, $vr0, $vr2
	vst	$vr3, $a6, -16
	vst	$vr0, $a6, 0
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_140
# %bb.141:                              # %middle.block659
                                        #   in Loop: Header=BB0_63 Depth=2
	bne	$a5, $a4, .LBB0_125
	b	.LBB0_127
.LBB0_142:                              # %vector.ph
                                        #   in Loop: Header=BB0_63 Depth=2
	bstrpick.d	$a6, $a5, 31, 4
	slli.d	$a7, $a6, 4
	addi.d	$a6, $a0, 18
	addi.d	$t0, $t0, -14
	move	$t1, $a7
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_143:                              # %vector.body
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t2, %pc_lo12(.LCPI0_1)
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr0, $vr1
	vst	$vr3, $t0, 0
	vshuf.h	$vr0, $vr0, $vr2
	vst	$vr0, $t0, -16
	addi.d	$a6, $a6, 32
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB0_143
# %bb.144:                              # %middle.block
                                        #   in Loop: Header=BB0_63 Depth=2
	beq	$a7, $a5, .LBB0_149
# %bb.145:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_63 Depth=2
	andi	$a6, $a5, 8
	bnez	$a6, .LBB0_136
# %bb.146:                              #   in Loop: Header=BB0_63 Depth=2
	addi.d	$a6, $a7, 1
	.p2align	4, , 16
.LBB0_147:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	slli.d	$a5, $a6, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a6, $a0, 1
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB0_148:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_148
.LBB0_149:                              # %.loopexit802
                                        #   in Loop: Header=BB0_63 Depth=2
	ld.w	$a1, $sp, 416
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	sub.w	$s0, $fp, $a0
	blez	$s0, .LBB0_152
# %bb.150:                              # %.preheader357.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_151:                              # %.preheader357
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 380
	addi.d	$a3, $sp, 376
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 380
	ld.w	$a2, $sp, 376
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 376
	addi.d	$a0, $sp, 328
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	blt	$fp, $s0, .LBB0_151
	b	.LBB0_62
.LBB0_152:                              #   in Loop: Header=BB0_63 Depth=2
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	b	.LBB0_62
.LBB0_153:                              # %._crit_edge478
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.w	$fp, $s7, 0
	bge	$fp, $s5, .LBB0_157
# %bb.154:                              # %.preheader366.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	sub.d	$s0, $s5, $fp
	.p2align	4, , 16
.LBB0_155:                              # %.preheader366
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 380
	addi.d	$a3, $sp, 376
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 380
	ld.w	$a2, $sp, 376
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 376
	addi.d	$a0, $sp, 328
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB0_155
# %bb.156:                              #   in Loop: Header=BB0_29 Depth=1
	move	$s5, $fp
.LBB0_157:                              # %.loopexit367
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $sp, 360
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB0_159
	.p2align	4, , 16
.LBB0_158:                              # %.preheader364
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 416
	addi.d	$a3, $sp, 412
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	bnez	$a0, .LBB0_158
.LBB0_159:                              # %.loopexit365
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$a0, $s3, .LBB0_164
# %bb.160:                              #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	beqz	$a1, .LBB0_164
	.p2align	4, , 16
.LBB0_161:                              # %.lr.ph487
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_162 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_162:                              #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s4, .LBB0_162
# %bb.163:                              #   in Loop: Header=BB0_161 Depth=2
	ld.d	$a1, $a1, 32
	st.w	$s3, $a2, 24
	bnez	$a1, .LBB0_161
.LBB0_164:                              # %.outer
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bne	$a0, $fp, .LBB0_29
.LBB0_165:                              # %.outer._crit_edge.preheader
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$s0, $a0, %got_pc_lo12(pathArray)
	pcalau12i	$a0, %got_pc_hi20(pathList)
	ld.d	$s1, $a0, %got_pc_lo12(pathList)
	move	$s2, $zero
	move	$fp, $zero
	ori	$s3, $zero, 7
	ori	$s4, $zero, 1
	b	.LBB0_167
	.p2align	4, , 16
.LBB0_166:                              # %._crit_edge494
                                        #   in Loop: Header=BB0_167 Depth=1
	ld.w	$a0, $s7, 0
	addi.d	$fp, $fp, 1
	bge	$s2, $a0, .LBB0_176
.LBB0_167:                              # %.outer._crit_edge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_171 Depth 2
                                        #     Child Loop BB0_174 Depth 2
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 416
	addi.d	$a3, $sp, 412
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	beqz	$a0, .LBB0_175
# %bb.168:                              #   in Loop: Header=BB0_167 Depth=1
	ld.w	$a0, $sp, 412
	ld.d	$a1, $s0, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 3
	add.d	$a0, $a1, $a2
	ld.d	$a3, $s1, 0
	ld.w	$a4, $a0, 12
	addi.d	$s2, $s2, 1
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $a3, $a0
	addi.d	$a3, $a4, 1
	st.w	$a3, $a0, 0
	ld.w	$a3, $sp, 416
	ldx.d	$a1, $a1, $a2
	alsl.d	$a2, $a4, $a0, 2
	st.w	$a3, $a2, 8
	bltz	$a4, .LBB0_166
# %bb.169:                              # %.lr.ph493.preheader
                                        #   in Loop: Header=BB0_167 Depth=1
	addi.d	$a2, $a4, 2
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $zero, 1
	bltu	$a4, $s3, .LBB0_173
# %bb.170:                              # %vector.ph789
                                        #   in Loop: Header=BB0_167 Depth=1
	addi.d	$a4, $a2, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	move	$a3, $a4
	bstrins.d	$a3, $s4, 2, 0
	addi.d	$a6, $a1, 10
	addi.d	$a7, $a0, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_171:                              # %vector.body792
                                        #   Parent Loop BB0_167 Depth=1
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
	bnez	$t0, .LBB0_171
# %bb.172:                              # %middle.block798
                                        #   in Loop: Header=BB0_167 Depth=1
	beq	$a4, $a5, .LBB0_166
.LBB0_173:                              # %.lr.ph493.preheader804
                                        #   in Loop: Header=BB0_167 Depth=1
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a1, $a3, $a1, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_174:                              # %.lr.ph493
                                        #   Parent Loop BB0_167 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a1, 0
	st.w	$a3, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2
	bnez	$a2, .LBB0_174
	b	.LBB0_166
.LBB0_175:                              # %.split.loop.exit601
	move	$fp, $s2
.LBB0_176:                              # %.split.loop.exit
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB0_178
	.p2align	4, , 16
.LBB0_177:                              # %.preheader352
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 416
	addi.d	$a3, $sp, 412
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	bnez	$a0, .LBB0_177
.LBB0_178:                              # %.loopexit353
	ld.d	$a0, $sp, 320
	beqz	$a0, .LBB0_180
	.p2align	4, , 16
.LBB0_179:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 372
	addi.d	$a3, $sp, 420
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336
	bnez	$a0, .LBB0_179
.LBB0_180:                              # %.loopexit
	addi.w	$a0, $fp, 0
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
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
