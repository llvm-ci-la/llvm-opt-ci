	.file	"cubestr.c"
	.text
	.globl	cube_setup                      # -- Begin function cube_setup
	.p2align	5
	.type	cube_setup,@function
cube_setup:                             # @cube_setup
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s4, $a0, %got_pc_lo12(cube)
	ld.w	$s7, $s4, 8
	bltz	$s7, .LBB0_2
# %bb.1:
	ld.w	$s6, $s4, 4
	bge	$s6, $s7, .LBB0_3
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, 4
	ld.w	$s7, $s4, 8
.LBB0_3:
	sub.w	$a0, $s6, $s7
	st.w	$a0, $s4, 120
	slt	$a0, $zero, $a0
	addi.d	$a1, $s6, -1
	addi.w	$s5, $zero, -1
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $s4, 124
	st.w	$zero, $s4, 0
	slli.d	$s3, $s6, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s4, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s4, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s4, 40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 48
	blez	$s6, .LBB0_9
# %bb.4:                                # %.lr.ph
	ld.d	$a1, $s4, 32
	move	$fp, $zero
	move	$a2, $zero
	ori	$a3, $zero, 2
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	st.w	$fp, $s0, 0
	srli.d	$a4, $fp, 5
	addi.d	$a4, $a4, 1
	st.w	$a4, $s2, 0
	ld.w	$a4, $a1, 0
	srai.d	$a5, $a4, 31
	xor	$a4, $a4, $a5
	sub.d	$a4, $a4, $a5
	add.w	$fp, $a4, $fp
	st.w	$fp, $s4, 0
	addi.w	$a4, $fp, -1
	st.w	$a4, $s1, 0
	srli.d	$a4, $a4, 5
	addi.d	$a4, $a4, 1
	st.w	$a4, $a0, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s0, $s0, 4
	bge	$a2, $s6, .LBB0_8
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	bge	$a2, $s7, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	st.w	$a3, $a1, 0
	ld.w	$s7, $s4, 8
	ld.w	$fp, $s4, 0
	ld.w	$s6, $s4, 4
	b	.LBB0_5
.LBB0_8:                                # %._crit_edge.loopexit
	slli.d	$s3, $s6, 2
	b	.LBB0_10
.LBB0_9:
	move	$fp, $zero
.LBB0_10:                               # %._crit_edge
	slli.d	$a0, $s6, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 72
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 112
	ori	$s0, $zero, 8
	ori	$s2, $zero, 33
	lu12i.w	$s1, 131071
	ori	$a0, $zero, 8
	blt	$fp, $s2, .LBB0_12
# %bb.11:
	addi.d	$a0, $fp, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_12:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s4, 0
	st.d	$a0, $s4, 56
	blt	$fp, $s2, .LBB0_14
# %bb.13:
	addi.d	$a0, $fp, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$s0, $a0, 8
.LBB0_14:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 4
	st.d	$a0, $s4, 64
	blez	$a1, .LBB0_40
# %bb.15:                               # %.lr.ph62.preheader
	move	$s0, $zero
	ori	$s2, $zero, 33
	ori	$s3, $zero, 8
	ori	$s6, $zero, 1
	ori	$s7, $s1, 4092
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=1
	move	$a6, $zero
.LBB0_17:                               # %.loopexit
                                        #   in Loop: Header=BB0_18 Depth=1
	ld.d	$a0, $s4, 112
	stx.w	$a6, $a0, $a1
	ld.w	$a0, $s4, 4
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB0_40
.LBB0_18:                               # %.lr.ph62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_31 Depth 2
	ld.w	$fp, $s4, 0
	ori	$a0, $zero, 8
	blt	$fp, $s2, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a0, $fp, -1
	srli.d	$a0, $a0, 3
	and	$a0, $a0, $s7
	addi.d	$a0, $a0, 8
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 72
	slli.d	$a2, $s0, 3
	stx.d	$a0, $a1, $a2
	ld.d	$a3, $s4, 16
	ld.d	$a2, $s4, 24
	slli.d	$a1, $s0, 2
	ldx.w	$a3, $a3, $a1
	ldx.w	$a4, $a2, $a1
	blt	$a4, $a3, .LBB0_23
