	.file	"fmo.c"
	.text
	.globl	FmoInit                         # -- Begin function FmoInit
	.p2align	5
	.type	FmoInit,@function
FmoInit:                                # @FmoInit
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(FirstMBInSlice)
	addi.d	$a0, $a0, %pc_lo12(FirstMBInSlice)
	addi.w	$s8, $zero, -1
	st.d	$s8, $a0, 24
	st.d	$s8, $a0, 16
	lu12i.w	$s0, 3
	ori	$s5, $s0, 3052
	ldx.w	$a1, $fp, $s5
	ori	$s6, $s0, 3048
	ldx.w	$a2, $fp, $s6
	st.d	$s8, $a0, 8
	st.d	$s8, $a0, 0
	ld.w	$a3, $s1, 64
	mul.w	$a0, $a2, $a1
	pcalau12i	$s7, %pc_hi20(PicSizeInMapUnits)
	ori	$a1, $zero, 6
	st.w	$a0, $s7, %pc_lo12(PicSizeInMapUnits)
	bne	$a3, $a1, .LBB0_3
# %bb.1:
	ld.w	$a1, $s1, 172
	addi.w	$a1, $a1, 1
	beq	$a1, $a0, .LBB0_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB0_3:
	pcalau12i	$s4, %pc_hi20(MapUnitToSliceGroupMap)
	ld.d	$a0, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	beqz	$a0, .LBB0_5
# %bb.4:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_5:
	ld.wu	$s3, $s7, %pc_lo12(PicSizeInMapUnits)
	addi.w	$s2, $s3, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	beqz	$a0, .LBB0_88
# %bb.6:
	ld.w	$a2, $s1, 60
	beqz	$a2, .LBB0_21
# %bb.7:
	ld.w	$a1, $s1, 64
	ori	$a0, $zero, 6
	bltu	$a0, $a1, .LBB0_90
# %bb.8:
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_9:
	move	$a1, $zero
	addi.d	$a0, $s1, 68
	sltu	$a2, $zero, $s2
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB0_11 Depth=1
	ori	$a2, $zero, 1
	bgeu	$a1, $a3, .LBB0_22
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_15 Depth 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_22
# %bb.12:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_13:                               # %.preheader.i.i
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
	addi.w	$a4, $s2, 0
	bstrpick.d	$a3, $a2, 31, 0
	bgeu	$a1, $a4, .LBB0_17
# %bb.14:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_13 Depth=2
	move	$a4, $zero
	alsl.d	$a5, $a3, $a0, 2
	bstrpick.d	$a6, $a1, 31, 0
	.p2align	4, , 16
.LBB0_15:                               # %.lr.ph.i
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	add.d	$a3, $a3, $a6
	stx.b	$a2, $a3, $a4
	ld.wu	$a3, $a5, 0
	bgeu	$a4, $a3, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
	ld.wu	$s2, $s7, %pc_lo12(PicSizeInMapUnits)
	addi.d	$a4, $a4, 1
	add.d	$a7, $a6, $a4
	bltu	$a7, $s2, .LBB0_15
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               # %..critedge_crit_edge.i.i
                                        #   in Loop: Header=BB0_13 Depth=2
	ld.w	$s2, $s7, %pc_lo12(PicSizeInMapUnits)
.LBB0_19:                               # %.critedge.i.i
                                        #   in Loop: Header=BB0_13 Depth=2
	ld.w	$a4, $s1, 60
	addi.w	$a2, $a2, 1
	add.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	addi.w	$a3, $s2, 0
	bltu	$a4, $a2, .LBB0_10
# %bb.20:                               # %.critedge.i.i
                                        #   in Loop: Header=BB0_13 Depth=2
	bltu	$a1, $a3, .LBB0_13
	b	.LBB0_10
.LBB0_21:
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_22:                               # %FmoGenerateMapUnitToSliceGroupMap.exit
	pcalau12i	$s2, %pc_hi20(MBAmap)
	ld.d	$a0, $s2, %pc_lo12(MBAmap)
	beqz	$a0, .LBB0_24
# %bb.23:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_24:
	ori	$s3, $s0, 3060
	ldx.wu	$a0, $fp, $s3
	addi.w	$s1, $a0, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(MBAmap)
	beqz	$a0, .LBB0_89
# %bb.25:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 1148
	bnez	$a0, .LBB0_27
# %bb.26:
	ldptr.w	$a0, $fp, 15312
	beqz	$a0, .LBB0_31
.LBB0_27:
	beqz	$s1, .LBB0_30
