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
	blez	$fp, .LBB0_144
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
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_56 Depth 2
                                        #       Child Loop BB0_69 Depth 3
                                        #         Child Loop BB0_77 Depth 4
                                        #         Child Loop BB0_104 Depth 4
                                        #         Child Loop BB0_84 Depth 4
                                        #         Child Loop BB0_90 Depth 4
                                        #         Child Loop BB0_95 Depth 4
                                        #         Child Loop BB0_98 Depth 4
                                        #         Child Loop BB0_101 Depth 4
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_127 Depth 3
                                        #     Child Loop BB0_134 Depth 2
                                        #     Child Loop BB0_137 Depth 2
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_141 Depth 3
                                        #     Child Loop BB0_38 Depth 2
                                        #       Child Loop BB0_39 Depth 3
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 372
	addi.d	$a3, $sp, 420
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336
	beqz	$a0, .LBB0_144
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
.LBB0_44:                               # %._crit_edge419
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
	bstrpick.d	$a4, $s0, 31, 0
	addi.d	$a3, $s0, 1
	bstrpick.d	$a3, $a3, 31, 0
	pcalau12i	$t1, %pc_hi20(.LCPI0_1)
	ori	$a5, $zero, 8
	bltu	$s0, $a5, .LBB0_50
# %bb.45:                               # %vector.memcheck706
                                        #   in Loop: Header=BB0_29 Depth=1
	slli.d	$a5, $a4, 1
	slli.d	$a6, $a3, 1
	sub.d	$a5, $a5, $a6
	add.d	$a5, $a1, $a5
	addi.d	$a6, $a5, 4
	alsl.d	$a7, $a4, $a1, 1
	alsl.d	$t0, $a3, $a0, 1
	addi.d	$a5, $a0, 2
	bgeu	$a6, $t0, .LBB0_47
# %bb.46:                               # %vector.memcheck706
                                        #   in Loop: Header=BB0_29 Depth=1
	addi.d	$a6, $a7, 2
	bltu	$a5, $a6, .LBB0_50
.LBB0_47:                               # %vector.ph718
                                        #   in Loop: Header=BB0_29 Depth=1
	bstrpick.d	$a6, $a4, 31, 3
	slli.d	$a6, $a6, 3
	srli.d	$t0, $a4, 3
	ori	$fp, $zero, 1
	bstrins.d	$fp, $t0, 31, 3
	addi.d	$a7, $a7, -14
	move	$t0, $a6
	.p2align	4, , 16
.LBB0_48:                               # %vector.body721
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vld	$vr1, $t1, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $a7, 0
	addi.d	$a5, $a5, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB0_48
# %bb.49:                               # %middle.block727
                                        #   in Loop: Header=BB0_29 Depth=1
	beq	$a6, $a4, .LBB0_52
.LBB0_50:                               # %scalar.ph716.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	slli.d	$a4, $a4, 1
	slli.d	$a5, $fp, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $fp, $a0, 1
	sub.d	$a3, $a3, $fp
	.p2align	4, , 16
.LBB0_51:                               # %scalar.ph716
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_51
.LBB0_52:                               # %.loopexit746
                                        #   in Loop: Header=BB0_29 Depth=1
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
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
	beqz	$a0, .LBB0_132
# %bb.53:                               # %.lr.ph477.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	st.d	$zero, $sp, 280                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	ori	$fp, $zero, 1
	b	.LBB0_56
.LBB0_54:                               #   in Loop: Header=BB0_56 Depth=2
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_55:                               # %.backedge
                                        #   in Loop: Header=BB0_56 Depth=2
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
	beqz	$a0, .LBB0_132
.LBB0_56:                               # %.lr.ph477
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_69 Depth 3
                                        #         Child Loop BB0_77 Depth 4
                                        #         Child Loop BB0_104 Depth 4
                                        #         Child Loop BB0_84 Depth 4
                                        #         Child Loop BB0_90 Depth 4
                                        #         Child Loop BB0_95 Depth 4
                                        #         Child Loop BB0_98 Depth 4
                                        #         Child Loop BB0_101 Depth 4
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_127 Depth 3
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
	bge	$a1, $a0, .LBB0_132
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=2
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
	bne	$a2, $a5, .LBB0_65
