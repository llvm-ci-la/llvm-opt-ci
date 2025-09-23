	.file	"unbust.c"
	.text
	.globl	unbust                          # -- Begin function unbust
	.p2align	5
	.type	unbust,@function
unbust:                                 # @unbust
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$s1, $a0, 0
	ld.w	$a2, $s1, 0
	ori	$a1, $zero, 1
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %.loopexit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	bge	$a0, $a2, .LBB0_8
.LBB0_2:                                # %.lr.ph20.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	bge	$a1, $a2, .LBB0_8
# %bb.3:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $a1
	alsl.d	$a1, $a1, $s1, 3
	slli.d	$a3, $a0, 3
	ldx.w	$a3, $s1, $a3
	ld.w	$a4, $a1, 4
	addi.d	$a1, $a0, 1
	move	$a5, $a1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi.w	$a6, $a5, 0
	addi.d	$a5, $a5, 1
	bge	$a6, $a2, .LBB0_1
.LBB0_5:                                # %.lr.ph.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a5, 0
	slli.d	$a7, $a6, 3
	ldx.w	$a7, $s1, $a7
	bne	$a3, $a7, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	alsl.d	$a6, $a6, $s1, 3
	ld.w	$a7, $a6, 4
	bne	$a4, $a7, .LBB0_4
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $s1, $a2
	st.w	$a2, $a6, 0
	ld.w	$a2, $s1, 0
	alsl.d	$a7, $a2, $s1, 3
	ld.w	$a7, $a7, 4
	addi.w	$a2, $a2, -1
	st.w	$a2, $s1, 0
	addi.d	$a5, $a5, -1
	st.w	$a7, $a6, 4
	b	.LBB0_4
.LBB0_8:                                # %coincide.exit
	bstrpick.d	$a0, $a2, 31, 0
	ori	$a3, $zero, 8
	lu12i.w	$a1, 24414
	bgeu	$a2, $a3, .LBB0_10
# %bb.9:
	ori	$a3, $zero, 1
	ori	$a2, $a1, 256
	b	.LBB0_13
.LBB0_10:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a4, $a2, 3
	srli.d	$a2, $a0, 3
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a2, 30, 3
	ori	$a2, $a1, 256
	vreplgr2vr.w	$vr0, $a2
	addi.d	$a2, $s1, 36
	move	$a5, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB0_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, -24
	ld.w	$a7, $a2, -16
	ld.w	$t0, $a2, -8
	ld.w	$t1, $a2, 0
	vinsgr2vr.w	$vr2, $a6, 0
	vinsgr2vr.w	$vr2, $a7, 1
	vinsgr2vr.w	$vr2, $t0, 2
	vinsgr2vr.w	$vr2, $t1, 3
	ld.w	$a6, $a2, 8
	ld.w	$a7, $a2, 16
	ld.w	$t0, $a2, 24
	ld.w	$t1, $a2, 32
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t0, 2
	vinsgr2vr.w	$vr3, $t1, 3
	vmin.w	$vr0, $vr2, $vr0
	vmin.w	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 64
	bnez	$a5, .LBB0_11
# %bb.12:                               # %middle.block
	vmin.w	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmin.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmin.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a4, $a0, .LBB0_15
.LBB0_13:                               # %.lr.ph.i106.preheader
	sub.d	$a4, $a0, $a3
	addi.d	$a4, $a4, 1
	alsl.d	$a3, $a3, $s1, 3
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB0_14:                               # %.lr.ph.i106
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	slt	$a6, $a5, $a2
	masknez	$a2, $a2, $a6
	maskeqz	$a5, $a5, $a6
	or	$a2, $a5, $a2
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB0_14
.LBB0_15:                               # %.lr.ph35.i.preheader
	move	$a3, $zero
	slli.d	$a0, $a0, 3
	ori	$a4, $zero, 1
	ori	$a5, $a1, 256
                                        # implicit-def: $r5
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 1
	beq	$a0, $a3, .LBB0_19
.LBB0_17:                               # %.lr.ph35.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $s1, $a3
	ld.w	$a7, $a6, 12
	bne	$a7, $a2, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	ld.w	$a6, $a6, 8
	slt	$a7, $a6, $a5
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	masknez	$a1, $a1, $a7
	maskeqz	$a6, $a4, $a7
	or	$a1, $a6, $a1
	b	.LBB0_16