# %bb.28:                               # %.lr.ph.i7.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_29:                               # %.lr.ph.i7
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	ldx.b	$a1, $a1, $a0
	ld.d	$a2, $s2, %pc_lo12(MBAmap)
	stx.b	$a1, $a2, $a0
	ldx.wu	$a1, $fp, $s3
	addi.d	$a0, $a0, 1
	bltu	$a0, $a1, .LBB0_29
.LBB0_30:                               # %FmoGenerateMBAmap.exit
	move	$a0, $zero
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB0_31:
	ld.w	$a0, $a1, 1152
	beqz	$a0, .LBB0_85
# %bb.32:                               # %.preheader28.i
	beqz	$s1, .LBB0_30
# %bb.33:                               # %.lr.ph33.i.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_34:                               # %.lr.ph33.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	srli.d	$a2, $a0, 1
	ldx.b	$a1, $a1, $a2
	ld.d	$a2, $s2, %pc_lo12(MBAmap)
	stx.b	$a1, $a2, $a0
	ldx.wu	$a1, $fp, $s3
	addi.d	$a0, $a0, 1
	bltu	$a0, $a1, .LBB0_34
	b	.LBB0_30
.LBB0_35:
	beqz	$s2, .LBB0_22
# %bb.36:                               # %.lr.ph.preheader.i.i
	ori	$a0, $s0, 3148
	ld.w	$a1, $s1, 168
	ldx.w	$a2, $fp, $a0
	move	$a0, $zero
	ld.w	$a3, $s1, 164
	addi.d	$a1, $a1, 1
	mul.w	$a1, $a1, $a2
	slt	$a2, $a1, $s2
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s2, $a2
	or	$a1, $a1, $a2
	sltui	$a2, $a3, 1
	sub.d	$a3, $s2, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_37:                               # %.lr.ph.i39.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $s1, 164
	sltu	$a4, $a0, $a1
	sub.d	$a5, $a2, $a3
	ld.d	$a6, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	stx.b	$a3, $a6, $a0
	ld.wu	$a3, $s7, %pc_lo12(PicSizeInMapUnits)
	addi.d	$a0, $a0, 1
	bltu	$a0, $a3, .LBB0_37
	b	.LBB0_22
.LBB0_38:
	beqz	$s2, .LBB0_42
# %bb.39:                               # %.lr.ph.i26.i.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_40:                               # %.lr.ph.i26.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $s1, 60
	ld.d	$a2, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	stx.b	$a1, $a2, $a0
	ld.wu	$a1, $s7, %pc_lo12(PicSizeInMapUnits)
	addi.d	$a0, $a0, 1
	bltu	$a0, $a1, .LBB0_40
# %bb.41:                               # %._crit_edge.i29.loopexit.i
	ld.w	$a2, $s1, 60
.LBB0_42:                               # %._crit_edge.i29.i
	addi.w	$a3, $a2, -1
	bltz	$a3, .LBB0_22
# %bb.43:                               # %.lr.ph44.i.i
	addi.d	$a0, $s1, 100
	addi.d	$a1, $s1, 132
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_44:                               # %.loopexit.i.i
                                        #   in Loop: Header=BB0_45 Depth=1
	addi.d	$a3, $a2, -1
	blez	$a2, .LBB0_22
.LBB0_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_47 Depth 2
                                        #       Child Loop BB0_48 Depth 3
	move	$a2, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a0, $a3
	ldx.w	$a6, $fp, $s6
	ldx.w	$a7, $a1, $a3
	div.wu	$a3, $a5, $a6
	div.wu	$a4, $a7, $a6
	bltu	$a4, $a3, .LBB0_44
# %bb.46:                               # %.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB0_45 Depth=1
	mul.d	$t0, $a3, $a6
	sub.w	$a5, $a5, $t0
	mul.d	$a6, $a4, $a6
	sub.w	$a6, $a7, $a6
	bltu	$a6, $a5, .LBB0_44
	.p2align	4, , 16
.LBB0_47:                               # %.preheader.i30.i
                                        #   Parent Loop BB0_45 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_48 Depth 3
	move	$a7, $a5
	.p2align	4, , 16
.LBB0_48:                               #   Parent Loop BB0_45 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$t0, $fp, $s6
	ld.d	$t1, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	mul.d	$t0, $t0, $a3
	add.d	$t0, $t0, $a7
	bstrpick.d	$t0, $t0, 31, 0
	addi.w	$a7, $a7, 1
	stx.b	$a2, $t1, $t0
	bgeu	$a6, $a7, .LBB0_48