# %bb.58:                               #   in Loop: Header=BB0_56 Depth=2
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	addi.w	$s0, $a3, 1
	st.w	$s0, $sp, 388
	blez	$a3, .LBB0_60
# %bb.59:                               # %.lr.ph454.preheader
                                        #   in Loop: Header=BB0_56 Depth=2
	addi.d	$a1, $a0, 24
	slli.d	$a2, $a3, 2
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_60:                               # %._crit_edge455
                                        #   in Loop: Header=BB0_56 Depth=2
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $s6, 1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.h	$a0, $a0, 2
	slli.d	$a1, $s0, 2
	addi.d	$a2, $sp, 388
	stx.w	$a0, $a1, $a2
	ld.w	$s7, $sp, 388
	ld.w	$a3, $sp, 392
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	ld.w	$s5, $sp, 396
	ld.w	$s2, $sp, 400
	ld.w	$s0, $sp, 404
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s7
	move	$a4, $s5
	move	$a5, $s2
	move	$a6, $s0
	pcaddu18i	$ra, %call36(greduce)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $fp
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$a3, $s4
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s6
	move	$a1, $fp
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	move	$a2, $s7
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	st.d	$s5, $sp, 248                   # 8-byte Folded Spill
	move	$a4, $s5
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	move	$a5, $s2
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	move	$a6, $s0
	pcaddu18i	$ra, %call36(gunreduce)
	jirl	$ra, $ra, 0
	bltz	$s1, .LBB0_54
# %bb.61:                               #   in Loop: Header=BB0_56 Depth=2
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
	beqz	$a1, .LBB0_106
# %bb.62:                               # %.lr.ph460.preheader
                                        #   in Loop: Header=BB0_56 Depth=2
	addi.d	$a2, $a0, 4
	ori	$s1, $zero, 1
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_63:                               # %.lr.ph460
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $s8, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_63
# %bb.64:                               # %.preheader360
                                        #   in Loop: Header=BB0_56 Depth=2
	ori	$a1, $zero, 2
	bge	$fp, $a1, .LBB0_107
	b	.LBB0_114
	.p2align	4, , 16
.LBB0_65:                               # %.preheader361
                                        #   in Loop: Header=BB0_56 Depth=2
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $a5
	addi.w	$a3, $a2, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_55
# %bb.66:                               # %.lr.ph449
                                        #   in Loop: Header=BB0_56 Depth=2
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
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_67:                               #   in Loop: Header=BB0_69 Depth=3
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
.LBB0_68:                               # %.loopexit355
                                        #   in Loop: Header=BB0_69 Depth=3
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.w	$s5, $s5, 1
	addi.d	$s2, $s2, 1
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_55
.LBB0_69:                               #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_77 Depth 4
                                        #         Child Loop BB0_104 Depth 4
                                        #         Child Loop BB0_84 Depth 4
                                        #         Child Loop BB0_90 Depth 4
                                        #         Child Loop BB0_95 Depth 4
                                        #         Child Loop BB0_98 Depth 4
                                        #         Child Loop BB0_101 Depth 4
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	bne	$a1, $s3, .LBB0_73
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $sp, 388
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blez	$a0, .LBB0_72
# %bb.71:                               # %.lr.ph425.preheader
                                        #   in Loop: Header=BB0_69 Depth=3
	addi.d	$a0, $sp, 392
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_72:                               # %._crit_edge426
                                        #   in Loop: Header=BB0_69 Depth=3
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
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_73:                               #   in Loop: Header=BB0_69 Depth=3
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
.LBB0_74:                               #   in Loop: Header=BB0_69 Depth=3
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
	bltz	$s1, .LBB0_67
# %bb.75:                               #   in Loop: Header=BB0_69 Depth=3
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
	beqz	$a1, .LBB0_86