.LBB0_19:                               # %firstP.exit
	addi.w	$s0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(u)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_21
# %bb.20:
	move	$fp, $a0
	slli.d	$a0, $s0, 3
	ldx.w	$a0, $s1, $a0
	alsl.d	$a1, $s0, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(PtsOut)
	ld.d	$a2, $a2, %got_pc_lo12(PtsOut)
	ld.d	$s0, $a2, 0
	ld.w	$a2, $s0, 0
	addi.w	$a2, $a2, 1
	st.w	$a2, $s0, 0
	slli.d	$a2, $a2, 3
	stx.w	$a0, $s0, $a2
	ld.w	$a0, $s0, 0
	ld.w	$a1, $a1, 4
	alsl.d	$a0, $a0, $s0, 3
	st.w	$a1, $a0, 4
	ori	$a0, $zero, 1
	addi.d	$a0, $a0, -1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$s2, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $s2, $a0
	add.d	$a0, $s2, $a0
	jr	$a0
.LBB0_21:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_22:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(l)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bnez	$a0, .LBB0_38
# %bb.23:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(u)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_25
# %bb.24:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(r)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bnez	$a0, .LBB0_38
	b	.LBB0_39
.LBB0_25:
	ori	$a1, $zero, 1
	b	.LBB0_38
.LBB0_26:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(b)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bnez	$a0, .LBB0_38
# %bb.27:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(l)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bnez	$a0, .LBB0_38
# %bb.28:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(u)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bnez	$a0, .LBB0_38
	b	.LBB0_39
.LBB0_29:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(u)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_25
# %bb.30:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(r)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bnez	$a0, .LBB0_38
# %bb.31:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(b)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bnez	$a0, .LBB0_38
	b	.LBB0_39
.LBB0_32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(r)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_34
# %bb.33:
	ori	$a1, $zero, 3
	b	.LBB0_38
.LBB0_34:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(b)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_36
# %bb.35:
	ori	$a1, $zero, 4
	b	.LBB0_38
.LBB0_36:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(l)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_39
# %bb.37:
	ori	$a1, $zero, 2
.LBB0_38:
	ld.w	$a2, $s0, 0
	slli.d	$a3, $fp, 3
	ldx.w	$a4, $s1, $a3
	addi.w	$a2, $a2, 1
	st.w	$a2, $s0, 0
	slli.d	$a2, $a2, 3
	stx.w	$a4, $s0, $a2
	ld.w	$a2, $s1, 0
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $s1, $a2
	alsl.d	$a4, $fp, $s1, 3
	ld.w	$a5, $s0, 0
	stx.w	$a2, $s1, $a3
	ld.w	$a2, $a4, 4
	ld.w	$a3, $s1, 0
	alsl.d	$a5, $a5, $s0, 3
	st.w	$a2, $a5, 4
	alsl.d	$a2, $a3, $s1, 3
	ld.w	$a2, $a2, 4
	addi.d	$a5, $a3, -1
	st.w	$a5, $s1, 0
	st.w	$a2, $a4, 4
	addi.d	$a1, $a1, -1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s2, $a1
	slt	$a2, $a0, $a3
	masknez	$a3, $fp, $a2
	maskeqz	$a0, $a0, $a2
	add.d	$a1, $s2, $a1
	or	$fp, $a0, $a3
	jr	$a1
.LBB0_39:
	ld.w	$a0, $s0, 0
	alsl.d	$a1, $fp, $s1, 3
	slli.d	$a2, $fp, 3
	ldx.w	$a2, $s1, $a2
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 0
	slli.d	$a0, $a0, 3
	stx.w	$a2, $s0, $a0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $a1, 4
	alsl.d	$a0, $a0, $s0, 3
	st.w	$a1, $a0, 4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(condense)
	jr	$t8
.Lfunc_end0:
	.size	unbust, .Lfunc_end0-unbust
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
                                        # -- End function
	.text
	.globl	coincide                        # -- Begin function coincide
	.p2align	5
	.type	coincide,@function
coincide:                               # @coincide
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB1_9
# %bb.1:                                # %.lr.ph20.preheader
	ori	$a3, $zero, 1
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.loopexit
                                        #   in Loop: Header=BB1_3 Depth=1
	bge	$a2, $a1, .LBB1_9