# %bb.49:                               # %._crit_edge38.i.i
                                        #   in Loop: Header=BB0_47 Depth=2
	addi.w	$a3, $a3, 1
	bgeu	$a4, $a3, .LBB0_47
	b	.LBB0_44
.LBB0_50:
	beqz	$s2, .LBB0_22
# %bb.51:                               # %.lr.ph.i33.i.preheader
	ld.w	$a0, $s1, 168
	ori	$a1, $s0, 3148
	ldx.w	$a2, $fp, $a1
	move	$a1, $zero
	addi.d	$a0, $a0, 1
	mul.w	$a0, $a0, $a2
	slt	$a2, $a0, $s2
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s2, $a2
	or	$a0, $a0, $a2
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB0_52:                               # %.lr.ph.i33.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	stx.b	$a2, $a3, $a1
	ld.wu	$a3, $s7, %pc_lo12(PicSizeInMapUnits)
	addi.d	$a1, $a1, 1
	bltu	$a1, $a3, .LBB0_52
# %bb.53:                               # %._crit_edge.i36.i
	beqz	$a3, .LBB0_22
# %bb.54:                               # %.lr.ph86.preheader.i.i
	ld.w	$t4, $s1, 164
	ldx.w	$a2, $fp, $s5
	move	$a1, $zero
	ldx.w	$a3, $fp, $s6
	addi.w	$t5, $t4, -1
	sub.d	$a2, $a2, $t4
	bstrpick.d	$a5, $a2, 31, 1
	sub.d	$a3, $a3, $t4
	ld.d	$a2, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	bstrpick.d	$a7, $a3, 31, 1
	ori	$a3, $zero, 2
	ori	$a4, $zero, 1
	move	$t0, $a5
	move	$t2, $a7
	move	$t1, $a5
	move	$a6, $a7
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_57 Depth=1
	move	$t5, $zero
	slt	$a6, $a4, $t6
	masknez	$a7, $a4, $a6
	ld.w	$t4, $s1, 164
	maskeqz	$a6, $t6, $a6
	or	$a6, $a6, $a7
	addi.d	$a6, $a6, -1
	alsl.w	$t4, $t4, $s8, 1
	move	$a7, $a6
.LBB0_56:                               #   in Loop: Header=BB0_57 Depth=1
	ld.w	$t6, $s7, %pc_lo12(PicSizeInMapUnits)
	addi.d	$t3, $t3, -2
	sltui	$t3, $t3, 1
	add.w	$a1, $a1, $t3
	bgeu	$a1, $t6, .LBB0_22
.LBB0_57:                               # %.lr.ph86.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t3, $fp, $s6
	mul.d	$t3, $t3, $a5
	add.d	$t3, $t3, $a7
	bstrpick.d	$t6, $t3, 31, 0
	ldx.bu	$t3, $a2, $t6
	bne	$t3, $a3, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=1
	sltu	$t7, $a1, $a0
	xori	$t7, $t7, 1
	stx.b	$t7, $a2, $t6
	ld.d	$a2, $s4, %pc_lo12(MapUnitToSliceGroupMap)
.LBB0_59:                               #   in Loop: Header=BB0_57 Depth=1
	addi.w	$t6, $a7, 0
	bne	$t5, $s8, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_57 Depth=1
	addi.w	$t7, $a6, 0
	beq	$t6, $t7, .LBB0_55
.LBB0_61:                               #   in Loop: Header=BB0_57 Depth=1
	bne	$t5, $a4, .LBB0_64
# %bb.62:                               #   in Loop: Header=BB0_57 Depth=1
	addi.w	$t7, $t2, 0
	bne	$t6, $t7, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_57 Depth=1
	ldx.w	$t2, $fp, $s6
	move	$t5, $zero
	addi.w	$a7, $a7, 1
	addi.w	$t2, $t2, -1
	slt	$t4, $a7, $t2
	ld.w	$t6, $s1, 164
	masknez	$t2, $t2, $t4
	maskeqz	$a7, $a7, $t4
	or	$t2, $a7, $t2
	slli.d	$a7, $t6, 1
	sub.w	$t4, $a4, $a7
	move	$a7, $t2
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_64:                               #   in Loop: Header=BB0_57 Depth=1
	addi.w	$t6, $a5, 0
	bne	$t4, $s8, .LBB0_67
