	.file	"ggenorien.c"
	.text
	.globl	ggenorien                       # -- Begin function ggenorien
	.p2align	5
	.type	ggenorien,@function
ggenorien:                              # @ggenorien
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	add.w	$a2, $a1, $a0
	blez	$a2, .LBB0_98
# %bb.1:                                # %.lr.ph328.preheader
	ori	$a4, $zero, 1
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a5, $a2, %got_pc_lo12(cellarray)
	vrepli.d	$vr0, 1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit305.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ori	$a4, $zero, 1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
.LBB0_3:                                # %.loopexit305
                                        #   in Loop: Header=BB0_4 Depth=1
	add.w	$a3, $a1, $a0
	addi.d	$a2, $a6, 1
	bge	$a6, $a3, .LBB0_98
.LBB0_4:                                # %.lr.ph328
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_27 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_64 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	ld.d	$a3, $a5, 0
	move	$a6, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$s6, $a3, $a2
	ld.w	$a2, $s6, 68
	beqz	$a2, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a2, $s6, 76
	beq	$a2, $a4, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $s6, 152
	ld.w	$s5, $a0, 68
	ld.w	$s1, $a0, 64
	ld.w	$s2, $a0, 60
	ld.d	$a1, $s6, 160
	ld.w	$s0, $a0, 56
	beqz	$a1, .LBB0_12
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a1, 88
	st.d	$zero, $a1, 88
	beqz	$a0, .LBB0_12
# %bb.8:                                # %.preheader304
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$a0, $fp
	bnez	$a1, .LBB0_9
	b	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	move	$fp, $a0
.LBB0_11:                               # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s6, 168
	beqz	$a1, .LBB0_18
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a1, 88
	st.d	$zero, $a1, 88
	beqz	$a0, .LBB0_18
# %bb.14:                               # %.preheader304.1
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_16
	.p2align	4, , 16
.LBB0_15:                               # %.lr.ph.1
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$a0, $fp
	bnez	$a1, .LBB0_15
	b	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	move	$fp, $a0
.LBB0_17:                               # %._crit_edge.1
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s6, 176
	beqz	$a1, .LBB0_24
# %bb.19:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a1, 88
	st.d	$zero, $a1, 88
	beqz	$a0, .LBB0_24
# %bb.20:                               # %.preheader304.2
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %.lr.ph.2
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$a0, $fp
	bnez	$a1, .LBB0_21
	b	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_4 Depth=1
	move	$fp, $a0
.LBB0_23:                               # %._crit_edge.2
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_24:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s6, 184
	beqz	$a1, .LBB0_30
# %bb.25:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a1, 88
	st.d	$zero, $a1, 88
	beqz	$a0, .LBB0_30
# %bb.26:                               # %.preheader304.3
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_28
	.p2align	4, , 16
.LBB0_27:                               # %.lr.ph.3
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$a0, $fp
	bnez	$a1, .LBB0_27
	b	.LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_4 Depth=1
	move	$fp, $a0
.LBB0_29:                               # %._crit_edge.3
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_30:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s6, 192
	beqz	$a1, .LBB0_36
# %bb.31:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a1, 88
	st.d	$zero, $a1, 88
	beqz	$a0, .LBB0_36
# %bb.32:                               # %.preheader304.4
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %.lr.ph.4
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$a0, $fp
	bnez	$a1, .LBB0_33
	b	.LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_4 Depth=1
	move	$fp, $a0
.LBB0_35:                               # %._crit_edge.4
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_36:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s6, 200
	beqz	$a1, .LBB0_42
# %bb.37:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a1, 88
	st.d	$zero, $a1, 88
	beqz	$a0, .LBB0_42
# %bb.38:                               # %.preheader304.5
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_40
	.p2align	4, , 16
.LBB0_39:                               # %.lr.ph.5
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$a0, $fp
	bnez	$a1, .LBB0_39
	b	.LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_4 Depth=1
	move	$fp, $a0
.LBB0_41:                               # %._crit_edge.5
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_42:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s6, 208
	beqz	$a1, .LBB0_48
# %bb.43:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a1, 88
	st.d	$zero, $a1, 88
	beqz	$a0, .LBB0_48
# %bb.44:                               # %.preheader304.6
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_46
	.p2align	4, , 16
.LBB0_45:                               # %.lr.ph.6
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$a0, $fp
	bnez	$a1, .LBB0_45
	b	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_4 Depth=1
	move	$fp, $a0
.LBB0_47:                               # %._crit_edge.6
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_48:                               #   in Loop: Header=BB0_4 Depth=1
	ld.w	$s4, $s6, 52
	addi.d	$a0, $s6, 152
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 7
	bltu	$a0, $s4, .LBB0_97