# %bb.21:                               # %.lr.ph58.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	alsl.d	$a2, $s0, $a2, 2
	.p2align	4, , 16
.LBB0_22:                               # %.lr.ph58
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a3
	srai.d	$a3, $a3, 5
	alsl.d	$a3, $a3, $a0, 2
	ld.w	$a5, $a3, 4
	sll.w	$a6, $s6, $a4
	or	$a5, $a5, $a6
	st.w	$a5, $a3, 4
	ld.w	$a5, $a2, 0
	addi.w	$a3, $a4, 1
	blt	$a4, $a5, .LBB0_22
.LBB0_23:                               # %._crit_edge59
                                        #   in Loop: Header=BB0_18 Depth=1
	ld.w	$a2, $s4, 8
	bge	$s0, $a2, .LBB0_32
# %bb.24:                               #   in Loop: Header=BB0_18 Depth=1
	ld.d	$a2, $s4, 56
	ld.wu	$a3, $a2, 0
	andi	$a3, $a3, 1023
	sltu	$a5, $zero, $a3
	sub.d	$a4, $a3, $a5
	addi.d	$a4, $a4, 1
	bltu	$a4, $s3, .LBB0_30
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_18 Depth=1
	alsl.d	$t0, $a5, $a2, 2
	alsl.d	$a7, $a3, $a0, 2
	addi.d	$t1, $a7, 4
	alsl.d	$a6, $a3, $a2, 2
	bgeu	$t0, $t1, .LBB0_27
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$t0, $a6, 4
	alsl.d	$a5, $a5, $a0, 2
	bltu	$a5, $t0, .LBB0_30
.LBB0_27:                               # %vector.ph
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a3, $a3, $a5
	addi.d	$a6, $a6, -12
	addi.d	$a7, $a7, -12
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_28:                               # %vector.body
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vld	$vr1, $a6, -16
	vld	$vr2, $a7, 0
	vld	$vr3, $a7, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a6, 0
	vst	$vr1, $a6, -16
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB0_18 Depth=1
	beq	$a4, $a5, .LBB0_16
	.p2align	4, , 16
.LBB0_30:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a4, $a3, 1
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB0_31:                               # %scalar.ph
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	ld.w	$a5, $a0, 0
	or	$a3, $a5, $a3
	st.w	$a3, $a2, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, -4
	addi.d	$a2, $a2, -4
	bltu	$s6, $a4, .LBB0_31
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_32:                               #   in Loop: Header=BB0_18 Depth=1
	ld.d	$a2, $s4, 64
	ld.wu	$a3, $a2, 0
	andi	$a3, $a3, 1023
	sltu	$a5, $zero, $a3
	sub.d	$a4, $a3, $a5
	addi.d	$a4, $a4, 1
	bltu	$a4, $s3, .LBB0_38
# %bb.33:                               # %vector.memcheck111
                                        #   in Loop: Header=BB0_18 Depth=1
	alsl.d	$t0, $a5, $a2, 2
	alsl.d	$a7, $a3, $a0, 2
	addi.d	$t1, $a7, 4
	alsl.d	$a6, $a3, $a2, 2
	bgeu	$t0, $t1, .LBB0_35
# %bb.34:                               # %vector.memcheck111
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$t0, $a6, 4
	alsl.d	$a5, $a5, $a0, 2
	bltu	$a5, $t0, .LBB0_38
.LBB0_35:                               # %vector.ph125
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a3, $a3, $a5
	addi.d	$a6, $a6, -12
	addi.d	$a7, $a7, -12
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_36:                               # %vector.body128
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vld	$vr1, $a6, -16
	vld	$vr2, $a7, 0
	vld	$vr3, $a7, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a6, 0
	vst	$vr1, $a6, -16
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_36
# %bb.37:                               # %middle.block142
                                        #   in Loop: Header=BB0_18 Depth=1
	ori	$a6, $zero, 1
	beq	$a4, $a5, .LBB0_17
	.p2align	4, , 16