# %bb.65:                               #   in Loop: Header=BB0_57 Depth=1
	addi.w	$t7, $t1, 0
	bne	$t6, $t7, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_57 Depth=1
	move	$t4, $zero
	slt	$a5, $a4, $t6
	masknez	$t1, $a4, $a5
	ld.w	$t5, $s1, 164
	maskeqz	$a5, $t6, $a5
	or	$a5, $a5, $t1
	addi.d	$t1, $a5, -1
	slli.d	$a5, $t5, 1
	sub.w	$t5, $a4, $a5
	move	$a5, $t1
	b	.LBB0_56
.LBB0_67:                               #   in Loop: Header=BB0_57 Depth=1
	bne	$t4, $a4, .LBB0_70
# %bb.68:                               #   in Loop: Header=BB0_57 Depth=1
	addi.w	$t7, $t0, 0
	bne	$t6, $t7, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_57 Depth=1
	ldx.w	$t0, $fp, $s5
	move	$t4, $zero
	addi.w	$a5, $a5, 1
	addi.w	$t0, $t0, -1
	slt	$t5, $a5, $t0
	ld.w	$t6, $s1, 164
	masknez	$t0, $t0, $t5
	maskeqz	$a5, $a5, $t5
	or	$t0, $a5, $t0
	alsl.w	$t5, $t6, $s8, 1
	move	$a5, $t0
	b	.LBB0_56
.LBB0_70:                               #   in Loop: Header=BB0_57 Depth=1
	add.w	$a7, $a7, $t5
	add.w	$a5, $a5, $t4
	b	.LBB0_56
.LBB0_71:
	beqz	$s2, .LBB0_22
# %bb.72:                               # %.lr.ph.i.i.preheader
	move	$a0, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_73:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $fp, $s6
	ld.w	$a3, $s1, 60
	div.wu	$a4, $a0, $a2
	mul.d	$a2, $a4, $a2
	sub.d	$a2, $a0, $a2
	addi.d	$a3, $a3, 1
	addi.w	$a5, $a3, 0
	mul.d	$a3, $a3, $a4
	ld.d	$a4, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	bstrpick.d	$a3, $a3, 31, 1
	add.w	$a2, $a3, $a2
	mod.wu	$a2, $a2, $a5
	stx.b	$a2, $a4, $a1
	ld.wu	$a2, $s7, %pc_lo12(PicSizeInMapUnits)
	addi.d	$a1, $a1, 1
	addi.w	$a0, $a0, 1
	bltu	$a1, $a2, .LBB0_73
	b	.LBB0_22
.LBB0_74:
	ldptr.w	$a2, $fp, 15336
	beqz	$a2, .LBB0_22
# %bb.75:                               # %.preheader.lr.ph.i44.i
	ldptr.w	$a0, $fp, 15340
	beqz	$a0, .LBB0_22
# %bb.76:                               # %.preheader.i45.i.preheader
	ld.w	$a3, $s1, 168
	ori	$a0, $s0, 3148
	ldx.w	$a4, $fp, $a0
	move	$a0, $zero
	move	$a1, $zero
	addi.d	$a3, $a3, 1
	mul.w	$a3, $a3, $a4
	slt	$a4, $a3, $s2
	ld.w	$a5, $s1, 164
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $s2, $a4
	or	$a3, $a3, $a4
	sltui	$a4, $a5, 1
	sub.w	$a5, $s2, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_77:                               #   in Loop: Header=BB0_78 Depth=1
	move	$a5, $zero
	addi.w	$a1, $a1, 1
	bgeu	$a1, $a2, .LBB0_22
.LBB0_78:                               # %.preheader.i45.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_80 Depth 2
	beqz	$a5, .LBB0_77
# %bb.79:                               # %.lr.ph.i46.i.preheader
                                        #   in Loop: Header=BB0_78 Depth=1
	move	$a6, $zero
	.p2align	4, , 16
.LBB0_80:                               # %.lr.ph.i46.i
                                        #   Parent Loop BB0_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $s1, 164
	add.w	$a5, $a0, $a6
	sltu	$a5, $a5, $a3
	sub.d	$a7, $a4, $a2
	masknez	$a7, $a7, $a5
	ldx.w	$t0, $fp, $s6
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a7
	ld.d	$a5, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	mul.d	$a7, $t0, $a6
	add.d	$a7, $a7, $a1
	bstrpick.d	$a7, $a7, 31, 0
	stx.b	$a2, $a5, $a7
	ldptr.w	$a5, $fp, 15340
	addi.w	$a6, $a6, 1
	bltu	$a6, $a5, .LBB0_80