# %bb.76:                               # %.lr.ph431.preheader
                                        #   in Loop: Header=BB0_69 Depth=3
	addi.d	$a2, $a0, 4
	ori	$fp, $zero, 1
	ori	$s3, $zero, 1
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_77:                               # %.lr.ph431
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $s8, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$fp, $fp, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_77
# %bb.78:                               # %._crit_edge432
                                        #   in Loop: Header=BB0_69 Depth=3
	ori	$a1, $zero, 3
	blt	$a4, $a1, .LBB0_87
.LBB0_79:                               # %.lr.ph437.preheader
                                        #   in Loop: Header=BB0_69 Depth=3
	bstrpick.d	$a2, $s5, 31, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.w	$a4, $a1, $s2
	bstrpick.d	$a1, $fp, 31, 0
	ori	$a3, $zero, 7
	bltu	$a4, $a3, .LBB0_82
# %bb.80:                               # %vector.memcheck677
                                        #   in Loop: Header=BB0_69 Depth=3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a3, 1
	alsl.d	$a5, $a1, $a0, 1
	addi.d	$a3, $a5, 2
	bstrpick.d	$a4, $a4, 31, 0
	bgeu	$a3, $a6, .LBB0_103
# %bb.81:                               # %vector.memcheck677
                                        #   in Loop: Header=BB0_69 Depth=3
	slli.d	$a6, $a2, 1
	slli.d	$a7, $a4, 1
	sub.d	$a6, $a6, $a7
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a6, $t0, $a6
	add.d	$a5, $a5, $a7
	addi.d	$a5, $a5, 4
	bgeu	$a6, $a5, .LBB0_103
.LBB0_82:                               #   in Loop: Header=BB0_69 Depth=3
	move	$a4, $fp
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
.LBB0_83:                               # %.lr.ph437.preheader749
                                        #   in Loop: Header=BB0_69 Depth=3
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a3, $a4, $fp
	.p2align	4, , 16
.LBB0_84:                               # %.lr.ph437
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, -2
	bne	$s5, $a3, .LBB0_84
.LBB0_85:                               # %._crit_edge438.loopexit
                                        #   in Loop: Header=BB0_69 Depth=3
	move	$fp, $a1
	b	.LBB0_88
	.p2align	4, , 16
.LBB0_86:                               #   in Loop: Header=BB0_69 Depth=3
	ori	$fp, $zero, 1
	ori	$s3, $zero, 1
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bge	$a4, $a1, .LBB0_79
.LBB0_87:                               #   in Loop: Header=BB0_69 Depth=3
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
.LBB0_88:                               # %._crit_edge438
                                        #   in Loop: Header=BB0_69 Depth=3
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
	blez	$s6, .LBB0_91
# %bb.89:                               # %.lr.ph443.preheader
                                        #   in Loop: Header=BB0_69 Depth=3
	addi.d	$a0, $s6, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 392
	.p2align	4, , 16
.LBB0_90:                               # %.lr.ph443
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $sp, 408
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_90
.LBB0_91:                               # %.preheader356
                                        #   in Loop: Header=BB0_69 Depth=3
	ld.w	$a2, $sp, 408
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a4, $fp, 31, 0
	addi.w	$a6, $fp, 0
	addi.d	$a3, $fp, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 1
	ori	$a7, $zero, 8
	bltu	$a6, $a7, .LBB0_97
# %bb.92:                               # %vector.memcheck653
                                        #   in Loop: Header=BB0_69 Depth=3
	slli.d	$a6, $a4, 1
	slli.d	$a7, $a3, 1
	sub.d	$a6, $a6, $a7
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a6, 4
	alsl.d	$t0, $a4, $a1, 1
	alsl.d	$t1, $a3, $a0, 1
	addi.d	$a6, $a0, 2
	bgeu	$a7, $t1, .LBB0_94
# %bb.93:                               # %vector.memcheck653
                                        #   in Loop: Header=BB0_69 Depth=3
	addi.d	$a7, $t0, 2
	bltu	$a6, $a7, .LBB0_97