.LBB1_3:                                # %.lr.ph20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	bge	$a3, $a1, .LBB1_9
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a2, $a3
	alsl.d	$a3, $a3, $a0, 3
	slli.d	$a4, $a2, 3
	ldx.w	$a4, $a0, $a4
	ld.w	$a5, $a3, 4
	addi.d	$a3, $a2, 1
	move	$a6, $a3
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=2
	addi.w	$a7, $a6, 0
	addi.d	$a6, $a6, 1
	bge	$a7, $a1, .LBB1_2
.LBB1_6:                                # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a6, 0
	slli.d	$t0, $a7, 3
	ldx.w	$t0, $a0, $t0
	bne	$a4, $t0, .LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=2
	alsl.d	$a7, $a7, $a0, 3
	ld.w	$t0, $a7, 4
	bne	$a5, $t0, .LBB1_5
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=2
	slli.d	$a1, $a1, 3
	ldx.w	$a1, $a0, $a1
	st.w	$a1, $a7, 0
	ld.w	$a1, $a0, 0
	alsl.d	$t0, $a1, $a0, 3
	ld.w	$t0, $t0, 4
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	addi.d	$a6, $a6, -1
	st.w	$t0, $a7, 4
	b	.LBB1_5
.LBB1_9:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	coincide, .Lfunc_end1-coincide
                                        # -- End function
	.globl	firstP                          # -- Begin function firstP
	.p2align	5
	.type	firstP,@function
firstP:                                 # @firstP
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$a0, $a0, 0
	ld.w	$a4, $a0, 0
	blez	$a4, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a1, $a4, 1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a3, $zero, 8
	lu12i.w	$a2, 24414
	bgeu	$a4, $a3, .LBB2_4
# %bb.2:
	ori	$a5, $zero, 1
	ori	$a3, $a2, 256
	b	.LBB2_7
.LBB2_3:
                                        # implicit-def: $r6
	addi.w	$a0, $a2, 0
	ret
.LBB2_4:                                # %vector.ph
	bstrpick.d	$a3, $a4, 30, 3
	slli.d	$a6, $a3, 3
	srli.d	$a3, $a4, 3
	ori	$a5, $zero, 1
	bstrins.d	$a5, $a3, 30, 3
	ori	$a3, $a2, 256
	vreplgr2vr.w	$vr0, $a3
	addi.d	$a3, $a0, 36
	move	$a7, $a6
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a3, -24
	ld.w	$t1, $a3, -16
	ld.w	$t2, $a3, -8
	ld.w	$t3, $a3, 0
	vinsgr2vr.w	$vr2, $t0, 0
	vinsgr2vr.w	$vr2, $t1, 1
	vinsgr2vr.w	$vr2, $t2, 2
	vinsgr2vr.w	$vr2, $t3, 3
	ld.w	$t0, $a3, 8
	ld.w	$t1, $a3, 16
	ld.w	$t2, $a3, 24
	ld.w	$t3, $a3, 32
	vinsgr2vr.w	$vr3, $t0, 0
	vinsgr2vr.w	$vr3, $t1, 1
	vinsgr2vr.w	$vr3, $t2, 2
	vinsgr2vr.w	$vr3, $t3, 3
	vmin.w	$vr0, $vr2, $vr0
	vmin.w	$vr1, $vr3, $vr1
	addi.d	$a7, $a7, -8
	addi.d	$a3, $a3, 64
	bnez	$a7, .LBB2_5
# %bb.6:                                # %middle.block
	vmin.w	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmin.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmin.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a6, $a4, .LBB2_9
.LBB2_7:                                # %.lr.ph.preheader44
	alsl.d	$a4, $a5, $a0, 3
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a1, $a5
	.p2align	4, , 16
.LBB2_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	slt	$a7, $a6, $a3
	masknez	$a3, $a3, $a7
	maskeqz	$a6, $a6, $a7
	or	$a3, $a6, $a3
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB2_8
.LBB2_9:                                # %.lr.ph35.preheader
	addi.d	$a0, $a0, 12
	addi.d	$a1, $a1, -1
	ori	$a4, $zero, 1
	ori	$a5, $a2, 256
                                        # implicit-def: $r6
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               #   in Loop: Header=BB2_11 Depth=1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 1
	beqz	$a1, .LBB2_13
.LBB2_11:                               # %.lr.ph35
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	bne	$a6, $a3, .LBB2_10
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a6, $a0, -4
	slt	$a7, $a6, $a5
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	masknez	$a2, $a2, $a7
	maskeqz	$a6, $a4, $a7
	or	$a2, $a6, $a2
	b	.LBB2_10