# %bb.81:                               # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB0_78 Depth=1
	ldx.w	$a2, $fp, $s6
	add.d	$a0, $a0, $a6
	addi.w	$a1, $a1, 1
	bltu	$a1, $a2, .LBB0_78
	b	.LBB0_22
.LBB0_82:
	beqz	$s2, .LBB0_22
# %bb.83:                               # %.lr.ph.i51.i
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_84:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 176
	ldx.b	$a1, $a1, $a0
	ld.d	$a2, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	stx.b	$a1, $a2, $a0
	ld.wu	$a1, $s7, %pc_lo12(PicSizeInMapUnits)
	addi.d	$a0, $a0, 1
	bltu	$a0, $a1, .LBB0_84
	b	.LBB0_22
.LBB0_85:                               # %.preheader.i
	beqz	$s1, .LBB0_30
# %bb.86:                               # %.lr.ph35.i.preheader
	move	$a0, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_87:                               # %.lr.ph35.i
                                        # =>This Inner Loop Header: Depth=1
	ldptr.w	$a2, $fp, 15336
	ld.d	$a3, $s4, %pc_lo12(MapUnitToSliceGroupMap)
	slli.w	$a4, $a2, 1
	div.wu	$a4, $a0, $a4
	mul.d	$a4, $a4, $a2
	mod.wu	$a2, $a0, $a2
	add.d	$a2, $a4, $a2
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $a3, $a2
	ld.d	$a3, $s2, %pc_lo12(MBAmap)
	stx.b	$a2, $a3, $a1
	ldx.wu	$a2, $fp, $s3
	addi.d	$a1, $a1, 1
	addi.w	$a0, $a0, 1
	bltu	$a1, $a2, .LBB0_87
	b	.LBB0_30
.LBB0_88:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_89:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_90:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	FmoInit, .Lfunc_end0-FmoInit
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_71-.LJTI0_0
	.word	.LBB0_38-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_74-.LJTI0_0
	.word	.LBB0_82-.LJTI0_0
                                        # -- End function
	.text
	.globl	FmoUninit                       # -- Begin function FmoUninit
	.p2align	5
	.type	FmoUninit,@function
FmoUninit:                              # @FmoUninit
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(MBAmap)
	ld.d	$a0, $fp, %pc_lo12(MBAmap)
	beqz	$a0, .LBB1_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, %pc_lo12(MBAmap)
.LBB1_2:
	pcalau12i	$fp, %pc_hi20(MapUnitToSliceGroupMap)
	ld.d	$a0, $fp, %pc_lo12(MapUnitToSliceGroupMap)
	beqz	$a0, .LBB1_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, %pc_lo12(MapUnitToSliceGroupMap)
.LBB1_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	FmoUninit, .Lfunc_end1-FmoUninit
                                        # -- End function
	.globl	FmoStartPicture                 # -- Begin function FmoStartPicture
	.p2align	5
	.type	FmoStartPicture,@function
FmoStartPicture:                        # @FmoStartPicture
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 15348
	blez	$a1, .LBB2_34
# %bb.1:                                # %.lr.ph.i.us.preheader.preheader
	pcalau12i	$a0, %pc_hi20(MBAmap)
	ld.d	$a0, $a0, %pc_lo12(MBAmap)
	bstrpick.d	$a1, $a1, 31, 0
	move	$a3, $zero
	move	$a2, $a0
	move	$a4, $a1
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph.i.us.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a2, 0
	beqz	$a5, .LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 1
	bnez	$a4, .LBB2_2
# %bb.4:
	addi.d	$a3, $zero, -1
.LBB2_5:                                # %FmoGetFirstMBOfSliceGroup.exit.us
	pcalau12i	$a2, %pc_hi20(FirstMBInSlice)
	addi.d	$a2, $a2, %pc_lo12(FirstMBInSlice)
	move	$a4, $zero
	st.w	$a3, $a2, 0
	ori	$a3, $zero, 1
	move	$a5, $a0
	move	$a6, $a1
	.p2align	4, , 16
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	beq	$a7, $a3, .LBB2_9
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 1
	bnez	$a6, .LBB2_6
# %bb.8:
	addi.d	$a4, $zero, -1
.LBB2_9:                                # %FmoGetFirstMBOfSliceGroup.exit.us.1
	move	$a3, $zero
	st.w	$a4, $a2, 4
	ori	$a4, $zero, 2
	move	$a5, $a0
	move	$a6, $a1
	.p2align	4, , 16
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	beq	$a7, $a4, .LBB2_13
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 1
	bnez	$a6, .LBB2_10
# %bb.12:
	addi.d	$a3, $zero, -1