.LBB0_94:                               # %vector.ph665
                                        #   in Loop: Header=BB0_69 Depth=3
	bstrpick.d	$a5, $a4, 31, 3
	slli.d	$a7, $a5, 3
	srli.d	$t1, $a4, 3
	ori	$a5, $zero, 1
	bstrins.d	$a5, $t1, 31, 3
	addi.d	$t0, $t0, -14
	move	$t1, $a7
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_95:                               # %vector.body668
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a6, 0
	vld	$vr1, $t2, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t0, 0
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, -16
	bnez	$t1, .LBB0_95
# %bb.96:                               # %middle.block674
                                        #   in Loop: Header=BB0_69 Depth=3
	beq	$a7, $a4, .LBB0_99
	.p2align	4, , 16
.LBB0_97:                               # %scalar.ph663.preheader
                                        #   in Loop: Header=BB0_69 Depth=3
	slli.d	$a4, $a4, 1
	slli.d	$a6, $a5, 1
	sub.d	$a4, $a4, $a6
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a5, $a0, 1
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB0_98:                               # %scalar.ph663
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_98
.LBB0_99:                               # %.loopexit744
                                        #   in Loop: Header=BB0_69 Depth=3
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
	blez	$s0, .LBB0_68
# %bb.100:                              # %.preheader354.preheader
                                        #   in Loop: Header=BB0_69 Depth=3
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_101:                              # %.preheader354
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_69 Depth=3
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
	blt	$s1, $s0, .LBB0_101
# %bb.102:                              #   in Loop: Header=BB0_69 Depth=3
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	b	.LBB0_68
.LBB0_103:                              # %vector.ph690
                                        #   in Loop: Header=BB0_69 Depth=3
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 32, 3
	slli.d	$a7, $a5, 3
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$t0, $a2, $a5, 1
	addi.d	$a5, $a4, 1
	bstrpick.d	$a4, $a5, 32, 3
	slli.d	$a6, $a4, 3
	alsl.d	$a1, $a4, $a1, 3
	sub.d	$a2, $a2, $a6
	alsl.w	$a4, $a4, $fp, 3
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_104:                              # %vector.body694
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t0, 0
	vld	$vr1, $t1, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a7, $a7, -8
	addi.d	$t0, $t0, -16
	bnez	$a7, .LBB0_104
# %bb.105:                              # %middle.block701
                                        #   in Loop: Header=BB0_69 Depth=3
	bne	$a5, $a6, .LBB0_83
	b	.LBB0_85
.LBB0_106:                              #   in Loop: Header=BB0_56 Depth=2
	ori	$s1, $zero, 1
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	blt	$fp, $a1, .LBB0_114
.LBB0_107:                              # %.lr.ph464.preheader
                                        #   in Loop: Header=BB0_56 Depth=2
	bstrpick.d	$a1, $s1, 31, 0
	ori	$a2, $zero, 9
	bltu	$fp, $a2, .LBB0_110
# %bb.108:                              # %vector.memcheck625
                                        #   in Loop: Header=BB0_56 Depth=2
	alsl.d	$a3, $a1, $a0, 1
	addi.d	$a2, $a3, 2
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	bgeu	$a2, $a4, .LBB0_129
# %bb.109:                              # %vector.memcheck625
                                        #   in Loop: Header=BB0_56 Depth=2
	addi.d	$a4, $fp, -2
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a5, $a4, 1
	alsl.d	$a3, $a4, $a3, 1
	addi.d	$a3, $a3, 4
	slli.d	$a4, $fp, 1
	sub.d	$a4, $a4, $a5
	add.d	$a4, $t2, $a4
	addi.d	$a4, $a4, -2
	bgeu	$a4, $a3, .LBB0_129
.LBB0_110:                              #   in Loop: Header=BB0_56 Depth=2
	move	$a3, $fp
	move	$a4, $s1
.LBB0_111:                              # %.lr.ph464.preheader750
                                        #   in Loop: Header=BB0_56 Depth=2
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	alsl.d	$a2, $a3, $t2, 1
	addi.d	$a2, $a2, -2
	add.d	$a3, $s1, $fp
	nor	$a4, $a4, $zero
	add.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB0_112:                              # %.lr.ph464
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -2
	bnez	$a3, .LBB0_112