.LBB2_13:                               # %._crit_edge
	addi.w	$a0, $a2, 0
	ret
.Lfunc_end2:
	.size	firstP, .Lfunc_end2-firstP
                                        # -- End function
	.globl	u                               # -- Begin function u
	.p2align	5
	.type	u,@function
u:                                      # @u
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a1, $a1, 0
	ld.w	$a4, $a1, 0
	blez	$a4, .LBB3_12
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a1, $a3
	move	$a5, $a0
	move	$a0, $zero
	alsl.d	$a6, $a5, $a1, 3
	vinsgr2vr.d	$vr0, $a2, 0
	ld.w	$a2, $a6, 4
	ldx.w	$a3, $a1, $a3
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a4, $a4, 1
	bstrpick.d	$a6, $a4, 31, 0
	addi.d	$a4, $a1, 12
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	ori	$a7, $zero, 1
	lu12i.w	$t0, 24414
	ori	$t0, $t0, 256
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a4, $a4, 8
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, -1
	beqz	$a6, .LBB3_7
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a5, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	ld.w	$t1, $a4, -4
	bne	$t1, $a3, .LBB3_2
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	ld.w	$t1, $a4, 0
	bge	$a2, $t1, .LBB3_2
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	sub.w	$t1, $t1, $a2
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	masknez	$a0, $a0, $t2
	maskeqz	$t1, $a7, $t2
	or	$a0, $t1, $a0
	b	.LBB3_2
.LBB3_7:                                # %._crit_edge
	beqz	$a0, .LBB3_12
# %bb.8:
	pcalau12i	$a2, %got_pc_hi20(rectang)
	ld.d	$a2, $a2, %got_pc_lo12(rectang)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 0
	blez	$a3, .LBB3_12
# %bb.9:                                # %.lr.ph.preheader.i
	slli.d	$a4, $a0, 3
	ldx.d	$a1, $a1, $a4
	vinsgr2vr.d	$vr1, $a1, 0
	addi.d	$a1, $a3, 1
	bstrpick.d	$a1, $a1, 31, 0
	vpackev.d	$vr1, $vr0, $vr1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	vpackev.d	$vr0, $vr1, $vr0
	.p2align	4, , 16
.LBB3_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vshuf4i.w	$vr2, $vr1, 136
	vshuf4i.w	$vr1, $vr1, 221
	vslt.w	$vr1, $vr1, $vr0
	vslt.w	$vr2, $vr0, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vmskltz.h	$vr1, $vr1
	vpickve2gr.hu	$a3, $vr1, 0
	beqz	$a3, .LBB3_13
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB3_10
.LBB3_12:
	move	$a0, $zero
.LBB3_13:                               # %recCheck.exit
	ret
.Lfunc_end3:
	.size	u, .Lfunc_end3-u
                                        # -- End function
	.globl	outputP                         # -- Begin function outputP
	.p2align	5
	.type	outputP,@function
outputP:                                # @outputP
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.w	$a2, $a1, $a2
	alsl.d	$a0, $a0, $a1, 3
	pcalau12i	$a1, %got_pc_hi20(PtsOut)
	ld.d	$a1, $a1, %got_pc_lo12(PtsOut)
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a1, 0
	addi.w	$a3, $a3, 1
	st.w	$a3, $a1, 0
	slli.d	$a3, $a3, 3
	stx.w	$a2, $a1, $a3
	ld.w	$a2, $a1, 0
	ld.w	$a0, $a0, 4
	alsl.d	$a1, $a2, $a1, 3
	st.w	$a0, $a1, 4
	ret
.Lfunc_end4:
	.size	outputP, .Lfunc_end4-outputP
                                        # -- End function
	.globl	l                               # -- Begin function l
	.p2align	5
	.type	l,@function
l:                                      # @l
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a1, $a1, 0
	ld.w	$a4, $a1, 0
	blez	$a4, .LBB5_12
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a1, $a3
	move	$a5, $a0
	move	$a0, $zero
	alsl.d	$a6, $a5, $a1, 3
	vinsgr2vr.d	$vr0, $a2, 0
	ld.w	$a2, $a6, 4
	ldx.w	$a3, $a1, $a3
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a4, $a4, 1
	bstrpick.d	$a6, $a4, 31, 0
	addi.d	$a4, $a1, 12
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	ori	$a7, $zero, 1
	lu12i.w	$t0, 24414
	ori	$t0, $t0, 256
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	addi.d	$a4, $a4, 8
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, -1
	beqz	$a6, .LBB5_7