.LBB0_38:                               # %scalar.ph123.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a4, $a3, 1
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB0_39:                               # %scalar.ph123
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	ld.w	$a5, $a0, 0
	or	$a3, $a5, $a3
	st.w	$a3, $a2, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, -4
	ori	$a6, $zero, 1
	addi.d	$a2, $a2, -4
	bltu	$a6, $a4, .LBB0_39
	b	.LBB0_17
.LBB0_40:                               # %._crit_edge63
	ld.w	$a0, $s4, 8
	beqz	$a0, .LBB0_42
# %bb.41:
	ld.d	$a1, $s4, 48
	alsl.d	$a0, $a0, $a1, 2
	ld.w	$a0, $a0, -4
	ld.d	$a1, $s4, 56
	st.w	$a0, $s4, 108
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1365
	and	$a0, $a0, $a1
	st.w	$a0, $s4, 104
	b	.LBB0_43
.LBB0_42:
	lu32i.d	$s5, 0
	st.w	$s5, $s4, 108
.LBB0_43:
	ori	$a0, $zero, 80
	ori	$s0, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	st.d	$a0, $s4, 80
	ori	$s3, $zero, 33
	ori	$s1, $s1, 4092
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_45 Depth=1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	stx.d	$a0, $a1, $s2
	addi.d	$s2, $s2, 8
	beq	$s2, $s0, .LBB0_47
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	ld.w	$fp, $s4, 0
	ori	$a0, $zero, 8
	blt	$fp, $s3, .LBB0_44
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=1
	addi.d	$a0, $fp, -1
	srli.d	$a0, $a0, 3
	and	$a0, $a0, $s1
	addi.d	$a0, $a0, 8
	b	.LBB0_44
.LBB0_47:
	ld.w	$s0, $s4, 0
	ori	$fp, $zero, 8
	ori	$s2, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s2, .LBB0_49
# %bb.48:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	and	$a0, $a0, $s1
	addi.d	$a0, $a0, 8
.LBB0_49:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	pcaddu18i	$ra, %call36(set_fill)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s4, 0
	st.d	$a0, $s4, 88
	blt	$s0, $s2, .LBB0_51
# %bb.50:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	and	$a0, $a0, $s1
	addi.d	$fp, $a0, 8
.LBB0_51:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	st.d	$a0, $s4, 96
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cdata)
	ld.d	$s0, $a1, %got_pc_lo12(cdata)
	ld.w	$a1, $s4, 4
	st.d	$a0, $s0, 0
	slli.d	$fp, $a1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 24
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	cube_setup, .Lfunc_end0-cube_setup
                                        # -- End function
	.globl	setdown_cube                    # -- Begin function setdown_cube
	.p2align	5
	.type	setdown_cube,@function
setdown_cube:                           # @setdown_cube
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$fp, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB1_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
.LBB1_2:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB1_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB1_4:
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB1_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB1_6:
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB1_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB1_8:
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB1_10
# %bb.9:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 112
.LBB1_10:
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB1_12
# %bb.11:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 56
.LBB1_12:
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB1_14
# %bb.13:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 64
.LBB1_14:
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB1_16
# %bb.15:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 88
.LBB1_16:
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB1_18
# %bb.17:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 96
.LBB1_18:
	ld.w	$a2, $fp, 4
	ld.d	$a0, $fp, 72
	blez	$a2, .LBB1_23
# %bb.19:                               # %.lr.ph.preheader
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_20:                               #   in Loop: Header=BB1_21 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a2, .LBB1_24
.LBB1_21:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a1, $a0, $s0
	beqz	$a1, .LBB1_20
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.w	$a2, $fp, 4
	stx.d	$zero, $a0, $s0
	b	.LBB1_20