.LBB0_113:                              # %._crit_edge465.loopexit
                                        #   in Loop: Header=BB0_56 Depth=2
	move	$s1, $a1
.LBB0_114:                              # %._crit_edge465
                                        #   in Loop: Header=BB0_56 Depth=2
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
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	blez	$a2, .LBB0_117
# %bb.115:                              # %.lr.ph470.preheader
                                        #   in Loop: Header=BB0_56 Depth=2
	addi.d	$a0, $a2, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 392
	.p2align	4, , 16
.LBB0_116:                              # %.lr.ph470
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $sp, 408
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_116
.LBB0_117:                              # %.preheader359
                                        #   in Loop: Header=BB0_56 Depth=2
	ld.w	$a2, $sp, 408
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a4, $s1, 31, 0
	addi.w	$a6, $s1, 0
	addi.d	$a3, $s1, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 1
	ori	$a7, $zero, 8
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	bltu	$a6, $a7, .LBB0_123
# %bb.118:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_56 Depth=2
	slli.d	$a6, $a4, 1
	slli.d	$a7, $a3, 1
	sub.d	$a6, $a6, $a7
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a6, 4
	alsl.d	$t0, $a4, $a1, 1
	alsl.d	$t1, $a3, $a0, 1
	addi.d	$a6, $a0, 2
	bgeu	$a7, $t1, .LBB0_120
# %bb.119:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_56 Depth=2
	addi.d	$a7, $t0, 2
	bltu	$a6, $a7, .LBB0_123
.LBB0_120:                              # %vector.ph
                                        #   in Loop: Header=BB0_56 Depth=2
	bstrpick.d	$a5, $a4, 31, 3
	slli.d	$a7, $a5, 3
	srli.d	$t1, $a4, 3
	ori	$a5, $zero, 1
	bstrins.d	$a5, $t1, 31, 3
	addi.d	$t0, $t0, -14
	move	$t1, $a7
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_121:                              # %vector.body
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a6, 0
	vld	$vr1, $t2, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t0, 0
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, -16
	bnez	$t1, .LBB0_121
# %bb.122:                              # %middle.block
                                        #   in Loop: Header=BB0_56 Depth=2
	beq	$a7, $a4, .LBB0_125
	.p2align	4, , 16
.LBB0_123:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_56 Depth=2
	slli.d	$a4, $a4, 1
	slli.d	$a6, $a5, 1
	sub.d	$a4, $a4, $a6
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a5, $a0, 1
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB0_124:                              # %scalar.ph
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_124
.LBB0_125:                              # %.loopexit745
                                        #   in Loop: Header=BB0_56 Depth=2
	ld.w	$a1, $sp, 416
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	sub.w	$s0, $fp, $a0
	blez	$s0, .LBB0_128
# %bb.126:                              # %.preheader357.preheader
                                        #   in Loop: Header=BB0_56 Depth=2
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_127:                              # %.preheader357
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
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
	blt	$fp, $s0, .LBB0_127
	b	.LBB0_55
.LBB0_128:                              #   in Loop: Header=BB0_56 Depth=2
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	b	.LBB0_55
.LBB0_129:                              # %vector.ph638
                                        #   in Loop: Header=BB0_56 Depth=2
	addi.d	$a3, $fp, -1
	bstrpick.d	$a5, $a3, 31, 0
	bstrpick.d	$a4, $a5, 31, 3
	slli.d	$a6, $a4, 3
	alsl.d	$a1, $a4, $a1, 3
	sub.d	$a3, $fp, $a6
	alsl.w	$a4, $a4, $s1, 3
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a7, $a7, -16
	move	$t0, $a6
	.p2align	4, , 16
.LBB0_130:                              # %vector.body641
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a7, 0
	vld	$vr1, $t1, %pc_lo12(.LCPI0_1)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB0_130
# %bb.131:                              # %middle.block648
                                        #   in Loop: Header=BB0_56 Depth=2
	bne	$a6, $a5, .LBB0_111
	b	.LBB0_113
.LBB0_132:                              # %._crit_edge478
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.w	$fp, $s7, 0
	bge	$fp, $s5, .LBB0_136