.LBB5_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a5, .LBB5_2
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	ld.w	$t1, $a4, 0
	bne	$t1, $a2, .LBB5_2
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	ld.w	$t1, $a4, -4
	bge	$t1, $a3, .LBB5_2
# %bb.6:                                #   in Loop: Header=BB5_3 Depth=1
	sub.w	$t1, $a3, $t1
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	masknez	$a0, $a0, $t2
	maskeqz	$t1, $a7, $t2
	or	$a0, $t1, $a0
	b	.LBB5_2
.LBB5_7:                                # %._crit_edge
	beqz	$a0, .LBB5_12
# %bb.8:
	pcalau12i	$a2, %got_pc_hi20(rectang)
	ld.d	$a2, $a2, %got_pc_lo12(rectang)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 0
	blez	$a3, .LBB5_12
# %bb.9:                                # %.lr.ph.preheader.i
	slli.d	$a4, $a0, 3
	ldx.d	$a1, $a1, $a4
	vinsgr2vr.d	$vr1, $a1, 0
	addi.d	$a1, $a3, 1
	bstrpick.d	$a1, $a1, 31, 0
	vpackev.d	$vr1, $vr0, $vr1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	vpackev.d	$vr0, $vr1, $vr0
	.p2align	4, , 16
.LBB5_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vshuf4i.w	$vr2, $vr1, 136
	vshuf4i.w	$vr1, $vr1, 221
	vslt.w	$vr1, $vr1, $vr0
	vslt.w	$vr2, $vr0, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vmskltz.h	$vr1, $vr1
	vpickve2gr.hu	$a3, $vr1, 0
	beqz	$a3, .LBB5_13
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB5_10
.LBB5_12:
	move	$a0, $zero
.LBB5_13:                               # %recCheck.exit
	ret
.Lfunc_end5:
	.size	l, .Lfunc_end5-l
                                        # -- End function
	.globl	r                               # -- Begin function r
	.p2align	5
	.type	r,@function
r:                                      # @r
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a1, $a1, 0
	ld.w	$a4, $a1, 0
	blez	$a4, .LBB6_12
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a1, $a3
	move	$a5, $a0
	move	$a0, $zero
	alsl.d	$a6, $a5, $a1, 3
	vinsgr2vr.d	$vr0, $a2, 0
	ld.w	$a2, $a6, 4
	ldx.w	$a3, $a1, $a3
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a4, $a4, 1
	bstrpick.d	$a6, $a4, 31, 0
	addi.d	$a4, $a1, 12
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	ori	$a7, $zero, 1
	lu12i.w	$t0, 24414
	ori	$t0, $t0, 256
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a4, $a4, 8
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, -1
	beqz	$a6, .LBB6_7
.LBB6_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a5, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	ld.w	$t1, $a4, 0
	bne	$t1, $a2, .LBB6_2
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	ld.w	$t1, $a4, -4
	bge	$a3, $t1, .LBB6_2
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	sub.w	$t1, $t1, $a3
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	masknez	$a0, $a0, $t2
	maskeqz	$t1, $a7, $t2
	or	$a0, $t1, $a0
	b	.LBB6_2
.LBB6_7:                                # %._crit_edge
	beqz	$a0, .LBB6_12
# %bb.8:
	pcalau12i	$a2, %got_pc_hi20(rectang)
	ld.d	$a2, $a2, %got_pc_lo12(rectang)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 0
	blez	$a3, .LBB6_12
# %bb.9:                                # %.lr.ph.preheader.i
	slli.d	$a4, $a0, 3
	ldx.d	$a1, $a1, $a4
	vinsgr2vr.d	$vr1, $a1, 0
	addi.d	$a1, $a3, 1
	bstrpick.d	$a1, $a1, 31, 0
	vpackev.d	$vr1, $vr0, $vr1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	vpackev.d	$vr0, $vr1, $vr0
	.p2align	4, , 16