# %bb.49:                               #   in Loop: Header=BB0_4 Depth=1
	slli.d	$a0, $s4, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_50:                               #   in Loop: Header=BB0_4 Depth=1
	move	$fp, $s4
.LBB0_51:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	ld.d	$s3, $a0, 88
	sub.w	$s5, $s5, $s1
	sub.d	$s7, $s2, $s0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s4, 3
	ldx.d	$a1, $s8, $a1
	move	$s0, $a0
	st.d	$a0, $a1, 88
	vld	$vr0, $s3, 8
	st.d	$zero, $a0, 0
	addi.d	$s2, $s3, 8
	addi.d	$s1, $s3, 12
	vst	$vr0, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	andi	$a2, $fp, 13
	addi.d	$a0, $a2, -4
	sltui	$a0, $a0, 1
	and	$a0, $s5, $a0
	andi	$s4, $s7, 1
	andi	$a1, $fp, 14
	bnez	$a0, .LBB0_54
# %bb.52:                               #   in Loop: Header=BB0_4 Depth=1
	beqz	$s4, .LBB0_55
# %bb.53:                               #   in Loop: Header=BB0_4 Depth=1
	ori	$a3, $zero, 2
	bne	$a1, $a3, .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a3, $s2, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $s2, 0
	b	.LBB0_56
.LBB0_55:                               # %._crit_edge370
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a3, $s2, 0
.LBB0_56:                               #   in Loop: Header=BB0_4 Depth=1
	andi	$a4, $s5, 1
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	and	$s5, $a4, $a2
	st.w	$a3, $s3, 16
	beqz	$s5, .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a2, $s1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s1, 0
	b	.LBB0_61
.LBB0_58:                               #   in Loop: Header=BB0_4 Depth=1
	beqz	$s4, .LBB0_61
# %bb.59:                               #   in Loop: Header=BB0_4 Depth=1
	ori	$a2, $zero, 7
	beq	$fp, $a2, .LBB0_57
# %bb.60:                               #   in Loop: Header=BB0_4 Depth=1
	ori	$a2, $zero, 4
	beq	$fp, $a2, .LBB0_57
	.p2align	4, , 16
.LBB0_61:                               #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a2, $s3, 12
	ld.w	$a3, $s6, 68
	st.w	$a2, $s3, 20
	ori	$a2, $zero, 2
	bge	$a3, $a2, .LBB0_86
.LBB0_62:                               # %.loopexit306
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	vld	$vr0, $a0, 56
	addi.d	$a0, $s6, 20
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vshuf4i.w	$vr1, $vr0, 13
	vshuf4i.w	$vr0, $vr0, 8
	vsub.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a0, $vr0, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vpickve2gr.w	$a1, $vr0, 1
	vinsgr2vr.d	$vr1, $a1, 1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vand.v	$vr0, $vr1, $vr0
	andi	$s5, $a0, 1
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vpickve2gr.d	$s7, $vr0, 1
	ori	$fp, $zero, 1
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_63:                               # %.loopexit303
                                        #   in Loop: Header=BB0_64 Depth=2
	addi.d	$fp, $fp, 1
	ori	$a0, $zero, 8
	beq	$fp, $a0, .LBB0_2
.LBB0_64:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	ld.wu	$a0, $s6, 52
	beq	$fp, $a0, .LBB0_63
# %bb.65:                               #   in Loop: Header=BB0_64 Depth=2
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	beqz	$a0, .LBB0_63
# %bb.66:                               #   in Loop: Header=BB0_64 Depth=2
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.d	$s3, $a0, 88
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a1, $s0, $a1
	ld.w	$a2, $s3, 24
	move	$s0, $a0
	st.d	$a0, $a1, 88
	st.d	$zero, $a0, 0
	st.w	$a2, $a0, 24
	ld.d	$a0, $s3, 8
	addi.d	$s1, $s0, 8
	st.d	$a0, $s0, 8
	addi.d	$s2, $s0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 8
	ld.w	$a2, $s0, 12
	st.w	$a3, $s0, 16
	st.w	$a2, $s0, 20
	andi	$a4, $fp, 5
	addi.d	$a0, $a4, -4
	sltui	$a0, $a0, 1
	and	$a0, $s7, $a0
	andi	$a1, $fp, 6
	bnez	$a0, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_64 Depth=2
	addi.d	$a5, $a1, -2
	sltu	$a5, $zero, $a5
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	xori	$a6, $a6, 1
	or	$a5, $a6, $a5
	bnez	$a5, .LBB0_69
.LBB0_68:                               #   in Loop: Header=BB0_64 Depth=2
	addi.d	$a3, $a3, 1
	st.w	$a3, $s0, 8
	st.w	$a3, $s0, 16