# %bb.133:                              # %.preheader366.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	sub.d	$s0, $s5, $fp
	.p2align	4, , 16
.LBB0_134:                              # %.preheader366
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
	bnez	$s0, .LBB0_134
# %bb.135:                              #   in Loop: Header=BB0_29 Depth=1
	move	$s5, $fp
.LBB0_136:                              # %.loopexit367
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $sp, 360
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB0_138
	.p2align	4, , 16
.LBB0_137:                              # %.preheader364
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 416
	addi.d	$a3, $sp, 412
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	bnez	$a0, .LBB0_137
.LBB0_138:                              # %.loopexit365
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$a0, $s3, .LBB0_143
# %bb.139:                              #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	beqz	$a1, .LBB0_143
	.p2align	4, , 16
.LBB0_140:                              # %.lr.ph487
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_141 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_141:                              #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s4, .LBB0_141
# %bb.142:                              #   in Loop: Header=BB0_140 Depth=2
	ld.d	$a1, $a1, 32
	st.w	$s3, $a2, 24
	bnez	$a1, .LBB0_140
.LBB0_143:                              # %.outer
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bne	$a0, $fp, .LBB0_29
.LBB0_144:                              # %.outer._crit_edge.preheader
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$s0, $a0, %got_pc_lo12(pathArray)
	pcalau12i	$a0, %got_pc_hi20(pathList)
	ld.d	$s1, $a0, %got_pc_lo12(pathList)
	move	$s2, $zero
	move	$fp, $zero
	ori	$s3, $zero, 7
	ori	$s4, $zero, 1
	b	.LBB0_146
	.p2align	4, , 16
.LBB0_145:                              # %._crit_edge494
                                        #   in Loop: Header=BB0_146 Depth=1
	ld.w	$a0, $s7, 0
	addi.d	$fp, $fp, 1
	bge	$s2, $a0, .LBB0_155
.LBB0_146:                              # %.outer._crit_edge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_150 Depth 2
                                        #     Child Loop BB0_153 Depth 2
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 416
	addi.d	$a3, $sp, 412
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	beqz	$a0, .LBB0_154
# %bb.147:                              #   in Loop: Header=BB0_146 Depth=1
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
	bltz	$a4, .LBB0_145
# %bb.148:                              # %.lr.ph493.preheader
                                        #   in Loop: Header=BB0_146 Depth=1
	addi.d	$a2, $a4, 2
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $zero, 1
	bltu	$a4, $s3, .LBB0_152
# %bb.149:                              # %vector.ph732
                                        #   in Loop: Header=BB0_146 Depth=1
	addi.d	$a4, $a2, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	move	$a3, $a4
	bstrins.d	$a3, $s4, 2, 0
	addi.d	$a6, $a1, 10
	addi.d	$a7, $a0, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_150:                              # %vector.body735
                                        #   Parent Loop BB0_146 Depth=1
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
	bnez	$t0, .LBB0_150
# %bb.151:                              # %middle.block741
                                        #   in Loop: Header=BB0_146 Depth=1
	beq	$a4, $a5, .LBB0_145
.LBB0_152:                              # %.lr.ph493.preheader747
                                        #   in Loop: Header=BB0_146 Depth=1
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a1, $a3, $a1, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_153:                              # %.lr.ph493
                                        #   Parent Loop BB0_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a1, 0
	st.w	$a3, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2
	bnez	$a2, .LBB0_153
	b	.LBB0_145
.LBB0_154:                              # %.split.loop.exit601
	move	$fp, $s2
.LBB0_155:                              # %.split.loop.exit
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB0_157
	.p2align	4, , 16
.LBB0_156:                              # %.preheader352
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 352
	addi.d	$a2, $sp, 416
	addi.d	$a3, $sp, 412
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	bnez	$a0, .LBB0_156
.LBB0_157:                              # %.loopexit353
	ld.d	$a0, $sp, 320
	beqz	$a0, .LBB0_159
	.p2align	4, , 16
.LBB0_158:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 372
	addi.d	$a3, $sp, 420
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336
	bnez	$a0, .LBB0_158
.LBB0_159:                              # %.loopexit
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