.LBB6_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vshuf4i.w	$vr2, $vr1, 136
	vshuf4i.w	$vr1, $vr1, 221
	vslt.w	$vr1, $vr1, $vr0
	vslt.w	$vr2, $vr0, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vmskltz.h	$vr1, $vr1
	vpickve2gr.hu	$a3, $vr1, 0
	beqz	$a3, .LBB6_13
# %bb.11:                               #   in Loop: Header=BB6_10 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB6_10
.LBB6_12:
	move	$a0, $zero
.LBB6_13:                               # %recCheck.exit
	ret
.Lfunc_end6:
	.size	r, .Lfunc_end6-r
                                        # -- End function
	.globl	condense                        # -- Begin function condense
	.p2align	5
	.type	condense,@function
condense:                               # @condense
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB7_17
# %bb.1:                                # %.preheader50
	pcalau12i	$a0, %got_pc_hi20(PtsOut)
	ld.d	$a0, $a0, %got_pc_lo12(PtsOut)
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a0, 0
	ori	$a1, $zero, 3
	blt	$a3, $a1, .LBB7_15
# %bb.2:                                # %.lr.ph63.preheader
	ori	$a2, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_3:                                # %.sink.split
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.w	$a3, $a3, -1
	st.w	$a3, $a0, 0
	addi.w	$a1, $a1, -1
	move	$a4, $a1
	addi.w	$a1, $a1, 1
	bge	$a4, $a3, .LBB7_15
.LBB7_4:                                # %.lr.ph63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_13 Depth 2
                                        #     Child Loop BB7_8 Depth 2
	slli.d	$a5, $a2, 3
	ldx.w	$a6, $a0, $a5
	slli.d	$a5, $a4, 3
	ldx.w	$a7, $a0, $a5
	alsl.d	$a5, $a1, $a0, 3
	bne	$a6, $a7, .LBB7_9
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	ld.w	$a5, $a5, 0
	bne	$a5, $a6, .LBB7_14
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	blt	$a3, $a1, .LBB7_3
# %bb.7:                                # %.lr.ph56.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a4, $a1, -1
	alsl.d	$a5, $a1, $a0, 3
	.p2align	4, , 16
.LBB7_8:                                # %.lr.ph56
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a5, 0
	st.d	$a3, $a5, -8
	ld.w	$a3, $a0, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 8
	blt	$a4, $a3, .LBB7_8
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_9:                                #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$a6, $a2, $a0, 3
	ld.w	$a6, $a6, 4
	alsl.d	$a7, $a4, $a0, 3
	ld.w	$a7, $a7, 4
	bne	$a6, $a7, .LBB7_16
# %bb.10:                               #   in Loop: Header=BB7_4 Depth=1
	ld.w	$a7, $a5, 4
	bne	$a7, $a6, .LBB7_14
# %bb.11:                               # %.preheader49
                                        #   in Loop: Header=BB7_4 Depth=1
	blt	$a3, $a1, .LBB7_3
# %bb.12:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a4, $a1, -1
	.p2align	4, , 16
.LBB7_13:                               # %.lr.ph
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a5, 0
	st.d	$a3, $a5, -8
	ld.w	$a3, $a0, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 8
	blt	$a4, $a3, .LBB7_13
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_14:                               #   in Loop: Header=BB7_4 Depth=1
	move	$a2, $a4
	move	$a4, $a1
	addi.w	$a1, $a1, 1
	blt	$a4, $a3, .LBB7_4
.LBB7_15:                               # %._crit_edge64
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_16:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_17:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(dumpError)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	condense, .Lfunc_end7-condense
                                        # -- End function
	.globl	elim                            # -- Begin function elim
	.p2align	5
	.type	elim,@function
elim:                                   # @elim
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 0
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $a1, $a2
	slli.d	$a3, $a0, 3
	stx.w	$a2, $a1, $a3
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a1, 3
	ld.w	$a3, $a3, 4
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a2, $a2, -1
	st.w	$a2, $a1, 0
	st.w	$a3, $a0, 4
	ret
.Lfunc_end8:
	.size	elim, .Lfunc_end8-elim
                                        # -- End function
	.globl	b                               # -- Begin function b
	.p2align	5
	.type	b,@function