.LBB2_13:                               # %FmoGetFirstMBOfSliceGroup.exit.us.2
	move	$a4, $zero
	st.w	$a3, $a2, 8
	ori	$a3, $zero, 3
	move	$a5, $a0
	move	$a6, $a1
	.p2align	4, , 16
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	beq	$a7, $a3, .LBB2_17
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 1
	bnez	$a6, .LBB2_14
# %bb.16:
	addi.d	$a4, $zero, -1
.LBB2_17:                               # %FmoGetFirstMBOfSliceGroup.exit.us.3
	move	$a3, $zero
	st.w	$a4, $a2, 12
	ori	$a4, $zero, 4
	move	$a5, $a0
	move	$a6, $a1
	.p2align	4, , 16
.LBB2_18:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	beq	$a7, $a4, .LBB2_21
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 1
	bnez	$a6, .LBB2_18
# %bb.20:
	addi.d	$a3, $zero, -1
.LBB2_21:                               # %FmoGetFirstMBOfSliceGroup.exit.us.4
	move	$a4, $zero
	st.w	$a3, $a2, 16
	ori	$a3, $zero, 5
	move	$a5, $a0
	move	$a6, $a1
	.p2align	4, , 16
.LBB2_22:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	beq	$a7, $a3, .LBB2_25
# %bb.23:                               #   in Loop: Header=BB2_22 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 1
	bnez	$a6, .LBB2_22
# %bb.24:
	addi.d	$a4, $zero, -1
.LBB2_25:                               # %FmoGetFirstMBOfSliceGroup.exit.us.5
	move	$a3, $zero
	st.w	$a4, $a2, 20
	ori	$a4, $zero, 6
	move	$a5, $a0
	move	$a6, $a1
	.p2align	4, , 16
.LBB2_26:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	beq	$a7, $a4, .LBB2_29
# %bb.27:                               #   in Loop: Header=BB2_26 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 1
	bnez	$a6, .LBB2_26
# %bb.28:
	addi.d	$a3, $zero, -1
.LBB2_29:                               # %FmoGetFirstMBOfSliceGroup.exit.us.6
	move	$a4, $zero
	st.w	$a3, $a2, 24
	ori	$a3, $zero, 7
	.p2align	4, , 16
.LBB2_30:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a0, 0
	beq	$a5, $a3, .LBB2_33
# %bb.31:                               #   in Loop: Header=BB2_30 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB2_30
# %bb.32:
	addi.d	$a4, $zero, -1
.LBB2_33:                               # %FmoGetFirstMBOfSliceGroup.exit.us.7
	st.w	$a4, $a2, 28
	move	$a0, $zero
	ret
.LBB2_34:                               # %FmoGetFirstMBOfSliceGroup.exit.preheader
	pcalau12i	$a0, %pc_hi20(FirstMBInSlice)
	addi.d	$a0, $a0, %pc_lo12(FirstMBInSlice)
	addi.w	$a1, $zero, -1
	st.d	$a1, $a0, 24
	st.d	$a1, $a0, 16
	st.d	$a1, $a0, 8
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	FmoStartPicture, .Lfunc_end2-FmoStartPicture
                                        # -- End function
	.globl	FmoGetFirstMBOfSliceGroup       # -- Begin function FmoGetFirstMBOfSliceGroup
	.p2align	5
	.type	FmoGetFirstMBOfSliceGroup,@function
FmoGetFirstMBOfSliceGroup:              # @FmoGetFirstMBOfSliceGroup
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 15348
	addi.w	$a0, $zero, -1
	blez	$a2, .LBB3_4
# %bb.1:                                # %.lr.ph
	pcalau12i	$a3, %pc_hi20(MBAmap)
	ld.d	$a3, $a3, %pc_lo12(MBAmap)
	move	$a4, $zero
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a3, 0
	beq	$a1, $a5, .LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB3_2
.LBB3_4:                                # %.critedge
	ret
.LBB3_5:
	move	$a0, $a4
	ret
.Lfunc_end3:
	.size	FmoGetFirstMBOfSliceGroup, .Lfunc_end3-FmoGetFirstMBOfSliceGroup
                                        # -- End function
	.globl	FmoEndPicture                   # -- Begin function FmoEndPicture
	.p2align	5
	.type	FmoEndPicture,@function
FmoEndPicture:                          # @FmoEndPicture
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	FmoEndPicture, .Lfunc_end4-FmoEndPicture
                                        # -- End function
	.globl	FmoMB2SliceGroup                # -- Begin function FmoMB2SliceGroup
	.p2align	5
	.type	FmoMB2SliceGroup,@function
