	.file	"procesnet.c"
	.text
	.globl	procesnet                       # -- Begin function procesnet
	.p2align	5
	.type	procesnet,@function
procesnet:                              # @procesnet
# %bb.0:
	ori	$a3, $zero, 1
	beq	$a1, $a3, .LBB0_81
# %bb.1:
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
	move	$s0, $a2
	move	$s1, $a1
	move	$s3, $a0
	pcaddu18i	$ra, %call36(grepair)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(prepair)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(loadpg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(shortpath)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(routenet)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(netRoot)
	addi.d	$a0, $a0, %pc_lo12(netRoot)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(savePaths)
	ld.d	$a0, $a0, %got_pc_lo12(savePaths)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$fp, $a0, %got_pc_lo12(netSegArray)
	move	$s1, $zero
	move	$s0, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	ori	$s4, $zero, 8
                                        # implicit-def: $r25
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %._crit_edge403
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$a0, $a0, %got_pc_lo12(MAXPATHS)
	ld.w	$a0, $a0, 0
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ori	$s4, $zero, 8
	bge	$s1, $a0, .LBB0_80
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_19 Depth 3
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_64 Depth 3
                                        #         Child Loop BB0_65 Depth 4
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_59 Depth 3
	addi.d	$a1, $sp, 136
	addi.d	$a2, $sp, 148
	addi.d	$a3, $sp, 144
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	slli.d	$s5, $s3, 4
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_79
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $sp, 144
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $fp, 0
	ld.h	$a3, $a2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a0, 8
	ori	$a5, $zero, 1
	st.h	$a5, $a1, 0
	st.h	$zero, $a4, 0
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB0_10
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, -1
	ori	$a4, $zero, 1
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=2
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a0, $a6
	ld.h	$a7, $a6, 0
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 0
	ext.w.h	$a7, $a7
	slli.d	$a7, $a7, 1
	stx.h	$a5, $a6, $a7
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=2
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	beqz	$a3, .LBB0_10
.LBB0_8:                                # %.lr.ph
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a2, 0
	bnez	$a5, .LBB0_6
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	addi.w	$a4, $a4, 1
	ld.h	$a5, $a1, 0
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a0, $a6
	addi.d	$a5, $a5, 1
	st.h	$a5, $a1, 0
	st.h	$zero, $a6, 0
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_10:                               # %._crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(mergeSeg)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 0
	ld.d	$a0, $s8, 0
	ld.h	$fp, $a0, 0
	addi.d	$s6, $fp, 1
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	blez	$fp, .LBB0_20
# %bb.11:                               # %.preheader324.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numnodes)
	ld.w	$a0, $a0, 0
	move	$s0, $zero
	vreplgr2vr.w	$vr0, $a0
	ori	$a1, $zero, 1
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               # %._crit_edge338
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $s6, .LBB0_21
.LBB0_13:                               # %.preheader324
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_19 Depth 3
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s8, $a2
	ld.h	$a3, $a2, 0
	blez	$a3, .LBB0_12
# %bb.14:                               # %.lr.ph337.preheader
                                        #   in Loop: Header=BB0_13 Depth=2
	bstrpick.d	$a3, $a3, 15, 0
	ori	$a4, $zero, 1
	bltu	$a3, $s4, .LBB0_18
# %bb.15:                               # %vector.ph
                                        #   in Loop: Header=BB0_13 Depth=2
	bstrpick.d	$a4, $a3, 14, 3
	slli.d	$a5, $a4, 3
	srli.d	$a6, $a3, 3
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a6, 14, 3
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vori.b	$vr1, $vr2, 0
	vinsgr2vr.w	$vr1, $s0, 0
	addi.d	$a6, $a2, 10
	move	$a7, $a5
	.p2align	4, , 16
.LBB0_16:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	vinsgr2vr.d	$vr3, $t0, 0
	vinsgr2vr.d	$vr4, $t1, 0
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr4, $vr4, $vr4
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vslt.w	$vr3, $vr0, $vr3
	vslt.w	$vr4, $vr0, $vr4
	vsub.w	$vr1, $vr1, $vr3
	vsub.w	$vr2, $vr2, $vr4
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB0_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB0_13 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$s0, $vr1, 0
	beq	$a5, $a3, .LBB0_12
.LBB0_18:                               # %.lr.ph337.preheader463
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$a3, $a3, 1
	alsl.d	$a2, $a4, $a2, 1
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph337
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	slt	$a4, $a0, $a4
	add.d	$s0, $s0, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	bnez	$a3, .LBB0_19
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	move	$s0, $zero
.LBB0_21:                               # %._crit_edge342
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s1, $s1, 1
	addi.w	$a0, $s0, 0
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(netRoutes)
	ld.d	$a1, $a1, %got_pc_lo12(netRoutes)
	ld.d	$a2, $a1, 0
	alsl.d	$a1, $s3, $s5, 3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $s1, 3
	ldx.d	$a2, $a1, $a2
	ld.w	$a1, $sp, 148
	st.d	$a0, $a2, 0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.w	$a1, $a2, 8
	st.w	$s0, $a0, 0
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	blez	$fp, .LBB0_2
# %bb.22:                               # %.preheader323.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(numnodes)
	ld.d	$a1, $a1, %got_pc_lo12(numnodes)
	ld.w	$a2, $a1, 0
	move	$a3, $zero
	ori	$a4, $zero, 1
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %._crit_edge350
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a4, $a4, 1
	beq	$a4, $s6, .LBB0_29
.LBB0_24:                               # %.preheader323
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $s8, $a5
	ld.h	$a6, $a5, 0
	blez	$a6, .LBB0_23
# %bb.25:                               # %.lr.ph349.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 15, 0
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, -1
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_27 Depth=3
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 2
	beqz	$a6, .LBB0_23
.LBB0_27:                               # %.lr.ph349
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a7, $a5, 0
	bge	$a2, $a7, .LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=3
	sub.d	$a7, $a7, $a2
	addi.w	$a3, $a3, 1
	slli.d	$t0, $a3, 2
	stx.w	$a7, $a0, $t0
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_29:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	ld.w	$s4, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(gnodeArray)
	ld.d	$s1, $a0, 0
	move	$s7, $zero
	ori	$s6, $zero, 1
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_34 Depth=2
	st.d	$a0, $s7, 16
.LBB0_31:                               #   in Loop: Header=BB0_34 Depth=2
	st.w	$s3, $a0, 0
	st.w	$s5, $a0, 4
	st.w	$s0, $a0, 8
.LBB0_32:                               # %.sink.split
                                        #   in Loop: Header=BB0_34 Depth=2
	st.w	$fp, $a0, 12
	st.d	$zero, $a0, 16
	move	$s7, $a0
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=2
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB0_2
.LBB0_34:                               # %.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_64 Depth 3
                                        #         Child Loop BB0_65 Depth 4
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_59 Depth 3
	slli.d	$a0, $s6, 3
	ldx.d	$s8, $s8, $a0
	ld.h	$fp, $s8, 0
	blez	$fp, .LBB0_47
# %bb.35:                               # %.lr.ph359.preheader
                                        #   in Loop: Header=BB0_34 Depth=2
	move	$s5, $zero
	addi.d	$a0, $s8, 2
	ori	$a1, $zero, 1
	move	$a2, $fp
	.p2align	4, , 16
.LBB0_36:                               # %.lr.ph359
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a0, 0
	slt	$a3, $s4, $a3
	sltui	$a4, $s5, 1
	masknez	$a5, $s5, $a4
	maskeqz	$a4, $a1, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a3
	maskeqz	$a5, $s5, $a3
	or	$s5, $a5, $a4
	masknez	$a4, $a1, $a3
	maskeqz	$a3, $s2, $a3
	or	$a3, $a3, $a4
	addi.w	$s2, $a3, 0
	addi.d	$a0, $a0, 2
	addi.d	$a2, $a2, -1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB0_36
# %bb.37:                               # %._crit_edge360
                                        #   in Loop: Header=BB0_34 Depth=2
	beqz	$s5, .LBB0_47
# %bb.38:                               #   in Loop: Header=BB0_34 Depth=2
	ori	$a0, $zero, 2
	blt	$s5, $a0, .LBB0_63
# %bb.39:                               #   in Loop: Header=BB0_34 Depth=2
	ld.h	$a0, $s8, 2
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.h	$a3, $s8, 4
	ld.w	$s0, $a2, 0
	bne	$s0, $a3, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_34 Depth=2
	ld.w	$s0, $a1, 0
	move	$a2, $a1
.LBB0_41:                               #   in Loop: Header=BB0_34 Depth=2
	ld.w	$s3, $a2, 8
	blt	$s4, $s0, .LBB0_45
.LBB0_42:                               # %._crit_edge371
                                        #   in Loop: Header=BB0_34 Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB0_61
# %bb.43:                               #   in Loop: Header=BB0_34 Depth=2
	st.d	$a0, $s7, 16
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_45 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$s3, $a1, $s3
	bge	$s4, $s0, .LBB0_42
.LBB0_45:                               # %.lr.ph370
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s0
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s0, $a2, 0
	bne	$s0, $a3, .LBB0_44
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=3
	ld.w	$s0, $a1, 0
	move	$a2, $a1
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_47:                               # %._crit_edge360.thread
                                        #   in Loop: Header=BB0_34 Depth=2
	ld.h	$a0, $s8, 2
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.h	$a3, $s8, 4
	ld.w	$s3, $a2, 0
	bne	$s3, $a3, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_34 Depth=2
	ld.w	$s3, $a1, 0
	move	$a2, $a1
.LBB0_49:                               #   in Loop: Header=BB0_34 Depth=2
	ld.w	$s0, $a2, 8
	blt	$s4, $s3, .LBB0_56
.LBB0_50:                               # %._crit_edge387
                                        #   in Loop: Header=BB0_34 Depth=2
	slli.d	$a0, $fp, 1
	ldx.h	$a0, $s8, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	alsl.d	$a3, $fp, $s8, 1
	ld.h	$a3, $a3, -2
	ld.w	$s5, $a2, 0
	bne	$s5, $a3, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_34 Depth=2
	ld.w	$s5, $a1, 0
	move	$a2, $a1
.LBB0_52:                               #   in Loop: Header=BB0_34 Depth=2
	ld.w	$fp, $a2, 8
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	blt	$s4, $s5, .LBB0_59
.LBB0_53:                               # %._crit_edge396
                                        #   in Loop: Header=BB0_34 Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB0_30
# %bb.54:                               #   in Loop: Header=BB0_34 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 16
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_56 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$s0, $a1, $s0
	bge	$s4, $s3, .LBB0_50
.LBB0_56:                               # %.lr.ph386
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s3
	slli.d	$a1, $s3, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s3, $a2, 0
	bne	$s3, $a3, .LBB0_55
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=3
	ld.w	$s3, $a1, 0
	move	$a2, $a1
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_58:                               #   in Loop: Header=BB0_59 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$fp, $a1, $fp
	bge	$s4, $s5, .LBB0_53
.LBB0_59:                               # %.lr.ph395
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s5
	slli.d	$a1, $s5, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s5, $a2, 0
	bne	$s5, $a3, .LBB0_58
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=3
	ld.w	$s5, $a1, 0
	move	$a2, $a1
	b	.LBB0_58
.LBB0_61:                               #   in Loop: Header=BB0_34 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 16
.LBB0_62:                               #   in Loop: Header=BB0_34 Depth=2
	slli.d	$a1, $s5, 1
	ldx.h	$a1, $s8, $a1
	st.w	$s0, $a0, 0
	st.w	$s3, $a0, 8
	st.w	$a1, $a0, 4
	st.w	$zero, $a0, 12
	st.d	$zero, $a0, 16
	move	$s7, $a0
.LBB0_63:                               #   in Loop: Header=BB0_34 Depth=2
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s7, $s8, 2
	move	$s3, $s5
.LBB0_64:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_65 Depth 4
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	slt	$a0, $s2, $s5
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	slli.d	$s0, $s5, 32
	alsl.d	$a1, $s5, $s7, 1
	sub.d	$a0, $a0, $s5
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB0_65:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        #       Parent Loop BB0_64 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $a0, -1
	beqz	$a0, .LBB0_70
# %bb.66:                               #   in Loop: Header=BB0_65 Depth=4
	ld.h	$a2, $a1, 0
	add.d	$s0, $s0, $a3
	addi.d	$a1, $a1, 2
	addi.w	$s3, $s3, 1
	blt	$s4, $a2, .LBB0_65
# %bb.67:                               #   in Loop: Header=BB0_64 Depth=3
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_64 Depth=3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
.LBB0_69:                               #   in Loop: Header=BB0_64 Depth=3
	st.d	$a0, $a1, 16
	slli.d	$a1, $s5, 1
	ldx.h	$a1, $s8, $a1
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	srai.d	$a2, $s0, 31
	ldx.h	$a2, $s8, $a2
	st.w	$a1, $a0, 0
	st.w	$a2, $a0, 4
	move	$s5, $s3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_70:                               #   in Loop: Header=BB0_34 Depth=2
	bge	$s2, $fp, .LBB0_78
# %bb.71:                               #   in Loop: Header=BB0_34 Depth=2
	slli.d	$a0, $fp, 1
	ldx.h	$a0, $s8, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	alsl.d	$a3, $fp, $s8, 1
	ld.h	$a3, $a3, -2
	ld.w	$s0, $a2, 0
	bne	$s0, $a3, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_34 Depth=2
	ld.w	$s0, $a1, 0
	move	$a2, $a1
.LBB0_73:                               #   in Loop: Header=BB0_34 Depth=2
	ld.w	$fp, $a2, 8
	blt	$s4, $s0, .LBB0_76
.LBB0_74:                               # %._crit_edge379
                                        #   in Loop: Header=BB0_34 Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s2, 1
	ldx.h	$a1, $s8, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a2, 16
	st.w	$a1, $a0, 0
	st.w	$zero, $a0, 8
	st.w	$s0, $a0, 4
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_75:                               #   in Loop: Header=BB0_76 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$fp, $a1, $fp
	bge	$s4, $s0, .LBB0_74
.LBB0_76:                               # %.lr.ph378
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s0
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s0, $a2, 0
	bne	$s0, $a3, .LBB0_75
# %bb.77:                               #   in Loop: Header=BB0_76 Depth=3
	ld.w	$s0, $a1, 0
	move	$a2, $a1
	b	.LBB0_75
.LBB0_78:                               #   in Loop: Header=BB0_34 Depth=2
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_33
.LBB0_79:                               # %._crit_edge434
	pcalau12i	$a0, %got_pc_hi20(netRoutes)
	ld.d	$a0, $a0, %got_pc_lo12(netRoutes)
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $s1
.LBB0_80:                               # %split
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.w	$s0, $a0, 8
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
.LBB0_81:
	ret
.Lfunc_end0:
	.size	procesnet, .Lfunc_end0-procesnet
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mergeSeg
.LCPI1_0:
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	0                               # 0x0
	.text
	.globl	mergeSeg
	.p2align	5
	.type	mergeSeg,@function
mergeSeg:                               # @mergeSeg
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$s1, $a0, %got_pc_lo12(netSegArray)
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ld.h	$a5, $a1, 0
	ori	$s2, $zero, 2
	blt	$a5, $s2, .LBB1_52
# %bb.1:                                # %.lr.ph.preheader
	ori	$fp, $zero, 1
	pcalau12i	$a2, %got_pc_hi20(numnodes)
	ld.d	$s3, $a2, %got_pc_lo12(numnodes)
	addi.w	$s0, $zero, -1
	ori	$s4, $zero, 9
	ori	$s5, $zero, 17
	ori	$s6, $zero, 0
	lu32i.d	$s6, 1
	move	$a6, $a5
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_2:                                # %joinSeg.exit57
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a5, $a4, -1
	st.h	$a5, $a1, 0
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$fp, $fp, -1
.LBB1_4:                                # %.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$fp, $fp, 1
	ext.w.h	$a6, $a5
	bge	$fp, $a6, .LBB1_52
.LBB1_5:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_22 Depth 2
                                        #       Child Loop BB1_24 Depth 3
                                        #     Child Loop BB1_48 Depth 2
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_34 Depth 2
                                        #     Child Loop BB1_38 Depth 2
                                        #       Child Loop BB1_40 Depth 3
	slli.d	$a3, $fp, 3
	ldx.d	$a2, $a0, $a3
	ld.h	$a7, $a2, 2
	ld.w	$a4, $s3, 0
	bge	$a4, $a7, .LBB1_11
# %bb.6:                                # %.preheader58.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	bstrpick.d	$a7, $a7, 15, 0
	slt	$t0, $fp, $a6
	masknez	$t1, $fp, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $t1
	sub.d	$a6, $a6, $fp
	alsl.d	$t0, $fp, $a0, 3
	addi.d	$t0, $t0, 8
	bstrpick.d	$t1, $a7, 15, 0
	move	$t2, $s0
	.p2align	4, , 16
.LBB1_7:                                # %.preheader58
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB1_11
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	move	$a7, $t2
	ld.d	$t2, $t0, 0
	ld.hu	$t3, $t2, 2
	beq	$t1, $t3, .LBB1_26
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=2
	ld.h	$t3, $t2, 0
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t2, $t3
	addi.d	$a6, $a6, -1
	addi.d	$t2, $a7, -1
	addi.d	$t0, $t0, 8
	bne	$t1, $t3, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_5 Depth=1
	ori	$a3, $zero, 1
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_11:                               # %.critedge
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.h	$a6, $a2, 0
	slli.d	$a7, $a6, 1
	ldx.h	$a7, $a2, $a7
	bge	$a4, $a7, .LBB1_4
# %bb.12:                               # %.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	bstrpick.d	$t0, $a6, 15, 0
	bstrpick.d	$t1, $a7, 15, 0
	ext.w.h	$a4, $a5
	slt	$a7, $a4, $fp
	masknez	$a4, $a4, $a7
	maskeqz	$a7, $fp, $a7
	or	$t2, $a7, $a4
	addi.d	$t3, $a3, 8
	move	$a3, $fp
	.p2align	4, , 16
.LBB1_13:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$t2, $a3, .LBB1_4
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=2
	ldx.d	$a4, $a0, $t3
	ld.h	$a7, $a4, 0
	slli.d	$t4, $a7, 1
	ldx.hu	$t5, $a4, $t4
	bstrpick.d	$t4, $t1, 15, 0
	bstrpick.d	$a7, $a7, 15, 0
	beq	$t4, $t5, .LBB1_28
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=2
	ld.hu	$t5, $a4, 2
	addi.d	$t3, $t3, 8
	addi.d	$a3, $a3, 1
	bne	$t4, $t5, .LBB1_13
# %bb.16:                               #   in Loop: Header=BB1_5 Depth=1
	ext.w.h	$a5, $a7
	blt	$a5, $s2, .LBB1_20
# %bb.17:                               # %.lr.ph71.i.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a5, $zero, 1
	ori	$a6, $zero, 4
	.p2align	4, , 16
.LBB1_18:                               # %.lr.ph71.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a7, $a2, 0
	ldx.h	$t0, $a4, $a6
	add.d	$a7, $a5, $a7
	slli.d	$a7, $a7, 32
	add.d	$a7, $a7, $s6
	srai.d	$a7, $a7, 31
	add.d	$a7, $a2, $a7
	st.h	$t0, $a7, -2
	ld.h	$a7, $a4, 0
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 2
	blt	$a5, $a7, .LBB1_18
# %bb.19:                               # %.loopexit60.i42.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.hu	$t0, $a2, 0
	bstrpick.d	$a7, $a7, 15, 0
.LBB1_20:                               # %.loopexit60.i42
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$a4, $a7, $t0
	addi.d	$a4, $a4, -1
	st.h	$a4, $a2, 0
	ld.h	$a2, $a1, 0
	bstrpick.d	$a4, $a2, 15, 0
	blt	$a3, $a2, .LBB1_22
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_21:                               # %.loopexit.i55
                                        #   in Loop: Header=BB1_22 Depth=2
	ext.w.h	$a2, $a4
	bge	$a3, $a2, .LBB1_2
.LBB1_22:                               # %.preheader.i45
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
	move	$a5, $a3
	addi.d	$a3, $a3, 1
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a0, $a2
	ld.h	$a6, $a2, 0
	bltz	$a6, .LBB1_21
# %bb.23:                               # %.lr.ph82.i49
                                        #   in Loop: Header=BB1_22 Depth=2
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a0, $a4
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB1_24:                               #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$a7, $a2, $a5
	stx.h	$a7, $a4, $a5
	ld.h	$a7, $a2, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	blt	$a6, $a7, .LBB1_24
# %bb.25:                               # %.loopexit.loopexit.i53
                                        #   in Loop: Header=BB1_22 Depth=2
	ld.hu	$a4, $a1, 0
	b	.LBB1_21
.LBB1_26:                               #   in Loop: Header=BB1_5 Depth=1
	move	$a3, $s0
.LBB1_27:                               #   in Loop: Header=BB1_5 Depth=1
	sub.w	$a2, $fp, $a7
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(joinSeg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ld.hu	$a5, $a1, 0
	b	.LBB1_3
.LBB1_28:                               #   in Loop: Header=BB1_5 Depth=1
	ext.w.h	$a5, $a7
	blt	$a5, $s2, .LBB1_36
# %bb.29:                               # %iter.check
                                        #   in Loop: Header=BB1_5 Depth=1
	bstrpick.d	$t1, $a7, 15, 0
	bltu	$t1, $s4, .LBB1_32
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$t2, $a6, $a2, 1
	addi.d	$a5, $t2, 2
	alsl.d	$t3, $a7, $a4, 1
	bgeu	$a5, $t3, .LBB1_42
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$a5, $a7, $t2, 1
	addi.d	$t0, $a4, 2
	bgeu	$t0, $a5, .LBB1_42
.LBB1_32:                               #   in Loop: Header=BB1_5 Depth=1
	move	$t2, $a6
	move	$t3, $a7
.LBB1_33:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$a5, $t2, $a2, 1
	addi.d	$a5, $a5, 2
	addi.d	$a6, $t3, 1
	alsl.d	$a7, $t3, $a4, 1
	addi.d	$a7, $a7, -2
	.p2align	4, , 16
.LBB1_34:                               # %.lr.ph.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t0, $a7, 0
	st.h	$t0, $a5, 0
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -2
	bltu	$s2, $a6, .LBB1_34
.LBB1_35:                               # %.loopexit60.i.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.hu	$a7, $a4, 0
	ld.hu	$t0, $a2, 0
.LBB1_36:                               # %.loopexit60.i
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$a4, $a7, $t0
	addi.d	$a4, $a4, -1
	st.h	$a4, $a2, 0
	ld.h	$a5, $a1, 0
	addi.d	$a2, $a3, 1
	bstrpick.d	$a4, $a5, 15, 0
	blt	$a2, $a5, .LBB1_38
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_37:                               # %.loopexit.i
                                        #   in Loop: Header=BB1_38 Depth=2
	ext.w.h	$a3, $a4
	bge	$a2, $a3, .LBB1_2
.LBB1_38:                               # %.preheader.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_40 Depth 3
	move	$a5, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	ld.h	$a6, $a3, 0
	bltz	$a6, .LBB1_37
# %bb.39:                               # %.lr.ph82.i
                                        #   in Loop: Header=BB1_38 Depth=2
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a0, $a4
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB1_40:                               #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$a7, $a3, $a5
	stx.h	$a7, $a4, $a5
	ld.h	$a7, $a3, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	blt	$a6, $a7, .LBB1_40
# %bb.41:                               # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB1_38 Depth=2
	ld.hu	$a4, $a1, 0
	b	.LBB1_37
.LBB1_42:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a5, $a7, -1
	pcalau12i	$t0, %pc_hi20(.LCPI1_0)
	bgeu	$t1, $s5, .LBB1_47
# %bb.43:                               #   in Loop: Header=BB1_5 Depth=1
	move	$t1, $zero
.LBB1_44:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$t4, $a5
	bstrins.d	$t4, $zero, 2, 0
	add.d	$t2, $t4, $a6
	sub.d	$t3, $a7, $t4
	slli.d	$t5, $t1, 1
	alsl.d	$a6, $a6, $t5, 1
	add.d	$a6, $a2, $a6
	addi.d	$a6, $a6, 2
	sub.d	$t5, $a4, $t5
	alsl.d	$a7, $a7, $t5, 1
	addi.d	$a7, $a7, -16
	sub.d	$t1, $t1, $t4
	.p2align	4, , 16
.LBB1_45:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a7, 0
	vld	$vr1, $t0, %pc_lo12(.LCPI1_0)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $a6, 0
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, 8
	addi.d	$a7, $a7, -16
	bnez	$t1, .LBB1_45
# %bb.46:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_5 Depth=1
	bne	$a5, $t4, .LBB1_33
	b	.LBB1_35
.LBB1_47:                               # %vector.ph
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$t1, $a5
	bstrins.d	$t1, $zero, 3, 0
	addi.d	$t2, $t2, 18
	addi.d	$t3, $t3, -16
	move	$t4, $t1
	.p2align	4, , 16
.LBB1_48:                               # %vector.body
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, %pc_lo12(.LCPI1_0)
	vld	$vr1, $t3, 0
	vld	$vr2, $t3, -16
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr0, $vr1
	vshuf.h	$vr0, $vr0, $vr2
	vst	$vr3, $t2, -16
	vst	$vr0, $t2, 0
	addi.d	$t2, $t2, 32
	addi.d	$t4, $t4, -16
	addi.d	$t3, $t3, -32
	bnez	$t4, .LBB1_48
# %bb.49:                               # %middle.block
                                        #   in Loop: Header=BB1_5 Depth=1
	beq	$a5, $t1, .LBB1_35
# %bb.50:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_5 Depth=1
	andi	$t2, $a5, 8
	bnez	$t2, .LBB1_44
# %bb.51:                               #   in Loop: Header=BB1_5 Depth=1
	add.d	$t2, $t1, $a6
	sub.d	$t3, $a7, $t1
	b	.LBB1_33
.LBB1_52:                               # %._crit_edge
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	mergeSeg, .Lfunc_end1-mergeSeg
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function joinSeg
.LCPI2_0:
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	0                               # 0x0
	.text
	.globl	joinSeg
	.p2align	5
	.type	joinSeg,@function
joinSeg:                                # @joinSeg
# %bb.0:
	slli.d	$a4, $a0, 3
	bltz	$a1, .LBB2_9
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(netSegArray)
	ld.d	$a1, $a1, %got_pc_lo12(netSegArray)
	ld.d	$a1, $a1, 0
	bltz	$a3, .LBB2_16
# %bb.2:
	slli.d	$a0, $a2, 3
	ldx.d	$a5, $a1, $a0
	ld.h	$a3, $a5, 0
	ori	$a0, $zero, 2
	blt	$a3, $a0, .LBB2_46
# %bb.3:                                # %iter.check
	ldx.d	$a0, $a1, $a4
	ld.h	$a7, $a0, 0
	bstrpick.d	$a6, $a3, 15, 0
	ori	$a3, $zero, 9
	bltu	$a6, $a3, .LBB2_6
# %bb.4:                                # %vector.memcheck
	alsl.d	$t2, $a7, $a0, 1
	addi.d	$a3, $t2, 2
	alsl.d	$t3, $a6, $a5, 1
	bgeu	$a3, $t3, .LBB2_22
# %bb.5:                                # %vector.memcheck
	alsl.d	$a3, $a6, $t2, 1
	addi.d	$t0, $a5, 2
	bgeu	$t0, $a3, .LBB2_22
.LBB2_6:
	move	$t2, $a7
	move	$t3, $a6
.LBB2_7:                                # %.lr.ph.preheader
	alsl.d	$a0, $t2, $a0, 1
	addi.d	$a0, $a0, 2
	addi.d	$a3, $t3, 1
	slli.d	$a6, $t3, 1
	addi.d	$a6, $a6, -2
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB2_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$t0, $a5, $a6
	st.h	$t0, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, -2
	bltu	$a7, $a3, .LBB2_8
	b	.LBB2_46
.LBB2_9:
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$a0, $a0, %got_pc_lo12(netSegArray)
	ld.d	$a1, $a0, 0
	ldx.d	$a0, $a1, $a4
	ld.h	$a7, $a0, 0
	blez	$a7, .LBB2_12
# %bb.10:                               # %.lr.ph73
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a1, $a5
	alsl.d	$a6, $a7, $a0, 1
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $a5, 0
	move	$t2, $a7
	ld.h	$a7, $a6, 0
	add.d	$t1, $t2, $t1
	slli.d	$t1, $t1, 32
	srai.d	$t1, $t1, 31
	add.d	$t1, $a0, $t1
	st.h	$a7, $t1, -2
	addi.d	$a7, $t2, -1
	addi.d	$a6, $a6, -2
	bltu	$t0, $t2, .LBB2_11
.LBB2_12:                               # %._crit_edge
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a1, $a5
	ld.hu	$a6, $a5, 0
	bltz	$a3, .LBB2_19
# %bb.13:                               # %.preheader61
	ext.w.h	$a6, $a6
	ori	$a3, $zero, 2
	blt	$a6, $a3, .LBB2_46
# %bb.14:                               # %.lr.ph75.preheader
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB2_15:                               # %.lr.ph75
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a7, $a5, $a3
	stx.h	$a7, $a0, $a3
	ld.h	$a7, $a5, 0
	addi.d	$a6, $a6, 1
	addi.d	$a3, $a3, 2
	blt	$a6, $a7, .LBB2_15
	b	.LBB2_46
.LBB2_16:                               # %.preheader63
	slli.d	$a3, $a2, 3
	ldx.d	$a5, $a1, $a3
	ld.h	$a3, $a5, 0
	ori	$a6, $zero, 2
	blt	$a3, $a6, .LBB2_46
# %bb.17:                               # %.lr.ph71
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ori	$a3, $zero, 4
	.p2align	4, , 16
.LBB2_18:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a7, $a0, 0
	move	$t0, $a6
	ldx.h	$a6, $a5, $a3
	add.d	$a7, $t0, $a7
	slli.d	$a7, $a7, 32
	srai.d	$a7, $a7, 31
	add.d	$a7, $a0, $a7
	st.h	$a6, $a7, -2
	ld.h	$a7, $a5, 0
	addi.d	$a6, $t0, 1
	addi.d	$a3, $a3, 2
	blt	$t0, $a7, .LBB2_18
	b	.LBB2_46
.LBB2_19:
	ext.w.h	$a3, $a6
	ori	$a7, $zero, 2
	blt	$a3, $a7, .LBB2_46
# %bb.20:                               # %iter.check147
	ori	$a3, $zero, 9
	ori	$a7, $zero, 1
	bgeu	$a6, $a3, .LBB2_27
# %bb.21:
	move	$t1, $a6
	b	.LBB2_44
.LBB2_22:                               # %vector.main.loop.iter.check
	addi.d	$a3, $a6, -1
	ori	$t1, $zero, 17
	pcalau12i	$t0, %pc_hi20(.LCPI2_0)
	bgeu	$a6, $t1, .LBB2_34
# %bb.23:
	move	$t1, $zero
.LBB2_24:                               # %vec.epilog.ph
	move	$t4, $a3
	bstrins.d	$t4, $zero, 2, 0
	add.d	$t2, $t4, $a7
	sub.d	$t3, $a6, $t4
	slli.d	$t5, $t1, 1
	alsl.d	$a7, $a7, $t5, 1
	add.d	$a7, $a7, $a0
	addi.d	$a7, $a7, 2
	slli.d	$a6, $a6, 1
	vld	$vr0, $t0, %pc_lo12(.LCPI2_0)
	sub.d	$a6, $a6, $t5
	addi.d	$a6, $a6, -16
	sub.d	$t0, $t1, $t4
	.p2align	4, , 16
.LBB2_25:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $a5, $a6
	vori.b	$vr2, $vr0, 0
	vshuf.h	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, -16
	bnez	$t0, .LBB2_25
# %bb.26:                               # %vec.epilog.middle.block
	bne	$a3, $t4, .LBB2_7
	b	.LBB2_46
.LBB2_27:                               # %vector.memcheck137
	addi.d	$a3, $a0, 2
	alsl.d	$t2, $a6, $a5, 1
	addi.d	$t0, $t2, 2
	bgeu	$a3, $t0, .LBB2_29
# %bb.28:                               # %vector.memcheck137
	alsl.d	$a3, $a6, $a0, 1
	addi.d	$t0, $a5, 4
	move	$t1, $a6
	bltu	$t0, $a3, .LBB2_44
.LBB2_29:                               # %vector.main.loop.iter.check149
	ori	$a7, $zero, 17
	addi.d	$a3, $a6, -1
	bgeu	$a6, $a7, .LBB2_39
# %bb.30:
	move	$t0, $zero
.LBB2_31:                               # %vec.epilog.ph164
	move	$t2, $a3
	bstrins.d	$t2, $zero, 2, 0
	ori	$t1, $zero, 1
	move	$a7, $a3
	bstrins.d	$a7, $t1, 2, 0
	sub.d	$t1, $a6, $t2
	slli.d	$t4, $t0, 1
	alsl.d	$t3, $t0, $a0, 1
	addi.d	$t3, $t3, 2
	sub.d	$t0, $t0, $t2
	pcalau12i	$t5, %pc_hi20(.LCPI2_0)
	vld	$vr0, $t5, %pc_lo12(.LCPI2_0)
	slli.d	$t5, $a6, 1
	sub.d	$t4, $t5, $t4
	addi.d	$t4, $t4, -14
	.p2align	4, , 16
.LBB2_32:                               # %vec.epilog.vector.body170
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $a5, $t4
	vori.b	$vr2, $vr0, 0
	vshuf.h	$vr2, $vr0, $vr1
	vst	$vr2, $t3, 0
	addi.d	$t3, $t3, 16
	addi.d	$t0, $t0, 8
	addi.d	$t4, $t4, -16
	bnez	$t0, .LBB2_32
# %bb.33:                               # %vec.epilog.middle.block177
	bne	$a3, $t2, .LBB2_44
	b	.LBB2_46
.LBB2_34:                               # %vector.ph
	move	$t1, $a3
	vld	$vr0, $t0, %pc_lo12(.LCPI2_0)
	bstrins.d	$t1, $zero, 3, 0
	addi.d	$t2, $t2, 18
	addi.d	$t3, $t3, -16
	move	$t4, $t1
	.p2align	4, , 16
.LBB2_35:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t3, 0
	vld	$vr2, $t3, -16
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr0, $vr1
	vori.b	$vr1, $vr0, 0
	vshuf.h	$vr1, $vr0, $vr2
	vst	$vr3, $t2, -16
	vst	$vr1, $t2, 0
	addi.d	$t2, $t2, 32
	addi.d	$t4, $t4, -16
	addi.d	$t3, $t3, -32
	bnez	$t4, .LBB2_35
# %bb.36:                               # %middle.block
	beq	$a3, $t1, .LBB2_46
# %bb.37:                               # %vec.epilog.iter.check
	andi	$t2, $a3, 8
	bnez	$t2, .LBB2_24
# %bb.38:
	add.d	$t2, $t1, $a7
	sub.d	$t3, $a6, $t1
	b	.LBB2_7
.LBB2_39:                               # %vector.ph150
	move	$t0, $a3
	pcalau12i	$a7, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI2_0)
	bstrins.d	$t0, $zero, 3, 0
	addi.d	$a7, $a0, 18
	addi.d	$t1, $t2, -14
	move	$t2, $t0
	.p2align	4, , 16
.LBB2_40:                               # %vector.body153
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t1, 0
	vld	$vr2, $t1, -16
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr0, $vr1
	vori.b	$vr1, $vr0, 0
	vshuf.h	$vr1, $vr0, $vr2
	vst	$vr3, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB2_40
# %bb.41:                               # %middle.block160
	beq	$a3, $t0, .LBB2_46
# %bb.42:                               # %vec.epilog.iter.check165
	andi	$a7, $a3, 8
	bnez	$a7, .LBB2_31
# %bb.43:
	addi.d	$a7, $t0, 1
	sub.d	$t1, $a6, $t0
.LBB2_44:                               # %.lr.ph79.preheader
	alsl.d	$a0, $a7, $a0, 1
	sub.d	$a3, $a6, $a7
	slli.d	$a6, $t1, 1
	.p2align	4, , 16
.LBB2_45:                               # %.lr.ph79
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a7, $a5, $a6
	st.h	$a7, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, -2
	bnez	$a3, .LBB2_45
.LBB2_46:                               # %.loopexit60
	ldx.d	$a3, $a1, $a4
	ld.h	$a4, $a5, 0
	ld.h	$a5, $a3, 0
	ld.d	$a0, $a1, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, -1
	st.h	$a4, $a3, 0
	ld.hu	$a4, $a0, 0
	ext.w.h	$a3, $a4
	bge	$a2, $a3, .LBB2_53
# %bb.47:
	addi.w	$a3, $zero, -1
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_48:                               # %.loopexit
                                        #   in Loop: Header=BB2_49 Depth=1
	ext.w.h	$a5, $a4
	bge	$a2, $a5, .LBB2_53
.LBB2_49:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_51 Depth 2
	move	$a6, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a1, $a5
	ld.h	$a7, $a5, 0
	bltz	$a7, .LBB2_48
# %bb.50:                               # %.lr.ph82
                                        #   in Loop: Header=BB2_49 Depth=1
	slli.d	$a4, $a6, 3
	ldx.d	$a4, $a1, $a4
	move	$a6, $zero
	move	$a7, $a3
	.p2align	4, , 16
.LBB2_51:                               #   Parent Loop BB2_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$t0, $a5, $a6
	stx.h	$t0, $a4, $a6
	ld.h	$t0, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 2
	blt	$a7, $t0, .LBB2_51
# %bb.52:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB2_49 Depth=1
	ld.hu	$a4, $a0, 0
	b	.LBB2_48
.LBB2_53:                               # %._crit_edge87
	addi.d	$a1, $a4, -1
	st.h	$a1, $a0, 0
	ret
.Lfunc_end2:
	.size	joinSeg, .Lfunc_end2-joinSeg
                                        # -- End function
	.type	netRoot,@object                 # @netRoot
	.comm	netRoot,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym netRoot