b:                                      # @b
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a1, $a1, 0
	ld.w	$a4, $a1, 0
	blez	$a4, .LBB9_12
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a1, $a3
	move	$a5, $a0
	move	$a0, $zero
	alsl.d	$a6, $a5, $a1, 3
	vinsgr2vr.d	$vr0, $a2, 0
	ld.w	$a2, $a6, 4
	ldx.w	$a3, $a1, $a3
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a4, $a4, 1
	bstrpick.d	$a6, $a4, 31, 0
	addi.d	$a4, $a1, 12
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	ori	$a7, $zero, 1
	lu12i.w	$t0, 24414
	ori	$t0, $t0, 256
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a4, $a4, 8
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, -1
	beqz	$a6, .LBB9_7
.LBB9_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a5, .LBB9_2
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	ld.w	$t1, $a4, -4
	bne	$t1, $a3, .LBB9_2
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	ld.w	$t1, $a4, 0
	bge	$t1, $a2, .LBB9_2
# %bb.6:                                #   in Loop: Header=BB9_3 Depth=1
	sub.w	$t1, $a2, $t1
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	masknez	$a0, $a0, $t2
	maskeqz	$t1, $a7, $t2
	or	$a0, $t1, $a0
	b	.LBB9_2
.LBB9_7:                                # %._crit_edge
	beqz	$a0, .LBB9_12
# %bb.8:
	pcalau12i	$a2, %got_pc_hi20(rectang)
	ld.d	$a2, $a2, %got_pc_lo12(rectang)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 0
	blez	$a3, .LBB9_12
# %bb.9:                                # %.lr.ph.preheader.i
	slli.d	$a4, $a0, 3
	ldx.d	$a1, $a1, $a4
	vinsgr2vr.d	$vr1, $a1, 0
	addi.d	$a1, $a3, 1
	bstrpick.d	$a1, $a1, 31, 0
	vpackev.d	$vr1, $vr0, $vr1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	vpackev.d	$vr0, $vr1, $vr0
	.p2align	4, , 16
.LBB9_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vshuf4i.w	$vr2, $vr1, 136
	vshuf4i.w	$vr1, $vr1, 221
	vslt.w	$vr1, $vr1, $vr0
	vslt.w	$vr2, $vr0, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vmskltz.h	$vr1, $vr1
	vpickve2gr.hu	$a3, $vr1, 0
	beqz	$a3, .LBB9_13
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB9_10
.LBB9_12:
	move	$a0, $zero
.LBB9_13:                               # %recCheck.exit
	ret
.Lfunc_end9:
	.size	b, .Lfunc_end9-b
                                        # -- End function
	.globl	addPts                          # -- Begin function addPts
	.p2align	5
	.type	addPts,@function
addPts:                                 # @addPts
# %bb.0:
	pcalau12i	$a4, %got_pc_hi20(PtsArray)
	ld.d	$a4, $a4, %got_pc_lo12(PtsArray)
	ld.d	$a4, $a4, 0
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	st.w	$a5, $a4, 0
	slli.d	$a5, $a5, 3
	stx.w	$a0, $a4, $a5
	ld.w	$a5, $a4, 0
	addi.w	$a6, $a5, 1
	st.w	$a6, $a4, 0
	slli.d	$a6, $a6, 3
	stx.w	$a0, $a4, $a6
	ld.w	$a6, $a4, 0
	addi.w	$a7, $a6, 1
	st.w	$a7, $a4, 0
	slli.d	$a7, $a7, 3
	stx.w	$a1, $a4, $a7
	ld.w	$a7, $a4, 0
	alsl.d	$a5, $a5, $a4, 3
	st.w	$a2, $a5, 4
	alsl.d	$a5, $a6, $a4, 3
	addi.w	$a6, $a7, 1
	st.w	$a6, $a4, 0
	slli.d	$a6, $a6, 3
	stx.w	$a1, $a4, $a6
	ld.w	$a6, $a4, 0
	st.w	$a3, $a5, 4
	alsl.d	$a5, $a7, $a4, 3
	st.w	$a2, $a5, 4
	alsl.d	$a4, $a6, $a4, 3
	st.w	$a3, $a4, 4
	pcalau12i	$a4, %got_pc_hi20(rectang)
	ld.d	$a4, $a4, %got_pc_lo12(rectang)
	ld.d	$a4, $a4, 0
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	st.w	$a5, $a4, 0
	slli.d	$a5, $a5, 4
	stx.w	$a0, $a4, $a5
	ld.w	$a0, $a4, 0
	alsl.d	$a0, $a0, $a4, 4
	st.w	$a1, $a0, 4
	st.w	$a2, $a0, 8
	st.w	$a3, $a0, 12
	ret