.LBB0_69:                               #   in Loop: Header=BB0_64 Depth=2
	addi.d	$a3, $a4, -1
	sltui	$a3, $a3, 1
	and	$a3, $s7, $a3
	beqz	$a3, .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_64 Depth=2
	addi.d	$a2, $a2, 1
	st.w	$a2, $s0, 12
	st.w	$a2, $s0, 20
	b	.LBB0_74
.LBB0_71:                               #   in Loop: Header=BB0_64 Depth=2
	beqz	$s5, .LBB0_74
# %bb.72:                               #   in Loop: Header=BB0_64 Depth=2
	ori	$a4, $zero, 7
	beq	$fp, $a4, .LBB0_70
# %bb.73:                               #   in Loop: Header=BB0_64 Depth=2
	ori	$a4, $zero, 4
	beq	$fp, $a4, .LBB0_70
	.p2align	4, , 16
.LBB0_74:                               #   in Loop: Header=BB0_64 Depth=2
	ld.w	$a2, $s6, 68
	ori	$a4, $zero, 2
	blt	$a2, $a4, .LBB0_63
# %bb.75:                               # %.lr.ph321
                                        #   in Loop: Header=BB0_64 Depth=2
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	and	$a1, $a2, $a1
	or	$s8, $a0, $a1
	ori	$s4, $zero, 1
	bnez	$a3, .LBB0_77
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_76:                               #   in Loop: Header=BB0_77 Depth=3
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s6, 68
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
	addi.w	$s4, $s4, 1
	st.w	$a0, $s0, 20
	bge	$s4, $a1, .LBB0_63
.LBB0_77:                               # %.lr.ph321.split.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $s3, 0
	move	$s1, $s0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 24
	move	$s0, $a0
	st.d	$a0, $s1, 0
	st.d	$zero, $a0, 0
	st.w	$a1, $a0, 24
	ld.d	$a0, $s3, 8
	addi.d	$s1, $s0, 8
	st.d	$a0, $s0, 8
	addi.d	$s2, $s0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	st.w	$a0, $s0, 16
	beqz	$s8, .LBB0_76
# %bb.78:                               #   in Loop: Header=BB0_77 Depth=3
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 8
	st.w	$a0, $s0, 16
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_79:                               #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
	st.w	$a0, $s0, 20
.LBB0_80:                               #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a0, $s6, 68
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB0_63
.LBB0_81:                               # %.lr.ph321.split
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $s3, 0
	move	$s1, $s0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 24
	move	$s0, $a0
	st.d	$a0, $s1, 0
	st.d	$zero, $a0, 0
	st.w	$a1, $a0, 24
	ld.d	$a0, $s3, 8
	addi.d	$s1, $s0, 8
	st.d	$a0, $s0, 8
	addi.d	$s2, $s0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	ld.w	$a0, $s0, 12
	st.w	$a1, $s0, 16
	st.w	$a0, $s0, 20
	beqz	$s8, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 8
	st.w	$a1, $s0, 16
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	beqz	$s5, .LBB0_80
# %bb.84:                               #   in Loop: Header=BB0_81 Depth=3
	ori	$a1, $zero, 7
	beq	$fp, $a1, .LBB0_79
# %bb.85:                               #   in Loop: Header=BB0_81 Depth=3
	ori	$a1, $zero, 4
	beq	$fp, $a1, .LBB0_79
	b	.LBB0_80
.LBB0_86:                               # %.lr.ph315
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	and	$a1, $s7, $a1
	or	$a0, $a0, $a1
	ori	$s7, $zero, 1
	andi	$s8, $a0, 1
	b	.LBB0_89
	.p2align	4, , 16
.LBB0_87:                               #   in Loop: Header=BB0_89 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB0_88:                               #   in Loop: Header=BB0_89 Depth=2
	ld.w	$a0, $s3, 12
	ld.w	$a1, $s6, 68
	addi.w	$s7, $s7, 1
	st.w	$a0, $s3, 20
	bge	$s7, $a1, .LBB0_62
.LBB0_89:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 0
	move	$s1, $s0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s1, 0
	vld	$vr0, $s3, 8
	st.d	$zero, $a0, 0
	addi.d	$s2, $s3, 8
	addi.d	$s1, $s3, 12
	vst	$vr0, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 8
	beqz	$s8, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
.LBB0_91:                               #   in Loop: Header=BB0_89 Depth=2
	st.w	$a0, $s3, 16
	bnez	$s5, .LBB0_87
# %bb.92:                               #   in Loop: Header=BB0_89 Depth=2
	beqz	$s4, .LBB0_88
# %bb.93:                               #   in Loop: Header=BB0_89 Depth=2
	ori	$a0, $zero, 7
	beq	$fp, $a0, .LBB0_87
# %bb.94:                               #   in Loop: Header=BB0_89 Depth=2
	ori	$a0, $zero, 4
	beq	$fp, $a0, .LBB0_87
	b	.LBB0_88