.LBB1_23:                               # %._crit_edge
	beqz	$a0, .LBB1_25
.LBB1_24:                               # %._crit_edge.thread
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
.LBB1_25:
	ld.d	$a0, $fp, 80
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB1_27
# %bb.26:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 0
.LBB1_27:
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB1_29
# %bb.28:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 8
.LBB1_29:
	ld.d	$a1, $a0, 16
	beqz	$a1, .LBB1_31
# %bb.30:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 16
.LBB1_31:
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB1_33
# %bb.32:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 24
.LBB1_33:
	ld.d	$a1, $a0, 32
	beqz	$a1, .LBB1_35
# %bb.34:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 32
.LBB1_35:
	ld.d	$a1, $a0, 40
	beqz	$a1, .LBB1_37
# %bb.36:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 40
.LBB1_37:
	ld.d	$a1, $a0, 48
	beqz	$a1, .LBB1_39
# %bb.38:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 48
.LBB1_39:
	ld.d	$a1, $a0, 56
	beqz	$a1, .LBB1_41
# %bb.40:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 56
.LBB1_41:
	ld.d	$a1, $a0, 64
	beqz	$a1, .LBB1_43
# %bb.42:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 64
.LBB1_43:
	ld.d	$a1, $a0, 72
	beqz	$a1, .LBB1_45
# %bb.44:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 72
.LBB1_45:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 80
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s0, $a0, %got_pc_lo12(cdata)
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB1_47
# %bb.46:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
.LBB1_47:
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB1_49
# %bb.48:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 8
.LBB1_49:
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB1_51
# %bb.50:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 16
.LBB1_51:
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB1_53
# %bb.52:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_53:
	st.d	$zero, $fp, 112
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 16
	vst	$vr0, $fp, 40
	vst	$vr0, $fp, 56
	vst	$vr0, $fp, 72
	vst	$vr0, $fp, 88
	vst	$vr0, $s0, 0
	vst	$vr0, $s0, 16
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	setdown_cube, .Lfunc_end1-setdown_cube
                                        # -- End function
	.globl	save_cube_struct                # -- Begin function save_cube_struct
	.p2align	5
	.type	save_cube_struct,@function
save_cube_struct:                       # @save_cube_struct
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(temp_cube_save)
	ld.d	$a0, $a0, %got_pc_lo12(temp_cube_save)
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$fp, $a1, %got_pc_lo12(cube)
	ori	$a2, $zero, 128
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s0, $a0, %got_pc_lo12(cdata)
	vld	$vr0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(temp_cdata_save)
	ld.d	$a0, $a0, %got_pc_lo12(temp_cdata_save)
	vld	$vr1, $s0, 16
	vld	$vr2, $s0, 32
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	vst	$vr2, $a0, 32
	addi.d	$a0, $fp, 16
	ori	$a2, $zero, 88
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 0
	vst	$vr0, $s0, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	save_cube_struct, .Lfunc_end2-save_cube_struct
                                        # -- End function
	.globl	restore_cube_struct             # -- Begin function restore_cube_struct
	.p2align	5
	.type	restore_cube_struct,@function
restore_cube_struct:                    # @restore_cube_struct
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	pcalau12i	$a1, %got_pc_hi20(temp_cube_save)
	ld.d	$a1, $a1, %got_pc_lo12(temp_cube_save)
	ori	$a2, $zero, 128
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(temp_cdata_save)
	ld.d	$a0, $a0, %got_pc_lo12(temp_cdata_save)
	vld	$vr0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(cdata)
	ld.d	$a1, $a1, %got_pc_lo12(cdata)
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vst	$vr0, $a1, 0
	vst	$vr1, $a1, 16
	vst	$vr2, $a1, 32
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	restore_cube_struct, .Lfunc_end3-restore_cube_struct
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cube size is silly, error in .i/.o or .mv"
	.size	.L.str, 42

	.section	".note.GNU-stack","",@progbits
	.addrsig