.Lfunc_end10:
	.size	addPts, .Lfunc_end10-addPts
                                        # -- End function
	.globl	initPts                         # -- Begin function initPts
	.p2align	5
	.type	initPts,@function
initPts:                                # @initPts
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(PtsOut)
	ld.d	$a1, $a1, %got_pc_lo12(PtsOut)
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	ori	$a3, $zero, 808
	.p2align	4, , 16
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	stx.d	$zero, $a0, $a2
	stx.w	$zero, $a1, $a2
	addi.d	$a2, $a2, 8
	bne	$a2, $a3, .LBB11_1
# %bb.2:                                # %.preheader
	pcalau12i	$a0, %got_pc_hi20(rectang)
	ld.d	$a0, $a0, %got_pc_lo12(rectang)
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 416
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end11:
	.size	initPts, .Lfunc_end11-initPts
                                        # -- End function
	.globl	recCheck                        # -- Begin function recCheck
	.p2align	5
	.type	recCheck,@function
recCheck:                               # @recCheck
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(rectang)
	ld.d	$a2, $a2, %got_pc_lo12(rectang)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 0
	blez	$a3, .LBB12_4
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a4, %got_pc_hi20(PtsArray)
	ld.d	$a4, $a4, %got_pc_lo12(PtsArray)
	ld.d	$a4, $a4, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a4, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a4, $a0
	vinsgr2vr.d	$vr0, $a1, 0
	vinsgr2vr.d	$vr1, $a0, 0
	addi.d	$a0, $a3, 1
	bstrpick.d	$a1, $a0, 31, 0
	vpackev.d	$vr0, $vr0, $vr0
	addi.d	$a0, $a2, 16
	addi.d	$a1, $a1, -1
	vpackev.d	$vr0, $vr0, $vr1
	.p2align	4, , 16
.LBB12_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a0, 0
	vshuf4i.w	$vr2, $vr1, 136
	vshuf4i.w	$vr1, $vr1, 221
	vslt.w	$vr1, $vr1, $vr0
	vslt.w	$vr2, $vr0, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vmskltz.h	$vr1, $vr1
	vpickve2gr.hu	$a2, $vr1, 0
	beqz	$a2, .LBB12_5
# %bb.3:                                #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB12_2
.LBB12_4:
	move	$a0, $zero
	ret
.LBB12_5:
	ori	$a0, $zero, 1
	ret
.Lfunc_end12:
	.size	recCheck, .Lfunc_end12-recCheck
                                        # -- End function
	.globl	dumpError                       # -- Begin function dumpError
	.p2align	5
	.type	dumpError,@function
dumpError:                              # @dumpError
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(PtsOut)
	ld.d	$s0, $a0, %got_pc_lo12(PtsOut)
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB13_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$fp, $a1, %pc_lo12(.L.str.6)
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB13_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a1, .LBB13_2
.LBB13_3:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$s0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB13_6
# %bb.4:                                # %.lr.ph31.preheader
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$fp, $a1, %pc_lo12(.L.str.6)
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB13_5:                               # %.lr.ph31
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a1, .LBB13_5
.LBB13_6:                               # %._crit_edge32
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(rectang)
	ld.d	$s0, $a0, %got_pc_lo12(rectang)
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB13_9
# %bb.7:                                # %.lr.ph36.preheader
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$fp, $a1, %pc_lo12(.L.str.9)
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB13_8:                               # %.lr.ph36
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a0, 20
	ld.w	$a3, $a0, 24
	ld.w	$a4, $a0, 28
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 16
	blt	$s2, $a1, .LBB13_8
.LBB13_9:                               # %._crit_edge37
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end13:
	.size	dumpError, .Lfunc_end13-dumpError
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Serious error: could not advance upward "
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"from first vertex\n"
	.size	.L.str.1, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Two points in outline not rectilinear "
	.size	.L.str.3, 39

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"and this constitutes death\n"
	.size	.L.str.4, 28

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"x:%d  y:%d\n"
	.size	.L.str.6, 12

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"l:%d  r:%d  b:%d  t:%d\n"
	.size	.L.str.9, 24

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Fatal error in unbust.c"
	.size	.Lstr, 24

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"PtsOut:"
	.size	.Lstr.1, 8

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"PtsArray:"
	.size	.Lstr.2, 10

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Rectangles:"
	.size	.Lstr.3, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