FmoMB2SliceGroup:                       # @FmoMB2SliceGroup
# %bb.0:
	pcalau12i	$a1, %pc_hi20(MBAmap)
	ld.d	$a1, $a1, %pc_lo12(MBAmap)
	ldx.bu	$a0, $a1, $a0
	ret
.Lfunc_end5:
	.size	FmoMB2SliceGroup, .Lfunc_end5-FmoMB2SliceGroup
                                        # -- End function
	.globl	FmoGetNextMBNr                  # -- Begin function FmoGetNextMBNr
	.p2align	5
	.type	FmoGetNextMBNr,@function
FmoGetNextMBNr:                         # @FmoGetNextMBNr
# %bb.0:
	pcalau12i	$a1, %pc_hi20(MBAmap)
	ld.d	$a1, $a1, %pc_lo12(MBAmap)
	ldx.bu	$a2, $a1, $a0
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ldptr.w	$a3, $a3, 15348
	addi.d	$a5, $a0, 1
	addi.w	$a4, $zero, -1
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	bge	$a5, $a3, .LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	ldx.bu	$a6, $a1, $a5
	addi.w	$a0, $a0, 1
	addi.d	$a5, $a5, 1
	bne	$a2, $a6, .LBB6_1
# %bb.3:                                # %.critedge
	ret
.LBB6_4:
	move	$a0, $a4
	ret
.Lfunc_end6:
	.size	FmoGetNextMBNr, .Lfunc_end6-FmoGetNextMBNr
                                        # -- End function
	.globl	FmoGetPreviousMBNr              # -- Begin function FmoGetPreviousMBNr
	.p2align	5
	.type	FmoGetPreviousMBNr,@function
FmoGetPreviousMBNr:                     # @FmoGetPreviousMBNr
# %bb.0:
	pcalau12i	$a1, %pc_hi20(MBAmap)
	ld.d	$a1, $a1, %pc_lo12(MBAmap)
	ldx.bu	$a3, $a1, $a0
	addi.w	$a2, $zero, -1
	.p2align	4, , 16
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	blez	$a0, .LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	addi.w	$a0, $a0, -1
	ldx.bu	$a4, $a1, $a0
	bne	$a3, $a4, .LBB7_1
# %bb.3:                                # %.critedge
	ret
.LBB7_4:
	move	$a0, $a2
	ret
.Lfunc_end7:
	.size	FmoGetPreviousMBNr, .Lfunc_end7-FmoGetPreviousMBNr
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function FmoGetLastCodedMBOfSliceGroup
.LCPI8_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	FmoGetLastCodedMBOfSliceGroup
	.p2align	5
	.type	FmoGetLastCodedMBOfSliceGroup,@function
FmoGetLastCodedMBOfSliceGroup:          # @FmoGetLastCodedMBOfSliceGroup
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.w	$a2, $a1, 15348
	blez	$a2, .LBB8_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(MBAmap)
	ld.d	$a3, $a1, %pc_lo12(MBAmap)
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB8_4
# %bb.2:
	move	$a1, $zero
	addi.d	$a4, $zero, -1
	b	.LBB8_7
.LBB8_3:
	addi.d	$a4, $zero, -1
	addi.w	$a0, $a4, 0
	ret
.LBB8_4:                                # %vector.ph
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a4, %pc_hi20(.LCPI8_0)
	vld	$vr1, $a4, %pc_lo12(.LCPI8_0)
	addi.d	$a4, $a3, 4
	vldi	$vr2, -3200
	vrepli.b	$vr3, 0
	move	$a5, $a1
	vldi	$vr4, -3200
	.p2align	4, , 16
.LBB8_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, -4
	ld.w	$a7, $a4, 0
	vinsgr2vr.w	$vr5, $a6, 0
	vaddi.wu	$vr6, $vr1, 4
	vinsgr2vr.w	$vr7, $a7, 0
	vilvl.b	$vr5, $vr3, $vr5
	vilvl.h	$vr5, $vr3, $vr5
	vilvl.b	$vr7, $vr3, $vr7
	vilvl.h	$vr7, $vr3, $vr7
	vseq.w	$vr5, $vr0, $vr5
	vseq.w	$vr7, $vr0, $vr7
	vbitsel.v	$vr2, $vr2, $vr1, $vr5
	vbitsel.v	$vr4, $vr4, $vr6, $vr7
	vaddi.wu	$vr1, $vr1, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB8_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr2, $vr4
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a4, $vr0, 0
	lu12i.w	$a5, -524288
	xor	$a5, $a4, $a5
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	addi.d	$a6, $zero, -1
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	beq	$a1, $a2, .LBB8_9
.LBB8_7:                                # %scalar.ph.preheader
	add.d	$a3, $a3, $a1
	sub.d	$a2, $a2, $a1
	.p2align	4, , 16