.LBB0_95:                               #   in Loop: Header=BB0_4 Depth=1
	ori	$fp, $zero, 6
	b	.LBB0_51
.LBB0_96:                               #   in Loop: Header=BB0_4 Depth=1
	ori	$fp, $zero, 7
	b	.LBB0_51
.LBB0_97:                               #   in Loop: Header=BB0_4 Depth=1
	ori	$fp, $zero, 8
	b	.LBB0_51
.LBB0_98:                               # %._crit_edge329
	pcaddu18i	$ra, %call36(delHtab)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(numnets)
	ld.d	$a0, $a0, %got_pc_lo12(numnets)
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_106
# %bb.99:                               # %.lr.ph339
	pcalau12i	$a1, %got_pc_hi20(netarray)
	ld.d	$a1, $a1, %got_pc_lo12(netarray)
	ld.d	$fp, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(maxterm)
	ld.d	$a1, $a1, %got_pc_lo12(maxterm)
	ld.w	$s0, $a1, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$s1, $a0, 31, 0
	ori	$s2, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(termarray)
	ld.d	$s3, $a0, %got_pc_lo12(termarray)
	b	.LBB0_101
	.p2align	4, , 16
.LBB0_100:                              # %._crit_edge335
                                        #   in Loop: Header=BB0_101 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $s1, .LBB0_106
.LBB0_101:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_104 Depth 2
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB0_100
# %bb.102:                              # %.lr.ph334
                                        #   in Loop: Header=BB0_101 Depth=1
	ld.d	$s5, $s3, 0
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_103:                              #   in Loop: Header=BB0_104 Depth=2
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB0_100
.LBB0_104:                              #   Parent Loop BB0_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s6, $s4, 24
	bge	$s0, $s6, .LBB0_103
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s6, 3
	stx.d	$a0, $s5, $a1
	st.w	$s2, $a0, 0
	st.d	$s4, $a0, 8
	b	.LBB0_103
.LBB0_106:                              # %.preheader302
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$a2, $a1, $a0
	blez	$a2, .LBB0_116
# %bb.107:                              # %.lr.ph350
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(termarray)
	ld.d	$a1, $a1, %got_pc_lo12(termarray)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $zero, 1
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_108:                              # %.loopexit
                                        #   in Loop: Header=BB0_109 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a2, .LBB0_116
.LBB0_109:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
                                        #     Child Loop BB0_115 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a6, $a0, $a4
	ld.w	$a4, $a6, 76
	beqz	$a4, .LBB0_113
# %bb.110:                              # %.preheader
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.w	$a7, $a6, 132
	blez	$a7, .LBB0_108
# %bb.111:                              # %.lr.ph342
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.d	$t0, $a6, 144
	ld.w	$a4, $a6, 12
	ld.w	$a5, $a6, 16
	addi.d	$a6, $a7, 1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a6, $t0, 84
	addi.d	$a7, $a7, -1
	.p2align	4, , 16
.LBB0_112:                              #   Parent Loop BB0_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a6, -40
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	ld.w	$t1, $a6, -4
	ld.d	$t0, $t0, 8
	ld.w	$t2, $a6, 0
	add.d	$t1, $a4, $t1
	st.w	$t1, $t0, 8
	add.d	$t1, $a5, $t2
	st.w	$t1, $t0, 12
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 44
	bnez	$a7, .LBB0_112
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_113:                              #   in Loop: Header=BB0_109 Depth=1
	ld.w	$a4, $a6, 56
	alsl.d	$a4, $a4, $a6, 3
	ld.d	$a4, $a4, 152
	ld.d	$a4, $a4, 88
	beqz	$a4, .LBB0_108
# %bb.114:                              # %.lr.ph347
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.w	$a5, $a6, 12
	ld.w	$a6, $a6, 16
	.p2align	4, , 16
.LBB0_115:                              #   Parent Loop BB0_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a4, 24
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a1, $a7
	ld.w	$t0, $a4, 8
	ld.d	$a7, $a7, 8
	ld.w	$t1, $a4, 12
	ld.d	$a4, $a4, 0
	add.d	$t0, $a5, $t0
	st.w	$t0, $a7, 8
	add.d	$t0, $a6, $t1
	st.w	$t0, $a7, 12
	bnez	$a4, .LBB0_115
	b	.LBB0_108
.LBB0_116:                              # %._crit_edge351
	pcalau12i	$a0, %got_pc_hi20(ecount)
	ld.d	$a0, $a0, %got_pc_lo12(ecount)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(maxterm)
	ld.d	$a1, $a1, %got_pc_lo12(maxterm)
	ld.w	$a2, $a1, 0
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end0:
	.size	ggenorien, .Lfunc_end0-ggenorien
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_96-.LJTI0_0
	.word	.LBB0_95-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