.LBB8_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a3, 0
	xor	$a5, $a0, $a5
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a1, $a5
	or	$a4, $a5, $a4
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB8_8
.LBB8_9:                                # %._crit_edge
	addi.w	$a0, $a4, 0
	ret
.Lfunc_end8:
	.size	FmoGetLastCodedMBOfSliceGroup, .Lfunc_end8-FmoGetLastCodedMBOfSliceGroup
                                        # -- End function
	.globl	FmoSetLastMacroblockInSlice     # -- Begin function FmoSetLastMacroblockInSlice
	.p2align	5
	.type	FmoSetLastMacroblockInSlice,@function
FmoSetLastMacroblockInSlice:            # @FmoSetLastMacroblockInSlice
# %bb.0:
	pcalau12i	$a1, %pc_hi20(MBAmap)
	ld.d	$a2, $a1, %pc_lo12(MBAmap)
	ldx.bu	$a1, $a2, $a0
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ldptr.w	$a3, $a3, 15348
	addi.d	$a4, $a0, 1
	.p2align	4, , 16
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	bge	$a4, $a3, .LBB9_3
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	ldx.bu	$a5, $a2, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 1
	bne	$a1, $a5, .LBB9_1
	b	.LBB9_4
.LBB9_3:
	addi.d	$a0, $zero, -1
.LBB9_4:                                # %FmoGetNextMBNr.exit
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(FirstMBInSlice)
	addi.d	$a2, $a2, %pc_lo12(FirstMBInSlice)
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end9:
	.size	FmoSetLastMacroblockInSlice, .Lfunc_end9-FmoSetLastMacroblockInSlice
                                        # -- End function
	.globl	FmoGetFirstMacroblockInSlice    # -- Begin function FmoGetFirstMacroblockInSlice
	.p2align	5
	.type	FmoGetFirstMacroblockInSlice,@function
FmoGetFirstMacroblockInSlice:           # @FmoGetFirstMacroblockInSlice
# %bb.0:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(FirstMBInSlice)
	addi.d	$a1, $a1, %pc_lo12(FirstMBInSlice)
	ldx.w	$a0, $a1, $a0
	ret
.Lfunc_end10:
	.size	FmoGetFirstMacroblockInSlice, .Lfunc_end10-FmoGetFirstMacroblockInSlice
                                        # -- End function
	.globl	FmoSliceGroupCompletelyCoded    # -- Begin function FmoSliceGroupCompletelyCoded
	.p2align	5
	.type	FmoSliceGroupCompletelyCoded,@function
FmoSliceGroupCompletelyCoded:           # @FmoSliceGroupCompletelyCoded
# %bb.0:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(FirstMBInSlice)
	addi.d	$a1, $a1, %pc_lo12(FirstMBInSlice)
	ldx.wu	$a0, $a1, $a0
	srli.d	$a0, $a0, 31
	ret
.Lfunc_end11:
	.size	FmoSliceGroupCompletelyCoded, .Lfunc_end11-FmoSliceGroupCompletelyCoded
                                        # -- End function
	.type	MBAmap,@object                  # @MBAmap
	.bss
	.globl	MBAmap
	.p2align	3, 0x0
MBAmap:
	.dword	0
	.size	MBAmap, 8

	.type	MapUnitToSliceGroupMap,@object  # @MapUnitToSliceGroupMap
	.globl	MapUnitToSliceGroupMap
	.p2align	3, 0x0
MapUnitToSliceGroupMap:
	.dword	0
	.size	MapUnitToSliceGroupMap, 8

	.type	FirstMBInSlice,@object          # @FirstMBInSlice
	.local	FirstMBInSlice
	.comm	FirstMBInSlice,32,8
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	PicSizeInMapUnits,@object       # @PicSizeInMapUnits
	.comm	PicSizeInMapUnits,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6"
	.size	.L.str, 68

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\n"
	.size	.L.str.1, 60

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Illegal slice_group_map_type %d , exit \n"
	.size	.L.str.2, 41

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"cannot allocated %d bytes for MBAmap, exit\n"
	.size	.L.str.3, 44

	.section	".note.GNU-stack","",@progbits
	.addrsig
