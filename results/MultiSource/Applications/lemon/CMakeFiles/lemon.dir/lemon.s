	.file	"lemon.c"
	.text
	.globl	Action_add                      # -- Begin function Action_add
	.p2align	5
	.type	Action_add,@function
Action_add:                             # @Action_add
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(Action_new.freelist)
	ld.d	$a4, $fp, %pc_lo12(Action_new.freelist)
	bnez	$a4, .LBB0_5
# %bb.1:
	move	$s0, $a0
	move	$s1, $a1
	move	$s2, $a2
	move	$s3, $a3
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB0_6
# %bb.2:                                # %vector.body.preheader
	move	$a4, $a0
	addi.d	$a0, $a0, 40
	ori	$a1, $zero, 98
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a0, 40
	st.d	$a0, $a0, -16
	st.d	$a2, $a0, 24
	addi.d	$a1, $a1, -2
	addi.d	$a0, $a0, 80
	bnez	$a1, .LBB0_3
# %bb.4:                                # %.preheader.i
	addi.d	$a0, $a4, 2047
	addi.d	$a0, $a0, 1913
	stptr.d	$a0, $a4, 3944
	stptr.d	$zero, $a4, 3984
	move	$a3, $s3
	move	$a2, $s2
	move	$a1, $s1
	move	$a0, $s0
.LBB0_5:                                # %Action_new.exit
	ld.d	$a5, $a4, 24
	st.d	$a5, $fp, %pc_lo12(Action_new.freelist)
	ld.d	$a5, $a0, 0
	st.d	$a5, $a4, 24
	st.d	$a4, $a0, 0
	st.w	$a1, $a4, 8
	st.d	$a2, $a4, 0
	st.d	$a3, $a4, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_6:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	Action_add, .Lfunc_end0-Action_add
                                        # -- End function
	.globl	acttab_free                     # -- Begin function acttab_free
	.p2align	5
	.type	acttab_free,@function
acttab_free:                            # @acttab_free
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	acttab_free, .Lfunc_end1-acttab_free
                                        # -- End function
	.globl	acttab_alloc                    # -- Begin function acttab_alloc
	.p2align	5
	.type	acttab_alloc,@function
acttab_alloc:                           # @acttab_alloc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_2
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_2:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	acttab_alloc, .Lfunc_end2-acttab_alloc
                                        # -- End function
	.globl	acttab_action                   # -- Begin function acttab_action
	.p2align	5
	.type	acttab_action,@function
acttab_action:                          # @acttab_action
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 36
	ld.w	$a3, $fp, 40
	move	$s0, $a2
	move	$s1, $a1
	blt	$a0, $a3, .LBB3_3
# %bb.1:
	ld.d	$a0, $fp, 16
	addi.w	$a1, $a3, 25
	st.w	$a1, $fp, 40
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB3_10
# %bb.2:                                # %thread-pre-split
	ld.w	$a0, $fp, 36
.LBB3_3:
	beqz	$a0, .LBB3_7
# %bb.4:
	ld.w	$a1, $fp, 32
	bge	$a1, $s1, .LBB3_6
# %bb.5:
	st.w	$s1, $fp, 32
.LBB3_6:
	ld.w	$a1, $fp, 24
	blt	$s1, $a1, .LBB3_8
	b	.LBB3_9
.LBB3_7:
	st.w	$s1, $fp, 32
.LBB3_8:
	st.w	$s1, $fp, 24
	st.w	$s0, $fp, 28
.LBB3_9:
	ld.d	$a1, $fp, 16
	alsl.d	$a2, $a0, $a1, 3
	slli.d	$a3, $a0, 3
	stx.w	$s1, $a1, $a3
	st.w	$s0, $a2, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 36
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_10:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	acttab_action, .Lfunc_end3-acttab_action
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function acttab_insert
.LCPI4_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	acttab_insert
	.p2align	5
	.type	acttab_insert,@function
acttab_insert:                          # @acttab_insert
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 32
	ld.w	$a2, $fp, 0
	ld.w	$s0, $fp, 4
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 1
	blt	$a0, $s0, .LBB4_5
# %bb.1:
	add.d	$a1, $s0, $a0
	ld.d	$a0, $fp, 8
	addi.w	$a1, $a1, 20
	st.w	$a1, $fp, 4
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB4_47
# %bb.2:                                # %.preheader127
	ld.w	$a1, $fp, 4
	bge	$s0, $a1, .LBB4_4
# %bb.3:                                # %.lr.ph.preheader
	alsl.d	$a0, $s0, $a0, 3
	sub.d	$a1, $s0, $a1
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %.loopexitthread-pre-split
	ld.w	$a2, $fp, 0
.LBB4_5:                                # %.loopexit
	ld.w	$a1, $fp, 24
	add.w	$a0, $a1, $a2
	blez	$a0, .LBB4_39
# %bb.6:                                # %.lr.ph150
	move	$a3, $zero
	move	$t3, $zero
	ld.d	$a4, $fp, 8
	bstrpick.d	$a5, $a2, 31, 0
	bstrpick.d	$a6, $a2, 30, 3
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a4, 32
	ori	$t0, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	move	$t1, $a1
	b	.LBB4_9
.LBB4_7:                                # %._crit_edge142
                                        #   in Loop: Header=BB4_9 Depth=1
	beq	$t2, $a2, .LBB4_38
	.p2align	4, , 16
.LBB4_8:                                # %.thread
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.d	$t2, $a3, 1
	nor	$t3, $a3, $zero
	addi.d	$t1, $t1, -1
	move	$a3, $t2
	beq	$t2, $a0, .LBB4_40
.LBB4_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #     Child Loop BB4_33 Depth 2
                                        #     Child Loop BB4_36 Depth 2
                                        #     Child Loop BB4_24 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	slli.d	$t2, $a3, 3
	ldx.w	$t2, $a4, $t2
	bltz	$t2, .LBB4_22
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	bne	$t2, $a1, .LBB4_8
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=1
	alsl.d	$t2, $a3, $a4, 3
	ld.w	$t2, $t2, 4
	ld.w	$t4, $fp, 28
	bne	$t2, $t4, .LBB4_8
# %bb.12:                               # %.preheader125
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.w	$t2, $fp, 36
	blez	$t2, .LBB4_19
# %bb.13:                               # %.lr.ph133
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$t4, $fp, 16
	addi.d	$t4, $t4, 4
	move	$t5, $t2
	.p2align	4, , 16
.LBB4_14:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t4, -4
	sub.d	$t6, $t7, $a1
	add.w	$t6, $t6, $a3
	bltz	$t6, .LBB4_8
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=2
	bge	$t6, $a2, .LBB4_8
# %bb.16:                               #   in Loop: Header=BB4_14 Depth=2
	slli.d	$t8, $t6, 3
	ldx.w	$t8, $a4, $t8
	bne	$t7, $t8, .LBB4_8
# %bb.17:                               #   in Loop: Header=BB4_14 Depth=2
	alsl.d	$t6, $t6, $a4, 3
	ld.w	$t7, $t4, 0
	ld.w	$t6, $t6, 4
	bne	$t7, $t6, .LBB4_8
# %bb.18:                               #   in Loop: Header=BB4_14 Depth=2
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB4_14
.LBB4_19:                               # %.preheader124
                                        #   in Loop: Header=BB4_9 Depth=1
	blez	$a2, .LBB4_31
# %bb.20:                               # %.lr.ph136
                                        #   in Loop: Header=BB4_9 Depth=1
	bgeu	$a2, $t0, .LBB4_32
# %bb.21:                               #   in Loop: Header=BB4_9 Depth=1
	move	$t5, $zero
	move	$t3, $zero
	move	$t6, $zero
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_22:                               # %.preheader123
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.w	$t2, $fp, 36
	blez	$t2, .LBB4_27
# %bb.23:                               # %.lr.ph139
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$t3, $fp, 16
	.p2align	4, , 16
.LBB4_24:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 0
	sub.d	$t4, $t4, $a1
	add.w	$t4, $t4, $a3
	bltz	$t4, .LBB4_8
# %bb.25:                               #   in Loop: Header=BB4_24 Depth=2
	slli.d	$t4, $t4, 3
	ldx.w	$t4, $a4, $t4
	bgez	$t4, .LBB4_8
# %bb.26:                               #   in Loop: Header=BB4_24 Depth=2
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 8
	bnez	$t2, .LBB4_24
.LBB4_27:                               # %.preheader
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$t2, $zero
	blez	$a2, .LBB4_7
# %bb.28:                               # %.lr.ph141
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$t3, $a5
	move	$t4, $a4
	.p2align	4, , 16
.LBB4_29:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t4, 0
	add.w	$t6, $t1, $t2
	beq	$t6, $t5, .LBB4_7
# %bb.30:                               #   in Loop: Header=BB4_29 Depth=2
	addi.w	$t2, $t2, 1
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, 8
	bnez	$t3, .LBB4_29
	b	.LBB4_38
.LBB4_31:                               #   in Loop: Header=BB4_9 Depth=1
	move	$t3, $zero
	b	.LBB4_37
.LBB4_32:                               # %vector.ph
                                        #   in Loop: Header=BB4_9 Depth=1
	pcalau12i	$t4, %pc_hi20(.LCPI4_0)
	vld	$vr2, $t4, %pc_lo12(.LCPI4_0)
	add.d	$t3, $a1, $t3
	vreplgr2vr.w	$vr3, $t3
	vaddi.wu	$vr4, $vr3, 4
	move	$t3, $a7
	move	$t4, $a6
	vori.b	$vr5, $vr0, 0
	vori.b	$vr6, $vr0, 0
	.p2align	4, , 16
.LBB4_33:                               # %vector.body
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t3, -32
	ld.w	$t6, $t3, -24
	ld.w	$t7, $t3, -16
	ld.w	$t8, $t3, -8
	vinsgr2vr.w	$vr7, $t5, 0
	vinsgr2vr.w	$vr7, $t6, 1
	vinsgr2vr.w	$vr7, $t7, 2
	vinsgr2vr.w	$vr7, $t8, 3
	ld.w	$t5, $t3, 0
	ld.w	$t6, $t3, 8
	ld.w	$t7, $t3, 16
	ld.w	$t8, $t3, 24
	vinsgr2vr.w	$vr8, $t5, 0
	vinsgr2vr.w	$vr8, $t6, 1
	vinsgr2vr.w	$vr8, $t7, 2
	vinsgr2vr.w	$vr8, $t8, 3
	vslt.w	$vr9, $vr1, $vr7
	vslt.w	$vr10, $vr1, $vr8
	vadd.w	$vr11, $vr3, $vr2
	vadd.w	$vr12, $vr2, $vr4
	vseq.w	$vr7, $vr7, $vr11
	vseq.w	$vr8, $vr8, $vr12
	vand.v	$vr7, $vr9, $vr7
	vand.v	$vr8, $vr10, $vr8
	vsub.w	$vr5, $vr5, $vr7
	vsub.w	$vr6, $vr6, $vr8
	vaddi.wu	$vr2, $vr2, 8
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB4_33
# %bb.34:                               # %middle.block
                                        #   in Loop: Header=BB4_9 Depth=1
	vadd.w	$vr2, $vr6, $vr5
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$t3, $vr2, 0
	move	$t5, $a6
	move	$t6, $a6
	beq	$a6, $a5, .LBB4_37
.LBB4_35:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_9 Depth=1
	alsl.d	$t4, $t5, $a4, 3
	sub.d	$t5, $a5, $t5
	add.w	$t6, $t6, $t1
	.p2align	4, , 16
.LBB4_36:                               # %scalar.ph
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t4, 0
	addi.w	$t8, $zero, -1
	slt	$t8, $t8, $t7
	xor	$t7, $t6, $t7
	sltui	$t7, $t7, 1
	and	$t7, $t8, $t7
	add.d	$t3, $t3, $t7
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, -1
	addi.w	$t6, $t6, 1
	bnez	$t5, .LBB4_36
.LBB4_37:                               # %._crit_edge
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.w	$t3, $t3, 0
	bne	$t3, $t2, .LBB4_8
.LBB4_38:
	move	$a0, $a3
	ld.w	$a2, $fp, 36
	bgtz	$a2, .LBB4_41
	b	.LBB4_46
.LBB4_39:
	move	$a0, $zero
.LBB4_40:                               # %._crit_edge151
	ld.w	$a2, $fp, 36
	blez	$a2, .LBB4_46
.LBB4_41:                               # %.lr.ph158
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_42:                               #   in Loop: Header=BB4_43 Depth=1
	ld.w	$a3, $fp, 36
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bge	$a2, $a3, .LBB4_45
.LBB4_43:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $fp, 16
	ldx.w	$a4, $a3, $a1
	ld.w	$a5, $fp, 24
	ld.d	$a6, $fp, 8
	ldx.d	$a7, $a3, $a1
	sub.d	$a3, $a4, $a5
	add.w	$a3, $a3, $a0
	slli.d	$a4, $a3, 3
	stx.d	$a7, $a6, $a4
	ld.w	$a4, $fp, 0
	blt	$a3, $a4, .LBB4_42
# %bb.44:                               #   in Loop: Header=BB4_43 Depth=1
	addi.d	$a3, $a3, 1
	st.w	$a3, $fp, 0
	b	.LBB4_42
.LBB4_45:                               # %._crit_edge159.loopexit
	ld.w	$a1, $fp, 24
.LBB4_46:                               # %._crit_edge159
	sub.w	$a0, $a0, $a1
	st.w	$zero, $fp, 36
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_47:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	acttab_insert, .Lfunc_end4-acttab_insert
                                        # -- End function
	.globl	FindRulePrecedences             # -- Begin function FindRulePrecedences
	.p2align	5
	.type	FindRulePrecedences,@function
FindRulePrecedences:                    # @FindRulePrecedences
# %bb.0:
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB5_15
# %bb.1:                                # %.lr.ph33.preheader
	ori	$a1, $zero, 2
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %.critedge
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $a0, 88
	beqz	$a0, .LBB5_15
.LBB5_3:                                # %.lr.ph33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_11 Depth 3
	ld.d	$a2, $a0, 64
	bnez	$a2, .LBB5_2
# %bb.4:                                # %.preheader24
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a2, $a0, 24
	blez	$a2, .LBB5_2
# %bb.5:                                # %.lr.ph27
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=2
	move	$a4, $zero
	addi.d	$a3, $a3, 1
	beq	$a3, $a2, .LBB5_2
.LBB5_7:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
	bnez	$a4, .LBB5_2
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=2
	ld.d	$a4, $a0, 32
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	ld.w	$a5, $a4, 12
	bne	$a5, $a1, .LBB5_13
# %bb.9:                                # %.preheader
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.w	$a5, $a4, 84
	blez	$a5, .LBB5_6
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.d	$a6, $a4, 88
	.p2align	4, , 16
.LBB5_11:                               #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a6, 0
	ld.w	$a7, $a4, 32
	bgez	$a7, .LBB5_14
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=3
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB5_11
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_13:                               #   in Loop: Header=BB5_7 Depth=2
	ld.w	$a5, $a4, 32
	bltz	$a5, .LBB5_6
.LBB5_14:                               # %.loopexit.sink.split
                                        #   in Loop: Header=BB5_7 Depth=2
	st.d	$a4, $a0, 64
	addi.d	$a3, $a3, 1
	bne	$a3, $a2, .LBB5_7
	b	.LBB5_2
.LBB5_15:                               # %._crit_edge
	ret
.Lfunc_end5:
	.size	FindRulePrecedences, .Lfunc_end5-FindRulePrecedences
                                        # -- End function
	.globl	FindFirstSets                   # -- Begin function FindFirstSets
	.p2align	5
	.type	FindFirstSets,@function
FindFirstSets:                          # @FindFirstSets
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	blez	$a0, .LBB6_8
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 32
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB6_3
# %bb.2:
	move	$a2, $zero
	b	.LBB6_6
.LBB6_3:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a1, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB6_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -16
	ld.d	$a6, $a3, -8
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a3, 8
	st.w	$zero, $a5, 48
	st.w	$zero, $a6, 48
	st.w	$zero, $a7, 48
	st.w	$zero, $t0, 48
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB6_4
# %bb.5:                                # %middle.block
	beq	$a2, $a0, .LBB6_8
.LBB6_6:                                # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB6_7:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.w	$zero, $a3, 48
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB6_7
.LBB6_8:                                # %._crit_edge
	ld.w	$a1, $fp, 28
	pcalau12i	$s1, %pc_hi20(size)
	bge	$a1, $a0, .LBB6_12
# %bb.9:                                # %.lr.ph88
	ld.w	$s0, $s1, %pc_lo12(size)
	slli.d	$s2, $a1, 3
	sub.d	$s3, $a0, $a1
	.p2align	4, , 16
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_51
# %bb.11:                               # %SetNew.exit
                                        #   in Loop: Header=BB6_10 Depth=1
	ld.d	$a1, $fp, 32
	ldx.d	$a1, $a1, $s2
	st.d	$a0, $a1, 40
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB6_10
.LBB6_12:                               # %.preheader78
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB6_50
# %bb.13:                               # %.lr.ph104.preheader
	move	$a1, $zero
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_14:                               # %.lr.ph104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 48
	bnez	$a4, .LBB6_23
# %bb.15:                               # %.preheader77
                                        #   in Loop: Header=BB6_14 Depth=1
	ld.w	$a4, $a2, 24
	blez	$a4, .LBB6_20
# %bb.16:                               # %.lr.ph90
                                        #   in Loop: Header=BB6_14 Depth=1
	ld.d	$a6, $a2, 32
	move	$a5, $zero
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_17:                               #   Parent Loop BB6_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a6, 0
	ld.w	$t1, $t0, 12
	bnez	$t1, .LBB6_21
# %bb.18:                               #   in Loop: Header=BB6_17 Depth=2
	ld.w	$t0, $t0, 48
	beqz	$t0, .LBB6_21
# %bb.19:                               #   in Loop: Header=BB6_17 Depth=2
	addi.w	$a5, $a5, 1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB6_17
	b	.LBB6_22
.LBB6_20:                               #   in Loop: Header=BB6_14 Depth=1
	move	$a5, $zero
.LBB6_21:                               # %.thread
                                        #   in Loop: Header=BB6_14 Depth=1
	bne	$a5, $a4, .LBB6_23
.LBB6_22:                               # %.thread.thread
                                        #   in Loop: Header=BB6_14 Depth=1
	ori	$a1, $zero, 1
	st.w	$a1, $a3, 48
.LBB6_23:                               #   in Loop: Header=BB6_14 Depth=1
	ld.d	$a2, $a2, 88
	bnez	$a2, .LBB6_14
# %bb.24:                               # %._crit_edge105
                                        #   in Loop: Header=BB6_14 Depth=1
	move	$a3, $a1
	move	$a1, $zero
	move	$a2, $a0
	bnez	$a3, .LBB6_14
# %bb.25:                               # %.preheader76.split127.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	b	.LBB6_27
	.p2align	4, , 16
.LBB6_26:                               # %._crit_edge125
                                        #   in Loop: Header=BB6_27 Depth=1
	beqz	$a3, .LBB6_50
.LBB6_27:                               # %.preheader76.split127
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_31 Depth 2
                                        #       Child Loop BB6_35 Depth 3
                                        #         Child Loop BB6_41 Depth 4
                                        #       Child Loop BB6_49 Depth 3
	ld.d	$a2, $fp, 8
	beqz	$a2, .LBB6_50
# %bb.28:                               # %.lr.ph124.preheader
                                        #   in Loop: Header=BB6_27 Depth=1
	move	$a3, $zero
	b	.LBB6_31
.LBB6_29:                               #   in Loop: Header=BB6_31 Depth=2
	ld.d	$a4, $a4, 40
	ld.w	$a5, $a5, 8
	ldx.bu	$a6, $a4, $a5
	stx.b	$a0, $a4, $a5
	sltui	$a4, $a6, 1
	add.w	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_30:                               # %.loopexit
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.d	$a2, $a2, 88
	beqz	$a2, .LBB6_26
.LBB6_31:                               # %.lr.ph124
                                        #   Parent Loop BB6_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_35 Depth 3
                                        #         Child Loop BB6_41 Depth 4
                                        #       Child Loop BB6_49 Depth 3
	ld.w	$a7, $a2, 24
	blez	$a7, .LBB6_30
# %bb.32:                               # %.lr.ph110
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.d	$a4, $a2, 0
	move	$a6, $zero
	b	.LBB6_35
	.p2align	4, , 16
.LBB6_33:                               #   in Loop: Header=BB6_35 Depth=3
	ld.w	$a5, $a4, 48
	beqz	$a5, .LBB6_30
# %bb.34:                               #   in Loop: Header=BB6_35 Depth=3
	addi.d	$a6, $a6, 1
	bge	$a6, $a7, .LBB6_30
.LBB6_35:                               #   Parent Loop BB6_27 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_41 Depth 4
	ld.d	$a5, $a2, 32
	slli.d	$t0, $a6, 3
	ldx.d	$a5, $a5, $t0
	ld.w	$t0, $a5, 12
	beqz	$t0, .LBB6_29
# %bb.36:                               #   in Loop: Header=BB6_35 Depth=3
	beq	$t0, $a1, .LBB6_47
# %bb.37:                               #   in Loop: Header=BB6_35 Depth=3
	beq	$a4, $a5, .LBB6_33
# %bb.38:                               #   in Loop: Header=BB6_35 Depth=3
	ld.w	$a7, $s1, %pc_lo12(size)
	blez	$a7, .LBB6_44
# %bb.39:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB6_35 Depth=3
	ld.d	$t0, $a4, 40
	ld.d	$t1, $a5, 40
	move	$t2, $zero
	b	.LBB6_41
	.p2align	4, , 16
.LBB6_40:                               #   in Loop: Header=BB6_41 Depth=4
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 1
	beqz	$a7, .LBB6_45
.LBB6_41:                               # %.lr.ph.i
                                        #   Parent Loop BB6_27 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        #       Parent Loop BB6_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t3, $t1, 0
	beqz	$t3, .LBB6_40
# %bb.42:                               #   in Loop: Header=BB6_41 Depth=4
	ld.bu	$t3, $t0, 0
	bnez	$t3, .LBB6_40
# %bb.43:                               #   in Loop: Header=BB6_41 Depth=4
	ori	$t2, $zero, 1
	st.b	$t2, $t0, 0
	b	.LBB6_40
	.p2align	4, , 16
.LBB6_44:                               #   in Loop: Header=BB6_35 Depth=3
	move	$t2, $zero
.LBB6_45:                               # %SetUnion.exit
                                        #   in Loop: Header=BB6_35 Depth=3
	ld.w	$a5, $a5, 48
	add.w	$a3, $t2, $a3
	beqz	$a5, .LBB6_30
# %bb.46:                               # %SetUnion.exit._crit_edge
                                        #   in Loop: Header=BB6_35 Depth=3
	ld.w	$a7, $a2, 24
	addi.d	$a6, $a6, 1
	blt	$a6, $a7, .LBB6_35
	b	.LBB6_30
.LBB6_47:                               # %.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.w	$a6, $a5, 84
	blez	$a6, .LBB6_30
# %bb.48:                               # %.lr.ph117
                                        #   in Loop: Header=BB6_31 Depth=2
	move	$a6, $zero
	move	$a7, $zero
	.p2align	4, , 16
.LBB6_49:                               #   Parent Loop BB6_27 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t0, $a5, 88
	ldx.d	$t0, $t0, $a6
	ld.d	$t1, $a4, 40
	ld.w	$t0, $t0, 8
	ldx.bu	$t2, $t1, $t0
	stx.b	$a0, $t1, $t0
	ld.w	$t0, $a5, 84
	sltui	$t1, $t2, 1
	add.w	$a3, $a3, $t1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	blt	$a7, $t0, .LBB6_49
	b	.LBB6_30
.LBB6_50:                               # %.split.us
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_51:
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	FindFirstSets, .Lfunc_end6-FindFirstSets
                                        # -- End function
	.globl	FindStates                      # -- Begin function FindStates
	.p2align	5
	.type	FindStates,@function
FindStates:                             # @FindStates
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(current)
	addi.d	$a0, $a0, %pc_lo12(current)
	st.d	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(currentend)
	st.d	$a0, $a1, %pc_lo12(currentend)
	pcalau12i	$a0, %pc_hi20(basis)
	addi.d	$a0, $a0, %pc_lo12(basis)
	pcalau12i	$s1, %pc_hi20(x4a)
	ld.d	$a1, $s1, %pc_lo12(x4a)
	st.d	$zero, $a0, 0
	pcalau12i	$a2, %pc_hi20(basisend)
	st.d	$a0, $a2, %pc_lo12(basisend)
	beqz	$a1, .LBB7_6
.LBB7_1:                                # %Configlist_init.exit
	ld.d	$s0, $fp, 96
	beqz	$s0, .LBB7_9
# %bb.2:
	pcalau12i	$a0, %pc_hi20(x2a)
	ld.d	$a0, $a0, %pc_lo12(x2a)
	beqz	$a0, .LBB7_20
# %bb.3:
	ld.bu	$a2, $s0, 0
	beqz	$a2, .LBB7_10
# %bb.4:                                # %.lr.ph.i.i.preheader
	move	$a1, $zero
	addi.d	$a3, $s0, 1
	.p2align	4, , 16
.LBB7_5:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a1, $a1, 1
	alsl.d	$a1, $a5, $a1, 2
	add.w	$a1, $a1, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB7_5
	b	.LBB7_11
.LBB7_6:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(x4a)
	beqz	$a0, .LBB7_1
# %bb.7:
	move	$s0, $a0
	ori	$a0, $zero, 64
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 2048
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	beqz	$a0, .LBB7_29
# %bb.8:                                # %.loopexit.loopexit.i.i
	addi.d	$a0, $a0, 1536
	st.d	$a0, $s0, 16
	ori	$a2, $zero, 512
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB7_1
.LBB7_9:
	addi.d	$s1, $fp, 8
	b	.LBB7_21
.LBB7_10:
	move	$a1, $zero
.LBB7_11:                               # %strhash.exit.i
	ld.w	$a2, $a0, 0
	ld.d	$a0, $a0, 16
	addi.w	$a2, $a2, -1
	and	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a0, $a1
	beqz	$s1, .LBB7_20
	.p2align	4, , 16
.LBB7_12:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=1
	ld.d	$s1, $s1, 16
	bnez	$s1, .LBB7_12
	b	.LBB7_20
.LBB7_14:                               # %Symbol_find.exit
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB7_20
# %bb.15:
	ld.d	$s2, $fp, 8
	bnez	$s2, .LBB7_22
.LBB7_16:                               # %._crit_edge42
	ld.d	$s0, $s1, 16
	beqz	$s0, .LBB7_19
# %bb.17:                               # %.lr.ph47.preheader
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB7_18:                               # %.lr.ph47
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s1, $s0, 16
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Configlist_addbasis)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 16
	st.b	$s1, $a0, 0
	ld.d	$s0, $s0, 80
	bnez	$s0, .LBB7_18
.LBB7_19:                               # %._crit_edge48
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(getstate)
	jr	$t8
.LBB7_20:                               # %Symbol_find.exit.thread
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a0, $fp, 240
	ld.d	$a4, $a1, 0
	addi.d	$s1, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a2, $a1, %pc_lo12(.L.str.2)
	move	$a1, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 40
.LBB7_21:                               # %.preheader.lr.ph.sink.split
	ld.d	$s2, $s1, 0
	ld.d	$s1, $s2, 0
.LBB7_22:                               # %.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s0, $a0, %pc_lo12(.L.str.3)
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %._crit_edge
                                        #   in Loop: Header=BB7_24 Depth=1
	ld.d	$s2, $s2, 88
	beqz	$s2, .LBB7_16
.LBB7_24:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_27 Depth 2
	ld.w	$a0, $s2, 24
	blez	$a0, .LBB7_23
# %bb.25:                               # %.lr.ph
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_26:                               #   in Loop: Header=BB7_27 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a0, .LBB7_23
.LBB7_27:                               #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 32
	ldx.d	$a1, $a1, $s3
	bne	$a1, $s1, .LBB7_26
# %bb.28:                               #   in Loop: Header=BB7_27 Depth=2
	ld.d	$a0, $fp, 240
	ld.d	$a3, $s1, 0
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	ld.w	$a0, $s2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 40
	b	.LBB7_26
.LBB7_29:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, %pc_lo12(x4a)
	b	.LBB7_1
.Lfunc_end7:
	.size	FindStates, .Lfunc_end7-FindStates
                                        # -- End function
	.globl	ErrorMsg                        # -- Begin function ErrorMsg
	.p2align	5
	.type	ErrorMsg,@function
ErrorMsg:                               # @ErrorMsg
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 1976                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1944                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1936                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1928                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1920                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1912                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1904                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1896                  # 8-byte Folded Spill
	lu12i.w	$t0, 2
	sub.d	$sp, $sp, $t0
	move	$s0, $a2
	move	$t1, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2024
	add.d	$a0, $sp, $a0
	st.d	$a7, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2016
	add.d	$a0, $sp, $a0
	st.d	$a6, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2008
	add.d	$a0, $sp, $a0
	st.d	$a5, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2000
	add.d	$a0, $sp, $a0
	st.d	$a4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1992
	add.d	$a0, $sp, $a0
	st.d	$a3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1992
	add.d	$a0, $sp, $a0
	st.d	$a0, $sp, 40
	blez	$a1, .LBB8_2
# %bb.1:
	move	$t0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 20
	move	$a3, $t1
	move	$a4, $t0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_3
.LBB8_2:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 20
	move	$a3, $t1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB8_3:
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	addi.d	$a0, $sp, 88
	addi.d	$s1, $sp, 88
	move	$a1, $s0
	pcaddu18i	$ra, %call36(vsprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB8_7
# %bb.4:                                # %.lr.ph.preheader
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $s1, $a1
	ori	$a2, $zero, 10
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB8_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a0, 0
	add.d	$a5, $s1, $a4
	ld.bu	$a5, $a5, -1
	bne	$a5, $a2, .LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a0, $a0, -1
	st.b	$zero, $a1, 0
	addi.d	$a1, $a1, -1
	blt	$a3, $a4, .LBB8_5
.LBB8_7:                                # %.critedge
	ld.bu	$a0, $sp, 88
	beqz	$a0, .LBB8_28
# %bb.8:                                # %.lr.ph28
	addi.w	$a0, $fp, 0
	ori	$a1, $zero, 79
	ori	$s0, $zero, 0
	bge	$a1, $a0, .LBB8_13
# %bb.9:                                # %findbreak.exit.us.preheader
	addi.d	$s1, $sp, 88
	ori	$s2, $zero, 0
	lu32i.d	$s2, -1
	lu32i.d	$s0, 1
	ori	$s3, $zero, 32
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s4, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$fp, $a0, %pc_lo12(.L.str.9)
	move	$s5, $zero
	addi.d	$a4, $sp, 88
	.p2align	4, , 16
.LBB8_10:                               # %findbreak.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_11 Depth 2
	slli.d	$a0, $s5, 32
	add.d	$s6, $a0, $s2
	.p2align	4, , 16
.LBB8_11:                               #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s5, $s1
	addi.d	$s5, $s5, 1
	add.d	$s6, $s6, $s0
	beq	$a0, $s3, .LBB8_11
# %bb.12:                               #   in Loop: Header=BB8_10 Depth=1
	ld.d	$a0, $s4, 0
	addi.d	$a2, $sp, 48
	move	$a1, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	srai.d	$a0, $s6, 32
	ldx.bu	$a1, $a0, $s1
	add.d	$a4, $s1, $a0
	addi.w	$s5, $s5, -1
	bnez	$a1, .LBB8_10
	b	.LBB8_28
.LBB8_13:                               # %.lr.ph.i.preheader
	slli.d	$a0, $fp, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 78
	sub.d	$a0, $a1, $a0
	srai.d	$s1, $a0, 32
	ori	$a0, $zero, 80
	sub.d	$a0, $a0, $fp
	bstrpick.d	$s2, $a0, 31, 0
	addi.d	$s3, $sp, 88
	ori	$s4, $zero, 9
	ori	$s5, $zero, 32
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu32i.d	$s0, 1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $zero
	ori	$s8, $zero, 45
	ori	$s7, $zero, 10
	addi.d	$a4, $sp, 88
	.p2align	4, , 16
.LBB8_14:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_18 Depth 2
                                        #     Child Loop BB8_26 Depth 2
	move	$a1, $zero
	move	$a0, $zero
	move	$a3, $zero
	b	.LBB8_18
	.p2align	4, , 16
.LBB8_15:                               #   in Loop: Header=BB8_18 Depth=2
	bne	$a5, $s8, .LBB8_21
# %bb.16:                               #   in Loop: Header=BB8_18 Depth=2
	slt	$a6, $a0, $s1
	masknez	$a3, $a3, $a6
	maskeqz	$a6, $a1, $a6
	or	$a3, $a6, $a3
.LBB8_17:                               #   in Loop: Header=BB8_18 Depth=2
	addi.d	$a5, $a5, -32
	sltui	$a5, $a5, 1
	masknez	$a3, $a3, $a5
	maskeqz	$a2, $a2, $a5
	addi.d	$a0, $a0, 1
	or	$a3, $a2, $a3
	beq	$s2, $a0, .LBB8_25
.LBB8_18:                               #   Parent Loop BB8_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a5, $a4, $a0
	move	$a2, $a1
	addi.w	$a1, $a1, 1
	blt	$s4, $a5, .LBB8_15
# %bb.19:                               #   in Loop: Header=BB8_18 Depth=2
	bne	$a5, $s4, .LBB8_22
# %bb.20:                               #   in Loop: Header=BB8_18 Depth=2
	stx.b	$s5, $a4, $a0
	b	.LBB8_17
.LBB8_21:                               #   in Loop: Header=BB8_18 Depth=2
	bne	$a5, $s7, .LBB8_17
	b	.LBB8_23
.LBB8_22:                               #   in Loop: Header=BB8_18 Depth=2
	bnez	$a5, .LBB8_17
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_23:                               #   in Loop: Header=BB8_14 Depth=1
	stx.b	$s5, $a4, $a0
.LBB8_24:                               # %findbreak.exit
                                        #   in Loop: Header=BB8_14 Depth=1
	move	$a3, $a2
.LBB8_25:                               # %findbreak.exit
                                        #   in Loop: Header=BB8_14 Depth=1
	add.w	$a0, $a3, $fp
	slli.d	$a1, $a0, 32
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$s6, $a1, $a2
	addi.d	$fp, $a0, -1
	add.d	$a0, $s3, $a0
	.p2align	4, , 16
.LBB8_26:                               #   Parent Loop BB8_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	add.d	$s6, $s6, $s0
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, 1
	beq	$a1, $s5, .LBB8_26
# %bb.27:                               #   in Loop: Header=BB8_14 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 48
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	srai.d	$a0, $s6, 32
	ldx.bu	$a1, $a0, $s3
	add.d	$a4, $s3, $a0
	bnez	$a1, .LBB8_14
.LBB8_28:                               # %._crit_edge
	lu12i.w	$a0, 2
	add.d	$sp, $sp, $a0
	ld.d	$s8, $sp, 1896                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1904                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1912                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1920                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1928                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1936                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1976                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end8:
	.size	ErrorMsg, .Lfunc_end8-ErrorMsg
                                        # -- End function
	.globl	getstate                        # -- Begin function getstate
	.p2align	5
	.type	getstate,@function
getstate:                               # @getstate
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a0
	pcaddu18i	$ra, %call36(Configlist_sortbasis)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(basis)
	ld.d	$s0, $a0, %pc_lo12(basis)
	st.d	$zero, $a0, %pc_lo12(basis)
	pcalau12i	$a0, %pc_hi20(basisend)
	st.d	$zero, $a0, %pc_lo12(basisend)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(State_find)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_18
# %bb.1:                                # %.preheader
	move	$fp, $a0
	beqz	$s0, .LBB9_12
# %bb.2:                                # %.preheader
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB9_12
# %bb.3:                                # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(plink_freelist)
	ld.d	$a2, $a1, %pc_lo12(plink_freelist)
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB9_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #     Child Loop BB9_8 Depth 2
	ld.d	$a3, $s0, 32
	beqz	$a3, .LBB9_7
# %bb.5:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a4, $a0, 32
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph.i
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, 8
	st.d	$a4, $a3, 8
	st.d	$a3, $a0, 32
	move	$a4, $a3
	move	$a3, $a5
	bnez	$a5, .LBB9_6
.LBB9_7:                                # %Plink_copy.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a3, $s0, 24
	beqz	$a3, .LBB9_10
	.p2align	4, , 16
.LBB9_8:                                # %.lr.ph.i32
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	move	$a2, $a3
	ld.d	$a3, $a3, 8
	st.d	$a4, $a2, 8
	bnez	$a3, .LBB9_8
# %bb.9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB9_4 Depth=1
	st.d	$a2, $a1, %pc_lo12(plink_freelist)
.LBB9_10:                               # %Plink_delete.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a3, $s0, 24
	ld.d	$s0, $s0, 64
	vst	$vr0, $a3, 0
	beqz	$s0, .LBB9_12
# %bb.11:                               # %Plink_delete.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $a0, 64
	bnez	$a0, .LBB9_4
.LBB9_12:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(current)
	ld.d	$s0, $a0, %pc_lo12(current)
	st.d	$zero, $a0, %pc_lo12(current)
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$zero, $a0, %pc_lo12(currentend)
	beqz	$s0, .LBB9_20
# %bb.13:                               # %.lr.ph.preheader.i35
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$s2, $s1, %pc_lo12(freelist)
	b	.LBB9_15
	.p2align	4, , 16
.LBB9_14:                               #   in Loop: Header=BB9_15 Depth=1
	st.d	$s2, $s3, 56
	move	$s2, $s3
	beqz	$s0, .LBB9_17
.LBB9_15:                               # %.lr.ph.i36
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $s0
	ld.d	$a0, $s0, 16
	ld.d	$s0, $s0, 56
	beqz	$a0, .LBB9_14
# %bb.16:                               #   in Loop: Header=BB9_15 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB9_14
.LBB9_17:                               # %._crit_edge.i39
	st.d	$s3, $s1, %pc_lo12(freelist)
	b	.LBB9_20
.LBB9_18:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Configlist_closure)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Configlist_sort)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(current)
	ld.d	$s2, $a0, %pc_lo12(current)
	st.d	$zero, $a0, %pc_lo12(current)
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$zero, $a0, %pc_lo12(currentend)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_21
# %bb.19:                               # %State_new.exit
	move	$fp, $a0
	ld.w	$a0, $s1, 16
	st.d	$s0, $fp, 0
	st.d	$s2, $fp, 8
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 16
	st.w	$a0, $fp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(State_insert)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(buildshifts)
	jirl	$ra, $ra, 0
.LBB9_20:                               # %Configlist_eat.exit
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB9_21:
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	getstate, .Lfunc_end9-getstate
                                        # -- End function
	.globl	same_symbol                     # -- Begin function same_symbol
	.p2align	5
	.type	same_symbol,@function
same_symbol:                            # @same_symbol
# %bb.0:
	move	$a2, $a0
	ori	$a0, $zero, 1
	beq	$a2, $a1, .LBB10_8
# %bb.1:
	ld.w	$a4, $a2, 12
	ori	$a3, $zero, 2
	bne	$a4, $a3, .LBB10_9
# %bb.2:
	ld.w	$a4, $a1, 12
	bne	$a4, $a3, .LBB10_9
# %bb.3:
	ld.w	$a3, $a2, 84
	ld.w	$a4, $a1, 84
	bne	$a3, $a4, .LBB10_9
# %bb.4:                                # %.preheader
	blez	$a3, .LBB10_8
# %bb.5:                                # %.lr.ph
	ld.d	$a2, $a2, 88
	ld.d	$a1, $a1, 88
	.p2align	4, , 16
.LBB10_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a1, 0
	bne	$a4, $a5, .LBB10_9
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=1
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB10_6
.LBB10_8:                               # %.loopexit
	ret
.LBB10_9:
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	same_symbol, .Lfunc_end10-same_symbol
                                        # -- End function
	.globl	buildshifts                     # -- Begin function buildshifts
	.p2align	5
	.type	buildshifts,@function
buildshifts:                            # @buildshifts
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s2, $a1, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s2, .LBB11_40
# %bb.1:
	move	$fp, $a1
	ori	$a0, $zero, 1
	move	$a1, $s2
	.p2align	4, , 16
.LBB11_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a1, 48
	ld.d	$a1, $a1, 56
	bnez	$a1, .LBB11_2
# %bb.3:
	pcalau12i	$a0, %pc_hi20(current)
	addi.d	$a0, $a0, %pc_lo12(current)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(basis)
	addi.d	$s5, $a0, %pc_lo12(basis)
	pcalau12i	$a0, %pc_hi20(basisend)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s7, $zero, 2
	pcalau12i	$s8, %pc_hi20(Action_new.freelist)
	ori	$s4, $zero, 1568
	b	.LBB11_7
.LBB11_4:                               #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $s8, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB11_36
.LBB11_5:                               # %Action_add.exit54
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a1, $a0, 24
	ld.d	$a2, $fp, 24
	st.d	$a1, $s8, %pc_lo12(Action_new.freelist)
	st.d	$a2, $a0, 24
	st.d	$a0, $fp, 24
	st.w	$zero, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$s1, $a0, 16
	.p2align	4, , 16
.LBB11_6:                               # %.loopexit
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$s2, $s2, 56
	beqz	$s2, .LBB11_40
.LBB11_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_13 Depth 2
                                        #       Child Loop BB11_21 Depth 3
                                        #       Child Loop BB11_25 Depth 3
                                        #     Child Loop BB11_38 Depth 2
                                        #     Child Loop BB11_32 Depth 2
                                        #       Child Loop BB11_35 Depth 3
	ld.w	$a0, $s2, 48
	beqz	$a0, .LBB11_6
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a1, $s2, 8
	ld.w	$a0, $a0, 24
	bge	$a1, $a0, .LBB11_6
# %bb.9:                                #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(currentend)
	st.d	$zero, $s5, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$s5, $a0, %pc_lo12(basisend)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(Configtable_clear)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $s2, 8
	ld.d	$a0, $a0, 32
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a0, $a1
	move	$s1, $s2
	b	.LBB11_13
.LBB11_10:                              # %same_symbol.exit
                                        #   in Loop: Header=BB11_13 Depth=2
	st.w	$zero, $s1, 48
	addi.w	$a1, $a1, 1
	pcaddu18i	$ra, %call36(Configlist_addbasis)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(plink_freelist)
	ld.d	$a1, $s0, %pc_lo12(plink_freelist)
	beqz	$a1, .LBB11_23
.LBB11_11:                              # %Plink_add.exit
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.d	$a2, $a1, 8
	ld.d	$a3, $a0, 32
	st.d	$a2, $s0, %pc_lo12(plink_freelist)
	st.d	$a3, $a1, 8
	st.d	$a1, $a0, 32
	st.d	$s1, $a1, 0
	.p2align	4, , 16
.LBB11_12:                              # %same_symbol.exit.thread
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.d	$s1, $s1, 56
	beqz	$s1, .LBB11_27
.LBB11_13:                              #   Parent Loop BB11_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_21 Depth 3
                                        #       Child Loop BB11_25 Depth 3
	ld.w	$a0, $s1, 48
	beqz	$a0, .LBB11_12
# %bb.14:                               #   in Loop: Header=BB11_13 Depth=2
	ld.d	$a0, $s1, 0
	ld.w	$a1, $s1, 8
	ld.w	$a2, $a0, 24
	bge	$a1, $a2, .LBB11_12
# %bb.15:                               #   in Loop: Header=BB11_13 Depth=2
	ld.d	$a2, $a0, 32
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $a2, $a3
	beq	$a3, $s6, .LBB11_10
# %bb.16:                               #   in Loop: Header=BB11_13 Depth=2
	ld.w	$a2, $a3, 12
	bne	$a2, $s7, .LBB11_12
# %bb.17:                               #   in Loop: Header=BB11_13 Depth=2
	ld.w	$a2, $s6, 12
	bne	$a2, $s7, .LBB11_12
# %bb.18:                               #   in Loop: Header=BB11_13 Depth=2
	ld.w	$a2, $a3, 84
	ld.w	$a4, $s6, 84
	bne	$a2, $a4, .LBB11_12
# %bb.19:                               # %.preheader.i
                                        #   in Loop: Header=BB11_13 Depth=2
	blez	$a2, .LBB11_10
# %bb.20:                               # %.lr.ph.i
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.d	$a3, $a3, 88
	ld.d	$a4, $s6, 88
	.p2align	4, , 16
.LBB11_21:                              #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a4, 0
	bne	$a5, $a6, .LBB11_12
# %bb.22:                               #   in Loop: Header=BB11_21 Depth=3
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB11_21
	b	.LBB11_10
.LBB11_23:                              #   in Loop: Header=BB11_13 Depth=2
	move	$s3, $a0
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB11_42
# %bb.24:                               # %vector.body85.preheader
                                        #   in Loop: Header=BB11_13 Depth=2
	move	$a1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB11_25:                              # %vector.body85
                                        #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a1, $a0
	addi.d	$a3, $a2, 16
	addi.d	$a4, $a2, 32
	st.d	$a3, $a2, 8
	addi.d	$a0, $a0, 32
	st.d	$a4, $a2, 24
	bne	$a0, $s4, .LBB11_25
# %bb.26:                               # %.preheader.i.i
                                        #   in Loop: Header=BB11_13 Depth=2
	addi.d	$a0, $a1, 1584
	st.d	$a0, $a1, 1576
	st.d	$zero, $a1, 1592
	move	$a0, $s3
	b	.LBB11_11
	.p2align	4, , 16
.LBB11_27:                              #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getstate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 12
	move	$s1, $a0
	bne	$a1, $s7, .LBB11_4
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.w	$a0, $s6, 84
	blez	$a0, .LBB11_6
# %bb.29:                               # %.lr.ph63
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $s8, %pc_lo12(Action_new.freelist)
	move	$s0, $zero
	b	.LBB11_32
	.p2align	4, , 16
.LBB11_30:                              # %.preheader.i.i46
                                        #   in Loop: Header=BB11_32 Depth=2
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 1913
	stptr.d	$a1, $a0, 3944
	stptr.d	$zero, $a0, 3984
.LBB11_31:                              # %Action_add.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	ld.d	$a1, $fp, 24
	ld.d	$a2, $a0, 24
	st.d	$a1, $a0, 24
	st.d	$a0, $fp, 24
	st.d	$s1, $a0, 16
	ld.w	$a1, $s6, 84
	st.d	$a2, $s8, %pc_lo12(Action_new.freelist)
	st.w	$zero, $a0, 8
	addi.d	$s0, $s0, 1
	st.d	$s3, $a0, 0
	move	$a0, $a2
	bge	$s0, $a1, .LBB11_6
.LBB11_32:                              #   Parent Loop BB11_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_35 Depth 3
	ld.d	$a1, $s6, 88
	slli.d	$a2, $s0, 3
	ldx.d	$s3, $a1, $a2
	bnez	$a0, .LBB11_31
# %bb.33:                               #   in Loop: Header=BB11_32 Depth=2
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB11_41
# %bb.34:                               # %vector.body.preheader
                                        #   in Loop: Header=BB11_32 Depth=2
	addi.d	$a1, $a0, 40
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB11_35:                              # %vector.body
                                        #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a3, $a1, 40
	st.d	$a1, $a1, -16
	st.d	$a3, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 80
	bnez	$a2, .LBB11_35
	b	.LBB11_30
.LBB11_36:                              #   in Loop: Header=BB11_7 Depth=1
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB11_41
# %bb.37:                               # %vector.body79.preheader
                                        #   in Loop: Header=BB11_7 Depth=1
	addi.d	$a1, $a0, 40
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB11_38:                              # %vector.body79
                                        #   Parent Loop BB11_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a3, $a1, 40
	st.d	$a1, $a1, -16
	st.d	$a3, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 80
	bnez	$a2, .LBB11_38
# %bb.39:                               # %.preheader.i.i50
                                        #   in Loop: Header=BB11_7 Depth=1
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 1913
	stptr.d	$a1, $a0, 3944
	stptr.d	$zero, $a0, 3984
	b	.LBB11_5
.LBB11_40:                              # %._crit_edge
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB11_41:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB11_42:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	buildshifts, .Lfunc_end11-buildshifts
                                        # -- End function
	.globl	FindLinks                       # -- Begin function FindLinks
	.p2align	5
	.type	FindLinks,@function
FindLinks:                              # @FindLinks
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
	ld.w	$fp, $a0, 16
	blez	$fp, .LBB12_17
# %bb.1:                                # %.lr.ph33
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %._crit_edge
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $fp, .LBB12_5
.LBB12_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	ld.d	$a4, $a3, 8
	beqz	$a4, .LBB12_2
	.p2align	4, , 16
.LBB12_4:                               # %.lr.ph
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a3, $a4, 40
	ld.d	$a4, $a4, 56
	bnez	$a4, .LBB12_4
	b	.LBB12_2
.LBB12_5:                               # %.lr.ph47
	ld.d	$s0, $a0, 0
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(plink_freelist)
	ori	$s3, $zero, 1568
	b	.LBB12_7
	.p2align	4, , 16
.LBB12_6:                               # %._crit_edge45
                                        #   in Loop: Header=BB12_7 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $fp, .LBB12_17
.LBB12_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_9 Depth 2
                                        #       Child Loop BB12_12 Depth 3
                                        #         Child Loop BB12_15 Depth 4
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$s4, $a0, 8
	bnez	$s4, .LBB12_9
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_8:                               # %._crit_edge39
                                        #   in Loop: Header=BB12_9 Depth=2
	ld.d	$s4, $s4, 56
	beqz	$s4, .LBB12_6
.LBB12_9:                               # %.lr.ph44
                                        #   Parent Loop BB12_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_12 Depth 3
                                        #         Child Loop BB12_15 Depth 4
	ld.d	$s5, $s4, 32
	beqz	$s5, .LBB12_8
# %bb.10:                               # %.lr.ph38.preheader
                                        #   in Loop: Header=BB12_9 Depth=2
	ld.d	$a0, $s2, %pc_lo12(plink_freelist)
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_11:                              # %Plink_add.exit
                                        #   in Loop: Header=BB12_12 Depth=3
	ld.d	$a1, $s6, 24
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 8
	st.d	$a0, $s6, 24
	ld.d	$s5, $s5, 8
	st.d	$a2, $s2, %pc_lo12(plink_freelist)
	st.d	$s4, $a0, 0
	move	$a0, $a2
	beqz	$s5, .LBB12_8
.LBB12_12:                              # %.lr.ph38
                                        #   Parent Loop BB12_7 Depth=1
                                        #     Parent Loop BB12_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_15 Depth 4
	ld.d	$s6, $s5, 0
	bnez	$a0, .LBB12_11
# %bb.13:                               #   in Loop: Header=BB12_12 Depth=3
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB12_18
# %bb.14:                               # %vector.body.preheader
                                        #   in Loop: Header=BB12_12 Depth=3
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_15:                              # %vector.body
                                        #   Parent Loop BB12_7 Depth=1
                                        #     Parent Loop BB12_9 Depth=2
                                        #       Parent Loop BB12_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a2, $a0, $a1
	addi.d	$a3, $a2, 16
	addi.d	$a4, $a2, 32
	st.d	$a3, $a2, 8
	addi.d	$a1, $a1, 32
	st.d	$a4, $a2, 24
	bne	$a1, $s3, .LBB12_15
# %bb.16:                               # %.preheader.i.i
                                        #   in Loop: Header=BB12_12 Depth=3
	addi.d	$a1, $a0, 1584
	st.d	$a1, $a0, 1576
	st.d	$zero, $a0, 1592
	b	.LBB12_11
.LBB12_17:                              # %._crit_edge48
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
.LBB12_18:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	FindLinks, .Lfunc_end12-FindLinks
                                        # -- End function
	.globl	FindFollowSets                  # -- Begin function FindFollowSets
	.p2align	5
	.type	FindFollowSets,@function
FindFollowSets:                         # @FindFollowSets
# %bb.0:
	ld.w	$a6, $a0, 16
	blez	$a6, .LBB13_28
# %bb.1:                                # %.lr.ph40
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	ori	$a3, $zero, 1
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %._crit_edge
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a6, .LBB13_5
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a1, $a4
	ld.d	$a4, $a4, 8
	beqz	$a4, .LBB13_2
	.p2align	4, , 16
.LBB13_4:                               # %.lr.ph
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a4, 48
	ld.d	$a4, $a4, 56
	bnez	$a4, .LBB13_4
	b	.LBB13_2
.LBB13_5:                               # %.preheader.split.preheader
	pcalau12i	$a1, %pc_hi20(size)
	ori	$a2, $zero, 1
	b	.LBB13_7
	.p2align	4, , 16
.LBB13_6:                               # %._crit_edge60
                                        #   in Loop: Header=BB13_7 Depth=1
	beqz	$a4, .LBB13_28
.LBB13_7:                               # %.preheader.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_11 Depth 2
                                        #       Child Loop BB13_14 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #           Child Loop BB13_21 Depth 5
                                        #         Child Loop BB13_26 Depth 4
	blez	$a6, .LBB13_28
# %bb.8:                                # %.lr.ph59.preheader
                                        #   in Loop: Header=BB13_7 Depth=1
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB13_11
	.p2align	4, , 16
.LBB13_9:                               # %._crit_edge54.loopexit
                                        #   in Loop: Header=BB13_11 Depth=2
	ld.w	$a6, $a0, 16
.LBB13_10:                              # %._crit_edge54
                                        #   in Loop: Header=BB13_11 Depth=2
	addi.d	$a3, $a3, 1
	bge	$a3, $a6, .LBB13_6
.LBB13_11:                              # %.lr.ph59
                                        #   Parent Loop BB13_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_14 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #           Child Loop BB13_21 Depth 5
                                        #         Child Loop BB13_26 Depth 4
	ld.d	$a5, $a0, 0
	slli.d	$a7, $a3, 3
	ldx.d	$a5, $a5, $a7
	ld.d	$a5, $a5, 8
	bnez	$a5, .LBB13_14
	b	.LBB13_10
	.p2align	4, , 16
.LBB13_12:                              # %._crit_edge47
                                        #   in Loop: Header=BB13_14 Depth=3
	st.w	$zero, $a5, 48
.LBB13_13:                              #   in Loop: Header=BB13_14 Depth=3
	ld.d	$a5, $a5, 56
	beqz	$a5, .LBB13_9
.LBB13_14:                              # %.lr.ph53
                                        #   Parent Loop BB13_7 Depth=1
                                        #     Parent Loop BB13_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_19 Depth 4
                                        #           Child Loop BB13_21 Depth 5
                                        #         Child Loop BB13_26 Depth 4
	ld.w	$a6, $a5, 48
	beqz	$a6, .LBB13_13
# %bb.15:                               #   in Loop: Header=BB13_14 Depth=3
	ld.d	$a6, $a5, 24
	beqz	$a6, .LBB13_12
# %bb.16:                               # %.lr.ph46
                                        #   in Loop: Header=BB13_14 Depth=3
	ld.w	$a7, $a1, %pc_lo12(size)
	blez	$a7, .LBB13_12
# %bb.17:                               #   in Loop: Header=BB13_14 Depth=3
	bstrpick.d	$t2, $a7, 31, 0
	addi.w	$a7, $t2, 0
	blez	$a7, .LBB13_26
	.p2align	4, , 16
.LBB13_18:                              # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB13_14 Depth=3
	ld.d	$a7, $a6, 0
	ld.d	$a7, $a7, 16
	ld.d	$t0, $a5, 16
	move	$t1, $zero
	sub.d	$t2, $zero, $t2
	ori	$t3, $zero, 1
.LBB13_19:                              # %.lr.ph.i.outer
                                        #   Parent Loop BB13_7 Depth=1
                                        #     Parent Loop BB13_11 Depth=2
                                        #       Parent Loop BB13_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_21 Depth 5
	addi.d	$t1, $t1, 1
	b	.LBB13_21
	.p2align	4, , 16
.LBB13_20:                              #   in Loop: Header=BB13_21 Depth=5
	addi.d	$t1, $t1, 1
	add.d	$t4, $t2, $t1
	beq	$t4, $a2, .LBB13_24
.LBB13_21:                              # %.lr.ph.i
                                        #   Parent Loop BB13_7 Depth=1
                                        #     Parent Loop BB13_11 Depth=2
                                        #       Parent Loop BB13_14 Depth=3
                                        #         Parent Loop BB13_19 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.d	$t4, $t0, $t1
	ld.bu	$t4, $t4, -1
	beqz	$t4, .LBB13_20
# %bb.22:                               #   in Loop: Header=BB13_21 Depth=5
	add.d	$t4, $a7, $t1
	ld.bu	$t5, $t4, -1
	bnez	$t5, .LBB13_20
# %bb.23:                               # %.thread
                                        #   in Loop: Header=BB13_19 Depth=4
	move	$t3, $zero
	add.d	$t5, $t2, $t1
	st.b	$a2, $t4, -1
	bnez	$t5, .LBB13_19
	b	.LBB13_25
	.p2align	4, , 16
.LBB13_24:                              # %SetUnion.exit
                                        #   in Loop: Header=BB13_14 Depth=3
	andi	$a7, $t3, 1
	bnez	$a7, .LBB13_26
.LBB13_25:                              # %SetUnion.exit.thread71
                                        #   in Loop: Header=BB13_14 Depth=3
	ld.d	$a7, $a6, 0
	ori	$a4, $zero, 1
	st.w	$a4, $a7, 48
.LBB13_26:                              # %SetUnion.exit.thread
                                        #   Parent Loop BB13_7 Depth=1
                                        #     Parent Loop BB13_11 Depth=2
                                        #       Parent Loop BB13_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a6, $a6, 8
	beqz	$a6, .LBB13_12
# %bb.27:                               # %.lr.ph46.splitthread-pre-split
                                        #   in Loop: Header=BB13_26 Depth=4
	ld.wu	$t2, $a1, %pc_lo12(size)
	addi.w	$a7, $t2, 0
	bgtz	$a7, .LBB13_18
	b	.LBB13_26
.LBB13_28:                              # %.split.us
	ret
.Lfunc_end13:
	.size	FindFollowSets, .Lfunc_end13-FindFollowSets
                                        # -- End function
	.globl	FindActions                     # -- Begin function FindActions
	.p2align	5
	.type	FindActions,@function
FindActions:                            # @FindActions
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	pcalau12i	$s1, %pc_hi20(Action_new.freelist)
	blez	$a0, .LBB14_17
# %bb.1:                                # %.lr.ph108
	move	$s0, $zero
	ori	$s2, $zero, 2
	b	.LBB14_4
	.p2align	4, , 16
.LBB14_2:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB14_4 Depth=1
	ld.w	$a0, $fp, 16
.LBB14_3:                               # %._crit_edge
                                        #   in Loop: Header=BB14_4 Depth=1
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB14_17
.LBB14_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #       Child Loop BB14_11 Depth 3
                                        #         Child Loop BB14_15 Depth 4
	ld.d	$a1, $fp, 0
	slli.d	$a2, $s0, 3
	ldx.d	$s3, $a1, $a2
	ld.d	$s4, $s3, 8
	bnez	$s4, .LBB14_6
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_5:                               # %.loopexit
                                        #   in Loop: Header=BB14_6 Depth=2
	ld.d	$s4, $s4, 56
	beqz	$s4, .LBB14_2
.LBB14_6:                               #   Parent Loop BB14_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_11 Depth 3
                                        #         Child Loop BB14_15 Depth 4
	ld.d	$a0, $s4, 0
	ld.w	$a0, $a0, 24
	ld.w	$a1, $s4, 8
	bne	$a0, $a1, .LBB14_5
# %bb.7:                                # %.preheader95
                                        #   in Loop: Header=BB14_6 Depth=2
	ld.w	$a1, $fp, 28
	blez	$a1, .LBB14_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=2
	ld.d	$a0, $s1, %pc_lo12(Action_new.freelist)
	move	$s5, $zero
	b	.LBB14_11
	.p2align	4, , 16
.LBB14_9:                               # %Action_add.exit
                                        #   in Loop: Header=BB14_11 Depth=3
	ld.d	$a1, $s3, 24
	ld.d	$a2, $a0, 24
	st.d	$a1, $a0, 24
	st.d	$a0, $s3, 24
	st.d	$s7, $a0, 16
	ld.w	$a1, $fp, 28
	st.d	$a2, $s1, %pc_lo12(Action_new.freelist)
	st.w	$s2, $a0, 8
	st.d	$s6, $a0, 0
	move	$a0, $a2
.LBB14_10:                              #   in Loop: Header=BB14_11 Depth=3
	addi.d	$s5, $s5, 1
	bge	$s5, $a1, .LBB14_5
.LBB14_11:                              #   Parent Loop BB14_4 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_15 Depth 4
	ld.d	$a2, $s4, 16
	ldx.bu	$a2, $a2, $s5
	beqz	$a2, .LBB14_10
# %bb.12:                               #   in Loop: Header=BB14_11 Depth=3
	ld.d	$a1, $fp, 32
	slli.d	$a2, $s5, 3
	ldx.d	$s6, $a1, $a2
	ld.d	$s7, $s4, 0
	bnez	$a0, .LBB14_9
# %bb.13:                               #   in Loop: Header=BB14_11 Depth=3
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB14_85
# %bb.14:                               # %vector.body.preheader
                                        #   in Loop: Header=BB14_11 Depth=3
	addi.d	$a1, $a0, 40
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB14_15:                              # %vector.body
                                        #   Parent Loop BB14_4 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        #       Parent Loop BB14_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a3, $a1, 40
	st.d	$a1, $a1, -16
	st.d	$a3, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 80
	bnez	$a2, .LBB14_15
# %bb.16:                               # %.preheader.i.i
                                        #   in Loop: Header=BB14_11 Depth=3
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 1913
	stptr.d	$a1, $a0, 3944
	stptr.d	$zero, $a0, 3984
	b	.LBB14_9
.LBB14_17:                              # %._crit_edge109
	ld.d	$s0, $fp, 96
	beqz	$s0, .LBB14_27
# %bb.18:
	pcalau12i	$a0, %pc_hi20(x2a)
	ld.d	$a0, $a0, %pc_lo12(x2a)
	beqz	$a0, .LBB14_27
# %bb.19:
	ld.bu	$a2, $s0, 0
	beqz	$a2, .LBB14_22
# %bb.20:                               # %.lr.ph.i.i.preheader
	move	$a1, $zero
	addi.d	$a3, $s0, 1
	.p2align	4, , 16
.LBB14_21:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a1, $a1, 1
	alsl.d	$a1, $a5, $a1, 2
	add.w	$a1, $a1, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB14_21
	b	.LBB14_23
.LBB14_22:
	move	$a1, $zero
.LBB14_23:                              # %strhash.exit.i
	ld.w	$a2, $a0, 0
	ld.d	$a0, $a0, 16
	addi.w	$a2, $a2, -1
	and	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a0, $a1
	beqz	$s2, .LBB14_27
	.p2align	4, , 16
.LBB14_24:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_26
# %bb.25:                               #   in Loop: Header=BB14_24 Depth=1
	ld.d	$s2, $s2, 16
	bnez	$s2, .LBB14_24
	b	.LBB14_27
.LBB14_26:                              # %Symbol_find.exit
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB14_28
.LBB14_27:                              # %.sink.split
	ld.d	$a0, $fp, 8
	ld.d	$s2, $a0, 0
.LBB14_28:
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s1, %pc_lo12(Action_new.freelist)
	ld.d	$s0, $a1, 0
	bnez	$a0, .LBB14_33
# %bb.29:
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB14_85
# %bb.30:                               # %vector.body181.preheader
	addi.d	$a1, $a0, 40
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB14_31:                              # %vector.body181
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a1, 40
	st.d	$a1, $a1, -16
	st.d	$a3, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 80
	bnez	$a2, .LBB14_31
# %bb.32:                               # %.preheader.i.i87
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 1913
	stptr.d	$a1, $a0, 3944
	stptr.d	$zero, $a0, 3984
.LBB14_33:                              # %Action_add.exit91
	ld.d	$a1, $s0, 24
	ld.d	$a2, $a0, 24
	st.d	$a1, $a0, 24
	st.d	$a0, $s0, 24
	st.d	$zero, $a0, 16
	ld.w	$a1, $fp, 16
	st.d	$a2, $s1, %pc_lo12(Action_new.freelist)
	ori	$s0, $zero, 1
	st.w	$s0, $a0, 8
	st.d	$s2, $a0, 0
	blez	$a1, .LBB14_69
# %bb.34:                               # %.lr.ph117
	move	$s1, $zero
	ori	$s2, $zero, 2
	ori	$s3, $zero, 5
	ori	$s4, $zero, 8
	ori	$s5, $zero, 7
	ori	$s6, $zero, 4
	ori	$s7, $zero, 6
	b	.LBB14_36
	.p2align	4, , 16
.LBB14_35:                              # %.critedge
                                        #   in Loop: Header=BB14_36 Depth=1
	ld.w	$a1, $fp, 16
	addi.d	$s1, $s1, 1
	bge	$s1, $a1, .LBB14_69
.LBB14_36:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_37 Depth 2
                                        #       Child Loop BB14_41 Depth 3
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s1, 3
	ldx.d	$s8, $a0, $a1
	ld.d	$a0, $s8, 24
	pcaddu18i	$ra, %call36(Action_sort)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 24
	beqz	$a0, .LBB14_35
	.p2align	4, , 16
.LBB14_37:                              # %.lr.ph114.preheader
                                        #   Parent Loop BB14_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_41 Depth 3
	ld.d	$a3, $a0, 24
	beqz	$a3, .LBB14_35
# %bb.38:                               # %.preheader94
                                        #   in Loop: Header=BB14_37 Depth=2
	move	$a1, $a0
	ld.d	$a2, $a0, 0
	move	$a0, $a3
	b	.LBB14_41
.LBB14_39:                              #   in Loop: Header=BB14_41 Depth=3
	st.w	$s7, $a3, 8
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB14_40:                              # %resolve_conflict.exit
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $fp, 264
	ld.d	$a3, $a3, 24
	add.d	$a4, $a5, $a4
	st.w	$a4, $fp, 264
	beqz	$a3, .LBB14_37
.LBB14_41:                              #   Parent Loop BB14_36 Depth=1
                                        #     Parent Loop BB14_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 0
	bne	$a4, $a2, .LBB14_37
# %bb.42:                               #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $a1, 8
	beqz	$a5, .LBB14_53
# %bb.43:                               #   in Loop: Header=BB14_41 Depth=3
	move	$a4, $zero
.LBB14_44:                              # %.thread.i
                                        #   in Loop: Header=BB14_41 Depth=3
	bne	$a5, $s2, .LBB14_40
# %bb.45:                               #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $a3, 8
	bne	$a5, $s2, .LBB14_40
# %bb.46:                               #   in Loop: Header=BB14_41 Depth=3
	ld.d	$a5, $a1, 16
	ld.d	$a5, $a5, 64
	beqz	$a5, .LBB14_39
# %bb.47:                               #   in Loop: Header=BB14_41 Depth=3
	ld.d	$a6, $a3, 16
	ld.d	$a6, $a6, 64
	beqz	$a6, .LBB14_39
# %bb.48:                               #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $a5, 32
	bltz	$a5, .LBB14_39
# %bb.49:                               #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a6, $a6, 32
	bltz	$a6, .LBB14_39
# %bb.50:                               #   in Loop: Header=BB14_41 Depth=3
	beq	$a5, $a6, .LBB14_39
# %bb.51:                               #   in Loop: Header=BB14_41 Depth=3
	bgeu	$a6, $a5, .LBB14_66
# %bb.52:                               #   in Loop: Header=BB14_41 Depth=3
	st.w	$s4, $a3, 8
	b	.LBB14_40
	.p2align	4, , 16
.LBB14_53:                              #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a4, $a3, 8
	beq	$a4, $s2, .LBB14_56
# %bb.54:                               #   in Loop: Header=BB14_41 Depth=3
	bnez	$a4, .LBB14_61
# %bb.55:                               #   in Loop: Header=BB14_41 Depth=3
	st.w	$s6, $a3, 8
	ld.w	$a5, $a1, 8
	ori	$a4, $zero, 1
	bnez	$a5, .LBB14_44
	b	.LBB14_40
.LBB14_56:                              #   in Loop: Header=BB14_41 Depth=3
	ld.d	$a4, $a3, 16
	ld.d	$a5, $a4, 64
	beqz	$a5, .LBB14_65
# %bb.57:                               #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a4, $a2, 32
	bltz	$a4, .LBB14_65
# %bb.58:                               #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $a5, 32
	bltz	$a5, .LBB14_65
# %bb.59:                               #   in Loop: Header=BB14_41 Depth=3
	bgeu	$a5, $a4, .LBB14_62
.LBB14_60:                              #   in Loop: Header=BB14_41 Depth=3
	move	$a4, $zero
	st.w	$s4, $a3, 8
	b	.LBB14_40
.LBB14_61:                              #   in Loop: Header=BB14_41 Depth=3
	move	$a4, $zero
	b	.LBB14_40
.LBB14_62:                              #   in Loop: Header=BB14_41 Depth=3
	bltu	$a4, $a5, .LBB14_68
# %bb.63:                               #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a4, $a2, 36
	beqz	$a4, .LBB14_68
# %bb.64:                               #   in Loop: Header=BB14_41 Depth=3
	beq	$a4, $s0, .LBB14_60
.LBB14_65:                              #   in Loop: Header=BB14_41 Depth=3
	st.w	$s3, $a3, 8
	ori	$a4, $zero, 1
	b	.LBB14_40
.LBB14_66:                              #   in Loop: Header=BB14_41 Depth=3
	bgeu	$a5, $a6, .LBB14_40
# %bb.67:                               #   in Loop: Header=BB14_41 Depth=3
	st.w	$s4, $a1, 8
	b	.LBB14_40
.LBB14_68:                              #   in Loop: Header=BB14_41 Depth=3
	move	$a4, $zero
	st.w	$s5, $a1, 8
	b	.LBB14_40
.LBB14_69:                              # %._crit_edge118
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB14_72
# %bb.70:
	move	$a0, $s1
	.p2align	4, , 16
.LBB14_71:                              # %.lr.ph123
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 76
	ld.d	$a0, $a0, 88
	bnez	$a0, .LBB14_71
.LBB14_72:                              # %.preheader93
	blez	$a1, .LBB14_79
# %bb.73:                               # %.lr.ph132
	ld.d	$a0, $fp, 0
	move	$a2, $zero
	ori	$a3, $zero, 2
	ori	$a4, $zero, 1
	b	.LBB14_75
	.p2align	4, , 16
.LBB14_74:                              # %._crit_edge130
                                        #   in Loop: Header=BB14_75 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a1, .LBB14_79
.LBB14_75:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_76 Depth 2
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB14_76:                              #   Parent Loop BB14_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a5, 24
	beqz	$a5, .LBB14_74
# %bb.77:                               # %.lr.ph129
                                        #   in Loop: Header=BB14_76 Depth=2
	ld.w	$a6, $a5, 8
	bne	$a6, $a3, .LBB14_76
# %bb.78:                               #   in Loop: Header=BB14_76 Depth=2
	ld.d	$a6, $a5, 16
	st.w	$a4, $a6, 76
	b	.LBB14_76
.LBB14_79:                              # %.preheader
	beqz	$s1, .LBB14_84
# %bb.80:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s0, $a0, %pc_lo12(.L.str.4)
	b	.LBB14_82
	.p2align	4, , 16
.LBB14_81:                              #   in Loop: Header=BB14_82 Depth=1
	ld.d	$s1, $s1, 88
	beqz	$s1, .LBB14_84
.LBB14_82:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 76
	bnez	$a0, .LBB14_81
# %bb.83:                               #   in Loop: Header=BB14_82 Depth=1
	ld.d	$a0, $fp, 240
	ld.w	$a1, $s1, 20
	move	$a2, $s0
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 40
	b	.LBB14_81
.LBB14_84:                              # %._crit_edge137
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.LBB14_85:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	FindActions, .Lfunc_end14-FindActions
                                        # -- End function
	.p2align	5                               # -- Begin function Action_sort
	.type	Action_sort,@function
Action_sort:                            # @Action_sort
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 240
	addi.d	$s0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB15_25
# %bb.1:                                # %.lr.ph.i.preheader
	ori	$a0, $zero, 2
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_2:                               #   in Loop: Header=BB15_4 Depth=1
	move	$a3, $a2
.LBB15_3:                               # %.critedge.i
                                        #   in Loop: Header=BB15_4 Depth=1
	bstrpick.d	$a2, $a3, 31, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a2, $s0
	beqz	$fp, .LBB15_25
.LBB15_4:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
                                        #       Child Loop BB15_17 Depth 3
	move	$a1, $fp
	ld.d	$fp, $fp, 24
	move	$a2, $zero
	st.d	$zero, $a1, 24
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_5:                               #   in Loop: Header=BB15_7 Depth=2
	move	$a6, $a4
	move	$a7, $a3
	move	$a5, $a1
.LBB15_6:                               # %merge.exit.i
                                        #   in Loop: Header=BB15_7 Depth=2
	alsl.d	$a4, $a2, $s0, 3
	masknez	$a3, $a6, $t0
	maskeqz	$a6, $a7, $t0
	or	$a3, $a6, $a3
	st.d	$a3, $a5, 24
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 29
	st.d	$zero, $a4, 0
	beq	$a2, $a3, .LBB15_3
.LBB15_7:                               #   Parent Loop BB15_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_17 Depth 3
	slli.d	$a3, $a2, 3
	ldx.d	$a5, $a3, $s0
	beqz	$a5, .LBB15_2
# %bb.8:                                #   in Loop: Header=BB15_7 Depth=2
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a5, 0
	ld.w	$a3, $a3, 8
	ld.w	$a4, $a4, 8
	sub.w	$a3, $a3, $a4
	bnez	$a3, .LBB15_10
# %bb.9:                                #   in Loop: Header=BB15_7 Depth=2
	ld.w	$a4, $a1, 8
	ld.w	$a3, $a5, 8
	sub.w	$a3, $a4, $a3
	beqz	$a3, .LBB15_12
.LBB15_10:                              # %actioncmp.exit8
                                        #   in Loop: Header=BB15_7 Depth=2
	bltz	$a3, .LBB15_14
.LBB15_11:                              # %actioncmp.exit8.thread
                                        #   in Loop: Header=BB15_7 Depth=2
	ld.d	$a4, $a5, 24
	move	$a3, $a1
	move	$a1, $a5
	sltu	$t0, $zero, $a3
	bnez	$a3, .LBB15_15
	b	.LBB15_5
.LBB15_12:                              #   in Loop: Header=BB15_7 Depth=2
	bne	$a4, $a0, .LBB15_11
# %bb.13:                               #   in Loop: Header=BB15_7 Depth=2
	ld.d	$a3, $a1, 16
	ld.d	$a4, $a5, 16
	ld.w	$a3, $a3, 72
	ld.w	$a4, $a4, 72
	sub.w	$a3, $a3, $a4
	bgez	$a3, .LBB15_11
	.p2align	4, , 16
.LBB15_14:                              #   in Loop: Header=BB15_7 Depth=2
	ld.d	$a3, $a1, 24
	move	$a4, $a5
	sltu	$t0, $zero, $a3
	beqz	$a3, .LBB15_5
.LBB15_15:                              #   in Loop: Header=BB15_7 Depth=2
	beqz	$a4, .LBB15_5
# %bb.16:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB15_7 Depth=2
	move	$a5, $a1
	.p2align	4, , 16
.LBB15_17:                              # %.lr.ph.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a3, 0
	ld.d	$a7, $a4, 0
	ld.w	$a6, $a6, 8
	ld.w	$a7, $a7, 8
	sub.w	$a6, $a6, $a7
	addi.d	$a5, $a5, 24
	bnez	$a6, .LBB15_19
# %bb.18:                               #   in Loop: Header=BB15_17 Depth=3
	ld.w	$a7, $a3, 8
	ld.w	$a6, $a4, 8
	sub.w	$a6, $a7, $a6
	beqz	$a6, .LBB15_21
.LBB15_19:                              # %actioncmp.exit6
                                        #   in Loop: Header=BB15_17 Depth=3
	bltz	$a6, .LBB15_23
.LBB15_20:                              #   in Loop: Header=BB15_17 Depth=3
	st.d	$a4, $a5, 0
	ld.d	$a6, $a4, 24
	move	$a7, $a3
	move	$a5, $a4
	sltu	$t0, $zero, $a7
	bnez	$a7, .LBB15_24
	b	.LBB15_6
.LBB15_21:                              #   in Loop: Header=BB15_17 Depth=3
	bne	$a7, $a0, .LBB15_20
# %bb.22:                               #   in Loop: Header=BB15_17 Depth=3
	ld.d	$a6, $a3, 16
	ld.d	$a7, $a4, 16
	ld.w	$a6, $a6, 72
	ld.w	$a7, $a7, 72
	sub.w	$a6, $a6, $a7
	bgez	$a6, .LBB15_20
	.p2align	4, , 16
.LBB15_23:                              #   in Loop: Header=BB15_17 Depth=3
	st.d	$a3, $a5, 0
	ld.d	$a7, $a3, 24
	move	$a6, $a4
	move	$a5, $a3
	sltu	$t0, $zero, $a7
	beqz	$a7, .LBB15_6
.LBB15_24:                              #   in Loop: Header=BB15_17 Depth=3
	move	$a3, $a7
	move	$a4, $a6
	bnez	$a6, .LBB15_17
	b	.LBB15_6
.LBB15_25:                              # %.preheader.i.preheader
	move	$a1, $zero
	move	$a0, $zero
	ori	$a2, $zero, 30
	ori	$a3, $zero, 2
	b	.LBB15_28
	.p2align	4, , 16
.LBB15_26:                              #   in Loop: Header=BB15_28 Depth=1
	move	$a0, $a6
.LBB15_27:                              # %merge.exit51.i
                                        #   in Loop: Header=BB15_28 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB15_49
.LBB15_28:                              # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_39 Depth 2
	slli.d	$a4, $a1, 3
	ldx.d	$a6, $a4, $s0
	beqz	$a6, .LBB15_27
# %bb.29:                               #   in Loop: Header=BB15_28 Depth=1
	beqz	$a0, .LBB15_26
# %bb.30:                               #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a6, 0
	ld.w	$a4, $a4, 8
	ld.w	$a5, $a5, 8
	sub.w	$a4, $a4, $a5
	bnez	$a4, .LBB15_32
# %bb.31:                               #   in Loop: Header=BB15_28 Depth=1
	ld.w	$a5, $a0, 8
	ld.w	$a4, $a6, 8
	sub.w	$a4, $a5, $a4
	beqz	$a4, .LBB15_34
.LBB15_32:                              # %actioncmp.exit4
                                        #   in Loop: Header=BB15_28 Depth=1
	bltz	$a4, .LBB15_36
.LBB15_33:                              # %actioncmp.exit4.thread
                                        #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a5, $a6, 24
	move	$a4, $a0
	move	$a0, $a6
	sltu	$t1, $zero, $a4
	bnez	$a4, .LBB15_37
	b	.LBB15_47
.LBB15_34:                              #   in Loop: Header=BB15_28 Depth=1
	bne	$a5, $a3, .LBB15_33
# %bb.35:                               #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a4, $a0, 16
	ld.d	$a5, $a6, 16
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a5, 72
	sub.w	$a4, $a4, $a5
	bgez	$a4, .LBB15_33
.LBB15_36:                              #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a4, $a0, 24
	move	$a5, $a6
	sltu	$t1, $zero, $a4
	beqz	$a4, .LBB15_47
.LBB15_37:                              #   in Loop: Header=BB15_28 Depth=1
	beqz	$a5, .LBB15_47
# %bb.38:                               # %.lr.ph.i44.i.preheader
                                        #   in Loop: Header=BB15_28 Depth=1
	move	$a6, $a0
	.p2align	4, , 16
.LBB15_39:                              # %.lr.ph.i44.i
                                        #   Parent Loop BB15_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a5, 0
	ld.w	$a7, $a7, 8
	ld.w	$t0, $t0, 8
	sub.w	$a7, $a7, $t0
	addi.d	$a6, $a6, 24
	bnez	$a7, .LBB15_41
# %bb.40:                               #   in Loop: Header=BB15_39 Depth=2
	ld.w	$t0, $a4, 8
	ld.w	$a7, $a5, 8
	sub.w	$a7, $t0, $a7
	beqz	$a7, .LBB15_43
.LBB15_41:                              # %actioncmp.exit
                                        #   in Loop: Header=BB15_39 Depth=2
	bltz	$a7, .LBB15_45
.LBB15_42:                              #   in Loop: Header=BB15_39 Depth=2
	st.d	$a5, $a6, 0
	ld.d	$a7, $a5, 24
	move	$t0, $a4
	move	$a6, $a5
	sltu	$t1, $zero, $t0
	bnez	$t0, .LBB15_46
	b	.LBB15_48
.LBB15_43:                              #   in Loop: Header=BB15_39 Depth=2
	bne	$t0, $a3, .LBB15_42
# %bb.44:                               #   in Loop: Header=BB15_39 Depth=2
	ld.d	$a7, $a4, 16
	ld.d	$t0, $a5, 16
	ld.w	$a7, $a7, 72
	ld.w	$t0, $t0, 72
	sub.w	$a7, $a7, $t0
	bgez	$a7, .LBB15_42
	.p2align	4, , 16
.LBB15_45:                              #   in Loop: Header=BB15_39 Depth=2
	st.d	$a4, $a6, 0
	ld.d	$t0, $a4, 24
	move	$a7, $a5
	move	$a6, $a4
	sltu	$t1, $zero, $t0
	beqz	$t0, .LBB15_48
.LBB15_46:                              #   in Loop: Header=BB15_39 Depth=2
	move	$a4, $t0
	move	$a5, $a7
	bnez	$a7, .LBB15_39
	b	.LBB15_48
.LBB15_47:                              #   in Loop: Header=BB15_28 Depth=1
	move	$a7, $a5
	move	$t0, $a4
	move	$a6, $a0
.LBB15_48:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB15_28 Depth=1
	masknez	$a4, $a7, $t1
	maskeqz	$a5, $t0, $t1
	or	$a4, $a5, $a4
	st.d	$a4, $a6, 24
	b	.LBB15_27
.LBB15_49:                              # %msort.exit
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end15:
	.size	Action_sort, .Lfunc_end15-Action_sort
                                        # -- End function
	.globl	newconfig                       # -- Begin function newconfig
	.p2align	5
	.type	newconfig,@function
newconfig:                              # @newconfig
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	beqz	$a0, .LBB16_2
# %bb.1:                                # %._crit_edge
	ld.d	$a1, $a0, 56
	b	.LBB16_4
.LBB16_2:
	ori	$a0, $zero, 3
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(freelist)
	beqz	$a0, .LBB16_5
# %bb.3:                                # %.preheader.preheader
	addi.d	$a1, $a0, 72
	st.d	$a1, $a0, 56
	addi.d	$a2, $a0, 144
	st.d	$a2, $a0, 128
.LBB16_4:
	st.d	$a1, $fp, %pc_lo12(freelist)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB16_5:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	newconfig, .Lfunc_end16-newconfig
                                        # -- End function
	.globl	deleteconfig                    # -- Begin function deleteconfig
	.p2align	5
	.type	deleteconfig,@function
deleteconfig:                           # @deleteconfig
# %bb.0:
	pcalau12i	$a1, %pc_hi20(freelist)
	ld.d	$a2, $a1, %pc_lo12(freelist)
	st.d	$a2, $a0, 56
	st.d	$a0, $a1, %pc_lo12(freelist)
	ret
.Lfunc_end17:
	.size	deleteconfig, .Lfunc_end17-deleteconfig
                                        # -- End function
	.globl	Configlist_init                 # -- Begin function Configlist_init
	.p2align	5
	.type	Configlist_init,@function
Configlist_init:                        # @Configlist_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(current)
	addi.d	$a0, $a0, %pc_lo12(current)
	st.d	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(currentend)
	st.d	$a0, $a1, %pc_lo12(currentend)
	pcalau12i	$a0, %pc_hi20(basis)
	addi.d	$a0, $a0, %pc_lo12(basis)
	pcalau12i	$s0, %pc_hi20(x4a)
	ld.d	$a1, $s0, %pc_lo12(x4a)
	st.d	$zero, $a0, 0
	pcalau12i	$a2, %pc_hi20(basisend)
	st.d	$a0, $a2, %pc_lo12(basisend)
	beqz	$a1, .LBB18_2
.LBB18_1:                               # %Configtable_init.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB18_2:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x4a)
	beqz	$a0, .LBB18_1
# %bb.3:
	move	$fp, $a0
	ori	$a0, $zero, 64
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 2048
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB18_5
# %bb.4:                                # %.loopexit.loopexit.i
	addi.d	$a0, $a0, 1536
	ori	$a2, $zero, 512
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB18_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x4a)
	b	.LBB18_1
.Lfunc_end18:
	.size	Configlist_init, .Lfunc_end18-Configlist_init
                                        # -- End function
	.globl	Configlist_reset                # -- Begin function Configlist_reset
	.p2align	5
	.type	Configlist_reset,@function
Configlist_reset:                       # @Configlist_reset
# %bb.0:
	pcalau12i	$a0, %pc_hi20(current)
	addi.d	$a0, $a0, %pc_lo12(current)
	st.d	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(currentend)
	st.d	$a0, $a1, %pc_lo12(currentend)
	pcalau12i	$a0, %pc_hi20(basis)
	addi.d	$a0, $a0, %pc_lo12(basis)
	st.d	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(basisend)
	st.d	$a0, $a1, %pc_lo12(basisend)
	move	$a0, $zero
	pcaddu18i	$t8, %call36(Configtable_clear)
	jr	$t8
.Lfunc_end19:
	.size	Configlist_reset, .Lfunc_end19-Configlist_reset
                                        # -- End function
	.globl	Configlist_add                  # -- Begin function Configlist_add
	.p2align	5
	.type	Configlist_add,@function
Configlist_add:                         # @Configlist_add
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(x4a)
	ld.d	$a3, $a2, %pc_lo12(x4a)
	beqz	$a3, .LBB20_2
# %bb.1:
	ld.w	$a2, $a0, 72
	alsl.d	$a4, $a2, $a2, 3
	ld.w	$a5, $a3, 0
	alsl.d	$a4, $a4, $a2, 2
	add.w	$a4, $a4, $a1
	ld.d	$a3, $a3, 16
	addi.w	$a5, $a5, -1
	and	$a4, $a5, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	bnez	$a3, .LBB20_5
.LBB20_2:                               # %.loopexit
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$fp, $s0, %pc_lo12(freelist)
	beqz	$fp, .LBB20_7
# %bb.3:                                # %._crit_edge.i
	ld.d	$a3, $fp, 56
	b	.LBB20_9
	.p2align	4, , 16
.LBB20_4:                               # %Configcmp.exit.thread.i
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a3, $a3, 8
	beqz	$a3, .LBB20_2
.LBB20_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a3, 0
	ld.d	$a4, $fp, 0
	ld.w	$a4, $a4, 72
	bne	$a4, $a2, .LBB20_4
# %bb.6:                                # %Configcmp.exit.i
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.w	$a4, $fp, 8
	bne	$a4, $a1, .LBB20_4
	b	.LBB20_11
.LBB20_7:
	move	$s1, $a0
	move	$s2, $a1
	ori	$a0, $zero, 3
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(freelist)
	beqz	$a0, .LBB20_13
# %bb.8:                                # %.preheader.preheader.i
	move	$fp, $a0
	addi.d	$a3, $a0, 72
	st.d	$a3, $a0, 56
	addi.d	$a0, $a0, 144
	st.d	$a0, $fp, 128
	move	$a1, $s2
	move	$a0, $s1
.LBB20_9:                               # %newconfig.exit
	pcalau12i	$a2, %pc_hi20(size)
	ld.w	$a2, $a2, %pc_lo12(size)
	st.d	$a3, $s0, %pc_lo12(freelist)
	st.d	$a0, $fp, 0
	st.w	$a1, $fp, 8
	ori	$a1, $zero, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_12
# %bb.10:                               # %SetNew.exit
	st.d	$a0, $fp, 16
	addi.d	$a0, $fp, 56
	st.d	$zero, $fp, 24
	pcalau12i	$a1, %pc_hi20(currentend)
	ld.d	$a2, $a1, %pc_lo12(currentend)
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 32
	vst	$vr0, $fp, 56
	st.d	$fp, $a2, 0
	st.d	$a0, $a1, %pc_lo12(currentend)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Configtable_insert)
	jirl	$ra, $ra, 0
.LBB20_11:                              # %Configtable_find.exit
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB20_12:
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.LBB20_13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	Configlist_add, .Lfunc_end20-Configlist_add
                                        # -- End function
	.globl	Configlist_addbasis             # -- Begin function Configlist_addbasis
	.p2align	5
	.type	Configlist_addbasis,@function
Configlist_addbasis:                    # @Configlist_addbasis
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(x4a)
	ld.d	$a3, $a2, %pc_lo12(x4a)
	beqz	$a3, .LBB21_2
# %bb.1:
	ld.w	$a2, $a0, 72
	alsl.d	$a4, $a2, $a2, 3
	ld.w	$a5, $a3, 0
	alsl.d	$a4, $a4, $a2, 2
	add.w	$a4, $a4, $a1
	ld.d	$a3, $a3, 16
	addi.w	$a5, $a5, -1
	and	$a4, $a5, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	bnez	$a3, .LBB21_5
.LBB21_2:                               # %.loopexit
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$fp, $s0, %pc_lo12(freelist)
	beqz	$fp, .LBB21_7
# %bb.3:                                # %._crit_edge.i
	ld.d	$a3, $fp, 56
	b	.LBB21_9
	.p2align	4, , 16
.LBB21_4:                               # %Configcmp.exit.thread.i
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.d	$a3, $a3, 8
	beqz	$a3, .LBB21_2
.LBB21_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a3, 0
	ld.d	$a4, $fp, 0
	ld.w	$a4, $a4, 72
	bne	$a4, $a2, .LBB21_4
# %bb.6:                                # %Configcmp.exit.i
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a4, $fp, 8
	bne	$a4, $a1, .LBB21_4
	b	.LBB21_11
.LBB21_7:
	move	$s1, $a0
	move	$s2, $a1
	ori	$a0, $zero, 3
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(freelist)
	beqz	$a0, .LBB21_13
# %bb.8:                                # %.preheader.preheader.i
	move	$fp, $a0
	addi.d	$a3, $a0, 72
	st.d	$a3, $a0, 56
	addi.d	$a0, $a0, 144
	st.d	$a0, $fp, 128
	move	$a1, $s2
	move	$a0, $s1
.LBB21_9:                               # %newconfig.exit
	pcalau12i	$a2, %pc_hi20(size)
	ld.w	$a2, $a2, %pc_lo12(size)
	st.d	$a3, $s0, %pc_lo12(freelist)
	st.d	$a0, $fp, 0
	st.w	$a1, $fp, 8
	ori	$a1, $zero, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_12
# %bb.10:                               # %SetNew.exit
	st.d	$a0, $fp, 16
	addi.d	$a0, $fp, 56
	addi.d	$a1, $fp, 64
	st.d	$zero, $fp, 24
	vrepli.b	$vr0, 0
	pcalau12i	$a2, %pc_hi20(currentend)
	ld.d	$a3, $a2, %pc_lo12(currentend)
	st.d	$a0, $a2, %pc_lo12(currentend)
	pcalau12i	$a0, %pc_hi20(basisend)
	ld.d	$a2, $a0, %pc_lo12(basisend)
	vst	$vr0, $fp, 32
	vst	$vr0, $fp, 56
	st.d	$fp, $a3, 0
	st.d	$fp, $a2, 0
	st.d	$a1, $a0, %pc_lo12(basisend)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Configtable_insert)
	jirl	$ra, $ra, 0
.LBB21_11:                              # %Configtable_find.exit
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB21_12:
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.LBB21_13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	Configlist_addbasis, .Lfunc_end21-Configlist_addbasis
                                        # -- End function
	.globl	Configlist_closure              # -- Begin function Configlist_closure
	.p2align	5
	.type	Configlist_closure,@function
Configlist_closure:                     # @Configlist_closure
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(current)
	ld.d	$s3, $a1, %pc_lo12(current)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$s3, .LBB22_65
# %bb.1:                                # %.lr.ph76
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(x4a)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(freelist)
	pcalau12i	$s8, %pc_hi20(size)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s6, $zero, 2
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %.loopexit61
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$s3, $s3, 56
	beqz	$s3, .LBB22_65
.LBB22_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_9 Depth 2
                                        #       Child Loop BB22_14 Depth 3
                                        #       Child Loop BB22_23 Depth 3
                                        #       Child Loop BB22_33 Depth 3
                                        #       Child Loop BB22_44 Depth 3
                                        #         Child Loop BB22_50 Depth 4
                                        #       Child Loop BB22_56 Depth 3
                                        #       Child Loop BB22_61 Depth 3
	ld.d	$s0, $s3, 0
	ld.w	$a1, $s3, 8
	ld.w	$a0, $s0, 24
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	bge	$a1, $a0, .LBB22_2
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s0, 32
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a0, $a1
	ld.w	$a0, $fp, 12
	bne	$a0, $s5, .LBB22_2
# %bb.5:                                #   in Loop: Header=BB22_3 Depth=1
	ld.d	$s7, $fp, 16
	beqz	$s7, .LBB22_63
.LBB22_6:                               # %.lr.ph72
                                        #   in Loop: Header=BB22_3 Depth=1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	b	.LBB22_9
	.p2align	4, , 16
.LBB22_7:                               # %Plink_add.exit
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a1, $a0, 8
	ld.d	$a2, $s3, 24
	st.d	$a1, $fp, %pc_lo12(plink_freelist)
	st.d	$a2, $a0, 8
	st.d	$a0, $s3, 24
	st.d	$s1, $a0, 0
.LBB22_8:                               #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s7, $s7, 80
	beqz	$s7, .LBB22_2
.LBB22_9:                               #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_14 Depth 3
                                        #       Child Loop BB22_23 Depth 3
                                        #       Child Loop BB22_33 Depth 3
                                        #       Child Loop BB22_44 Depth 3
                                        #         Child Loop BB22_50 Depth 4
                                        #       Child Loop BB22_56 Depth 3
                                        #       Child Loop BB22_61 Depth 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(x4a)
	beqz	$s4, .LBB22_11
# %bb.10:                               #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a0, $s7, 72
	ld.w	$a1, $s4, 0
	alsl.d	$a2, $a0, $a0, 3
	alsl.d	$a2, $a2, $a0, 2
	addi.d	$a1, $a1, -1
	ld.d	$a3, $s4, 16
	and	$a1, $a1, $a2
	addi.w	$a1, $a1, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	bnez	$a1, .LBB22_14
.LBB22_11:                              # %.loopexit.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s1, $s2, %pc_lo12(freelist)
	beqz	$s1, .LBB22_16
# %bb.12:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a1, $s1, 56
	b	.LBB22_18
	.p2align	4, , 16
.LBB22_13:                              # %Configcmp.exit.thread.i.i
                                        #   in Loop: Header=BB22_14 Depth=3
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB22_11
.LBB22_14:                              # %.lr.ph.i.i
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $a1, 0
	ld.d	$a2, $s1, 0
	ld.w	$a2, $a2, 72
	bne	$a2, $a0, .LBB22_13
# %bb.15:                               # %Configcmp.exit.i.i
                                        #   in Loop: Header=BB22_14 Depth=3
	ld.w	$a2, $s1, 8
	bnez	$a2, .LBB22_13
	b	.LBB22_42
	.p2align	4, , 16
.LBB22_16:                              #   in Loop: Header=BB22_9 Depth=2
	ori	$a0, $zero, 3
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(freelist)
	beqz	$a0, .LBB22_67
# %bb.17:                               # %.preheader.preheader.i.i
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$s1, $a0
	addi.d	$a1, $a0, 72
	st.d	$a1, $a0, 56
	addi.d	$a0, $a0, 144
	st.d	$a0, $s1, 128
.LBB22_18:                              # %newconfig.exit.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a0, $s8, %pc_lo12(size)
	st.d	$a1, $s2, %pc_lo12(freelist)
	st.d	$s7, $s1, 0
	st.w	$zero, $s1, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_66
# %bb.19:                               # %SetNew.exit.i
                                        #   in Loop: Header=BB22_9 Depth=2
	st.d	$a0, $s1, 16
	addi.d	$a0, $s1, 56
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a2, %pc_lo12(currentend)
	st.d	$zero, $s1, 24
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $s1, 32
	vst	$vr0, $s1, 56
	st.d	$s1, $a1, 0
	st.d	$a0, $a2, %pc_lo12(currentend)
	beqz	$s4, .LBB22_42
# %bb.20:                               #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a2, $s7, 72
	ld.w	$s6, $s4, 0
	alsl.d	$a0, $a2, $a2, 3
	alsl.d	$a6, $a0, $a2, 2
	addi.d	$a0, $s6, -1
	ld.d	$s2, $s4, 16
	and	$a0, $a0, $a6
	addi.w	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	beqz	$a1, .LBB22_25
# %bb.21:                               # %.lr.ph.i52.preheader
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$a3, $a1
	b	.LBB22_23
	.p2align	4, , 16
.LBB22_22:                              # %Configcmp.exit.thread.i
                                        #   in Loop: Header=BB22_23 Depth=3
	ld.d	$a3, $a3, 8
	beqz	$a3, .LBB22_25
.LBB22_23:                              # %.lr.ph.i52
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a4, 0
	ld.w	$a5, $a5, 72
	bne	$a5, $a2, .LBB22_22
# %bb.24:                               # %Configcmp.exit.i
                                        #   in Loop: Header=BB22_23 Depth=3
	ld.w	$a4, $a4, 8
	bnez	$a4, .LBB22_22
	b	.LBB22_36
	.p2align	4, , 16
.LBB22_25:                              # %._crit_edge.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$fp, $s4, 4
	bge	$fp, $s6, .LBB22_27
# %bb.26:                               # %._crit_edge._crit_edge.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s3, $s4, 8
	b	.LBB22_39
	.p2align	4, , 16
.LBB22_27:                              #   in Loop: Header=BB22_9 Depth=2
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	slli.w	$s2, $s6, 1
	slli.d	$a0, $s2, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_35
# %bb.28:                               #   in Loop: Header=BB22_9 Depth=2
	move	$s3, $a0
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	move	$t0, $s2
	add.d	$s2, $s3, $a0
	blez	$s6, .LBB22_30
# %bb.29:                               # %.lr.ph69.preheader.i
                                        #   in Loop: Header=BB22_9 Depth=2
	slli.d	$a2, $t0, 3
	move	$a0, $s2
	move	$a1, $zero
	move	$s6, $t0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t0, $s6
.LBB22_30:                              # %.preheader.i
                                        #   in Loop: Header=BB22_9 Depth=2
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	blez	$fp, .LBB22_37
# %bb.31:                               # %.lr.ph71.i
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$a1, $zero
	ld.d	$a0, $s4, 8
	addi.w	$s6, $t0, -1
	slli.d	$a2, $fp, 4
	alsl.d	$a2, $fp, $a2, 3
	b	.LBB22_33
	.p2align	4, , 16
.LBB22_32:                              #   in Loop: Header=BB22_33 Depth=3
	alsl.d	$a5, $a5, $s2, 3
	st.d	$a6, $a4, 8
	stx.d	$a3, $s3, $a1
	st.d	$a5, $a4, 16
	addi.d	$a1, $a1, 24
	st.d	$a4, $a5, 0
	beq	$a2, $a1, .LBB22_38
.LBB22_33:                              #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a3, $a0, $a1
	ld.d	$a4, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a3, 8
	alsl.d	$a6, $a4, $a4, 3
	alsl.d	$a4, $a6, $a4, 2
	add.w	$a4, $a4, $a5
	and	$a5, $a4, $s6
	slli.d	$a4, $a5, 3
	ldx.d	$a6, $s2, $a4
	add.d	$a4, $s3, $a1
	beqz	$a6, .LBB22_32
# %bb.34:                               #   in Loop: Header=BB22_33 Depth=3
	addi.d	$a7, $a4, 8
	st.d	$a7, $a6, 16
	b	.LBB22_32
.LBB22_35:                              #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB22_36:                              #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ori	$s6, $zero, 2
	b	.LBB22_42
.LBB22_37:                              # %.preheader.._crit_edge72_crit_edge.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a0, $s4, 8
	addi.d	$s6, $t0, -1
.LBB22_38:                              # %._crit_edge72.i
                                        #   in Loop: Header=BB22_9 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s3, $s4, 8
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $s6, $a0
	addi.w	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a2, $s4, 0
	st.d	$s2, $s4, 16
.LBB22_39:                              #   in Loop: Header=BB22_9 Depth=2
	addi.d	$a2, $fp, 1
	st.w	$a2, $s4, 4
	slli.d	$a2, $fp, 4
	alsl.d	$a3, $fp, $a2, 3
	add.d	$a2, $s3, $a3
	stx.d	$s1, $s3, $a3
	ori	$s6, $zero, 2
	beqz	$a1, .LBB22_41
# %bb.40:                               #   in Loop: Header=BB22_9 Depth=2
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, 16
.LBB22_41:                              #   in Loop: Header=BB22_9 Depth=2
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a2, 8
	st.d	$a2, $a0, 0
	st.d	$a0, $a2, 16
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
.LBB22_42:                              # %Configlist_add.exit
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB22_44
	.p2align	4, , 16
.LBB22_43:                              # %SetUnion.exit
                                        #   in Loop: Header=BB22_44 Depth=3
	ld.w	$a1, $a1, 48
	beqz	$a1, .LBB22_57
.LBB22_44:                              #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_50 Depth 4
	ld.w	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB22_57
# %bb.45:                               #   in Loop: Header=BB22_44 Depth=3
	ld.d	$a1, $s0, 32
	slli.d	$a2, $a0, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $a1, 12
	beqz	$a2, .LBB22_53
# %bb.46:                               #   in Loop: Header=BB22_44 Depth=3
	beq	$a2, $s6, .LBB22_54
# %bb.47:                               #   in Loop: Header=BB22_44 Depth=3
	ld.w	$a2, $s8, %pc_lo12(size)
	blez	$a2, .LBB22_43
# %bb.48:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB22_44 Depth=3
	ld.d	$a3, $s1, 16
	ld.d	$a4, $a1, 40
	b	.LBB22_50
	.p2align	4, , 16
.LBB22_49:                              #   in Loop: Header=BB22_50 Depth=4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	beqz	$a2, .LBB22_43
.LBB22_50:                              # %.lr.ph.i
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        #       Parent Loop BB22_44 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a5, $a4, 0
	beqz	$a5, .LBB22_49
# %bb.51:                               #   in Loop: Header=BB22_50 Depth=4
	ld.bu	$a5, $a3, 0
	bnez	$a5, .LBB22_49
# %bb.52:                               #   in Loop: Header=BB22_50 Depth=4
	st.b	$s5, $a3, 0
	b	.LBB22_49
	.p2align	4, , 16
.LBB22_53:                              #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a2, $s1, 16
	ld.w	$a1, $a1, 8
	stx.b	$s5, $a2, $a1
	b	.LBB22_57
	.p2align	4, , 16
.LBB22_54:                              # %.preheader
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a2, $a1, 84
	blez	$a2, .LBB22_57
# %bb.55:                               # %.lr.ph
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$a2, $zero
	move	$a3, $zero
	.p2align	4, , 16
.LBB22_56:                              #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a1, 88
	ldx.d	$a4, $a4, $a2
	ld.d	$a5, $s1, 16
	ld.w	$a4, $a4, 8
	stx.b	$s5, $a5, $a4
	ld.w	$a4, $a1, 84
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	blt	$a3, $a4, .LBB22_56
	.p2align	4, , 16
.LBB22_57:                              # %.loopexit
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a1, $s0, 24
	addi.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB22_8
# %bb.58:                               #   in Loop: Header=BB22_9 Depth=2
	pcalau12i	$fp, %pc_hi20(plink_freelist)
	ld.d	$a0, $fp, %pc_lo12(plink_freelist)
	ori	$s4, $zero, 1568
	bnez	$a0, .LBB22_7
# %bb.59:                               #   in Loop: Header=BB22_9 Depth=2
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB22_68
# %bb.60:                               # %vector.body.preheader
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$a1, $zero
	.p2align	4, , 16
.LBB22_61:                              # %vector.body
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $a1
	addi.d	$a3, $a2, 16
	addi.d	$a4, $a2, 32
	st.d	$a3, $a2, 8
	addi.d	$a1, $a1, 32
	st.d	$a4, $a2, 24
	bne	$a1, $s4, .LBB22_61
# %bb.62:                               # %.preheader.i.i
                                        #   in Loop: Header=BB22_9 Depth=2
	addi.d	$a1, $a0, 1584
	st.d	$a1, $a0, 1576
	st.d	$zero, $a0, 1592
	b	.LBB22_7
.LBB22_63:                              #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	beq	$fp, $a0, .LBB22_2
# %bb.64:                               #   in Loop: Header=BB22_3 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 240
	ld.w	$a1, $s0, 48
	ld.d	$a3, $fp, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 40
	ld.d	$s7, $fp, 16
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 40
	bnez	$s7, .LBB22_6
	b	.LBB22_2
.LBB22_65:                              # %._crit_edge
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB22_66:
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.LBB22_67:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_68:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	Configlist_closure, .Lfunc_end22-Configlist_closure
                                        # -- End function
	.globl	Configlist_sort                 # -- Begin function Configlist_sort
	.p2align	5
	.type	Configlist_sort,@function
Configlist_sort:                        # @Configlist_sort
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(current)
	ld.d	$s1, $fp, %pc_lo12(current)
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 240
	addi.d	$s0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB23_4
.LBB23_1:                               # %.preheader.i.preheader
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $zero, 30
	b	.LBB23_23
	.p2align	4, , 16
.LBB23_2:                               #   in Loop: Header=BB23_4 Depth=1
	move	$a2, $a1
.LBB23_3:                               # %.critedge.i
                                        #   in Loop: Header=BB23_4 Depth=1
	bstrpick.d	$a1, $a2, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a1, $s0
	beqz	$s1, .LBB23_1
.LBB23_4:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_7 Depth 2
                                        #       Child Loop BB23_15 Depth 3
	move	$a0, $s1
	ld.d	$s1, $s1, 56
	move	$a1, $zero
	st.d	$zero, $a0, 56
	b	.LBB23_7
	.p2align	4, , 16
.LBB23_5:                               #   in Loop: Header=BB23_7 Depth=2
	move	$a5, $a4
	move	$a6, $a3
	move	$a2, $a0
.LBB23_6:                               # %merge.exit.i
                                        #   in Loop: Header=BB23_7 Depth=2
	alsl.d	$a3, $a1, $s0, 3
	masknez	$a4, $a5, $a7
	maskeqz	$a5, $a6, $a7
	or	$a4, $a5, $a4
	st.d	$a4, $a2, 56
	addi.d	$a1, $a1, 1
	ori	$a2, $zero, 29
	st.d	$zero, $a3, 0
	beq	$a1, $a2, .LBB23_3
.LBB23_7:                               #   Parent Loop BB23_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_15 Depth 3
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a2, $s0
	beqz	$a2, .LBB23_2
# %bb.8:                                #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a2, 0
	ld.w	$a3, $a3, 72
	ld.w	$a4, $a4, 72
	sub.w	$a3, $a3, $a4
	beqz	$a3, .LBB23_11
# %bb.9:                                # %Configcmp.exit6
                                        #   in Loop: Header=BB23_7 Depth=2
	bltz	$a3, .LBB23_12
.LBB23_10:                              #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a4, $a2, 56
	move	$a3, $a0
	move	$a0, $a2
	sltu	$a7, $zero, $a3
	bnez	$a3, .LBB23_13
	b	.LBB23_5
	.p2align	4, , 16
.LBB23_11:                              #   in Loop: Header=BB23_7 Depth=2
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a2, 8
	sub.w	$a3, $a3, $a4
	bgez	$a3, .LBB23_10
.LBB23_12:                              #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a3, $a0, 56
	move	$a4, $a2
	sltu	$a7, $zero, $a3
	beqz	$a3, .LBB23_5
.LBB23_13:                              #   in Loop: Header=BB23_7 Depth=2
	beqz	$a4, .LBB23_5
# %bb.14:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB23_7 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB23_15:                              # %.lr.ph.i.i
                                        #   Parent Loop BB23_4 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a4, 0
	ld.w	$a5, $a5, 72
	ld.w	$a6, $a6, 72
	sub.w	$a5, $a5, $a6
	beqz	$a5, .LBB23_18
# %bb.16:                               # %Configcmp.exit4
                                        #   in Loop: Header=BB23_15 Depth=3
	bltz	$a5, .LBB23_19
.LBB23_17:                              #   in Loop: Header=BB23_15 Depth=3
	st.d	$a4, $a2, 56
	ld.d	$a5, $a4, 56
	move	$a6, $a3
	move	$a2, $a4
	sltu	$a7, $zero, $a6
	bnez	$a6, .LBB23_20
	b	.LBB23_6
	.p2align	4, , 16
.LBB23_18:                              #   in Loop: Header=BB23_15 Depth=3
	ld.w	$a5, $a3, 8
	ld.w	$a6, $a4, 8
	sub.w	$a5, $a5, $a6
	bgez	$a5, .LBB23_17
.LBB23_19:                              #   in Loop: Header=BB23_15 Depth=3
	st.d	$a3, $a2, 56
	ld.d	$a6, $a3, 56
	move	$a5, $a4
	move	$a2, $a3
	sltu	$a7, $zero, $a6
	beqz	$a6, .LBB23_6
.LBB23_20:                              #   in Loop: Header=BB23_15 Depth=3
	move	$a3, $a6
	move	$a4, $a5
	bnez	$a5, .LBB23_15
	b	.LBB23_6
	.p2align	4, , 16
.LBB23_21:                              #   in Loop: Header=BB23_23 Depth=1
	move	$a2, $a3
.LBB23_22:                              # %merge.exit51.i
                                        #   in Loop: Header=BB23_23 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB23_40
.LBB23_23:                              # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_32 Depth 2
	slli.d	$a3, $a0, 3
	ldx.d	$a3, $a3, $s0
	beqz	$a3, .LBB23_22
# %bb.24:                               #   in Loop: Header=BB23_23 Depth=1
	beqz	$a2, .LBB23_21
# %bb.25:                               #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a5, 72
	sub.w	$a4, $a4, $a5
	beqz	$a4, .LBB23_28
# %bb.26:                               # %Configcmp.exit2
                                        #   in Loop: Header=BB23_23 Depth=1
	bltz	$a4, .LBB23_29
.LBB23_27:                              #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a5, $a3, 56
	move	$a4, $a2
	move	$a2, $a3
	sltu	$t0, $zero, $a4
	bnez	$a4, .LBB23_30
	b	.LBB23_38
.LBB23_28:                              #   in Loop: Header=BB23_23 Depth=1
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a3, 8
	sub.w	$a4, $a4, $a5
	bgez	$a4, .LBB23_27
.LBB23_29:                              #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a4, $a2, 56
	move	$a5, $a3
	sltu	$t0, $zero, $a4
	beqz	$a4, .LBB23_38
.LBB23_30:                              #   in Loop: Header=BB23_23 Depth=1
	beqz	$a5, .LBB23_38
# %bb.31:                               # %.lr.ph.i44.i.preheader
                                        #   in Loop: Header=BB23_23 Depth=1
	move	$a3, $a2
	.p2align	4, , 16
.LBB23_32:                              # %.lr.ph.i44.i
                                        #   Parent Loop BB23_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a5, 0
	ld.w	$a6, $a6, 72
	ld.w	$a7, $a7, 72
	sub.w	$a6, $a6, $a7
	beqz	$a6, .LBB23_35
# %bb.33:                               # %Configcmp.exit
                                        #   in Loop: Header=BB23_32 Depth=2
	bltz	$a6, .LBB23_36
.LBB23_34:                              #   in Loop: Header=BB23_32 Depth=2
	st.d	$a5, $a3, 56
	ld.d	$a6, $a5, 56
	move	$a7, $a4
	move	$a3, $a5
	sltu	$t0, $zero, $a7
	bnez	$a7, .LBB23_37
	b	.LBB23_39
	.p2align	4, , 16
.LBB23_35:                              #   in Loop: Header=BB23_32 Depth=2
	ld.w	$a6, $a4, 8
	ld.w	$a7, $a5, 8
	sub.w	$a6, $a6, $a7
	bgez	$a6, .LBB23_34
.LBB23_36:                              #   in Loop: Header=BB23_32 Depth=2
	st.d	$a4, $a3, 56
	ld.d	$a7, $a4, 56
	move	$a6, $a5
	move	$a3, $a4
	sltu	$t0, $zero, $a7
	beqz	$a7, .LBB23_39
.LBB23_37:                              #   in Loop: Header=BB23_32 Depth=2
	move	$a4, $a7
	move	$a5, $a6
	bnez	$a6, .LBB23_32
	b	.LBB23_39
.LBB23_38:                              #   in Loop: Header=BB23_23 Depth=1
	move	$a6, $a5
	move	$a7, $a4
	move	$a3, $a2
.LBB23_39:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB23_23 Depth=1
	masknez	$a4, $a6, $t0
	maskeqz	$a5, $a7, $t0
	or	$a4, $a5, $a4
	st.d	$a4, $a3, 56
	b	.LBB23_22
.LBB23_40:                              # %msort.exit
	st.d	$a2, $fp, %pc_lo12(current)
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$zero, $a0, %pc_lo12(currentend)
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end23:
	.size	Configlist_sort, .Lfunc_end23-Configlist_sort
                                        # -- End function
	.globl	Configlist_sortbasis            # -- Begin function Configlist_sortbasis
	.p2align	5
	.type	Configlist_sortbasis,@function
Configlist_sortbasis:                   # @Configlist_sortbasis
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(current)
	ld.d	$s0, $a0, %pc_lo12(current)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 240
	addi.d	$fp, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB24_4
.LBB24_1:                               # %.preheader.i.preheader
	move	$a0, $zero
	move	$a1, $zero
	ori	$a2, $zero, 30
	b	.LBB24_23
	.p2align	4, , 16
.LBB24_2:                               #   in Loop: Header=BB24_4 Depth=1
	move	$a2, $a1
.LBB24_3:                               # %.critedge.i
                                        #   in Loop: Header=BB24_4 Depth=1
	bstrpick.d	$a1, $a2, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a1, $fp
	beqz	$s0, .LBB24_1
.LBB24_4:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_7 Depth 2
                                        #       Child Loop BB24_15 Depth 3
	move	$a0, $s0
	ld.d	$s0, $s0, 64
	move	$a1, $zero
	st.d	$zero, $a0, 64
	b	.LBB24_7
	.p2align	4, , 16
.LBB24_5:                               #   in Loop: Header=BB24_7 Depth=2
	move	$a5, $a4
	move	$a6, $a3
	move	$a2, $a0
.LBB24_6:                               # %merge.exit.i
                                        #   in Loop: Header=BB24_7 Depth=2
	alsl.d	$a3, $a1, $fp, 3
	masknez	$a4, $a5, $a7
	maskeqz	$a5, $a6, $a7
	or	$a4, $a5, $a4
	st.d	$a4, $a2, 64
	addi.d	$a1, $a1, 1
	ori	$a2, $zero, 29
	st.d	$zero, $a3, 0
	beq	$a1, $a2, .LBB24_3
.LBB24_7:                               #   Parent Loop BB24_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_15 Depth 3
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a2, $fp
	beqz	$a2, .LBB24_2
# %bb.8:                                #   in Loop: Header=BB24_7 Depth=2
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a2, 0
	ld.w	$a3, $a3, 72
	ld.w	$a4, $a4, 72
	sub.w	$a3, $a3, $a4
	beqz	$a3, .LBB24_11
# %bb.9:                                # %Configcmp.exit6
                                        #   in Loop: Header=BB24_7 Depth=2
	bltz	$a3, .LBB24_12
.LBB24_10:                              #   in Loop: Header=BB24_7 Depth=2
	ld.d	$a4, $a2, 64
	move	$a3, $a0
	move	$a0, $a2
	sltu	$a7, $zero, $a3
	bnez	$a3, .LBB24_13
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_11:                              #   in Loop: Header=BB24_7 Depth=2
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a2, 8
	sub.w	$a3, $a3, $a4
	bgez	$a3, .LBB24_10
.LBB24_12:                              #   in Loop: Header=BB24_7 Depth=2
	ld.d	$a3, $a0, 64
	move	$a4, $a2
	sltu	$a7, $zero, $a3
	beqz	$a3, .LBB24_5
.LBB24_13:                              #   in Loop: Header=BB24_7 Depth=2
	beqz	$a4, .LBB24_5
# %bb.14:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB24_7 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB24_15:                              # %.lr.ph.i.i
                                        #   Parent Loop BB24_4 Depth=1
                                        #     Parent Loop BB24_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a4, 0
	ld.w	$a5, $a5, 72
	ld.w	$a6, $a6, 72
	sub.w	$a5, $a5, $a6
	beqz	$a5, .LBB24_18
# %bb.16:                               # %Configcmp.exit4
                                        #   in Loop: Header=BB24_15 Depth=3
	bltz	$a5, .LBB24_19
.LBB24_17:                              #   in Loop: Header=BB24_15 Depth=3
	st.d	$a4, $a2, 64
	ld.d	$a5, $a4, 64
	move	$a6, $a3
	move	$a2, $a4
	sltu	$a7, $zero, $a6
	bnez	$a6, .LBB24_20
	b	.LBB24_6
	.p2align	4, , 16
.LBB24_18:                              #   in Loop: Header=BB24_15 Depth=3
	ld.w	$a5, $a3, 8
	ld.w	$a6, $a4, 8
	sub.w	$a5, $a5, $a6
	bgez	$a5, .LBB24_17
.LBB24_19:                              #   in Loop: Header=BB24_15 Depth=3
	st.d	$a3, $a2, 64
	ld.d	$a6, $a3, 64
	move	$a5, $a4
	move	$a2, $a3
	sltu	$a7, $zero, $a6
	beqz	$a6, .LBB24_6
.LBB24_20:                              #   in Loop: Header=BB24_15 Depth=3
	move	$a3, $a6
	move	$a4, $a5
	bnez	$a5, .LBB24_15
	b	.LBB24_6
	.p2align	4, , 16
.LBB24_21:                              #   in Loop: Header=BB24_23 Depth=1
	move	$a1, $a3
.LBB24_22:                              # %merge.exit51.i
                                        #   in Loop: Header=BB24_23 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a2, .LBB24_40
.LBB24_23:                              # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_32 Depth 2
	slli.d	$a3, $a0, 3
	ldx.d	$a3, $a3, $fp
	beqz	$a3, .LBB24_22
# %bb.24:                               #   in Loop: Header=BB24_23 Depth=1
	beqz	$a1, .LBB24_21
# %bb.25:                               #   in Loop: Header=BB24_23 Depth=1
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a5, 72
	sub.w	$a4, $a4, $a5
	beqz	$a4, .LBB24_28
# %bb.26:                               # %Configcmp.exit2
                                        #   in Loop: Header=BB24_23 Depth=1
	bltz	$a4, .LBB24_29
.LBB24_27:                              #   in Loop: Header=BB24_23 Depth=1
	ld.d	$a5, $a3, 64
	move	$a4, $a1
	move	$a1, $a3
	sltu	$t0, $zero, $a4
	bnez	$a4, .LBB24_30
	b	.LBB24_38
.LBB24_28:                              #   in Loop: Header=BB24_23 Depth=1
	ld.w	$a4, $a1, 8
	ld.w	$a5, $a3, 8
	sub.w	$a4, $a4, $a5
	bgez	$a4, .LBB24_27
.LBB24_29:                              #   in Loop: Header=BB24_23 Depth=1
	ld.d	$a4, $a1, 64
	move	$a5, $a3
	sltu	$t0, $zero, $a4
	beqz	$a4, .LBB24_38
.LBB24_30:                              #   in Loop: Header=BB24_23 Depth=1
	beqz	$a5, .LBB24_38
# %bb.31:                               # %.lr.ph.i44.i.preheader
                                        #   in Loop: Header=BB24_23 Depth=1
	move	$a3, $a1
	.p2align	4, , 16
.LBB24_32:                              # %.lr.ph.i44.i
                                        #   Parent Loop BB24_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a5, 0
	ld.w	$a6, $a6, 72
	ld.w	$a7, $a7, 72
	sub.w	$a6, $a6, $a7
	beqz	$a6, .LBB24_35
# %bb.33:                               # %Configcmp.exit
                                        #   in Loop: Header=BB24_32 Depth=2
	bltz	$a6, .LBB24_36
.LBB24_34:                              #   in Loop: Header=BB24_32 Depth=2
	st.d	$a5, $a3, 64
	ld.d	$a6, $a5, 64
	move	$a7, $a4
	move	$a3, $a5
	sltu	$t0, $zero, $a7
	bnez	$a7, .LBB24_37
	b	.LBB24_39
	.p2align	4, , 16
.LBB24_35:                              #   in Loop: Header=BB24_32 Depth=2
	ld.w	$a6, $a4, 8
	ld.w	$a7, $a5, 8
	sub.w	$a6, $a6, $a7
	bgez	$a6, .LBB24_34
.LBB24_36:                              #   in Loop: Header=BB24_32 Depth=2
	st.d	$a4, $a3, 64
	ld.d	$a7, $a4, 64
	move	$a6, $a5
	move	$a3, $a4
	sltu	$t0, $zero, $a7
	beqz	$a7, .LBB24_39
.LBB24_37:                              #   in Loop: Header=BB24_32 Depth=2
	move	$a4, $a7
	move	$a5, $a6
	bnez	$a6, .LBB24_32
	b	.LBB24_39
.LBB24_38:                              #   in Loop: Header=BB24_23 Depth=1
	move	$a6, $a5
	move	$a7, $a4
	move	$a3, $a1
.LBB24_39:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB24_23 Depth=1
	masknez	$a4, $a6, $t0
	maskeqz	$a5, $a7, $t0
	or	$a4, $a5, $a4
	st.d	$a4, $a3, 64
	b	.LBB24_22
.LBB24_40:                              # %msort.exit
	pcalau12i	$a0, %pc_hi20(basis)
	st.d	$a1, $a0, %pc_lo12(basis)
	pcalau12i	$a0, %pc_hi20(basisend)
	st.d	$zero, $a0, %pc_lo12(basisend)
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end24:
	.size	Configlist_sortbasis, .Lfunc_end24-Configlist_sortbasis
                                        # -- End function
	.globl	Configlist_return               # -- Begin function Configlist_return
	.p2align	5
	.type	Configlist_return,@function
Configlist_return:                      # @Configlist_return
# %bb.0:
	pcalau12i	$a1, %pc_hi20(current)
	ld.d	$a0, $a1, %pc_lo12(current)
	st.d	$zero, $a1, %pc_lo12(current)
	pcalau12i	$a1, %pc_hi20(currentend)
	st.d	$zero, $a1, %pc_lo12(currentend)
	ret
.Lfunc_end25:
	.size	Configlist_return, .Lfunc_end25-Configlist_return
                                        # -- End function
	.globl	Configlist_basis                # -- Begin function Configlist_basis
	.p2align	5
	.type	Configlist_basis,@function
Configlist_basis:                       # @Configlist_basis
# %bb.0:
	pcalau12i	$a1, %pc_hi20(basis)
	ld.d	$a0, $a1, %pc_lo12(basis)
	st.d	$zero, $a1, %pc_lo12(basis)
	pcalau12i	$a1, %pc_hi20(basisend)
	st.d	$zero, $a1, %pc_lo12(basisend)
	ret
.Lfunc_end26:
	.size	Configlist_basis, .Lfunc_end26-Configlist_basis
                                        # -- End function
	.globl	Configlist_eat                  # -- Begin function Configlist_eat
	.p2align	5
	.type	Configlist_eat,@function
Configlist_eat:                         # @Configlist_eat
# %bb.0:
	beqz	$a0, .LBB27_6
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$s1, $s0, %pc_lo12(freelist)
	b	.LBB27_3
	.p2align	4, , 16
.LBB27_2:                               #   in Loop: Header=BB27_3 Depth=1
	st.d	$s1, $s2, 56
	move	$s1, $s2
	beqz	$fp, .LBB27_5
.LBB27_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $fp
	ld.d	$a0, $fp, 16
	ld.d	$fp, $fp, 56
	beqz	$a0, .LBB27_2
# %bb.4:                                #   in Loop: Header=BB27_3 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB27_2
.LBB27_5:                               # %._crit_edge
	st.d	$s2, $s0, %pc_lo12(freelist)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB27_6:
	ret
.Lfunc_end27:
	.size	Configlist_eat, .Lfunc_end27-Configlist_eat
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	memory_error                    # -- Begin function memory_error
	.p2align	5
	.type	memory_error,@function
memory_error:                           # @memory_error
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	memory_error, .Lfunc_end28-memory_error
                                        # -- End function
	.text
	.globl	lemon_main                      # -- Begin function lemon_main
	.p2align	5
	.type	lemon_main,@function
lemon_main:                             # @lemon_main
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s5, $a0, %got_pc_lo12(stderr)
	ld.d	$a2, $s5, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.options)
	addi.d	$a1, $a0, %pc_lo12(lemon_main.options)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(OptInit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.version)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.version)
	bnez	$a0, .LBB29_14
# %bb.1:
	pcalau12i	$a0, %pc_hi20(argv)
	ld.d	$s3, $a0, %pc_lo12(argv)
	beqz	$s3, .LBB29_21
# %bb.2:
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB29_21
# %bb.3:                                # %.preheader.i
	ld.d	$s0, $s3, 8
	beqz	$s0, .LBB29_21
# %bb.4:                                # %.lr.ph.i.preheader
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $zero
	move	$s1, $zero
	ori	$s5, $zero, 16
	ori	$s6, $zero, 43
	ori	$s7, $zero, 45
	ori	$s8, $zero, 1
	b	.LBB29_6
	.p2align	4, , 16
.LBB29_5:                               # %.tail.i
                                        #   in Loop: Header=BB29_6 Depth=1
	ldx.d	$s0, $s3, $s5
	addi.d	$s5, $s5, 8
	beqz	$s0, .LBB29_16
.LBB29_6:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s2, $s0, 0
	beqz	$s4, .LBB29_11
.LBB29_7:                               #   in Loop: Header=BB29_6 Depth=1
	addi.w	$s1, $s1, 1
.LBB29_8:                               # %sub_0.i
                                        #   in Loop: Header=BB29_6 Depth=1
	bne	$s2, $s7, .LBB29_5
# %bb.9:                                # %sub_1.i
                                        #   in Loop: Header=BB29_6 Depth=1
	ld.bu	$a0, $s0, 1
	bne	$a0, $s7, .LBB29_5
# %bb.10:                               # %sub_2.i
                                        #   in Loop: Header=BB29_6 Depth=1
	ld.bu	$a0, $s0, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s8, $a0
	or	$s4, $a0, $a1
	b	.LBB29_5
	.p2align	4, , 16
.LBB29_11:                              #   in Loop: Header=BB29_6 Depth=1
	beq	$s2, $s6, .LBB29_8
# %bb.12:                               #   in Loop: Header=BB29_6 Depth=1
	beq	$s2, $s7, .LBB29_8
# %bb.13:                               #   in Loop: Header=BB29_6 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_8
	b	.LBB29_7
.LBB29_14:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB29_15:
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_16:                              # %OptNArgs.exit
	ori	$a0, $zero, 1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	bne	$s1, $a0, .LBB29_21
# %bb.17:
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 288
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(x1a)
	ld.d	$a0, $s1, %pc_lo12(x1a)
	bnez	$a0, .LBB29_23
# %bb.18:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(x1a)
	beqz	$a0, .LBB29_23
# %bb.19:
	move	$s0, $a0
	ori	$a0, $zero, 1024
	st.d	$a0, $s0, 0
	lu12i.w	$a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	bnez	$a0, .LBB29_22
# %bb.20:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, %pc_lo12(x1a)
	b	.LBB29_23
.LBB29_21:                              # %OptNArgs.exit.thread
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_22:                              # %.loopexit.loopexit.i
	lu12i.w	$a1, 6
	add.d	$a0, $a0, $a1
	st.d	$a0, $s0, 16
	lu12i.w	$a2, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_23:                              # %Strsafe_init.exit
	pcalau12i	$s4, %pc_hi20(x2a)
	ld.d	$a0, $s4, %pc_lo12(x2a)
	bnez	$a0, .LBB29_28
# %bb.24:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(x2a)
	beqz	$a0, .LBB29_28
# %bb.25:
	move	$s0, $a0
	ori	$a0, $zero, 128
	st.d	$a0, $s0, 0
	lu12i.w	$s1, 1
	ori	$a0, $s1, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	bnez	$a0, .LBB29_27
# %bb.26:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s4, %pc_lo12(x2a)
	b	.LBB29_28
.LBB29_27:                              # %.loopexit.loopexit.i26
	add.d	$a0, $a0, $s1
	st.d	$a0, $s0, 16
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_28:                              # %Symbol_init.exit
	pcalau12i	$s2, %pc_hi20(x3a)
	ld.d	$a0, $s2, %pc_lo12(x3a)
	bnez	$a0, .LBB29_33
# %bb.29:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(x3a)
	beqz	$a0, .LBB29_33
# %bb.30:
	move	$s0, $a0
	ori	$a0, $zero, 128
	st.d	$a0, $s0, 0
	lu12i.w	$s1, 1
	ori	$a0, $s1, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	bnez	$a0, .LBB29_32
# %bb.31:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, %pc_lo12(x3a)
	b	.LBB29_33
.LBB29_32:                              # %.loopexit.loopexit.i29
	add.d	$a0, $a0, $s1
	st.d	$a0, $s0, 16
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_33:
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 304
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB29_35
# %bb.34:                               # %.preheader.i.i
	ld.d	$fp, $s3, 8
	bnez	$fp, .LBB29_36
.LBB29_35:
	move	$a0, $zero
	b	.LBB29_48
.LBB29_36:                              # %.lr.ph.i.i.preheader
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $zero
	addi.d	$s0, $s3, 16
	ori	$s5, $zero, 1
	ori	$s6, $zero, 43
	ori	$s8, $zero, 45
	ori	$s7, $zero, 1
	b	.LBB29_38
	.p2align	4, , 16
.LBB29_37:                              #   in Loop: Header=BB29_38 Depth=1
	move	$s1, $zero
	ld.d	$fp, $s0, 0
	addi.d	$s7, $s7, 1
	addi.d	$s0, $s0, 8
	beqz	$fp, .LBB29_45
.LBB29_38:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	bnez	$s1, .LBB29_46
# %bb.39:                               #   in Loop: Header=BB29_38 Depth=1
	ld.bu	$s2, $fp, 0
	beq	$s2, $s6, .LBB29_37
# %bb.40:                               #   in Loop: Header=BB29_38 Depth=1
	beq	$s2, $s8, .LBB29_43
# %bb.41:                               #   in Loop: Header=BB29_38 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_46
# %bb.42:                               # %sub_0.i.i
                                        #   in Loop: Header=BB29_38 Depth=1
	bne	$s2, $s8, .LBB29_37
.LBB29_43:                              # %sub_1.i.i
                                        #   in Loop: Header=BB29_38 Depth=1
	ld.bu	$a0, $fp, 1
	bne	$a0, $s8, .LBB29_37
# %bb.44:                               # %sub_2.i.i
                                        #   in Loop: Header=BB29_38 Depth=1
	ld.bu	$a0, $fp, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s1, $a0, $a1
	ld.d	$fp, $s0, 0
	addi.d	$s7, $s7, 1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB29_38
.LBB29_45:
	move	$a0, $zero
	b	.LBB29_47
.LBB29_46:                              # %argindex.exit.i
	bstrpick.d	$a0, $s7, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s3, $a0
.LBB29_47:                              # %OptArg.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
.LBB29_48:                              # %OptArg.exit
	pcalau12i	$a1, %pc_hi20(lemon_main.basisflag)
	ld.w	$a1, $a1, %pc_lo12(lemon_main.basisflag)
	st.d	$a0, $sp, 264
	st.w	$a1, $sp, 296
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72
	st.w	$zero, $a0, 52
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 64
	bnez	$a0, .LBB29_15
# %bb.49:
	ld.w	$a0, $sp, 44
	bnez	$a0, .LBB29_51
# %bb.50:
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_51:
	ld.d	$a0, $s4, %pc_lo12(x2a)
	bnez	$a0, .LBB29_53
# %bb.52:
	move	$a0, $zero
	b	.LBB29_54
.LBB29_53:
	ld.w	$a0, $a0, 4
.LBB29_54:                              # %Symbol_count.exit
	st.w	$a0, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, %pc_lo12(x2a)
	beqz	$s0, .LBB29_56
# %bb.55:
	ld.w	$fp, $s0, 4
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_60
.LBB29_56:
	move	$a0, $zero
.LBB29_57:                              # %Symbol_arrayof.exit
	ld.w	$a2, $sp, 48
	st.d	$a0, $sp, 56
	addi.w	$a1, $a2, 1
	bltz	$a2, .LBB29_72
# %bb.58:                               # %.lr.ph.preheader
	ori	$a2, $zero, 4
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a1, $a2, .LBB29_67
# %bb.59:
	move	$a2, $zero
	b	.LBB29_70
.LBB29_60:                              # %.preheader.i32
	blez	$fp, .LBB29_57
# %bb.61:                               # %.lr.ph.i33
	ld.d	$a1, $s0, 8
	ori	$a2, $zero, 12
	bltu	$fp, $a2, .LBB29_64
# %bb.62:                               # %vector.memcheck
	slli.d	$a2, $fp, 5
	add.d	$a2, $a1, $a2
	addi.d	$a2, $a2, -24
	bgeu	$a0, $a2, .LBB29_118
# %bb.63:                               # %vector.memcheck
	alsl.d	$a2, $fp, $a0, 3
	bgeu	$a1, $a2, .LBB29_118
.LBB29_64:
	move	$a2, $zero
.LBB29_65:                              # %scalar.ph.preheader
	sub.d	$a3, $fp, $a2
	slli.d	$a4, $a2, 3
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB29_66:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	stx.d	$a2, $a0, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB29_66
	b	.LBB29_57
.LBB29_67:                              # %vector.ph102
	move	$a4, $zero
	bstrpick.d	$a2, $a3, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB29_68:                              # %vector.body105
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a7, $a4, 1
	addi.d	$t0, $a4, 2
	addi.d	$t1, $a4, 3
	ld.d	$t2, $a5, -16
	ld.d	$t3, $a5, -8
	ld.d	$t4, $a5, 0
	ld.d	$t5, $a5, 8
	st.w	$a4, $t2, 8
	st.w	$a7, $t3, 8
	st.w	$t0, $t4, 8
	st.w	$t1, $t5, 8
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB29_68
# %bb.69:                               # %middle.block109
	beq	$a2, $a3, .LBB29_72
.LBB29_70:                              # %.lr.ph.preheader143
	alsl.d	$a4, $a2, $a0, 3
	sub.d	$a3, $a3, $a2
	.p2align	4, , 16
.LBB29_71:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a2, $a5, 8
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB29_71
.LBB29_72:                              # %._crit_edge
	pcalau12i	$a2, %pc_hi20(Symbolcmpp)
	addi.d	$a3, $a2, %pc_lo12(Symbolcmpp)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 48
	ld.d	$fp, $sp, 56
	bltz	$a0, .LBB29_80
# %bb.73:                               # %.lr.ph63
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 3
	bstrpick.d	$a1, $a1, 31, 0
	bgeu	$a0, $a2, .LBB29_75
# %bb.74:
	move	$a0, $zero
	b	.LBB29_78
.LBB29_75:                              # %vector.ph114
	move	$a2, $zero
	bstrpick.d	$a0, $a1, 31, 2
	slli.d	$a0, $a0, 2
	addi.d	$a3, $fp, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB29_76:                              # %vector.body117
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a2, 1
	addi.d	$a6, $a2, 2
	addi.d	$a7, $a2, 3
	ld.d	$t0, $a3, -16
	ld.d	$t1, $a3, -8
	ld.d	$t2, $a3, 0
	ld.d	$t3, $a3, 8
	st.w	$a2, $t0, 8
	st.w	$a5, $t1, 8
	st.w	$a6, $t2, 8
	st.w	$a7, $t3, 8
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB29_76
# %bb.77:                               # %middle.block122
	beq	$a0, $a1, .LBB29_80
.LBB29_78:                              # %scalar.ph112.preheader
	alsl.d	$a2, $a0, $fp, 3
	sub.d	$a1, $a1, $a0
	.p2align	4, , 16
.LBB29_79:                              # %scalar.ph112
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.w	$a0, $a3, 8
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB29_79
.LBB29_80:                              # %.preheader
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$a2, $fp, 8
	ori	$a1, $zero, 2
	.p2align	4, , 16
.LBB29_81:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.d	$a3, $a3, 0
	ld.b	$a3, $a3, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	andi	$a3, $a3, 256
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB29_81
# %bb.82:
	pcalau12i	$a0, %pc_hi20(lemon_main.rpflag)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.rpflag)
	addi.d	$a2, $a1, -2
	st.w	$a2, $sp, 52
	bnez	$a0, .LBB29_95
# %bb.83:
	ld.d	$a0, $sp, 32
	pcalau12i	$a2, %pc_hi20(size)
	st.w	$a1, $a2, %pc_lo12(size)
	bnez	$a0, .LBB29_97
.LBB29_84:                              # %FindRulePrecedences.exit
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindFirstSets)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 40
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindStates)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s2, %pc_lo12(x3a)
	beqz	$s1, .LBB29_86
# %bb.85:
	ld.w	$s0, $s1, 4
	slli.d	$fp, $s0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_111
.LBB29_86:
	move	$a0, $zero
.LBB29_87:                              # %State_arrayof.exit
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindLinks)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindFollowSets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindActions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.compress)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.compress)
	bnez	$a0, .LBB29_89
# %bb.88:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(CompressTables)
	jirl	$ra, $ra, 0
.LBB29_89:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(ResortStates)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.quiet)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.quiet)
	bnez	$a0, .LBB29_91
# %bb.90:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(ReportOutput)
	jirl	$ra, $ra, 0
.LBB29_91:
	pcalau12i	$fp, %pc_hi20(lemon_main.mhflag)
	ld.w	$a1, $fp, %pc_lo12(lemon_main.mhflag)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(ReportTable)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(lemon_main.mhflag)
	bnez	$a0, .LBB29_93
# %bb.92:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(ReportHeader)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.statistics)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.statistics)
	beqz	$a0, .LBB29_94
	b	.LBB29_96
.LBB29_93:
	pcalau12i	$a0, %pc_hi20(lemon_main.statistics)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.statistics)
	bnez	$a0, .LBB29_96
.LBB29_94:
	ld.w	$a0, $sp, 64
	ld.w	$a1, $sp, 288
	add.w	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_95:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(Reprint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.statistics)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.statistics)
	beqz	$a0, .LBB29_94
.LBB29_96:
	ld.w	$a0, $sp, 48
	ld.w	$a1, $sp, 52
	ld.w	$a3, $sp, 44
	sub.w	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	ld.w	$a2, $sp, 292
	ld.w	$a3, $sp, 288
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 64
	ld.w	$a1, $sp, 288
	add.w	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_97:                              # %.lr.ph33.i.preheader
	ori	$a1, $zero, 2
	b	.LBB29_99
	.p2align	4, , 16
.LBB29_98:                              # %.critedge.i
                                        #   in Loop: Header=BB29_99 Depth=1
	ld.d	$a0, $a0, 88
	beqz	$a0, .LBB29_84
.LBB29_99:                              # %.lr.ph33.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_103 Depth 2
                                        #       Child Loop BB29_107 Depth 3
	ld.d	$a2, $a0, 64
	bnez	$a2, .LBB29_98
# %bb.100:                              # %.preheader24.i
                                        #   in Loop: Header=BB29_99 Depth=1
	ld.w	$a2, $a0, 24
	blez	$a2, .LBB29_98
# %bb.101:                              # %.lr.ph27.i
                                        #   in Loop: Header=BB29_99 Depth=1
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB29_103
	.p2align	4, , 16
.LBB29_102:                             #   in Loop: Header=BB29_103 Depth=2
	move	$a4, $zero
	addi.d	$a3, $a3, 1
	beq	$a3, $a2, .LBB29_98
.LBB29_103:                             #   Parent Loop BB29_99 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_107 Depth 3
	bnez	$a4, .LBB29_98
# %bb.104:                              #   in Loop: Header=BB29_103 Depth=2
	ld.d	$a4, $a0, 32
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	ld.w	$a5, $a4, 12
	bne	$a5, $a1, .LBB29_109
# %bb.105:                              # %.preheader.i38
                                        #   in Loop: Header=BB29_103 Depth=2
	ld.w	$a5, $a4, 84
	blez	$a5, .LBB29_102
# %bb.106:                              # %.lr.ph.i39
                                        #   in Loop: Header=BB29_103 Depth=2
	ld.d	$a6, $a4, 88
	.p2align	4, , 16
.LBB29_107:                             #   Parent Loop BB29_99 Depth=1
                                        #     Parent Loop BB29_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a6, 0
	ld.w	$a7, $a4, 32
	bgez	$a7, .LBB29_110
# %bb.108:                              #   in Loop: Header=BB29_107 Depth=3
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB29_107
	b	.LBB29_102
	.p2align	4, , 16
.LBB29_109:                             #   in Loop: Header=BB29_103 Depth=2
	ld.w	$a5, $a4, 32
	bltz	$a5, .LBB29_102
.LBB29_110:                             # %.loopexit.sink.split.i
                                        #   in Loop: Header=BB29_103 Depth=2
	st.d	$a4, $a0, 64
	addi.d	$a3, $a3, 1
	bne	$a3, $a2, .LBB29_103
	b	.LBB29_98
.LBB29_111:                             # %.preheader.i45
	blez	$s0, .LBB29_87
# %bb.112:                              # %.lr.ph.i48
	ld.d	$a1, $s1, 8
	ori	$a2, $zero, 12
	bltu	$s0, $a2, .LBB29_115
# %bb.113:                              # %vector.memcheck125
	slli.d	$a2, $s0, 5
	add.d	$a2, $a1, $a2
	addi.d	$a2, $a2, -24
	bgeu	$a0, $a2, .LBB29_121
# %bb.114:                              # %vector.memcheck125
	alsl.d	$a2, $s0, $a0, 3
	bgeu	$a1, $a2, .LBB29_121
.LBB29_115:
	move	$a2, $zero
.LBB29_116:                             # %scalar.ph131.preheader
	sub.d	$a3, $s0, $a2
	slli.d	$a4, $a2, 3
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB29_117:                             # %scalar.ph131
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	stx.d	$a2, $a0, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB29_117
	b	.LBB29_87
.LBB29_118:                             # %vector.ph
	move	$a3, $zero
	bstrpick.d	$a2, $fp, 30, 2
	slli.d	$a2, $a2, 2
	slli.d	$a4, $fp, 3
	bstrpick.d	$a4, $a4, 33, 5
	slli.d	$a4, $a4, 5
	addi.d	$a5, $a1, 64
	.p2align	4, , 16
.LBB29_119:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, -64
	ld.d	$a7, $a5, -32
	ld.d	$t0, $a5, 0
	ld.d	$t1, $a5, 32
	vinsgr2vr.d	$vr0, $a6, 0
	vinsgr2vr.d	$vr0, $a7, 1
	vinsgr2vr.d	$vr1, $t0, 0
	vinsgr2vr.d	$vr1, $t1, 1
	add.d	$a6, $a0, $a3
	vstx	$vr0, $a0, $a3
	vst	$vr1, $a6, 16
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, 128
	bne	$a4, $a3, .LBB29_119
# %bb.120:                              # %middle.block
	beq	$a2, $fp, .LBB29_57
	b	.LBB29_65
.LBB29_121:                             # %vector.ph133
	move	$a3, $zero
	bstrpick.d	$a2, $s0, 30, 2
	slli.d	$a2, $a2, 2
	bstrpick.d	$a4, $fp, 33, 5
	slli.d	$a4, $a4, 5
	addi.d	$a5, $a1, 64
	.p2align	4, , 16
.LBB29_122:                             # %vector.body136
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, -64
	ld.d	$a7, $a5, -32
	ld.d	$t0, $a5, 0
	ld.d	$t1, $a5, 32
	vinsgr2vr.d	$vr0, $a6, 0
	vinsgr2vr.d	$vr0, $a7, 1
	vinsgr2vr.d	$vr1, $t0, 0
	vinsgr2vr.d	$vr1, $t1, 1
	add.d	$a6, $a0, $a3
	vstx	$vr0, $a0, $a3
	vst	$vr1, $a6, 16
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, 128
	bne	$a4, $a3, .LBB29_122
# %bb.123:                              # %middle.block139
	beq	$a2, $s0, .LBB29_87
	b	.LBB29_116
.Lfunc_end29:
	.size	lemon_main, .Lfunc_end29-lemon_main
                                        # -- End function
	.p2align	5                               # -- Begin function handle_D_option
	.type	handle_D_option,@function
handle_D_option:                        # @handle_D_option
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(nDefine)
	ld.w	$a2, $a1, %pc_lo12(nDefine)
	move	$fp, $a0
	pcalau12i	$s1, %pc_hi20(azDefine)
	ld.d	$a0, $s1, %pc_lo12(azDefine)
	addi.w	$s0, $a2, 1
	st.w	$s0, $a1, %pc_lo12(nDefine)
	slli.d	$a1, $s0, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(azDefine)
	beqz	$a0, .LBB30_6
# %bb.1:
	alsl.d	$s1, $s0, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, -8
	beqz	$a0, .LBB30_6
# %bb.2:
	move	$s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 61
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB30_5
	.p2align	4, , 16
.LBB30_3:                               # =>This Inner Loop Header: Depth=1
	beq	$a1, $a0, .LBB30_5
# %bb.4:                                #   in Loop: Header=BB30_3 Depth=1
	addi.d	$s0, $s0, 1
	ld.bu	$a1, $s0, 0
	bnez	$a1, .LBB30_3
.LBB30_5:                               # %.critedge
	st.b	$zero, $s0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB30_6:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	handle_D_option, .Lfunc_end30-handle_D_option
                                        # -- End function
	.globl	OptInit                         # -- Begin function OptInit
	.p2align	5
	.type	OptInit,@function
OptInit:                                # @OptInit
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$a2, $a0
	pcalau12i	$s7, %pc_hi20(argv)
	st.d	$a0, $s7, %pc_lo12(argv)
	pcalau12i	$s8, %pc_hi20(op)
	st.d	$a1, $s8, %pc_lo12(op)
	pcalau12i	$a0, %pc_hi20(errstream)
	st.d	$fp, $a0, %pc_lo12(errstream)
	beqz	$a2, .LBB31_65
# %bb.1:
	beqz	$a1, .LBB31_65
# %bb.2:
	ld.d	$a0, $a2, 0
	beqz	$a0, .LBB31_65
# %bb.3:                                # %.preheader
	ld.d	$a0, $a2, 8
	beqz	$a0, .LBB31_65
# %bb.4:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(.L.str.166)
	addi.d	$a1, $a1, %pc_lo12(.L.str.166)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(emsg)
	addi.d	$a1, $a1, %pc_lo12(emsg)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.167)
	addi.d	$a1, $a1, %pc_lo12(.L.str.167)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $zero
	movgr2fr.d	$fs0, $zero
	ori	$s4, $zero, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a2
	b	.LBB31_8
.LBB31_5:                               #   in Loop: Header=BB31_8 Depth=1
	ori	$s0, $zero, 1
.LBB31_6:                               #   in Loop: Header=BB31_8 Depth=1
	add.w	$s1, $s0, $s1
.LBB31_7:                               #   in Loop: Header=BB31_8 Depth=1
	ld.d	$s2, $s7, %pc_lo12(argv)
	addi.d	$s4, $s4, 1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s2, $a0
	beqz	$a0, .LBB31_64
.LBB31_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_20 Depth 2
                                        #     Child Loop BB31_12 Depth 2
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 45
	beq	$a1, $a2, .LBB31_10
# %bb.9:                                #   in Loop: Header=BB31_8 Depth=1
	ori	$a2, $zero, 43
	bne	$a1, $a2, .LBB31_17
.LBB31_10:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$s3, $s8, %pc_lo12(op)
	ld.d	$s6, $s3, 8
	beqz	$s6, .LBB31_14
# %bb.11:                               # %.lr.ph.i
                                        #   in Loop: Header=BB31_8 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$s0, $s2, $a0
	addi.d	$s5, $s0, 1
	.p2align	4, , 16
.LBB31_12:                              #   Parent Loop BB31_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_27
# %bb.13:                               #   in Loop: Header=BB31_12 Depth=2
	ld.d	$s6, $s3, 40
	addi.d	$s3, $s3, 32
	bnez	$s6, .LBB31_12
.LBB31_14:                              # %.critedge.i
                                        #   in Loop: Header=BB31_8 Depth=1
	beqz	$fp, .LBB31_5
# %bb.15:                               #   in Loop: Header=BB31_8 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
.LBB31_16:                              # %handleflags.exit
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	b	.LBB31_6
	.p2align	4, , 16
.LBB31_17:                              #   in Loop: Header=BB31_8 Depth=1
	ori	$a1, $zero, 61
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_7
# %bb.18:                               #   in Loop: Header=BB31_8 Depth=1
	slli.d	$s3, $s4, 3
	ldx.d	$a0, $s2, $s3
	ori	$a1, $zero, 61
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.b	$zero, $a0, 0
	ld.d	$s0, $s8, %pc_lo12(op)
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB31_31
# %bb.19:                               # %.lr.ph.i23
                                        #   in Loop: Header=BB31_8 Depth=1
	alsl.d	$a0, $s4, $s2, 3
	ld.d	$s6, $a0, 0
	move	$s2, $zero
	.p2align	4, , 16
.LBB31_20:                              #   Parent Loop BB31_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_22
# %bb.21:                               #   in Loop: Header=BB31_20 Depth=2
	ld.d	$a1, $s0, 40
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 32
	bnez	$a1, .LBB31_20
.LBB31_22:                              # %._crit_edge.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ori	$a0, $zero, 61
	st.b	$a0, $s5, 0
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB31_32
.LBB31_23:                              #   in Loop: Header=BB31_8 Depth=1
	ld.w	$a0, $s0, 0
	addi.d	$a1, $a0, -1
	ori	$a0, $zero, 7
	bltu	$a0, $a1, .LBB31_47
# %bb.24:                               #   in Loop: Header=BB31_8 Depth=1
	addi.d	$a0, $s5, 1
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI31_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI31_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB31_25:                              #   in Loop: Header=BB31_8 Depth=1
	ori	$s6, $zero, 1
	beqz	$fp, .LBB31_62
# %bb.26:                               #   in Loop: Header=BB31_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a1, $a0, %pc_lo12(.L.str.168)
	pcalau12i	$a0, %pc_hi20(emsg)
	addi.d	$a2, $a0, %pc_lo12(emsg)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	move	$a0, $zero
	b	.LBB31_50
	.p2align	4, , 16
.LBB31_27:                              #   in Loop: Header=BB31_8 Depth=1
	ld.bu	$a0, $s0, 0
	ld.w	$a1, $s3, 0
	addi.d	$a0, $a0, -45
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB31_36
# %bb.28:                               #   in Loop: Header=BB31_8 Depth=1
	ori	$a2, $zero, 5
	beq	$a1, $a2, .LBB31_34
# %bb.29:                               #   in Loop: Header=BB31_8 Depth=1
	ori	$a0, $zero, 8
	bne	$a1, $a0, .LBB31_37
# %bb.30:                               #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $s3, 16
	addi.d	$a0, $s0, 2
	b	.LBB31_35
.LBB31_31:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s2, $zero
	ori	$a0, $zero, 61
	st.b	$a0, $s5, 0
	ld.d	$a0, $s0, 8
	bnez	$a0, .LBB31_23
.LBB31_32:                              #   in Loop: Header=BB31_8 Depth=1
	ori	$s6, $zero, 1
	beqz	$fp, .LBB31_60
# %bb.33:                               #   in Loop: Header=BB31_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a1, $a0, %pc_lo12(.L.str.166)
	pcalau12i	$a0, %pc_hi20(emsg)
	addi.d	$a2, $a0, %pc_lo12(emsg)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	b	.LBB31_60
.LBB31_34:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $s3, 16
.LBB31_35:                              # %handleflags.exit
                                        #   in Loop: Header=BB31_8 Depth=1
	jirl	$ra, $a1, 0
	add.w	$s1, $zero, $s1
	b	.LBB31_7
.LBB31_36:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $s3, 16
	st.w	$a0, $a1, 0
	add.w	$s1, $zero, $s1
	b	.LBB31_7
.LBB31_37:                              #   in Loop: Header=BB31_8 Depth=1
	beqz	$fp, .LBB31_5
# %bb.38:                               #   in Loop: Header=BB31_8 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB31_16
.LBB31_39:                              #   in Loop: Header=BB31_8 Depth=1
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB31_61
# %bb.40:                               #   in Loop: Header=BB31_8 Depth=1
	ori	$s6, $zero, 1
	beqz	$fp, .LBB31_42
# %bb.41:                               #   in Loop: Header=BB31_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a1, $a0, %pc_lo12(.L.str.169)
	pcalau12i	$a0, %pc_hi20(emsg)
	addi.d	$a2, $a0, %pc_lo12(emsg)
	move	$a0, $fp
	fmov.d	$fs1, $fa0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(argv)
	ldx.d	$a0, $a0, $s3
	sub.w	$a1, $s0, $a0
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs1
.LBB31_42:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
	move	$a0, $zero
	b	.LBB31_51
.LBB31_43:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
	b	.LBB31_49
.LBB31_44:                              #   in Loop: Header=BB31_8 Depth=1
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	ld.bu	$a1, $s0, 0
	move	$s5, $a0
	beqz	$a1, .LBB31_48
# %bb.45:                               #   in Loop: Header=BB31_8 Depth=1
	ori	$s6, $zero, 1
	beqz	$fp, .LBB31_63
# %bb.46:                               #   in Loop: Header=BB31_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a1, $a0, %pc_lo12(.L.str.170)
	pcalau12i	$a0, %pc_hi20(emsg)
	addi.d	$a2, $a0, %pc_lo12(emsg)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(argv)
	ldx.d	$a0, $a0, $s3
	sub.w	$a1, $s0, $a0
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB31_50
.LBB31_47:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
.LBB31_48:                              #   in Loop: Header=BB31_8 Depth=1
	move	$a0, $zero
.LBB31_49:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s6, $zero
.LBB31_50:                              #   in Loop: Header=BB31_8 Depth=1
	fmov.d	$fa0, $fs0
.LBB31_51:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $s8, %pc_lo12(op)
	slli.d	$a2, $s2, 5
	ldx.w	$a3, $a1, $a2
	addi.d	$a3, $a3, -2
	ori	$a4, $zero, 6
	bltu	$a4, $a3, .LBB31_60
# %bb.52:                               #   in Loop: Header=BB31_8 Depth=1
	add.d	$a1, $a1, $a2
	slli.d	$a2, $a3, 2
	pcalau12i	$a3, %pc_hi20(.LJTI31_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI31_1)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB31_53:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $a1, 16
	st.w	$s5, $a0, 0
	b	.LBB31_60
.LBB31_54:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $a1, 16
	st.d	$a0, $a1, 0
	b	.LBB31_60
.LBB31_55:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $a1, 16
	b	.LBB31_58
.LBB31_56:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $a1, 16
	fst.d	$fa0, $a0, 0
	b	.LBB31_60
.LBB31_57:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $a1, 16
	addi.w	$a0, $s5, 0
.LBB31_58:                              # %handleswitch.exit
                                        #   in Loop: Header=BB31_8 Depth=1
	jirl	$ra, $a1, 0
	b	.LBB31_60
.LBB31_59:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $a1, 16
	jirl	$ra, $a0, 0
	.p2align	4, , 16
.LBB31_60:                              # %handleswitch.exit
                                        #   in Loop: Header=BB31_8 Depth=1
	add.w	$s1, $s6, $s1
	b	.LBB31_7
.LBB31_61:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
	move	$a0, $zero
	move	$s6, $zero
	b	.LBB31_51
.LBB31_62:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
	move	$a0, $zero
	b	.LBB31_50
.LBB31_63:                              #   in Loop: Header=BB31_8 Depth=1
	move	$a0, $zero
	b	.LBB31_50
.LBB31_64:                              # %._crit_edge
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgtz	$s1, .LBB31_66
.LBB31_65:                              # %.critedge
	move	$a0, $zero
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB31_66:
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(OptPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	OptInit, .Lfunc_end31-OptInit
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI31_0:
	.word	.LBB31_25-.LJTI31_0
	.word	.LBB31_44-.LJTI31_0
	.word	.LBB31_39-.LJTI31_0
	.word	.LBB31_43-.LJTI31_0
	.word	.LBB31_25-.LJTI31_0
	.word	.LBB31_44-.LJTI31_0
	.word	.LBB31_39-.LJTI31_0
	.word	.LBB31_43-.LJTI31_0
.LJTI31_1:
	.word	.LBB31_53-.LJTI31_1
	.word	.LBB31_56-.LJTI31_1
	.word	.LBB31_54-.LJTI31_1
	.word	.LBB31_60-.LJTI31_1
	.word	.LBB31_57-.LJTI31_1
	.word	.LBB31_59-.LJTI31_1
	.word	.LBB31_55-.LJTI31_1
                                        # -- End function
	.text
	.globl	OptNArgs                        # -- Begin function OptNArgs
	.p2align	5
	.type	OptNArgs,@function
OptNArgs:                               # @OptNArgs
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
	pcalau12i	$a0, %pc_hi20(argv)
	ld.d	$a0, $a0, %pc_lo12(argv)
	beqz	$a0, .LBB32_13
# %bb.1:
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB32_13
# %bb.2:                                # %.preheader
	ld.d	$s0, $a0, 8
	beqz	$s0, .LBB32_13
# %bb.3:                                # %.lr.ph.preheader
	move	$s1, $zero
	move	$fp, $zero
	addi.d	$s2, $a0, 16
	ori	$s3, $zero, 43
	ori	$s4, $zero, 45
	ori	$s5, $zero, 1
	b	.LBB32_5
	.p2align	4, , 16
.LBB32_4:                               # %.tail
                                        #   in Loop: Header=BB32_5 Depth=1
	ld.d	$s0, $s2, 0
	addi.d	$s2, $s2, 8
	beqz	$s0, .LBB32_14
.LBB32_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s6, $s0, 0
	beqz	$s1, .LBB32_10
.LBB32_6:                               #   in Loop: Header=BB32_5 Depth=1
	addi.w	$fp, $fp, 1
.LBB32_7:                               # %sub_0
                                        #   in Loop: Header=BB32_5 Depth=1
	bne	$s6, $s4, .LBB32_4
# %bb.8:                                # %sub_1
                                        #   in Loop: Header=BB32_5 Depth=1
	ld.bu	$a0, $s0, 1
	bne	$a0, $s4, .LBB32_4
# %bb.9:                                # %sub_2
                                        #   in Loop: Header=BB32_5 Depth=1
	ld.bu	$a0, $s0, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s1, $a0, $a1
	b	.LBB32_4
	.p2align	4, , 16
.LBB32_10:                              #   in Loop: Header=BB32_5 Depth=1
	beq	$s6, $s3, .LBB32_7
# %bb.11:                               #   in Loop: Header=BB32_5 Depth=1
	beq	$s6, $s4, .LBB32_7
# %bb.12:                               #   in Loop: Header=BB32_5 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB32_7
	b	.LBB32_6
.LBB32_13:
	move	$fp, $zero
.LBB32_14:                              # %.loopexit
	move	$a0, $fp
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
.Lfunc_end32:
	.size	OptNArgs, .Lfunc_end32-OptNArgs
                                        # -- End function
	.globl	OptArg                          # -- Begin function OptArg
	.p2align	5
	.type	OptArg,@function
OptArg:                                 # @OptArg
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(argv)
	ld.d	$s1, $a1, %pc_lo12(argv)
	beqz	$s1, .LBB33_14
# %bb.1:
	move	$fp, $a0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB33_14
# %bb.2:                                # %.preheader.i
	ld.d	$s0, $s1, 8
	beqz	$s0, .LBB33_14
# %bb.3:                                # %.lr.ph.i.preheader
	move	$s3, $zero
	addi.d	$s2, $s1, 16
	ori	$s4, $zero, 1
	ori	$s5, $zero, 43
	ori	$s7, $zero, 45
	ori	$s6, $zero, 1
	b	.LBB33_5
	.p2align	4, , 16
.LBB33_4:                               # %.tail.i
                                        #   in Loop: Header=BB33_5 Depth=1
	ld.d	$s0, $s2, 0
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 8
	beqz	$s0, .LBB33_14
.LBB33_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s3, .LBB33_11
.LBB33_6:                               #   in Loop: Header=BB33_5 Depth=1
	beqz	$fp, .LBB33_16
# %bb.7:                                #   in Loop: Header=BB33_5 Depth=1
	ld.bu	$s8, $s0, 0
	addi.w	$fp, $fp, -1
.LBB33_8:                               # %sub_0.i
                                        #   in Loop: Header=BB33_5 Depth=1
	bne	$s8, $s7, .LBB33_4
# %bb.9:                                # %sub_1.i
                                        #   in Loop: Header=BB33_5 Depth=1
	ld.bu	$a0, $s0, 1
	bne	$a0, $s7, .LBB33_4
# %bb.10:                               # %sub_2.i
                                        #   in Loop: Header=BB33_5 Depth=1
	ld.bu	$a0, $s0, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$s3, $a0, $a1
	b	.LBB33_4
	.p2align	4, , 16
.LBB33_11:                              #   in Loop: Header=BB33_5 Depth=1
	ld.bu	$s8, $s0, 0
	beq	$s8, $s5, .LBB33_8
# %bb.12:                               #   in Loop: Header=BB33_5 Depth=1
	beq	$s8, $s7, .LBB33_8
# %bb.13:                               #   in Loop: Header=BB33_5 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_8
	b	.LBB33_6
.LBB33_14:
	move	$a0, $zero
.LBB33_15:                              # %argindex.exit.thread
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.LBB33_16:                              # %argindex.exit
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	b	.LBB33_15
.Lfunc_end33:
	.size	OptArg, .Lfunc_end33-OptArg
                                        # -- End function
	.globl	OptErr                          # -- Begin function OptErr
	.p2align	5
	.type	OptErr,@function
OptErr:                                 # @OptErr
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
	pcalau12i	$a1, %pc_hi20(argv)
	ld.d	$a1, $a1, %pc_lo12(argv)
	beqz	$a1, .LBB34_14
# %bb.1:
	move	$fp, $a0
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB34_14
# %bb.2:                                # %.preheader.i
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB34_14
# %bb.3:                                # %.lr.ph.i.preheader
	move	$s3, $zero
	addi.d	$s2, $a1, 16
	ori	$s4, $zero, 1
	ori	$s5, $zero, 43
	ori	$s6, $zero, 45
	ori	$s1, $zero, 1
	b	.LBB34_5
	.p2align	4, , 16
.LBB34_4:                               # %.tail.i
                                        #   in Loop: Header=BB34_5 Depth=1
	ld.d	$s0, $s2, 0
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 8
	beqz	$s0, .LBB34_14
.LBB34_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s3, .LBB34_11
.LBB34_6:                               #   in Loop: Header=BB34_5 Depth=1
	beqz	$fp, .LBB34_15
# %bb.7:                                #   in Loop: Header=BB34_5 Depth=1
	ld.bu	$s7, $s0, 0
	addi.w	$fp, $fp, -1
.LBB34_8:                               # %sub_0.i
                                        #   in Loop: Header=BB34_5 Depth=1
	bne	$s7, $s6, .LBB34_4
# %bb.9:                                # %sub_1.i
                                        #   in Loop: Header=BB34_5 Depth=1
	ld.bu	$a0, $s0, 1
	bne	$a0, $s6, .LBB34_4
# %bb.10:                               # %sub_2.i
                                        #   in Loop: Header=BB34_5 Depth=1
	ld.bu	$a0, $s0, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$s3, $a0, $a1
	b	.LBB34_4
	.p2align	4, , 16
.LBB34_11:                              #   in Loop: Header=BB34_5 Depth=1
	ld.bu	$s7, $s0, 0
	beq	$s7, $s5, .LBB34_8
# %bb.12:                               #   in Loop: Header=BB34_5 Depth=1
	beq	$s7, $s6, .LBB34_8
# %bb.13:                               #   in Loop: Header=BB34_5 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB34_8
	b	.LBB34_6
.LBB34_14:                              # %argindex.exit.thread
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
.LBB34_15:                              # %argindex.exit
	pcalau12i	$a0, %pc_hi20(errstream)
	ld.d	$a2, $a0, %pc_lo12(errstream)
	move	$a0, $s1
	move	$a1, $zero
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
	pcaddu18i	$t8, %call36(errline)
	jr	$t8
.Lfunc_end34:
	.size	OptErr, .Lfunc_end34-OptErr
                                        # -- End function
	.p2align	5                               # -- Begin function errline
	.type	errline,@function
errline:                                # @errline
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(argv)
	ld.d	$a3, $s3, %pc_lo12(argv)
	ld.d	$a3, $a3, 0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a3
	move	$a1, $a2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s3, %pc_lo12(argv)
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s4, $a0, 1
	ori	$a1, $zero, 2
	ori	$a0, $zero, 1
	blt	$s1, $a1, .LBB35_6
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$s7, $s1, 3
	ori	$s6, $zero, 1
	ori	$s8, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s2, $a0, %pc_lo12(.L.str.57)
	.p2align	4, , 16
.LBB35_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a2, $s5, $s8
	beqz	$a2, .LBB35_5
# %bb.3:                                #   in Loop: Header=BB35_2 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s3, %pc_lo12(argv)
	ldx.d	$a0, $s5, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	addi.d	$s4, $a0, 1
	addi.d	$s8, $s8, 8
	addi.w	$s6, $s6, 1
	bne	$s7, $s8, .LBB35_2
# %bb.4:
	move	$s6, $s1
.LBB35_5:                               # %.critedge.loopexit
	bstrpick.d	$a0, $s6, 31, 0
.LBB35_6:                               # %.critedge
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $s5, $a0
	add.w	$s0, $s4, $s0
	beqz	$a2, .LBB35_9
# %bb.7:                                # %.lr.ph35.preheader
	addi.d	$s2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s1, $a0, %pc_lo12(.L.str.57)
	.p2align	4, , 16
.LBB35_8:                               # %.lr.ph35
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(argv)
	ldx.d	$a2, $a0, $s2
	addi.d	$s2, $s2, 8
	bnez	$a2, .LBB35_8
.LBB35_9:                               # %._crit_edge
	ori	$a0, $zero, 19
	blt	$a0, $s0, .LBB35_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a1, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a3, $a0, %pc_lo12(.L.str.39)
	move	$a0, $fp
	move	$a2, $s0
	b	.LBB35_12
.LBB35_11:
	addi.w	$a2, $s0, -7
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$a1, $a0, %pc_lo12(.L.str.172)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a3, $a0, %pc_lo12(.L.str.39)
	move	$a0, $fp
.LBB35_12:
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end35:
	.size	errline, .Lfunc_end35-errline
                                        # -- End function
	.globl	OptPrint                        # -- Begin function OptPrint
	.p2align	5
	.type	OptPrint,@function
OptPrint:                               # @OptPrint
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(op)
	ld.d	$s8, $s7, %pc_lo12(op)
	ld.d	$s0, $s8, 8
	beqz	$s0, .LBB36_19
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $zero
	ori	$s1, $zero, 8
	ori	$s2, $zero, 1
	move	$s3, $s8
	move	$a0, $s0
	b	.LBB36_4
	.p2align	4, , 16
.LBB36_2:                               #   in Loop: Header=BB36_4 Depth=1
	addi.w	$a1, $a0, 7
.LBB36_3:                               #   in Loop: Header=BB36_4 Depth=1
	slt	$a2, $fp, $a1
	ld.d	$a0, $s3, 40
	masknez	$a3, $fp, $a2
	maskeqz	$a1, $a1, $a2
	or	$fp, $a1, $a3
	addi.d	$s3, $s3, 32
	beqz	$a0, .LBB36_10
.LBB36_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	addi.w	$a1, $a0, 1
	bltu	$s1, $a2, .LBB36_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB36_4 Depth=1
	sll.d	$a2, $s2, $a2
	andi	$a3, $a2, 68
	bnez	$a3, .LBB36_9
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB36_4 Depth=1
	andi	$a3, $a2, 136
	bnez	$a3, .LBB36_2
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB36_4 Depth=1
	andi	$a2, $a2, 272
	beqz	$a2, .LBB36_3
# %bb.8:                                #   in Loop: Header=BB36_4 Depth=1
	addi.w	$a1, $a0, 9
	b	.LBB36_3
	.p2align	4, , 16
.LBB36_9:                               #   in Loop: Header=BB36_4 Depth=1
	addi.w	$a1, $a0, 10
	b	.LBB36_3
.LBB36_10:                              # %.lr.ph40
	addi.d	$a0, $fp, -8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $fp, -6
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $fp, -9
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s1, $zero, 40
	ori	$s2, $zero, 7
	pcalau12i	$a0, %pc_hi20(.LJTI36_0)
	addi.d	$s4, $a0, %pc_lo12(.LJTI36_0)
	pcalau12i	$s5, %pc_hi20(errstream)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s3, $a0, %pc_lo12(.L.str.39)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB36_14
	.p2align	4, , 16
.LBB36_11:                              #   in Loop: Header=BB36_14 Depth=1
	ld.d	$s6, $s5, %pc_lo12(errstream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s8, 24
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.w	$a3, $a1, $a0
	move	$a0, $s6
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
.LBB36_12:                              #   in Loop: Header=BB36_14 Depth=1
	move	$a2, $s0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB36_13:                              #   in Loop: Header=BB36_14 Depth=1
	ld.d	$a0, $s7, %pc_lo12(op)
	ldx.d	$s0, $a0, $s1
	add.d	$a0, $a0, $s1
	addi.d	$s8, $a0, -8
	addi.d	$s1, $s1, 32
	beqz	$s0, .LBB36_19
.LBB36_14:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, -1
	bltu	$s2, $a0, .LBB36_13
# %bb.15:                               #   in Loop: Header=BB36_14 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	add.d	$a0, $s4, $a0
	jr	$a0
.LBB36_16:                              #   in Loop: Header=BB36_14 Depth=1
	ld.d	$a0, $s5, %pc_lo12(errstream)
	ld.d	$a4, $s8, 24
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB36_13
	.p2align	4, , 16
.LBB36_17:                              #   in Loop: Header=BB36_14 Depth=1
	ld.d	$s6, $s5, %pc_lo12(errstream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s8, 24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.w	$a3, $a1, $a0
	move	$a0, $s6
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB36_12
	.p2align	4, , 16
.LBB36_18:                              #   in Loop: Header=BB36_14 Depth=1
	ld.d	$s6, $s5, %pc_lo12(errstream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s8, 24
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a3, $a1, $a0
	move	$a0, $s6
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	b	.LBB36_12
.LBB36_19:                              # %._crit_edge
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end36:
	.size	OptPrint, .Lfunc_end36-OptPrint
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI36_0:
	.word	.LBB36_16-.LJTI36_0
	.word	.LBB36_18-.LJTI36_0
	.word	.LBB36_11-.LJTI36_0
	.word	.LBB36_17-.LJTI36_0
	.word	.LBB36_16-.LJTI36_0
	.word	.LBB36_18-.LJTI36_0
	.word	.LBB36_11-.LJTI36_0
	.word	.LBB36_17-.LJTI36_0
                                        # -- End function
	.text
	.globl	Parse                           # -- Begin function Parse
	.p2align	5
	.type	Parse,@function
Parse:                                  # @Parse
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
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2016
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 128
	lu12i.w	$a1, 3
	ori	$a2, $a1, 3832
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 240
	st.d	$fp, $sp, 144
	st.d	$s1, $sp, 120
	st.w	$zero, $sp, 152
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_105
# %bb.1:
	move	$s3, $a0
	ori	$a2, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s4, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_106
# %bb.2:
	move	$s0, $a0
	addi.w	$s2, $s4, 0
	ori	$a1, $zero, 1
	ori	$s4, $zero, 1
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB37_107
# %bb.3:
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	move	$s3, $zero
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(nDefine)
	ld.w	$fp, $a0, %pc_lo12(nDefine)
	stx.b	$zero, $s0, $s2
	pcalau12i	$a0, %pc_hi20(azDefine)
	ld.d	$a0, $a0, %pc_lo12(azDefine)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $fp, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 7
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s7, $s0, 1
	ori	$s1, $zero, 7
	ori	$a2, $zero, 10
	ori	$a1, $zero, 37
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	move	$s6, $s0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	b	.LBB37_6
	.p2align	4, , 16
.LBB37_4:                               # %.thread.i
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.w	$s4, $s4, 1
.LBB37_5:                               # %.critedge.i
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s6, $s6, 1
	addi.w	$s1, $s1, 1
	addi.d	$s7, $s7, 1
.LBB37_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_51 Depth 2
                                        #     Child Loop BB37_88 Depth 2
                                        #     Child Loop BB37_103 Depth 2
                                        #     Child Loop BB37_99 Depth 2
                                        #     Child Loop BB37_27 Depth 2
                                        #     Child Loop BB37_30 Depth 2
                                        #     Child Loop BB37_35 Depth 2
                                        #     Child Loop BB37_45 Depth 2
	ldx.bu	$a0, $s0, $s8
	beq	$a0, $a2, .LBB37_4
# %bb.7:                                #   in Loop: Header=BB37_6 Depth=1
	beq	$a0, $a1, .LBB37_9
# %bb.8:                                #   in Loop: Header=BB37_6 Depth=1
	bnez	$a0, .LBB37_5
	b	.LBB37_110
	.p2align	4, , 16
.LBB37_9:                               #   in Loop: Header=BB37_6 Depth=1
	add.d	$s2, $s0, $s8
	beqz	$s8, .LBB37_11
# %bb.10:                               #   in Loop: Header=BB37_6 Depth=1
	ld.bu	$a0, $s2, -1
	bne	$a0, $a2, .LBB37_5
.LBB37_11:                              #   in Loop: Header=BB37_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a1, $a0, %pc_lo12(.L.str.173)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_13
# %bb.12:                               #   in Loop: Header=BB37_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s2, 6
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB37_21
.LBB37_13:                              #   in Loop: Header=BB37_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a1, $a0, %pc_lo12(.L.str.174)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_15
# %bb.14:                               #   in Loop: Header=BB37_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s2, 6
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB37_19
.LBB37_15:                              #   in Loop: Header=BB37_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$a1, $a0, %pc_lo12(.L.str.175)
	ori	$a2, $zero, 7
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_17
# %bb.16:                               #   in Loop: Header=BB37_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s2, 7
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB37_19
.LBB37_17:                              #   in Loop: Header=BB37_6 Depth=1
	ori	$a2, $zero, 10
.LBB37_18:                              # %.critedge.i.loopexit620
                                        #   in Loop: Header=BB37_6 Depth=1
	ori	$a1, $zero, 37
	b	.LBB37_5
.LBB37_19:                              #   in Loop: Header=BB37_6 Depth=1
	beqz	$s3, .LBB37_26
# %bb.20:                               #   in Loop: Header=BB37_6 Depth=1
	addi.w	$s3, $s3, 1
	ori	$a2, $zero, 10
	ori	$a4, $zero, 32
	ori	$a1, $zero, 37
	move	$a0, $s7
	andi	$a1, $a1, 255
	bnez	$a1, .LBB37_45
	b	.LBB37_18
.LBB37_21:                              #   in Loop: Header=BB37_6 Depth=1
	ori	$a7, $zero, 32
	beqz	$s3, .LBB37_84
# %bb.22:                               #   in Loop: Header=BB37_6 Depth=1
	addi.w	$s3, $s3, -1
	ori	$a2, $zero, 10
	bnez	$s3, .LBB37_98
# %bb.23:                               # %.preheader126.i
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.w	$a1, $s5, 0
	bge	$a1, $s8, .LBB37_97
# %bb.24:                               # %iter.check
                                        #   in Loop: Header=BB37_6 Depth=1
	sub.d	$a0, $s8, $a1
	ori	$a3, $zero, 4
	bgeu	$a0, $a3, .LBB37_47
# %bb.25:                               #   in Loop: Header=BB37_6 Depth=1
	move	$a3, $a1
	b	.LBB37_103
.LBB37_26:                              #   in Loop: Header=BB37_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	move	$a2, $s1
	.p2align	4, , 16
.LBB37_27:                              #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s6, $a0
	ld.b	$a3, $a3, 7
	slli.d	$a3, $a3, 1
	ldx.hu	$a4, $a1, $a3
	move	$a3, $a2
	addi.d	$a0, $a0, 1
	slli.d	$a4, $a4, 50
	addi.w	$a2, $a2, 1
	bltz	$a4, .LBB37_27
# %bb.28:                               # %.preheader.i
                                        #   in Loop: Header=BB37_6 Depth=1
	add.d	$a2, $s8, $a0
	addi.d	$a2, $a2, 6
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s0, $a2
	beqz	$a2, .LBB37_39
# %bb.29:                               # %.lr.ph133.i.preheader
                                        #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
	bstrpick.d	$a3, $a3, 31, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	ori	$a4, $zero, 32
	.p2align	4, , 16
.LBB37_30:                              # %.lr.ph133.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	slli.d	$a2, $a2, 50
	bltz	$a2, .LBB37_32
# %bb.31:                               #   in Loop: Header=BB37_30 Depth=2
	ld.bu	$a2, $a3, 0
	addi.d	$s3, $s3, 1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB37_30
.LBB37_32:                              # %.critedge2.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ori	$a2, $zero, 1
	blez	$fp, .LBB37_40
.LBB37_33:                              # %.lr.ph137.i.preheader
                                        #   in Loop: Header=BB37_6 Depth=1
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	add.d	$a0, $s6, $a0
	addi.d	$s4, $a0, 6
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB37_35
	.p2align	4, , 16
.LBB37_34:                              #   in Loop: Header=BB37_35 Depth=2
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	beqz	$s0, .LBB37_38
.LBB37_35:                              # %.lr.ph137.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $fp, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_34
# %bb.36:                               #   in Loop: Header=BB37_35 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB37_34
# %bb.37:                               #   in Loop: Header=BB37_6 Depth=1
	move	$a2, $zero
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ori	$a4, $zero, 32
	b	.LBB37_41
.LBB37_38:                              #   in Loop: Header=BB37_6 Depth=1
	move	$a0, $zero
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ori	$a4, $zero, 32
	ori	$a2, $zero, 1
	b	.LBB37_41
.LBB37_39:                              #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
	ori	$a4, $zero, 32
	ori	$a2, $zero, 1
	bgtz	$fp, .LBB37_33
.LBB37_40:                              #   in Loop: Header=BB37_6 Depth=1
	move	$a0, $zero
.LBB37_41:                              # %._crit_edge.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.bu	$a1, $s2, 3
	addi.d	$a1, $a1, -110
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	beqz	$a0, .LBB37_43
# %bb.42:                               #   in Loop: Header=BB37_6 Depth=1
	ori	$s3, $zero, 1
	move	$s5, $s8
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	b	.LBB37_44
.LBB37_43:                              #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
.LBB37_44:                              #   in Loop: Header=BB37_6 Depth=1
	ori	$a2, $zero, 10
	ori	$a1, $zero, 37
	move	$a0, $s7
	andi	$a1, $a1, 255
	beqz	$a1, .LBB37_18
	.p2align	4, , 16
.LBB37_45:                              #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $a2, .LBB37_18
# %bb.46:                               #   in Loop: Header=BB37_45 Depth=2
	ld.bu	$a1, $a0, 0
	st.b	$a4, $a0, -1
	addi.d	$a0, $a0, 1
	andi	$a1, $a1, 255
	bnez	$a1, .LBB37_45
	b	.LBB37_18
.LBB37_47:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB37_6 Depth=1
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB37_49
# %bb.48:                               #   in Loop: Header=BB37_6 Depth=1
	move	$a2, $zero
	b	.LBB37_86
.LBB37_49:                              # %vector.ph
                                        #   in Loop: Header=BB37_6 Depth=1
	andi	$a3, $a0, 12
	addi.w	$a4, $zero, -16
	and	$a2, $a0, $a4
	and	$a4, $a0, $a4
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a1
	b	.LBB37_51
	.p2align	4, , 16
.LBB37_50:                              # %pred.store.continue500
                                        #   in Loop: Header=BB37_51 Depth=2
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, 16
	beqz	$a4, .LBB37_83
.LBB37_51:                              # %vector.body
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -7
	vseqi.b	$vr0, $vr0, 10
	vxori.b	$vr0, $vr0, 255
	vpickve2gr.b	$a6, $vr0, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_67
# %bb.52:                               # %pred.store.if
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, -7
	vpickve2gr.b	$a6, $vr0, 1
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_68
.LBB37_53:                              # %pred.store.continue472
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 2
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_69
.LBB37_54:                              # %pred.store.if473
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, -5
	vpickve2gr.b	$a6, $vr0, 3
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_70
.LBB37_55:                              # %pred.store.continue476
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 4
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_71
.LBB37_56:                              # %pred.store.if477
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, -3
	vpickve2gr.b	$a6, $vr0, 5
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_72
.LBB37_57:                              # %pred.store.continue480
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_73
.LBB37_58:                              # %pred.store.if481
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, -1
	vpickve2gr.b	$a6, $vr0, 7
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_74
.LBB37_59:                              # %pred.store.continue484
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 8
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_75
.LBB37_60:                              # %pred.store.if485
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, 1
	vpickve2gr.b	$a6, $vr0, 9
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_76
.LBB37_61:                              # %pred.store.continue488
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 10
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_77
.LBB37_62:                              # %pred.store.if489
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, 3
	vpickve2gr.b	$a6, $vr0, 11
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_78
.LBB37_63:                              # %pred.store.continue492
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 12
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_79
.LBB37_64:                              # %pred.store.if493
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, 5
	vpickve2gr.b	$a6, $vr0, 13
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_80
.LBB37_65:                              # %pred.store.continue496
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 14
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_81
.LBB37_66:                              # %pred.store.if497
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, 7
	vpickve2gr.b	$a6, $vr0, 15
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_50
	b	.LBB37_82
	.p2align	4, , 16
.LBB37_67:                              # %pred.store.continue
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_53
.LBB37_68:                              # %pred.store.if471
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, -6
	vpickve2gr.b	$a6, $vr0, 2
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_54
.LBB37_69:                              # %pred.store.continue474
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 3
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_55
.LBB37_70:                              # %pred.store.if475
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, -4
	vpickve2gr.b	$a6, $vr0, 4
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_56
.LBB37_71:                              # %pred.store.continue478
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 5
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_57
.LBB37_72:                              # %pred.store.if479
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, -2
	vpickve2gr.b	$a6, $vr0, 6
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_58
.LBB37_73:                              # %pred.store.continue482
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 7
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_59
.LBB37_74:                              # %pred.store.if483
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, 0
	vpickve2gr.b	$a6, $vr0, 8
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_60
.LBB37_75:                              # %pred.store.continue486
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 9
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_61
.LBB37_76:                              # %pred.store.if487
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, 2
	vpickve2gr.b	$a6, $vr0, 10
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_62
.LBB37_77:                              # %pred.store.continue490
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 11
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_63
.LBB37_78:                              # %pred.store.if491
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, 4
	vpickve2gr.b	$a6, $vr0, 12
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_64
.LBB37_79:                              # %pred.store.continue494
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 13
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_65
.LBB37_80:                              # %pred.store.if495
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, 6
	vpickve2gr.b	$a6, $vr0, 14
	andi	$a6, $a6, 1
	bnez	$a6, .LBB37_66
.LBB37_81:                              # %pred.store.continue498
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a6, $vr0, 15
	andi	$a6, $a6, 1
	beqz	$a6, .LBB37_50
.LBB37_82:                              # %pred.store.if499
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a7, $a5, 8
	b	.LBB37_50
.LBB37_83:                              # %middle.block
                                        #   in Loop: Header=BB37_6 Depth=1
	bne	$a0, $a2, .LBB37_85
.LBB37_84:                              #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
	ori	$a2, $zero, 10
	move	$a0, $s6
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB37_99
	b	.LBB37_18
.LBB37_85:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB37_6 Depth=1
	beqz	$a3, .LBB37_101
.LBB37_86:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.w	$a3, $zero, -4
	and	$a4, $a0, $a3
	add.d	$a3, $a4, $a1
	sub.d	$a5, $a2, $a4
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	b	.LBB37_88
	.p2align	4, , 16
.LBB37_87:                              # %pred.store.continue512
                                        #   in Loop: Header=BB37_88 Depth=2
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	beqz	$a5, .LBB37_96
.LBB37_88:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, -1
	vinsgr2vr.w	$vr0, $a2, 0
	vseqi.b	$vr0, $vr0, 10
	vxori.b	$vr0, $vr0, 255
	vpickve2gr.w	$a2, $vr0, 0
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_90
# %bb.89:                               # %pred.store.if505
                                        #   in Loop: Header=BB37_88 Depth=2
	st.b	$a7, $a1, -1
.LBB37_90:                              # %pred.store.continue506
                                        #   in Loop: Header=BB37_88 Depth=2
	vsllwil.h.b	$vr0, $vr0, 0
	vsllwil.w.h	$vr0, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_93
# %bb.91:                               # %pred.store.if507
                                        #   in Loop: Header=BB37_88 Depth=2
	st.b	$a7, $a1, 0
	vpickve2gr.w	$a2, $vr0, 2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB37_94
.LBB37_92:                              # %pred.store.continue510
                                        #   in Loop: Header=BB37_88 Depth=2
	vpickve2gr.w	$a2, $vr0, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_87
	b	.LBB37_95
	.p2align	4, , 16
.LBB37_93:                              # %pred.store.continue508
                                        #   in Loop: Header=BB37_88 Depth=2
	vpickve2gr.w	$a2, $vr0, 2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_92
.LBB37_94:                              # %pred.store.if509
                                        #   in Loop: Header=BB37_88 Depth=2
	st.b	$a7, $a1, 1
	vpickve2gr.w	$a2, $vr0, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_87
.LBB37_95:                              # %pred.store.if511
                                        #   in Loop: Header=BB37_88 Depth=2
	st.b	$a7, $a1, 2
	b	.LBB37_87
.LBB37_96:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB37_6 Depth=1
	ori	$a2, $zero, 10
	bne	$a0, $a4, .LBB37_103
.LBB37_97:                              #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
.LBB37_98:                              # %.loopexit.i
                                        #   in Loop: Header=BB37_6 Depth=1
	move	$a0, $s6
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB37_18
	.p2align	4, , 16
.LBB37_99:                              #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $a2, .LBB37_18
# %bb.100:                              #   in Loop: Header=BB37_99 Depth=2
	st.b	$a7, $a0, 0
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB37_99
	b	.LBB37_18
.LBB37_101:                             #   in Loop: Header=BB37_6 Depth=1
	add.d	$a3, $a2, $a1
	ori	$a2, $zero, 10
	b	.LBB37_103
	.p2align	4, , 16
.LBB37_102:                             #   in Loop: Header=BB37_103 Depth=2
	addi.d	$a3, $a3, 1
	beq	$s8, $a3, .LBB37_97
.LBB37_103:                             # %.lr.ph.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s0, $a3
	beq	$a0, $a2, .LBB37_102
# %bb.104:                              #   in Loop: Header=BB37_103 Depth=2
	stx.b	$a7, $s0, $a3
	b	.LBB37_102
.LBB37_105:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a2, $a0, %pc_lo12(.L.str.43)
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_108
.LBB37_106:
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a2, $a0, %pc_lo12(.L.str.44)
	move	$a0, $s1
	move	$a1, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_108
.LBB37_107:
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a2, $a0, %pc_lo12(.L.str.45)
	move	$a0, $s1
	move	$a1, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB37_108:
	ld.w	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 40
.LBB37_109:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2016
	add.d	$sp, $sp, $a0
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
.LBB37_110:
	bnez	$s3, .LBB37_383
# %bb.111:                              # %thread-pre-split.preheader
	lu12i.w	$a1, 3
	ori	$a0, $a1, 3800
	addi.d	$a2, $sp, 120
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $a1, 3820
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3976
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $a0, 3992
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.bu	$fp, $s0, 0
	ori	$s8, $zero, 10
	ori	$s4, $zero, 47
	ori	$s6, $zero, 42
	ori	$s5, $zero, 95
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ori	$s3, $zero, 92
	ori	$s1, $zero, 1
	b	.LBB37_113
.LBB37_112:                             #   in Loop: Header=BB37_113 Depth=1
	addi.d	$s0, $s0, 1
	ld.bu	$fp, $s0, 0
	.p2align	4, , 16
.LBB37_113:                             # %.loopexit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_134 Depth 2
                                        #     Child Loop BB37_158 Depth 2
                                        #       Child Loop BB37_175 Depth 3
                                        #       Child Loop BB37_179 Depth 3
                                        #       Child Loop BB37_165 Depth 3
                                        #     Child Loop BB37_148 Depth 2
                                        #     Child Loop BB37_189 Depth 2
                                        #     Child Loop BB37_330 Depth 2
                                        #     Child Loop BB37_333 Depth 2
                                        #     Child Loop BB37_127 Depth 2
                                        #     Child Loop BB37_120 Depth 2
	andi	$s2, $fp, 255
	beq	$s2, $s8, .LBB37_115
# %bb.114:                              # %.loopexit
                                        #   in Loop: Header=BB37_113 Depth=1
	bnez	$s2, .LBB37_116
	b	.LBB37_382
	.p2align	4, , 16
.LBB37_115:                             #   in Loop: Header=BB37_113 Depth=1
	addi.w	$s1, $s1, 1
.LBB37_116:                             #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ext.w.b	$a2, $fp
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	slli.d	$a3, $a2, 50
	bltz	$a3, .LBB37_112
# %bb.117:                              #   in Loop: Header=BB37_113 Depth=1
	bne	$s2, $s4, .LBB37_131
# %bb.118:                              #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a3, $s0, 1
	bne	$a3, $s4, .LBB37_122
# %bb.119:                              #   in Loop: Header=BB37_113 Depth=1
	addi.d	$s0, $s0, 2
	ld.bu	$fp, $s0, 0
	beqz	$fp, .LBB37_113
	.p2align	4, , 16
.LBB37_120:                             #   Parent Loop BB37_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$fp, $s8, .LBB37_113
# %bb.121:                              #   in Loop: Header=BB37_120 Depth=2
	addi.d	$s0, $s0, 1
	ld.bu	$fp, $s0, 0
	bnez	$fp, .LBB37_120
	b	.LBB37_113
.LBB37_122:                             #   in Loop: Header=BB37_113 Depth=1
	bne	$a3, $s6, .LBB37_138
# %bb.123:                              #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a1, $s0, 2
	beqz	$a1, .LBB37_152
# %bb.124:                              # %.lr.ph282.preheader
                                        #   in Loop: Header=BB37_113 Depth=1
	addi.d	$a0, $s0, 3
	b	.LBB37_127
	.p2align	4, , 16
.LBB37_125:                             #   in Loop: Header=BB37_127 Depth=2
	addi.w	$s1, $s1, 1
.LBB37_126:                             # %.critedge2
                                        #   in Loop: Header=BB37_127 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB37_151
.LBB37_127:                             # %.lr.ph282
                                        #   Parent Loop BB37_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s8, .LBB37_125
# %bb.128:                              # %.lr.ph282
                                        #   in Loop: Header=BB37_127 Depth=2
	bne	$a1, $s4, .LBB37_126
# %bb.129:                              #   in Loop: Header=BB37_127 Depth=2
	ld.bu	$a1, $a0, -2
	bne	$a1, $s6, .LBB37_126
# %bb.130:                              # %..critedge.loopexit_crit_edge
                                        #   in Loop: Header=BB37_113 Depth=1
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 1
	b	.LBB37_153
.LBB37_131:                             # %.critedge193
                                        #   in Loop: Header=BB37_113 Depth=1
	st.d	$s0, $sp, 136
	st.w	$s1, $sp, 128
	ori	$a3, $zero, 123
	beq	$s2, $a3, .LBB37_154
# %bb.132:                              # %.critedge193
                                        #   in Loop: Header=BB37_113 Depth=1
	ori	$a3, $zero, 34
	bne	$s2, $a3, .LBB37_139
# %bb.133:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a2, $zero, 34
	addi.d	$s0, $s0, 1
	.p2align	4, , 16
.LBB37_134:                             # %.preheader209
                                        #   Parent Loop BB37_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s0, 0
	addi.d	$s0, $s0, 1
	beqz	$a1, .LBB37_185
# %bb.135:                              # %.preheader209
                                        #   in Loop: Header=BB37_134 Depth=2
	beq	$a1, $a2, .LBB37_186
# %bb.136:                              # %.preheader209
                                        #   in Loop: Header=BB37_134 Depth=2
	bne	$a1, $s8, .LBB37_134
# %bb.137:                              #   in Loop: Header=BB37_134 Depth=2
	addi.w	$s1, $s1, 1
	addi.d	$s0, $s0, -1
	addi.d	$s0, $s0, 1
	b	.LBB37_134
.LBB37_138:                             # %.critedge193.thread
                                        #   in Loop: Header=BB37_113 Depth=1
	st.d	$s0, $sp, 136
	st.w	$s1, $sp, 128
.LBB37_139:                             #   in Loop: Header=BB37_113 Depth=1
	andi	$a2, $a2, 8
	bnez	$a2, .LBB37_146
# %bb.140:                              #   in Loop: Header=BB37_113 Depth=1
	beq	$s2, $s4, .LBB37_183
# %bb.141:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a2, $zero, 124
	beq	$s2, $a2, .LBB37_183
# %bb.142:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a1, $zero, 58
	bne	$s2, $a1, .LBB37_184
# %bb.143:                              #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a1, $s0, 1
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_184
# %bb.144:                              #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a1, $s0, 2
	ori	$a2, $zero, 61
	bne	$a1, $a2, .LBB37_184
# %bb.145:                              #   in Loop: Header=BB37_113 Depth=1
	move	$s7, $a0
	addi.d	$s2, $s0, 3
	b	.LBB37_192
.LBB37_146:                             # %.preheader
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a2, $s0, 0
	bnez	$a2, .LBB37_148
	b	.LBB37_150
	.p2align	4, , 16
.LBB37_147:                             #   in Loop: Header=BB37_148 Depth=2
	ld.bu	$a2, $s0, 1
	addi.d	$s2, $s0, 1
	move	$s0, $s2
	beqz	$a2, .LBB37_191
.LBB37_148:                             # %.lr.ph292
                                        #   Parent Loop BB37_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a3, $a2, 255
	beq	$a3, $s5, .LBB37_147
# %bb.149:                              # %.lr.ph292
                                        #   in Loop: Header=BB37_148 Depth=2
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	andi	$a2, $a2, 8
	bnez	$a2, .LBB37_147
.LBB37_150:                             #   in Loop: Header=BB37_113 Depth=1
	move	$s7, $a0
	move	$s2, $s0
	b	.LBB37_193
.LBB37_151:                             # %.critedge.loopexitsplit
                                        #   in Loop: Header=BB37_113 Depth=1
	move	$a1, $zero
	addi.d	$a0, $a0, -1
	b	.LBB37_153
.LBB37_152:                             #   in Loop: Header=BB37_113 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s0, 2
.LBB37_153:                             # %.critedge
                                        #   in Loop: Header=BB37_113 Depth=1
	add.d	$s0, $a0, $a1
	ld.bu	$fp, $s0, 0
	b	.LBB37_113
.LBB37_154:                             # %.preheader210
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a2, $s0, 1
	addi.d	$s2, $s0, 1
	beqz	$a2, .LBB37_198
# %bb.155:                              # %.lr.ph274.preheader
                                        #   in Loop: Header=BB37_113 Depth=1
	ori	$a1, $zero, 1
	move	$fp, $s1
	ori	$t0, $zero, 37
	ori	$t1, $zero, 125
	b	.LBB37_158
.LBB37_156:                             #   in Loop: Header=BB37_158 Depth=2
	move	$s2, $a3
.LBB37_157:                             # %.critedge6
                                        #   in Loop: Header=BB37_158 Depth=2
	move	$s0, $s2
	ld.bu	$a2, $s2, 1
	addi.d	$s2, $s2, 1
	beqz	$a2, .LBB37_199
.LBB37_158:                             # %.lr.ph274
                                        #   Parent Loop BB37_113 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_175 Depth 3
                                        #       Child Loop BB37_179 Depth 3
                                        #       Child Loop BB37_165 Depth 3
	andi	$a2, $a2, 255
	ori	$a3, $zero, 1
	blt	$a3, $a1, .LBB37_160
# %bb.159:                              # %.lr.ph274
                                        #   in Loop: Header=BB37_158 Depth=2
	beq	$a2, $t1, .LBB37_200
.LBB37_160:                             #   in Loop: Header=BB37_158 Depth=2
	addi.d	$a3, $a2, -10
	bltu	$t0, $a3, .LBB37_167
# %bb.161:                              #   in Loop: Header=BB37_158 Depth=2
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI37_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI37_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB37_162:                             #   in Loop: Header=BB37_158 Depth=2
	ld.bu	$a4, $s2, 1
	addi.d	$a3, $s2, 1
	beqz	$a4, .LBB37_156
# %bb.163:                              # %.lr.ph.preheader
                                        #   in Loop: Header=BB37_158 Depth=2
	move	$a5, $zero
	b	.LBB37_165
	.p2align	4, , 16
.LBB37_164:                             #   in Loop: Header=BB37_165 Depth=3
	addi.d	$a5, $a5, -92
	sltui	$a5, $a5, 1
	ext.w.b	$a7, $a4
	addi.d	$a6, $a6, -10
	ld.bu	$a4, $a3, 1
	sltui	$a6, $a6, 1
	add.w	$fp, $fp, $a6
	addi.d	$s2, $a3, 1
	masknez	$a5, $a7, $a5
	move	$a3, $s2
	beqz	$a4, .LBB37_157
.LBB37_165:                             # %.lr.ph
                                        #   Parent Loop BB37_113 Depth=1
                                        #     Parent Loop BB37_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a6, $a4, 255
	beq	$a5, $s3, .LBB37_164
# %bb.166:                              # %.lr.ph
                                        #   in Loop: Header=BB37_165 Depth=3
	bne	$a6, $a2, .LBB37_164
	b	.LBB37_156
	.p2align	4, , 16
.LBB37_167:                             #   in Loop: Header=BB37_158 Depth=2
	ori	$a3, $zero, 123
	beq	$a2, $a3, .LBB37_177
# %bb.168:                              #   in Loop: Header=BB37_158 Depth=2
	bne	$a2, $t1, .LBB37_157
# %bb.169:                              #   in Loop: Header=BB37_158 Depth=2
	addi.w	$a1, $a1, -1
	b	.LBB37_157
.LBB37_170:                             #   in Loop: Header=BB37_158 Depth=2
	ld.bu	$a2, $s0, 2
	beq	$a2, $s4, .LBB37_178
# %bb.171:                              #   in Loop: Header=BB37_158 Depth=2
	bne	$a2, $s6, .LBB37_157
# %bb.172:                              #   in Loop: Header=BB37_158 Depth=2
	ld.bu	$a2, $s0, 3
	addi.d	$s2, $s0, 3
	beqz	$a2, .LBB37_157
# %bb.173:                              # %.lr.ph262.preheader
                                        #   in Loop: Header=BB37_158 Depth=2
	move	$a3, $zero
	b	.LBB37_175
	.p2align	4, , 16
.LBB37_174:                             #   in Loop: Header=BB37_175 Depth=3
	ext.w.b	$a3, $a2
	ld.bu	$a2, $s2, 1
	addi.d	$a4, $a4, -10
	sltui	$a5, $a4, 1
	addi.d	$a4, $s2, 1
	add.w	$fp, $fp, $a5
	move	$s2, $a4
	beqz	$a2, .LBB37_182
.LBB37_175:                             # %.lr.ph262
                                        #   Parent Loop BB37_113 Depth=1
                                        #     Parent Loop BB37_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a4, $a2, 255
	bne	$a3, $s6, .LBB37_174
# %bb.176:                              # %.lr.ph262
                                        #   in Loop: Header=BB37_175 Depth=3
	bne	$a4, $s4, .LBB37_174
	b	.LBB37_157
.LBB37_177:                             #   in Loop: Header=BB37_158 Depth=2
	addi.w	$a1, $a1, 1
	b	.LBB37_157
.LBB37_178:                             #   in Loop: Header=BB37_158 Depth=2
	addi.d	$s2, $s0, 3
	ld.bu	$a2, $s2, 0
	beqz	$a2, .LBB37_157
	.p2align	4, , 16
.LBB37_179:                             #   Parent Loop BB37_113 Depth=1
                                        #     Parent Loop BB37_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a2, $s8, .LBB37_181
# %bb.180:                              #   in Loop: Header=BB37_179 Depth=3
	addi.d	$s2, $s2, 1
	ld.bu	$a2, $s2, 0
	bnez	$a2, .LBB37_179
	b	.LBB37_157
.LBB37_181:                             #   in Loop: Header=BB37_158 Depth=2
	addi.w	$fp, $fp, 1
	b	.LBB37_157
.LBB37_182:                             #   in Loop: Header=BB37_158 Depth=2
	move	$s2, $a4
	b	.LBB37_157
.LBB37_183:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a2, $s0, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	andi	$a2, $a2, 1024
	bnez	$a2, .LBB37_187
.LBB37_184:                             #   in Loop: Header=BB37_113 Depth=1
	move	$s7, $a0
	addi.d	$s2, $s0, 1
	b	.LBB37_192
.LBB37_185:                             #   in Loop: Header=BB37_113 Depth=1
	move	$s7, $a0
	ld.d	$a0, $sp, 120
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a2, $a1, %pc_lo12(.L.str.46)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s0, -1
	st.w	$a0, $sp, 132
	b	.LBB37_192
.LBB37_186:                             #   in Loop: Header=BB37_113 Depth=1
	move	$s7, $a0
	addi.d	$s2, $s0, -1
	b	.LBB37_193
.LBB37_187:                             #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a2, $s0, 2
	addi.d	$s2, $s0, 2
	bnez	$a2, .LBB37_189
	b	.LBB37_191
	.p2align	4, , 16
.LBB37_188:                             #   in Loop: Header=BB37_189 Depth=2
	ld.bu	$a2, $s2, 1
	addi.d	$s0, $s2, 1
	move	$s2, $s0
	beqz	$a2, .LBB37_150
.LBB37_189:                             # %.lr.ph299
                                        #   Parent Loop BB37_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a3, $a2, 255
	beq	$a3, $s5, .LBB37_188
# %bb.190:                              # %.lr.ph299
                                        #   in Loop: Header=BB37_189 Depth=2
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	andi	$a2, $a2, 8
	bnez	$a2, .LBB37_188
.LBB37_191:                             #   in Loop: Header=BB37_113 Depth=1
	move	$s7, $a0
.LBB37_192:                             # %.critedge11
                                        #   in Loop: Header=BB37_113 Depth=1
	move	$s0, $s2
.LBB37_193:                             # %.critedge11
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$s5, $s2, 0
	ld.d	$a0, $sp, 136
	st.b	$zero, $s2, 0
	pcaddu18i	$ra, %call36(Strsafe)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 152
	ori	$a2, $zero, 19
	bltu	$a2, $a1, .LBB37_351
# %bb.194:                              # %.critedge11
                                        #   in Loop: Header=BB37_113 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI37_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI37_1)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB37_195:                             #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 46
	bne	$a1, $a2, .LBB37_197
# %bb.196:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 152
	ld.bu	$a1, $a0, 0
.LBB37_197:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 37
	beq	$a1, $a0, .LBB37_223
	b	.LBB37_351
.LBB37_198:                             #   in Loop: Header=BB37_113 Depth=1
	move	$fp, $s1
.LBB37_199:                             # %._crit_edge
                                        #   in Loop: Header=BB37_113 Depth=1
	move	$s7, $a0
	ld.d	$a0, $sp, 120
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a2, $a1, %pc_lo12(.L.str.47)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	move	$s0, $s2
	move	$s1, $fp
	b	.LBB37_193
.LBB37_200:                             # %.critedge4
                                        #   in Loop: Header=BB37_113 Depth=1
	move	$s7, $a0
	addi.d	$s0, $s0, 2
	move	$s1, $fp
	b	.LBB37_193
.LBB37_201:                             #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB37_250
.LBB37_202:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 6
	b	.LBB37_350
.LBB37_203:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	ori	$a2, $zero, 46
	beq	$a1, $a2, .LBB37_255
# %bb.204:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 256
	bnez	$a1, .LBB37_309
# %bb.205:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.219)
	addi.d	$a2, $a2, %pc_lo12(.L.str.219)
	b	.LBB37_301
.LBB37_206:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 256
	bnez	$a1, .LBB37_262
# %bb.207:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.180)
	addi.d	$a2, $a2, %pc_lo12(.L.str.180)
	b	.LBB37_265
.LBB37_208:                             #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_211
# %bb.209:                              #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_211
# %bb.210:                              #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a0, $a0, 2
	ori	$a1, $zero, 61
	beq	$a0, $a1, .LBB37_202
.LBB37_211:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a2, $sp, 168
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a3, $a2, 0
	ld.d	$a4, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.187)
	addi.d	$a2, $a2, %pc_lo12(.L.str.187)
	b	.LBB37_247
.LBB37_212:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB37_266
# %bb.213:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.216)
	addi.d	$a2, $a2, %pc_lo12(.L.str.216)
	move	$a3, $a0
	move	$a0, $a4
.LBB37_214:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_261
.LBB37_215:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	andi	$a2, $a1, 255
	ori	$a3, $zero, 34
	beq	$a2, $a3, .LBB37_258
# %bb.216:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a3, $zero, 123
	beq	$a2, $a3, .LBB37_258
# %bb.217:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a3, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a3, $a1
	andi	$a1, $a1, 8
	bnez	$a1, .LBB37_258
# %bb.218:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a5, $sp, 120
	ld.w	$a1, $sp, 128
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3912
	add.d	$a2, $sp, $a2
	ldptr.d	$a3, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.221)
	addi.d	$a2, $a2, %pc_lo12(.L.str.221)
	move	$a4, $a0
	b	.LBB37_260
.LBB37_219:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB37_289
# %bb.220:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a2, $sp, 168
	ld.d	$a5, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a4, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.185)
	addi.d	$a2, $a2, %pc_lo12(.L.str.185)
	b	.LBB37_246
.LBB37_221:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a1, $sp, 144
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3904
	add.d	$a2, $sp, $a2
	stptr.d	$zero, $a2, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $a2, 0
	st.w	$zero, $a2, 16
	st.w	$zero, $a1, 20
.LBB37_222:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a2, $a0, 0
	andi	$a1, $a2, 255
	ori	$a3, $zero, 37
	bne	$a1, $a3, .LBB37_224
.LBB37_223:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 2
	b	.LBB37_350
.LBB37_224:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a3, $s7, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a3, $a2
	andi	$a2, $a2, 512
	bnez	$a2, .LBB37_290
# %bb.225:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a2, $zero, 91
	beq	$a1, $a2, .LBB37_324
# %bb.226:                              #   in Loop: Header=BB37_113 Depth=1
	move	$a3, $a0
	ori	$a0, $zero, 123
	bne	$a1, $a0, .LBB37_325
# %bb.227:                              #   in Loop: Header=BB37_113 Depth=1
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3904
	add.d	$a0, $sp, $a0
	ldptr.d	$a0, $a0, 0
	beqz	$a0, .LBB37_343
# %bb.228:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a1, $a0, 56
	beqz	$a1, .LBB37_354
# %bb.229:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.178)
	addi.d	$a2, $a2, %pc_lo12(.L.str.178)
	b	.LBB37_359
.LBB37_230:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	beqz	$a1, .LBB37_257
# %bb.231:                              #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 72
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3920
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3928
	add.d	$a0, $sp, $a0
	stptr.d	$zero, $a0, 0
	ori	$a0, $zero, 3
	b	.LBB37_350
.LBB37_232:                             #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 40
	beq	$a1, $a2, .LBB37_303
# %bb.233:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_236
# %bb.234:                              #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_236
# %bb.235:                              #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a0, $a0, 2
	ori	$a1, $zero, 61
	beq	$a0, $a1, .LBB37_202
.LBB37_236:                             # %.thread.i205
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a2, $sp, 168
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a3, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.184)
	addi.d	$a2, $a2, %pc_lo12(.L.str.184)
	b	.LBB37_348
.LBB37_237:                             #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 93
	beq	$a0, $a1, .LBB37_255
# %bb.238:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.183)
	addi.d	$a2, $a2, %pc_lo12(.L.str.183)
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	b	.LBB37_255
.LBB37_239:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a2, $a0, 0
	andi	$a1, $a2, 255
	ori	$a3, $zero, 46
	bne	$a1, $a3, .LBB37_291
# %bb.240:                              #   in Loop: Header=BB37_113 Depth=1
	ld.w	$fp, $sp, 184
	slli.d	$a0, $fp, 4
	addi.d	$a0, $a0, 96
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_323
# %bb.241:                              #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a1, $sp, 128
	st.w	$a1, $a0, 20
	addi.d	$a2, $a0, 96
	st.d	$a2, $a0, 32
	alsl.d	$a1, $fp, $a2, 3
	st.d	$a1, $a0, 40
	lu12i.w	$a7, -2
	blez	$fp, .LBB37_334
# %bb.242:                              # %.lr.ph.i201
                                        #   in Loop: Header=BB37_113 Depth=1
	slli.d	$a1, $fp, 3
	ori	$a3, $zero, 4
	bgeu	$fp, $a3, .LBB37_329
# %bb.243:                              #   in Loop: Header=BB37_113 Depth=1
	move	$a3, $zero
	b	.LBB37_332
.LBB37_244:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB37_298
# %bb.245:                              #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a1, $sp, 184
	addi.d	$a2, $sp, 120
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 64
	ld.d	$a5, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a4, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.192)
	addi.d	$a2, $a2, %pc_lo12(.L.str.192)
.LBB37_246:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	move	$a3, $a0
	move	$a0, $a5
.LBB37_247:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_349
.LBB37_248:                             #   in Loop: Header=BB37_113 Depth=1
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB37_250
# %bb.249:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 9
	b	.LBB37_350
.LBB37_250:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a3, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.186)
	addi.d	$a2, $a2, %pc_lo12(.L.str.186)
	b	.LBB37_348
.LBB37_251:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	ori	$a2, $zero, 46
	beq	$a1, $a2, .LBB37_255
# %bb.252:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 256
	bnez	$a1, .LBB37_313
# %bb.253:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.222)
	addi.d	$a2, $a2, %pc_lo12(.L.str.222)
	b	.LBB37_301
.LBB37_254:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	ori	$a2, $zero, 46
	bne	$a1, $a2, .LBB37_299
.LBB37_255:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 1
	b	.LBB37_350
.LBB37_256:                             #   in Loop: Header=BB37_113 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB37_302
.LBB37_257:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.217)
	addi.d	$a2, $a2, %pc_lo12(.L.str.217)
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_261
.LBB37_258:                             #   in Loop: Header=BB37_113 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3920
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	ld.d	$a3, $a1, 0
	beqz	$a3, .LBB37_304
# %bb.259:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a5, $sp, 120
	ld.w	$a1, $sp, 128
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3912
	add.d	$a3, $sp, $a3
	ldptr.d	$a4, $a3, 0
	addi.d	$a2, $a2, -34
	sltui	$a2, $a2, 1
	add.d	$a3, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.220)
	addi.d	$a2, $a0, %pc_lo12(.L.str.220)
.LBB37_260:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	move	$a0, $a5
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
.LBB37_261:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	ori	$a0, $zero, 15
	b	.LBB37_350
.LBB37_262:                             #   in Loop: Header=BB37_113 Depth=1
	move	$a3, $a0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3904
	add.d	$a0, $sp, $a0
	ldptr.d	$fp, $a0, 0
	beqz	$fp, .LBB37_319
# %bb.263:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB37_327
# %bb.264:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.182)
	addi.d	$a2, $a2, %pc_lo12(.L.str.182)
.LBB37_265:                             #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_320
.LBB37_266:                             #   in Loop: Header=BB37_113 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3912
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $a1, 0
	ori	$a1, $zero, 3
	st.w	$a1, $sp, 152
	pcalau12i	$a1, %pc_hi20(.L.str.193)
	addi.d	$a1, $a1, %pc_lo12(.L.str.193)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_321
# %bb.267:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$a1, $a0, %pc_lo12(.L.str.194)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_328
# %bb.268:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$a1, $a0, %pc_lo12(.L.str.195)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_342
# %bb.269:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a1, $a0, %pc_lo12(.L.str.196)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_353
# %bb.270:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a1, $a0, %pc_lo12(.L.str.197)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_361
# %bb.271:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$a1, $a0, %pc_lo12(.L.str.198)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_362
# %bb.272:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$a1, $a0, %pc_lo12(.L.str.199)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_363
# %bb.273:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a1, $a0, %pc_lo12(.L.str.200)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_364
# %bb.274:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$a1, $a0, %pc_lo12(.L.str.201)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_365
# %bb.275:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.202)
	addi.d	$a1, $a0, %pc_lo12(.L.str.202)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_366
# %bb.276:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$a1, $a0, %pc_lo12(.L.str.203)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_369
# %bb.277:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a1, $a0, %pc_lo12(.L.str.204)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_370
# %bb.278:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a1, $a0, %pc_lo12(.L.str.205)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_371
# %bb.279:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a1, $a0, %pc_lo12(.L.str.206)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_372
# %bb.280:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$a1, $a0, %pc_lo12(.L.str.207)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_373
# %bb.281:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.208)
	addi.d	$a1, $a0, %pc_lo12(.L.str.208)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_374
# %bb.282:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$a1, $a0, %pc_lo12(.L.str.209)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_375
# %bb.283:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.210)
	addi.d	$a1, $a0, %pc_lo12(.L.str.210)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_376
# %bb.284:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$a1, $a0, %pc_lo12(.L.str.211)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_378
# %bb.285:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$a1, $a0, %pc_lo12(.L.str.212)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_379
# %bb.286:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.213)
	addi.d	$a1, $a0, %pc_lo12(.L.str.213)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_380
# %bb.287:                              #   in Loop: Header=BB37_113 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.214)
	addi.d	$a1, $a0, %pc_lo12(.L.str.214)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_381
# %bb.288:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.215)
	addi.d	$a2, $a2, %pc_lo12(.L.str.215)
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB37_214
.LBB37_289:                             #   in Loop: Header=BB37_113 Depth=1
	st.d	$a0, $sp, 176
	ori	$a0, $zero, 8
	b	.LBB37_350
.LBB37_290:                             #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168
	st.w	$zero, $sp, 184
	st.d	$zero, $sp, 176
	ori	$a0, $zero, 5
	b	.LBB37_350
.LBB37_291:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a3, $s7, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a3, $a2
	andi	$a2, $a2, 1024
	bnez	$a2, .LBB37_311
# %bb.292:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a2, $zero, 40
	beq	$a1, $a2, .LBB37_344
# %bb.293:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a2, $zero, 124
	beq	$a1, $a2, .LBB37_295
# %bb.294:                              #   in Loop: Header=BB37_113 Depth=1
	bne	$a1, $s4, .LBB37_346
.LBB37_295:                             #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a1, $sp, 184
	blez	$a1, .LBB37_346
# %bb.296:                              #   in Loop: Header=BB37_113 Depth=1
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 120
	alsl.d	$a2, $a1, $a0, 3
	ld.d	$s7, $a2, 64
	ld.w	$a0, $s7, 12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB37_355
# %bb.297:                              # %._crit_edge451.i
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a1, $s7, 84
	ld.d	$a0, $s7, 88
	addi.w	$fp, $a1, 1
	b	.LBB37_356
.LBB37_298:                             #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a1, $sp, 184
	addi.d	$a2, $sp, 120
	alsl.d	$a1, $a1, $a2, 3
	stptr.d	$a0, $a1, 8064
	ori	$a0, $zero, 11
	b	.LBB37_350
.LBB37_299:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 256
	bnez	$a1, .LBB37_316
# %bb.300:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.224)
	addi.d	$a2, $a2, %pc_lo12(.L.str.224)
.LBB37_301:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	move	$a3, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_360
.LBB37_302:                             #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 56
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 64
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3928
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 3
	b	.LBB37_350
.LBB37_303:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 7
	b	.LBB37_350
.LBB37_304:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a3, $zero, 123
	beq	$a2, $a3, .LBB37_306
# %bb.305:                              #   in Loop: Header=BB37_113 Depth=1
	ori	$a3, $zero, 34
	bne	$a2, $a3, .LBB37_307
.LBB37_306:                             #   in Loop: Header=BB37_113 Depth=1
	addi.d	$a0, $a0, 1
.LBB37_307:                             #   in Loop: Header=BB37_113 Depth=1
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3928
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	st.d	$a0, $a1, 0
	beqz	$a2, .LBB37_255
# %bb.308:                              #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a0, $sp, 128
	st.w	$a0, $a2, 0
	ori	$a0, $zero, 1
	b	.LBB37_350
.LBB37_309:                             #   in Loop: Header=BB37_113 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bltz	$a1, .LBB37_339
# %bb.310:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.218)
	addi.d	$a2, $a2, %pc_lo12(.L.str.218)
	b	.LBB37_318
.LBB37_311:                             #   in Loop: Header=BB37_113 Depth=1
	ld.w	$fp, $sp, 184
	ori	$a1, $zero, 1000
	blt	$fp, $a1, .LBB37_326
# %bb.312:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.189)
	addi.d	$a2, $a2, %pc_lo12(.L.str.189)
	b	.LBB37_347
.LBB37_313:                             #   in Loop: Header=BB37_113 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160
	beqz	$a1, .LBB37_340
# %bb.314:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB37_352
# %bb.315:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.223)
	addi.d	$a2, $a2, %pc_lo12(.L.str.223)
	b	.LBB37_318
.LBB37_316:                             #   in Loop: Header=BB37_113 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144
	ld.d	$a2, $a1, 56
	beqz	$a2, .LBB37_341
# %bb.317:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.225)
	addi.d	$a2, $a2, %pc_lo12(.L.str.225)
.LBB37_318:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_360
.LBB37_319:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.181)
	addi.d	$a2, $a2, %pc_lo12(.L.str.181)
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
.LBB37_320:                             #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	ori	$a0, $zero, 13
	b	.LBB37_350
.LBB37_321:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 64
.LBB37_322:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3920
	b	.LBB37_368
.LBB37_323:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a3, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.188)
	addi.d	$a2, $a2, %pc_lo12(.L.str.188)
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.w	$a1, $sp, 132
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 132
	b	.LBB37_338
.LBB37_324:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 12
	b	.LBB37_350
.LBB37_325:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.179)
	addi.d	$a2, $a2, %pc_lo12(.L.str.179)
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_360
.LBB37_326:                             #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	slli.d	$a1, $fp, 3
	addi.d	$a2, $sp, 192
	stx.d	$a0, $a2, $a1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	stx.d	$zero, $a0, $a1
	addi.d	$a0, $fp, 1
	st.w	$a0, $sp, 184
	b	.LBB37_351
.LBB37_327:                             #   in Loop: Header=BB37_113 Depth=1
	move	$a0, $a3
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	ori	$a0, $zero, 13
	b	.LBB37_350
.LBB37_328:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 112
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 120
	b	.LBB37_367
.LBB37_329:                             # %vector.ph516
                                        #   in Loop: Header=BB37_113 Depth=1
	bstrpick.d	$a3, $fp, 30, 2
	slli.d	$a3, $a3, 2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	move	$a5, $a3
.LBB37_330:                             # %vector.body519
                                        #   Parent Loop BB37_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a6, $a7, 176
	vldx	$vr0, $a4, $a6
	ori	$a6, $a7, 192
	vldx	$vr1, $a4, $a6
	vst	$vr0, $a2, 0
	vld	$vr0, $a4, -16
	vld	$vr2, $a4, 0
	vst	$vr1, $a2, 16
	add.d	$a6, $a2, $a1
	vstx	$vr0, $a2, $a1
	vst	$vr2, $a6, 16
	addi.d	$a5, $a5, -4
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB37_330
# %bb.331:                              # %middle.block526
                                        #   in Loop: Header=BB37_113 Depth=1
	beq	$a3, $fp, .LBB37_334
.LBB37_332:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB37_113 Depth=1
	sub.d	$a2, $fp, $a3
	alsl.d	$a4, $a3, $a0, 3
	addi.d	$a4, $a4, 96
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a5, 3
.LBB37_333:                             # %scalar.ph
                                        #   Parent Loop BB37_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$a5, $a3, -8000
	ld.d	$a6, $a3, 0
	st.d	$a5, $a4, 0
	stx.d	$a6, $a4, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB37_333
.LBB37_334:                             # %._crit_edge.i200
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a1, $sp, 144
	vld	$vr0, $sp, 168
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $a0, 56
	ld.w	$a2, $a1, 20
	ld.d	$a3, $sp, 168
	vst	$vr0, $a0, 0
	st.w	$fp, $a0, 24
	addi.d	$a4, $a2, 1
	ld.d	$a5, $a3, 16
	lu12i.w	$a6, 3
	ori	$a6, $a6, 3944
	add.d	$a6, $sp, $a6
	ldptr.d	$a6, $a6, 0
	st.w	$a4, $a1, 20
	st.w	$a2, $a0, 72
	st.d	$a5, $a0, 80
	st.d	$a0, $a3, 16
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3952
	add.d	$a1, $sp, $a1
	beqz	$a6, .LBB37_336
# %bb.335:                              #   in Loop: Header=BB37_113 Depth=1
	ldptr.d	$a1, $a1, 0
	st.d	$a0, $a1, 88
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3952
	b	.LBB37_337
.LBB37_336:                             #   in Loop: Header=BB37_113 Depth=1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3944
.LBB37_337:                             #   in Loop: Header=BB37_113 Depth=1
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
.LBB37_338:                             #   in Loop: Header=BB37_113 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3904
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 1
	b	.LBB37_350
.LBB37_339:                             #   in Loop: Header=BB37_113 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3936
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	rotri.d	$a1, $a1, 32
	st.d	$a1, $a0, 32
	b	.LBB37_351
.LBB37_340:                             #   in Loop: Header=BB37_113 Depth=1
	st.d	$a0, $sp, 160
	b	.LBB37_351
.LBB37_341:                             #   in Loop: Header=BB37_113 Depth=1
	st.d	$a0, $a1, 56
	b	.LBB37_351
.LBB37_342:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 192
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 200
	b	.LBB37_367
.LBB37_343:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.177)
	addi.d	$a2, $a2, %pc_lo12(.L.str.177)
	b	.LBB37_359
.LBB37_344:                             #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a1, $sp, 184
	blez	$a1, .LBB37_346
# %bb.345:                              #   in Loop: Header=BB37_113 Depth=1
	st.w	$s8, $sp, 152
	b	.LBB37_351
.LBB37_346:                             # %.thread449.i
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.191)
	addi.d	$a2, $a2, %pc_lo12(.L.str.191)
.LBB37_347:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	move	$a3, $a0
	move	$a0, $a4
.LBB37_348:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
.LBB37_349:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	ori	$a0, $zero, 14
.LBB37_350:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	st.w	$a0, $sp, 152
.LBB37_351:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	st.b	$s5, $s2, 0
	ld.bu	$fp, $s0, 0
	ori	$s5, $zero, 95
	b	.LBB37_113
.LBB37_352:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a2, $sp, 144
	st.d	$a1, $a0, 24
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 276
	b	.LBB37_351
.LBB37_353:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 208
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 216
	b	.LBB37_367
.LBB37_354:                             #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a1, $sp, 128
	st.w	$a1, $a0, 48
	addi.d	$a1, $a3, 1
	st.d	$a1, $a0, 56
	b	.LBB37_351
.LBB37_355:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 96
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$fp, $zero, 2
	st.w	$fp, $a0, 12
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 84
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, 88
	st.d	$s7, $a0, 0
	st.d	$a1, $a2, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a2, $a1, 64
	move	$s7, $a2
.LBB37_356:                             #   in Loop: Header=BB37_113 Depth=1
	st.w	$fp, $s7, 84
	slli.d	$a1, $fp, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 88
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $fp, 1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 88
	ld.w	$a2, $s7, 84
	alsl.d	$a2, $a2, $a1, 3
	st.d	$a0, $a2, -8
	ld.b	$a2, $fp, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	andi	$a2, $a2, 512
	bnez	$a2, .LBB37_358
# %bb.357:                              #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.b	$a1, $a1, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 512
	beqz	$a0, .LBB37_351
.LBB37_358:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.190)
	addi.d	$a2, $a2, %pc_lo12(.L.str.190)
.LBB37_359:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
.LBB37_360:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	b	.LBB37_351
.LBB37_361:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 224
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 232
	b	.LBB37_367
.LBB37_362:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 256
	b	.LBB37_322
.LBB37_363:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 128
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 136
	b	.LBB37_367
.LBB37_364:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 176
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 184
	b	.LBB37_367
.LBB37_365:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 160
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 168
	b	.LBB37_367
.LBB37_366:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 144
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 152
.LBB37_367:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3928
.LBB37_368:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	b	.LBB37_351
.LBB37_369:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 72
	b	.LBB37_322
.LBB37_370:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 80
	b	.LBB37_322
.LBB37_371:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 88
	b	.LBB37_322
.LBB37_372:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 104
	b	.LBB37_322
.LBB37_373:                             #   in Loop: Header=BB37_113 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 96
	b	.LBB37_322
.LBB37_374:                             #   in Loop: Header=BB37_113 Depth=1
	addi.d	$a0, $sp, 120
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3940
	add.d	$a1, $sp, $a1
	stptr.w	$a0, $a1, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3936
	add.d	$a0, $sp, $a0
	stptr.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	b	.LBB37_350
.LBB37_375:                             #   in Loop: Header=BB37_113 Depth=1
	addi.d	$a0, $sp, 120
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3940
	add.d	$a1, $sp, $a1
	stptr.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	b	.LBB37_377
.LBB37_376:                             #   in Loop: Header=BB37_113 Depth=1
	addi.d	$a0, $sp, 120
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3940
	add.d	$a1, $sp, $a1
	stptr.w	$a0, $a1, 0
	ori	$a0, $zero, 2
.LBB37_377:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_113 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3936
	add.d	$a1, $sp, $a1
	stptr.w	$a0, $a1, 0
	ori	$a0, $zero, 4
	b	.LBB37_350
.LBB37_378:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 16
	b	.LBB37_350
.LBB37_379:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 17
	b	.LBB37_350
.LBB37_380:                             #   in Loop: Header=BB37_113 Depth=1
	st.d	$zero, $sp, 160
	ori	$a0, $zero, 18
	b	.LBB37_350
.LBB37_381:                             #   in Loop: Header=BB37_113 Depth=1
	ori	$a0, $zero, 19
	b	.LBB37_350
.LBB37_382:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3944
	add.d	$a0, $sp, $a0
	ldptr.d	$a0, $a0, 0
	ld.w	$a1, $sp, 132
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a2, 8
	st.w	$a1, $a2, 40
	b	.LBB37_109
.LBB37_383:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.176)
	addi.d	$a1, $a1, %pc_lo12(.L.str.176)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	Parse, .Lfunc_end37-Parse
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI37_0:
	.word	.LBB37_181-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_162-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_162-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_157-.LJTI37_0
	.word	.LBB37_170-.LJTI37_0
.LJTI37_1:
	.word	.LBB37_221-.LJTI37_1
	.word	.LBB37_222-.LJTI37_1
	.word	.LBB37_212-.LJTI37_1
	.word	.LBB37_215-.LJTI37_1
	.word	.LBB37_203-.LJTI37_1
	.word	.LBB37_232-.LJTI37_1
	.word	.LBB37_239-.LJTI37_1
	.word	.LBB37_219-.LJTI37_1
	.word	.LBB37_248-.LJTI37_1
	.word	.LBB37_208-.LJTI37_1
	.word	.LBB37_244-.LJTI37_1
	.word	.LBB37_201-.LJTI37_1
	.word	.LBB37_206-.LJTI37_1
	.word	.LBB37_237-.LJTI37_1
	.word	.LBB37_195-.LJTI37_1
	.word	.LBB37_195-.LJTI37_1
	.word	.LBB37_256-.LJTI37_1
	.word	.LBB37_230-.LJTI37_1
	.word	.LBB37_251-.LJTI37_1
	.word	.LBB37_254-.LJTI37_1
                                        # -- End function
	.text
	.globl	Plink_new                       # -- Begin function Plink_new
	.p2align	5
	.type	Plink_new,@function
Plink_new:                              # @Plink_new
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(plink_freelist)
	ld.d	$a0, $fp, %pc_lo12(plink_freelist)
	bnez	$a0, .LBB38_5
# %bb.1:
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB38_6
# %bb.2:                                # %vector.body.preheader
	move	$a1, $zero
	ori	$a2, $zero, 1568
	.p2align	4, , 16
.LBB38_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	addi.d	$a4, $a3, 16
	addi.d	$a5, $a3, 32
	st.d	$a4, $a3, 8
	addi.d	$a1, $a1, 32
	st.d	$a5, $a3, 24
	bne	$a1, $a2, .LBB38_3
# %bb.4:                                # %.preheader
	addi.d	$a1, $a0, 1584
	st.d	$a1, $a0, 1576
	st.d	$zero, $a0, 1592
.LBB38_5:
	ld.d	$a1, $a0, 8
	st.d	$a1, $fp, %pc_lo12(plink_freelist)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB38_6:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	Plink_new, .Lfunc_end38-Plink_new
                                        # -- End function
	.globl	Plink_add                       # -- Begin function Plink_add
	.p2align	5
	.type	Plink_add,@function
Plink_add:                              # @Plink_add
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(plink_freelist)
	ld.d	$a2, $fp, %pc_lo12(plink_freelist)
	bnez	$a2, .LBB39_5
# %bb.1:
	move	$s0, $a0
	move	$s1, $a1
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB39_6
# %bb.2:                                # %vector.body.preheader
	move	$a2, $a0
	move	$a0, $zero
	ori	$a1, $zero, 1568
	.p2align	4, , 16
.LBB39_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $a0
	addi.d	$a4, $a3, 16
	addi.d	$a5, $a3, 32
	st.d	$a4, $a3, 8
	addi.d	$a0, $a0, 32
	st.d	$a5, $a3, 24
	bne	$a0, $a1, .LBB39_3
# %bb.4:                                # %.preheader.i
	addi.d	$a0, $a2, 1584
	st.d	$a0, $a2, 1576
	st.d	$zero, $a2, 1592
	move	$a1, $s1
	move	$a0, $s0
.LBB39_5:                               # %Plink_new.exit
	ld.d	$a3, $a2, 8
	st.d	$a3, $fp, %pc_lo12(plink_freelist)
	ld.d	$a3, $a0, 0
	st.d	$a3, $a2, 8
	st.d	$a2, $a0, 0
	st.d	$a1, $a2, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB39_6:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	Plink_add, .Lfunc_end39-Plink_add
                                        # -- End function
	.globl	Plink_copy                      # -- Begin function Plink_copy
	.p2align	5
	.type	Plink_copy,@function
Plink_copy:                             # @Plink_copy
# %bb.0:
	beqz	$a1, .LBB40_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a2, $a0, 0
	.p2align	4, , 16
.LBB40_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 8
	st.d	$a2, $a1, 8
	st.d	$a1, $a0, 0
	move	$a2, $a1
	move	$a1, $a3
	bnez	$a3, .LBB40_2
.LBB40_3:                               # %._crit_edge
	ret
.Lfunc_end40:
	.size	Plink_copy, .Lfunc_end40-Plink_copy
                                        # -- End function
	.globl	Plink_delete                    # -- Begin function Plink_delete
	.p2align	5
	.type	Plink_delete,@function
Plink_delete:                           # @Plink_delete
# %bb.0:
	beqz	$a0, .LBB41_4
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(plink_freelist)
	ld.d	$a2, $a1, %pc_lo12(plink_freelist)
	.p2align	4, , 16
.LBB41_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a2
	move	$a2, $a0
	ld.d	$a0, $a0, 8
	st.d	$a3, $a2, 8
	bnez	$a0, .LBB41_2
# %bb.3:                                # %._crit_edge
	st.d	$a2, $a1, %pc_lo12(plink_freelist)
.LBB41_4:
	ret
.Lfunc_end41:
	.size	Plink_delete, .Lfunc_end41-Plink_delete
                                        # -- End function
	.globl	file_makename                   # -- Begin function file_makename
	.p2align	5
	.type	file_makename,@function
file_makename:                          # @file_makename
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 240
	move	$fp, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB42_4
# %bb.1:
	move	$s1, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 46
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB42_3
# %bb.2:
	st.b	$zero, $a0, 0
.LBB42_3:
	move	$a0, $s1
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcat)
	jr	$t8
.LBB42_4:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	file_makename, .Lfunc_end42-file_makename
                                        # -- End function
	.globl	file_open                       # -- Begin function file_open
	.p2align	5
	.type	file_open,@function
file_open:                              # @file_open
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 248
	move	$s0, $a2
	beqz	$a0, .LBB43_2
# %bb.1:
	move	$s1, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a1, $s1
.LBB43_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$a0, $fp, 248
	ld.bu	$a1, $s0, 0
	ori	$a0, $zero, 114
	bne	$a1, $a0, .LBB43_4
# %bb.3:
	move	$a0, $zero
	b	.LBB43_6
.LBB43_4:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 119
	bne	$a1, $a3, .LBB43_6
# %bb.5:
	beqz	$a0, .LBB43_7
.LBB43_6:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB43_7:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 40
	b	.LBB43_6
.Lfunc_end43:
	.size	file_open, .Lfunc_end43-file_open
                                        # -- End function
	.globl	Reprint                         # -- Begin function Reprint
	.p2align	5
	.type	Reprint,@function
Reprint:                                # @Reprint
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
	move	$fp, $a0
	ld.d	$a1, $a0, 240
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 24
	blez	$s1, .LBB44_4
# %bb.1:                                # %.lr.ph
	ld.d	$s2, $fp, 32
	ori	$s0, $zero, 10
	move	$s3, $s1
	.p2align	4, , 16
.LBB44_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB44_2
# %bb.3:                                # %._crit_edge
	addi.w	$a0, $s0, 5
	ori	$a1, $zero, 76
	div.wu	$a0, $a1, $a0
	ori	$a1, $zero, 71
	sltu	$a1, $a1, $s0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	add.d	$a1, $s1, $a0
	addi.w	$a1, $a1, -1
	div.w	$s4, $a1, $a0
	bgtz	$s4, .LBB44_5
	b	.LBB44_10
.LBB44_4:
	ori	$a0, $zero, 5
	ori	$s0, $zero, 10
	add.d	$a1, $s1, $a0
	addi.w	$a1, $a1, -1
	div.w	$s4, $a1, $a0
	blez	$s4, .LBB44_10
.LBB44_5:                               # %.lr.ph68
	slli.d	$s5, $s4, 3
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$s2, $a0, %pc_lo12(.L.str.53)
	move	$s1, $zero
	move	$s7, $zero
	move	$s8, $zero
	b	.LBB44_7
	.p2align	4, , 16
.LBB44_6:                               # %._crit_edge65
                                        #   in Loop: Header=BB44_7 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, 1
	addi.d	$s7, $s7, 1
	addi.d	$s1, $s1, 8
	beq	$s7, $s4, .LBB44_10
.LBB44_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_9 Depth 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	bge	$s8, $a0, .LBB44_6
# %bb.8:                                # %.lr.ph64.preheader
                                        #   in Loop: Header=BB44_7 Depth=1
	move	$s3, $s8
	move	$s6, $s1
	.p2align	4, , 16
.LBB44_9:                               # %.lr.ph64
                                        #   Parent Loop BB44_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 32
	ldx.d	$a0, $a0, $s6
	ld.d	$a4, $a0, 0
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	add.w	$s3, $s3, $s4
	add.d	$s6, $s6, $s5
	blt	$s3, $a0, .LBB44_9
	b	.LBB44_6
.LBB44_10:                              # %._crit_edge69
	ld.d	$s4, $fp, 8
	beqz	$s4, .LBB44_22
# %bb.11:                               # %.lr.ph80.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$fp, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$s0, $a0, %pc_lo12(.L.str.56)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s1, $a0, %pc_lo12(.L.str.57)
	ori	$s5, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s2, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB44_13
	.p2align	4, , 16
.LBB44_12:                              #   in Loop: Header=BB44_13 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 88
	beqz	$s4, .LBB44_22
.LBB44_13:                              # %.lr.ph80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_16 Depth 2
                                        #       Child Loop BB44_19 Depth 3
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 24
	blez	$a0, .LBB44_20
# %bb.14:                               # %.lr.ph74
                                        #   in Loop: Header=BB44_13 Depth=1
	move	$s6, $zero
	b	.LBB44_16
	.p2align	4, , 16
.LBB44_15:                              # %.loopexit
                                        #   in Loop: Header=BB44_16 Depth=2
	ld.w	$a0, $s4, 24
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB44_20
.LBB44_16:                              #   Parent Loop BB44_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB44_19 Depth 3
	ld.d	$a0, $s4, 32
	slli.d	$a1, $s6, 3
	ldx.d	$s7, $a0, $a1
	ld.d	$a1, $s7, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 12
	bne	$a0, $s5, .LBB44_15
# %bb.17:                               # %.preheader
                                        #   in Loop: Header=BB44_16 Depth=2
	ld.w	$a0, $s7, 84
	blt	$a0, $s5, .LBB44_15
# %bb.18:                               # %.lr.ph71
                                        #   in Loop: Header=BB44_16 Depth=2
	ori	$s8, $zero, 1
	ori	$s3, $zero, 8
	.p2align	4, , 16
.LBB44_19:                              #   Parent Loop BB44_13 Depth=1
                                        #     Parent Loop BB44_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s7, 88
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 84
	addi.d	$s8, $s8, 1
	addi.d	$s3, $s3, 8
	blt	$s8, $a0, .LBB44_19
	b	.LBB44_15
	.p2align	4, , 16
.LBB44_20:                              # %._crit_edge75
                                        #   in Loop: Header=BB44_13 Depth=1
	ori	$a0, $zero, 46
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 64
	beqz	$a0, .LBB44_12
# %bb.21:                               #   in Loop: Header=BB44_13 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB44_12
.LBB44_22:                              # %._crit_edge81
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
.Lfunc_end44:
	.size	Reprint, .Lfunc_end44-Reprint
                                        # -- End function
	.globl	ConfigPrint                     # -- Begin function ConfigPrint
	.p2align	5
	.type	ConfigPrint,@function
ConfigPrint:                            # @ConfigPrint
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
	move	$fp, $a1
	ld.d	$s4, $a1, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a1, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 24
	bltz	$a0, .LBB45_10
# %bb.1:                                # %.lr.ph25
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s5, $zero, 2
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$s2, $a1, %pc_lo12(.L.str.57)
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$s3, $a1, %pc_lo12(.L.str.58)
	move	$a1, $zero
	b	.LBB45_3
	.p2align	4, , 16
.LBB45_2:                               # %.loopexit
                                        #   in Loop: Header=BB45_3 Depth=1
	ld.w	$a0, $s4, 24
	addi.d	$a1, $s6, 1
	bge	$s6, $a0, .LBB45_10
.LBB45_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_9 Depth 2
	ld.wu	$a2, $fp, 8
	move	$s6, $a1
	bne	$a1, $a2, .LBB45_5
# %bb.4:                                #   in Loop: Header=BB45_3 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 24
.LBB45_5:                               #   in Loop: Header=BB45_3 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	beq	$s6, $a0, .LBB45_10
# %bb.6:                                #   in Loop: Header=BB45_3 Depth=1
	ld.d	$a0, $s4, 32
	slli.d	$a1, $s6, 3
	ldx.d	$s7, $a0, $a1
	ld.d	$a2, $s7, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 12
	bne	$a0, $s5, .LBB45_2
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB45_3 Depth=1
	ld.w	$a0, $s7, 84
	blt	$a0, $s5, .LBB45_2
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB45_3 Depth=1
	ori	$s8, $zero, 1
	ori	$s1, $zero, 8
	.p2align	4, , 16
.LBB45_9:                               #   Parent Loop BB45_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 88
	ldx.d	$a0, $a0, $s1
	ld.d	$a2, $a0, 0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 84
	addi.d	$s8, $s8, 1
	addi.d	$s1, $s1, 8
	blt	$s8, $a0, .LBB45_9
	b	.LBB45_2
.LBB45_10:                              # %._crit_edge
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
.Lfunc_end45:
	.size	ConfigPrint, .Lfunc_end45-ConfigPrint
                                        # -- End function
	.globl	PrintAction                     # -- Begin function PrintAction
	.p2align	5
	.type	PrintAction,@function
PrintAction:                            # @PrintAction
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a3, $a0, 8
	ori	$a4, $zero, 9
	ori	$fp, $zero, 1
	bltu	$a4, $a3, .LBB46_11
# %bb.1:
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI46_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI46_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB46_2:
	move	$fp, $zero
	b	.LBB46_11
.LBB46_3:
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 72
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a5, $a0, %pc_lo12(.L.str.67)
	b	.LBB46_8
.LBB46_4:
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a5, $a0, %pc_lo12(.L.str.68)
	b	.LBB46_8
.LBB46_5:
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 72
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a5, $a0, %pc_lo12(.L.str.64)
	b	.LBB46_8
.LBB46_6:
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a4, $a0, %pc_lo12(.L.str.66)
	b	.LBB46_10
.LBB46_7:
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a5, $a0, %pc_lo12(.L.str.63)
.LBB46_8:
	move	$a0, $a1
	move	$a1, $a5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB46_11
.LBB46_9:
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a4, $a0, %pc_lo12(.L.str.65)
.LBB46_10:
	move	$a0, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB46_11:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end46:
	.size	PrintAction, .Lfunc_end46-PrintAction
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI46_0:
	.word	.LBB46_7-.LJTI46_0
	.word	.LBB46_9-.LJTI46_0
	.word	.LBB46_5-.LJTI46_0
	.word	.LBB46_6-.LJTI46_0
	.word	.LBB46_4-.LJTI46_0
	.word	.LBB46_3-.LJTI46_0
	.word	.LBB46_3-.LJTI46_0
	.word	.LBB46_2-.LJTI46_0
	.word	.LBB46_2-.LJTI46_0
	.word	.LBB46_2-.LJTI46_0
                                        # -- End function
	.text
	.globl	ReportOutput                    # -- Begin function ReportOutput
	.p2align	5
	.type	ReportOutput,@function
ReportOutput:                           # @ReportOutput
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	move	$s8, $a0
	ld.d	$a0, $a0, 248
	beqz	$a0, .LBB47_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB47_2:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$a0, $s8, 248
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB47_46
# %bb.3:                                # %file_open.exit.preheader
	ld.w	$a0, $s8, 16
	blez	$a0, .LBB47_33
# %bb.4:                                # %.lr.ph88
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI47_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI47_0)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$s1, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s4, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s5, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a1, $zero
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	b	.LBB47_6
	.p2align	4, , 16
.LBB47_5:                               # %file_open.exit
                                        #   in Loop: Header=BB47_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $s8, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bge	$a1, $a0, .LBB47_33
.LBB47_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_9 Depth 2
                                        #       Child Loop BB47_15 Depth 3
                                        #         Child Loop BB47_21 Depth 4
                                        #     Child Loop BB47_26 Depth 2
	ld.d	$a0, $s8, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a0, $a1
	ld.w	$a2, $fp, 16
	move	$a0, $s0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 272
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ldx.d	$s8, $fp, $a0
	bnez	$s8, .LBB47_9
.LBB47_7:                               # %._crit_edge
                                        #   in Loop: Header=BB47_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $a0, 24
	bnez	$s8, .LBB47_26
	b	.LBB47_5
	.p2align	4, , 16
.LBB47_8:                               # %ConfigPrint.exit
                                        #   in Loop: Header=BB47_9 Depth=2
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 272
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 64
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 56
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ldx.d	$s8, $s8, $a0
	beqz	$s8, .LBB47_7
.LBB47_9:                               # %.lr.ph
                                        #   Parent Loop BB47_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_15 Depth 3
                                        #         Child Loop BB47_21 Depth 4
	ld.d	$a0, $s8, 0
	ld.w	$a1, $s8, 8
	ld.w	$a2, $a0, 24
	bne	$a1, $a2, .LBB47_11
# %bb.10:                               #   in Loop: Header=BB47_9 Depth=2
	ld.w	$a2, $a0, 72
	addi.d	$a0, $sp, 148
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 148
	move	$a0, $s0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB47_12
	.p2align	4, , 16
.LBB47_11:                              #   in Loop: Header=BB47_9 Depth=2
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB47_12:                              #   in Loop: Header=BB47_9 Depth=2
	ld.d	$s6, $s8, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 24
	bltz	$a0, .LBB47_8
# %bb.13:                               # %.lr.ph25.i
                                        #   in Loop: Header=BB47_9 Depth=2
	move	$a1, $zero
	b	.LBB47_15
	.p2align	4, , 16
.LBB47_14:                              # %.loopexit.i
                                        #   in Loop: Header=BB47_15 Depth=3
	ld.w	$a0, $s6, 24
	addi.d	$a1, $fp, 1
	bge	$fp, $a0, .LBB47_8
.LBB47_15:                              #   Parent Loop BB47_6 Depth=1
                                        #     Parent Loop BB47_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB47_21 Depth 4
	ld.wu	$a2, $s8, 8
	move	$fp, $a1
	bne	$a1, $a2, .LBB47_17
# %bb.16:                               #   in Loop: Header=BB47_15 Depth=3
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 24
.LBB47_17:                              #   in Loop: Header=BB47_15 Depth=3
	bstrpick.d	$a0, $a0, 31, 0
	beq	$fp, $a0, .LBB47_8
# %bb.18:                               #   in Loop: Header=BB47_15 Depth=3
	ld.d	$a0, $s6, 32
	slli.d	$a1, $fp, 3
	ldx.d	$s2, $a0, $a1
	ld.d	$a2, $s2, 0
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 12
	bne	$a0, $s1, .LBB47_14
# %bb.19:                               # %.preheader.i
                                        #   in Loop: Header=BB47_15 Depth=3
	ld.w	$a0, $s2, 84
	blt	$a0, $s1, .LBB47_14
# %bb.20:                               # %.lr.ph.i
                                        #   in Loop: Header=BB47_15 Depth=3
	ori	$s7, $zero, 1
	ori	$s3, $zero, 8
	.p2align	4, , 16
.LBB47_21:                              #   Parent Loop BB47_6 Depth=1
                                        #     Parent Loop BB47_9 Depth=2
                                        #       Parent Loop BB47_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s2, 88
	ldx.d	$a0, $a0, $s3
	ld.d	$a2, $a0, 0
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 84
	addi.d	$s7, $s7, 1
	addi.d	$s3, $s3, 8
	blt	$s7, $a0, .LBB47_21
	b	.LBB47_14
.LBB47_22:                              #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, 16
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a1, 72
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB47_23:                              #   in Loop: Header=BB47_26 Depth=2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB47_24:                              #   in Loop: Header=BB47_26 Depth=2
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB47_25:                              # %PrintAction.exit
                                        #   in Loop: Header=BB47_26 Depth=2
	ld.d	$s8, $s8, 24
	beqz	$s8, .LBB47_5
.LBB47_26:                              # %.lr.ph85
                                        #   Parent Loop BB47_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s8, 8
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB47_24
# %bb.27:                               # %.lr.ph85
                                        #   in Loop: Header=BB47_26 Depth=2
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB47_28:                              #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, 16
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a1, 72
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB47_23
.LBB47_29:                              #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, 16
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a1, 16
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB47_23
.LBB47_30:                              #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a3, $a0, 0
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB47_24
.LBB47_31:                              #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, 16
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a1, 16
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB47_23
.LBB47_32:                              #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a3, $a0, 0
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB47_24
.LBB47_33:                              # %file_open.exit._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	ori	$s5, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 24
	blez	$a0, .LBB47_47
# %bb.34:                               # %.lr.ph94
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$s1, $a0, %pc_lo12(.L.str.77)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$s3, $a0, %pc_lo12(.L.str.79)
	move	$s4, $zero
	b	.LBB47_36
	.p2align	4, , 16
.LBB47_35:                              # %.loopexit
                                        #   in Loop: Header=BB47_36 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 24
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB47_47
.LBB47_36:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_44 Depth 2
	ld.d	$a0, $s8, 32
	slli.d	$a1, $s4, 3
	ldx.d	$s6, $a0, $a1
	ld.d	$a3, $s6, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 12
	bne	$a0, $s5, .LBB47_35
# %bb.37:                               #   in Loop: Header=BB47_36 Depth=1
	ori	$a0, $zero, 58
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 48
	beqz	$a0, .LBB47_39
# %bb.38:                               #   in Loop: Header=BB47_36 Depth=1
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB47_39:                              #   in Loop: Header=BB47_36 Depth=1
	ld.w	$a0, $s8, 28
	blez	$a0, .LBB47_35
# %bb.40:                               # %.lr.ph91
                                        #   in Loop: Header=BB47_36 Depth=1
	ld.d	$a1, $s6, 40
	beqz	$a1, .LBB47_35
# %bb.41:                               # %.lr.ph91.split.preheader
                                        #   in Loop: Header=BB47_36 Depth=1
	move	$fp, $zero
	move	$s7, $zero
	beqz	$a1, .LBB47_44
	.p2align	4, , 16
.LBB47_42:                              #   in Loop: Header=BB47_36 Depth=1
	ldx.bu	$a1, $a1, $s7
	beqz	$a1, .LBB47_44
# %bb.43:                               #   in Loop: Header=BB47_36 Depth=1
	ld.d	$a0, $s8, 32
	ldx.d	$a0, $a0, $fp
	ld.d	$a2, $a0, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 28
.LBB47_44:                              #   Parent Loop BB47_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB47_35
# %bb.45:                               # %.lr.ph91.splitthread-pre-split
                                        #   in Loop: Header=BB47_44 Depth=2
	ld.d	$a1, $s6, 40
	addi.d	$fp, $fp, 8
	bnez	$a1, .LBB47_42
	b	.LBB47_44
.LBB47_46:                              # %file_open.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 40
.LBB47_47:                              # %.loopexit77
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end47:
	.size	ReportOutput, .Lfunc_end47-ReportOutput
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI47_0:
	.word	.LBB47_29-.LJTI47_0
	.word	.LBB47_30-.LJTI47_0
	.word	.LBB47_22-.LJTI47_0
	.word	.LBB47_32-.LJTI47_0
	.word	.LBB47_31-.LJTI47_0
	.word	.LBB47_28-.LJTI47_0
	.word	.LBB47_28-.LJTI47_0
	.word	.LBB47_25-.LJTI47_0
	.word	.LBB47_25-.LJTI47_0
	.word	.LBB47_25-.LJTI47_0
                                        # -- End function
	.text
	.globl	pathsearch                      # -- Begin function pathsearch
	.p2align	5
	.type	pathsearch,@function
pathsearch:                             # @pathsearch
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
	move	$s0, $a2
	move	$fp, $a1
	move	$s2, $a0
	ori	$a1, $zero, 47
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_5
# %bb.1:
	move	$s3, $a0
	ld.bu	$s4, $a0, 0
	st.b	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB48_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $s1
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB48_3:
	st.b	$s4, $s3, 0
.LBB48_4:                               # %.loopexit
	move	$a0, $s1
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
.LBB48_5:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.82)
	addi.d	$a2, $a2, %pc_lo12(.L.str.82)
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_11
# %bb.6:                                # %.preheader.preheader
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$s3, $a0, %pc_lo12(.L.str.80)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s5, $a0, %pc_lo12(.L.str.39)
	b	.LBB48_8
	.p2align	4, , 16
.LBB48_7:                               #   in Loop: Header=BB48_8 Depth=1
	ld.bu	$s6, $s4, 0
	st.b	$zero, $s4, 0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	st.b	$s6, $s4, 0
	sltui	$a0, $s6, 1
	addi.d	$a1, $s4, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s2, $a0, $a1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_4
.LBB48_8:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB48_4
# %bb.9:                                #   in Loop: Header=BB48_8 Depth=1
	ori	$a1, $zero, 58
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB48_7
# %bb.10:                               #   in Loop: Header=BB48_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s4, $s2, $a0
	b	.LBB48_7
.LBB48_11:
	move	$s1, $zero
	b	.LBB48_4
.Lfunc_end48:
	.size	pathsearch, .Lfunc_end48-pathsearch
                                        # -- End function
	.globl	compute_action                  # -- Begin function compute_action
	.p2align	5
	.type	compute_action,@function
compute_action:                         # @compute_action
# %bb.0:
	ld.w	$a2, $a1, 8
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB49_6
# %bb.1:
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI49_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI49_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB49_2:
	ld.d	$a0, $a1, 16
	ld.w	$a0, $a0, 16
	ret
.LBB49_3:
	ld.d	$a1, $a1, 16
	ld.w	$a1, $a1, 72
	ld.w	$a0, $a0, 16
	add.w	$a0, $a0, $a1
	ret
.LBB49_4:
	ld.w	$a1, $a0, 16
	ld.w	$a0, $a0, 20
	add.w	$a0, $a0, $a1
	ret
.LBB49_5:
	ld.w	$a1, $a0, 16
	ld.w	$a0, $a0, 20
	add.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 1
	ret
.LBB49_6:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end49:
	.size	compute_action, .Lfunc_end49-compute_action
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI49_0:
	.word	.LBB49_2-.LJTI49_0
	.word	.LBB49_5-.LJTI49_0
	.word	.LBB49_3-.LJTI49_0
	.word	.LBB49_4-.LJTI49_0
                                        # -- End function
	.text
	.globl	tplt_xfer                       # -- Begin function tplt_xfer
	.p2align	5
	.type	tplt_xfer,@function
tplt_xfer:                              # @tplt_xfer
# %bb.0:
	addi.d	$sp, $sp, -1104
	st.d	$ra, $sp, 1096                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1016                  # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$a2, $a1
	move	$s2, $a0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB50_20
# %bb.1:                                # %.lr.ph
	beqz	$s2, .LBB50_16
# %bb.2:
	addi.d	$s7, $sp, 16
	ori	$s8, $zero, 80
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$s3, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$s4, $a0, %pc_lo12(.L.str.84)
	b	.LBB50_4
	.p2align	4, , 16
.LBB50_3:                               # %.loopexit
                                        #   in Loop: Header=BB50_4 Depth=1
	add.d	$a0, $s7, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB50_20
.LBB50_4:                               # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_9 Depth 2
	ld.bu	$a0, $sp, 16
	ori	$a1, $zero, 37
	bne	$a0, $a1, .LBB50_6
# %bb.5:                                # %.lr.ph.split
                                        #   in Loop: Header=BB50_4 Depth=1
	ld.bu	$a1, $sp, 17
	ori	$a2, $zero, 37
	beq	$a1, $a2, .LBB50_20
.LBB50_6:                               # %.preheader
                                        #   in Loop: Header=BB50_4 Depth=1
	ld.w	$a1, $fp, 0
	move	$s6, $zero
	move	$s1, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 0
	b	.LBB50_9
	.p2align	4, , 16
.LBB50_7:                               #   in Loop: Header=BB50_9 Depth=2
	beqz	$a0, .LBB50_3
.LBB50_8:                               #   in Loop: Header=BB50_9 Depth=2
	addi.w	$s6, $s6, 1
	ldx.bu	$a0, $s6, $s7
.LBB50_9:                               #   Parent Loop BB50_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$a0, $s8, .LBB50_7
# %bb.10:                               #   in Loop: Header=BB50_9 Depth=2
	add.d	$s5, $s7, $s6
	ori	$a2, $zero, 5
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB50_8
# %bb.11:                               #   in Loop: Header=BB50_9 Depth=2
	beqz	$s6, .LBB50_13
# %bb.12:                               #   in Loop: Header=BB50_9 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s5, -1
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB50_8
.LBB50_13:                              #   in Loop: Header=BB50_9 Depth=2
	bge	$s1, $s6, .LBB50_15
# %bb.14:                               #   in Loop: Header=BB50_9 Depth=2
	sub.w	$a2, $s6, $s1
	add.d	$a3, $s7, $s1
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB50_15:                              #   in Loop: Header=BB50_9 Depth=2
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s6, 4
	addi.w	$s1, $s6, 5
	move	$s6, $a0
	b	.LBB50_8
.LBB50_16:                              # %.lr.ph.split.us.preheader
	ori	$s1, $zero, 37
	b	.LBB50_18
	.p2align	4, , 16
.LBB50_17:                              #   in Loop: Header=BB50_18 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB50_20
.LBB50_18:                              # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $sp, 16
	bne	$a0, $s1, .LBB50_17
# %bb.19:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB50_18 Depth=1
	ld.bu	$a0, $sp, 17
	bne	$a0, $s1, .LBB50_17
.LBB50_20:                              # %.critedge
	ld.d	$s8, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1096                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1104
	ret
.Lfunc_end50:
	.size	tplt_xfer, .Lfunc_end50-tplt_xfer
                                        # -- End function
	.globl	tplt_open                       # -- Begin function tplt_open
	.p2align	5
	.type	tplt_open,@function
tplt_open:                              # @tplt_open
# %bb.0:
	addi.d	$sp, $sp, -1040
	st.d	$ra, $sp, 1032                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1016                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 240
	ori	$a1, $zero, 46
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB51_2
# %bb.1:
	sub.w	$a2, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	addi.d	$a0, $sp, 16
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB51_3
.LBB51_2:
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB51_3:
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 4
	addi.d	$s0, $sp, 16
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB51_6
# %bb.4:
	pcalau12i	$a0, %pc_hi20(tplt_open.templatename)
	addi.d	$s0, $a0, %pc_lo12(tplt_open.templatename)
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB51_6
# %bb.5:
	ld.d	$a0, $fp, 240
	pcalau12i	$a1, %pc_hi20(tplt_open.templatename)
	addi.d	$a1, $a1, %pc_lo12(tplt_open.templatename)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(pathsearch)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB51_9
.LBB51_6:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB51_8
.LBB51_7:
	ld.d	$s0, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1040
	ret
.LBB51_8:
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	b	.LBB51_10
.LBB51_9:
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
.LBB51_10:                              # %.sink.split
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(tplt_open.templatename)
	addi.d	$a2, $a2, %pc_lo12(tplt_open.templatename)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 40
	b	.LBB51_7
.Lfunc_end51:
	.size	tplt_open, .Lfunc_end51-tplt_open
                                        # -- End function
	.globl	tplt_linedir                    # -- Begin function tplt_linedir
	.p2align	5
	.type	tplt_linedir,@function
tplt_linedir:                           # @tplt_linedir
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	ori	$a1, $zero, 47
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 92
	b	.LBB52_3
	.p2align	4, , 16
.LBB52_1:                               #   in Loop: Header=BB52_3 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
.LBB52_2:                               #   in Loop: Header=BB52_3 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
.LBB52_3:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 0
	beq	$a0, $s1, .LBB52_1
# %bb.4:                                #   in Loop: Header=BB52_3 Depth=1
	bnez	$a0, .LBB52_2
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end52:
	.size	tplt_linedir, .Lfunc_end52-tplt_linedir
                                        # -- End function
	.p2align	5                               # -- Begin function mybasename
	.type	mybasename,@function
mybasename:                             # @mybasename
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 47
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end53:
	.size	mybasename, .Lfunc_end53-mybasename
                                        # -- End function
	.globl	tplt_print                      # -- Begin function tplt_print
	.p2align	5
	.type	tplt_print,@function
tplt_print:                             # @tplt_print
# %bb.0:
	beqz	$a2, .LBB54_20
# %bb.1:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s3, $a3
	move	$s2, $a2
	move	$s1, $a1
	move	$s0, $a0
	ld.d	$s4, $a1, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB54_4
	.p2align	4, , 16
.LBB54_2:                               #   in Loop: Header=BB54_4 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB54_3:                               #   in Loop: Header=BB54_4 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB54_4:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB54_2
# %bb.5:                                #   in Loop: Header=BB54_4 Depth=1
	bnez	$a0, .LBB54_3
# %bb.6:                                # %tplt_linedir.exit
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	ori	$s3, $zero, 10
	b	.LBB54_9
	.p2align	4, , 16
.LBB54_7:                               #   in Loop: Header=BB54_9 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	ld.bu	$a0, $s2, 0
.LBB54_8:                               #   in Loop: Header=BB54_9 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
.LBB54_9:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	beq	$a0, $s3, .LBB54_7
# %bb.10:                               #   in Loop: Header=BB54_9 Depth=1
	bnez	$a0, .LBB54_8
# %bb.11:
	ld.bu	$a0, $s2, -1
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB54_13
# %bb.12:                               # %._crit_edge
	ld.w	$a0, $fp, 0
	b	.LBB54_14
.LBB54_13:
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
.LBB54_14:
	ld.d	$s1, $s1, 248
	addi.w	$s2, $a0, 2
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 92
	b	.LBB54_17
	.p2align	4, , 16
.LBB54_15:                              #   in Loop: Header=BB54_17 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
.LBB54_16:                              #   in Loop: Header=BB54_17 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
.LBB54_17:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s1, 0
	beq	$a0, $s2, .LBB54_15
# %bb.18:                               #   in Loop: Header=BB54_17 Depth=1
	bnez	$a0, .LBB54_16
# %bb.19:                               # %tplt_linedir.exit23
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $fp, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB54_20:
	ret
.Lfunc_end54:
	.size	tplt_print, .Lfunc_end54-tplt_print
                                        # -- End function
	.globl	emit_destructor_code            # -- Begin function emit_destructor_code
	.p2align	5
	.type	emit_destructor_code,@function
emit_destructor_code:                   # @emit_destructor_code
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
	move	$s2, $a1
	ld.w	$a1, $a1, 12
	move	$s1, $a3
	move	$s0, $a2
	move	$fp, $a0
	beqz	$a1, .LBB55_7
# %bb.1:
	ld.d	$s5, $s2, 56
	beqz	$s5, .LBB55_13
# %bb.2:
	ld.w	$s3, $s2, 64
	ld.d	$s4, $s0, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB55_5
	.p2align	4, , 16
.LBB55_3:                               #   in Loop: Header=BB55_5 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB55_4:                               #   in Loop: Header=BB55_5 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB55_5:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB55_3
# %bb.6:                                #   in Loop: Header=BB55_5 Depth=1
	bnez	$a0, .LBB55_4
	b	.LBB55_19
.LBB55_7:
	ld.d	$s5, $s0, 208
	beqz	$s5, .LBB55_31
# %bb.8:
	ld.w	$s3, $s0, 216
	ld.d	$s4, $s0, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB55_11
	.p2align	4, , 16
.LBB55_9:                               #   in Loop: Header=BB55_11 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB55_10:                              #   in Loop: Header=BB55_11 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB55_11:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB55_9
# %bb.12:                               #   in Loop: Header=BB55_11 Depth=1
	bnez	$a0, .LBB55_10
	b	.LBB55_19
.LBB55_13:
	ld.d	$s5, $s0, 224
	beqz	$s5, .LBB55_32
# %bb.14:
	ld.w	$s3, $s0, 232
	ld.d	$s4, $s0, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB55_17
	.p2align	4, , 16
.LBB55_15:                              #   in Loop: Header=BB55_17 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB55_16:                              #   in Loop: Header=BB55_17 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB55_17:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB55_15
# %bb.18:                               #   in Loop: Header=BB55_17 Depth=1
	bnez	$a0, .LBB55_16
.LBB55_19:                              # %.sink.split
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 123
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB55_20:
	ori	$s4, $zero, 36
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$s3, $a0, %pc_lo12(.L.str.92)
	move	$s6, $zero
	ld.bu	$a0, $s5, 0
	bne	$a0, $s4, .LBB55_23
	b	.LBB55_22
	.p2align	4, , 16
.LBB55_21:                              #   in Loop: Header=BB55_22 Depth=1
	ld.w	$a2, $s2, 80
	addi.d	$s5, $s5, 1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	ld.bu	$a0, $s5, 0
	bne	$a0, $s4, .LBB55_23
.LBB55_22:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s5, 1
	beq	$a1, $s4, .LBB55_21
	b	.LBB55_24
	.p2align	4, , 16
.LBB55_23:
	beqz	$a0, .LBB55_25
.LBB55_24:
	addi.d	$s5, $s5, 1
	addi.d	$a1, $a0, -10
	sltui	$a1, $a1, 1
	add.d	$s6, $s6, $a1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 0
	bne	$a0, $s4, .LBB55_23
	b	.LBB55_22
.LBB55_25:
	ld.w	$a0, $s1, 0
	add.d	$a0, $s6, $a0
	addi.d	$a0, $a0, 3
	st.w	$a0, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s1, 0
	ld.d	$s0, $s0, 248
	ori	$a1, $zero, 47
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 92
	b	.LBB55_28
	.p2align	4, , 16
.LBB55_26:                              #   in Loop: Header=BB55_28 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
.LBB55_27:                              #   in Loop: Header=BB55_28 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
.LBB55_28:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 0
	beq	$a0, $s1, .LBB55_26
# %bb.29:                               #   in Loop: Header=BB55_28 Depth=1
	bnez	$a0, .LBB55_27
# %bb.30:                               # %tplt_linedir.exit58
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB55_31:
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
.LBB55_32:
	move	$s5, $zero
	b	.LBB55_20
.Lfunc_end55:
	.size	emit_destructor_code, .Lfunc_end55-emit_destructor_code
                                        # -- End function
	.globl	has_destructor                  # -- Begin function has_destructor
	.p2align	5
	.type	has_destructor,@function
has_destructor:                         # @has_destructor
# %bb.0:
	ld.w	$a2, $a0, 12
	beqz	$a2, .LBB56_3
# %bb.1:
	ld.d	$a2, $a1, 224
	ori	$a1, $zero, 1
	beqz	$a2, .LBB56_4
# %bb.2:
	move	$a0, $a1
	ret
.LBB56_3:
	ld.d	$a0, $a1, 208
	sltu	$a1, $zero, $a0
	move	$a0, $a1
	ret
.LBB56_4:
	ld.d	$a0, $a0, 56
	sltu	$a1, $zero, $a0
	move	$a0, $a1
	ret
.Lfunc_end56:
	.size	has_destructor, .Lfunc_end56-has_destructor
                                        # -- End function
	.globl	append_str                      # -- Begin function append_str
	.p2align	5
	.type	append_str,@function
append_str:                             # @append_str
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB57_16
# %bb.1:
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$s5, %pc_hi20(append_str.used)
	bgtz	$a1, .LBB57_5
# %bb.2:
	move	$fp, $a2
	bgez	$s0, .LBB57_4
# %bb.3:
	ld.w	$a0, $s5, %pc_lo12(append_str.used)
	add.d	$a0, $a0, $s0
	st.w	$a0, $s5, %pc_lo12(append_str.used)
.LBB57_4:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a2, $fp
.LBB57_5:
	ld.w	$fp, $s5, %pc_lo12(append_str.used)
	pcalau12i	$a3, %pc_hi20(append_str.alloced)
	ld.w	$a0, $a3, %pc_lo12(append_str.alloced)
	addi.w	$s3, $s0, 0
	add.d	$a1, $s3, $fp
	addi.d	$a1, $a1, 80
	bgeu	$a1, $a0, .LBB57_17
# %bb.6:                                # %thread-pre-split
	pcalau12i	$a0, %pc_hi20(append_str.z)
	ld.d	$s2, $a0, %pc_lo12(append_str.z)
	beqz	$s2, .LBB57_18
.LBB57_7:                               # %.preheader
	blez	$s3, .LBB57_15
# %bb.8:                                # %.lr.ph.preheader
	ori	$s6, $zero, 1
	ori	$s7, $zero, 37
	ori	$a5, $zero, 100
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$s3, $a0, %pc_lo12(.L.str.94)
	pcalau12i	$fp, %pc_hi20(append_str.z)
	b	.LBB57_10
	.p2align	4, , 16
.LBB57_9:                               #   in Loop: Header=BB57_10 Depth=1
	ld.w	$a3, $s5, %pc_lo12(append_str.used)
	addi.w	$s0, $s0, -1
	addi.d	$a4, $a3, 1
	st.w	$a4, $s5, %pc_lo12(append_str.used)
	stx.b	$a1, $s2, $a3
	move	$s1, $a0
	blez	$s0, .LBB57_14
.LBB57_10:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s1, 0
	addi.w	$a3, $s0, 0
	addi.d	$a0, $s1, 1
	beq	$a3, $s6, .LBB57_9
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB57_10 Depth=1
	bne	$a1, $s7, .LBB57_9
# %bb.12:                               #   in Loop: Header=BB57_10 Depth=1
	ld.bu	$a3, $a0, 0
	bne	$a3, $a5, .LBB57_9
# %bb.13:                               #   in Loop: Header=BB57_10 Depth=1
	addi.d	$a0, $sp, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, %pc_lo12(append_str.z)
	ld.w	$s8, $s5, %pc_lo12(append_str.used)
	add.d	$s4, $s2, $s8
	addi.d	$a1, $sp, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 100
	add.d	$a0, $s8, $a0
	st.w	$a0, $s5, %pc_lo12(append_str.used)
	addi.d	$a0, $s1, 2
	addi.w	$s0, $s0, -2
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$s1, $a0
	bgtz	$s0, .LBB57_10
.LBB57_14:                              # %._crit_edge.loopexit
	ld.w	$fp, $s5, %pc_lo12(append_str.used)
.LBB57_15:                              # %._crit_edge
	stx.b	$zero, $s2, $fp
	b	.LBB57_19
.LBB57_16:
	pcalau12i	$a0, %pc_hi20(append_str.z)
	ld.d	$s2, $a0, %pc_lo12(append_str.z)
	pcalau12i	$a0, %pc_hi20(append_str.used)
	st.w	$zero, $a0, %pc_lo12(append_str.used)
	b	.LBB57_19
.LBB57_17:
	pcalau12i	$s4, %pc_hi20(append_str.z)
	ld.d	$a0, $s4, %pc_lo12(append_str.z)
	addi.w	$a1, $a1, 200
	st.w	$a1, $a3, %pc_lo12(append_str.alloced)
	move	$s2, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	move	$s2, $a0
	st.d	$a0, $s4, %pc_lo12(append_str.z)
	bnez	$s2, .LBB57_7
.LBB57_18:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s2, $a0, %pc_lo12(.L.str.39)
.LBB57_19:
	move	$a0, $s2
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end57:
	.size	append_str, .Lfunc_end57-append_str
                                        # -- End function
	.globl	translate_code                  # -- Begin function translate_code
	.p2align	5
	.type	translate_code,@function
translate_code:                         # @translate_code
# %bb.0:
	addi.d	$sp, $sp, -1136
	st.d	$ra, $sp, 1128                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1048                  # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a2, $a1, 24
	move	$s0, $a0
	blez	$a2, .LBB58_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB58_2:                               # %._crit_edge
	ld.d	$s7, $fp, 56
	bnez	$s7, .LBB58_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$s7, $a0, %pc_lo12(.L.str.54)
	ld.w	$a0, $fp, 20
	st.d	$s7, $fp, 56
	st.w	$a0, $fp, 48
.LBB58_4:
	pcalau12i	$a0, %pc_hi20(append_str.used)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(append_str.used)
	ld.bu	$s2, $s7, 0
	beqz	$s2, .LBB58_32
# %bb.5:                                # %.lr.ph135
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$s6, $zero, 95
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB58_9
.LBB58_6:                               #   in Loop: Header=BB58_9 Depth=1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
.LBB58_7:                               # %.loopexit
                                        #   in Loop: Header=BB58_9 Depth=1
	st.b	$s5, $s3, 0
.LBB58_8:                               #   in Loop: Header=BB58_9 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s7
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
	ld.bu	$s2, $s7, 1
	addi.d	$s7, $s7, 1
	beqz	$s2, .LBB58_31
.LBB58_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_14 Depth 2
                                        #     Child Loop BB58_21 Depth 2
	ld.d	$a0, $s1, 0
	ext.w.b	$a1, $s2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 1024
	beqz	$a1, .LBB58_8
# %bb.10:                               #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a1, $fp, 56
	beq	$s7, $a1, .LBB58_13
# %bb.11:                               #   in Loop: Header=BB58_9 Depth=1
	ld.b	$a1, $s7, -1
	beq	$a1, $s6, .LBB58_8
# %bb.12:                               #   in Loop: Header=BB58_9 Depth=1
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 8
	bnez	$a1, .LBB58_8
.LBB58_13:                              # %.critedge.preheader
                                        #   in Loop: Header=BB58_9 Depth=1
	move	$s3, $s7
	.p2align	4, , 16
.LBB58_14:                              # %.critedge
                                        #   Parent Loop BB58_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $s3, 1
	andi	$s5, $a1, 255
	addi.d	$s3, $s3, 1
	beq	$s5, $s6, .LBB58_14
# %bb.15:                               # %.critedge
                                        #   in Loop: Header=BB58_14 Depth=2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 8
	bnez	$a1, .LBB58_14
# %bb.16:                               #   in Loop: Header=BB58_9 Depth=1
	st.b	$zero, $s3, 0
	ld.d	$a1, $fp, 8
	beqz	$a1, .LBB58_18
# %bb.17:                               #   in Loop: Header=BB58_9 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB58_26
.LBB58_18:                              #   in Loop: Header=BB58_9 Depth=1
	ld.w	$a0, $fp, 24
	blez	$a0, .LBB58_7
# %bb.19:                               # %.lr.ph130
                                        #   in Loop: Header=BB58_9 Depth=1
	move	$s8, $zero
	ld.d	$s0, $fp, 40
	addi.d	$s4, $a0, -1
	slli.d	$s1, $a0, 3
	addi.d	$s2, $sp, 48
	b	.LBB58_21
	.p2align	4, , 16
.LBB58_20:                              #   in Loop: Header=BB58_21 Depth=2
	addi.d	$s4, $s4, -1
	addi.d	$s8, $s8, 8
	addi.d	$s2, $s2, 1
	beq	$s1, $s8, .LBB58_6
.LBB58_21:                              #   Parent Loop BB58_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a1, $s0, $s8
	beqz	$a1, .LBB58_20
# %bb.22:                               #   in Loop: Header=BB58_21 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB58_20
# %bb.23:                               #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a0, $fp, 56
	beq	$s7, $a0, .LBB58_27
# %bb.24:                               #   in Loop: Header=BB58_9 Depth=1
	ld.bu	$a0, $s7, -1
	ori	$a1, $zero, 64
	bne	$a0, $a1, .LBB58_27
# %bb.25:                               #   in Loop: Header=BB58_9 Depth=1
	sub.w	$a2, $zero, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	addi.w	$a1, $zero, -1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	b	.LBB58_30
.LBB58_26:                              #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a2, $a0, 80
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s7, $s3
	b	.LBB58_7
.LBB58_27:                              #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$a0, $a0, $s8
	ld.w	$a1, $a0, 12
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB58_29
# %bb.28:                               #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a0, $a0, 88
	ld.d	$a0, $a0, 0
.LBB58_29:                              #   in Loop: Header=BB58_9 Depth=1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a0, 80
	sub.w	$a2, $zero, $s4
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
.LBB58_30:                              #   in Loop: Header=BB58_9 Depth=1
	ori	$a0, $zero, 1
	st.b	$a0, $s2, 0
	move	$s7, $s3
	b	.LBB58_7
.LBB58_31:                              # %._crit_edge136.loopexit
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	ld.d	$a3, $fp, 8
	bnez	$a3, .LBB58_33
	b	.LBB58_35
.LBB58_32:
	move	$a0, $zero
	ld.d	$a3, $fp, 8
	beqz	$a3, .LBB58_35
.LBB58_33:                              # %._crit_edge136
	bnez	$a0, .LBB58_35
# %bb.34:
	ld.d	$a2, $fp, 0
	ld.d	$a0, $s0, 240
	ld.w	$a1, $fp, 20
	ld.d	$a4, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.98)
	addi.d	$a2, $a2, %pc_lo12(.L.str.98)
	move	$a5, $a3
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 40
.LBB58_35:
	ld.w	$a0, $fp, 24
	blez	$a0, .LBB58_46
# %bb.36:                               # %.lr.ph139
	addi.d	$s3, $s0, 208
	ori	$s5, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.100)
	addi.d	$s1, $a1, %pc_lo12(.L.str.100)
	addi.d	$s6, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.99)
	addi.d	$s2, $a1, %pc_lo12(.L.str.99)
	move	$s7, $zero
	move	$s8, $zero
	b	.LBB58_41
.LBB58_37:                              #   in Loop: Header=BB58_41 Depth=1
	addi.d	$a2, $a1, 56
.LBB58_38:                              # %has_destructor.exit
                                        #   in Loop: Header=BB58_41 Depth=1
	ld.d	$a2, $a2, 0
	beqz	$a2, .LBB58_40
.LBB58_39:                              # %has_destructor.exit.thread
                                        #   in Loop: Header=BB58_41 Depth=1
	ld.w	$a2, $a1, 8
	sub.w	$a3, $s5, $a0
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
.LBB58_40:                              #   in Loop: Header=BB58_41 Depth=1
	ld.w	$a0, $fp, 24
	addi.d	$s8, $s8, 1
	addi.d	$s5, $s5, 1
	addi.d	$s7, $s7, 8
	bge	$s8, $a0, .LBB58_46
.LBB58_41:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 40
	ldx.d	$a3, $a1, $s7
	beqz	$a3, .LBB58_44
# %bb.42:                               #   in Loop: Header=BB58_41 Depth=1
	ldx.bu	$a0, $s8, $s6
	bnez	$a0, .LBB58_40
# %bb.43:                               #   in Loop: Header=BB58_41 Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$a2, $a0, $s7
	ld.d	$a0, $s0, 240
	ld.w	$a1, $fp, 20
	ld.d	$a4, $a2, 0
	move	$a2, $s2
	move	$a5, $a3
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 40
	b	.LBB58_40
	.p2align	4, , 16
.LBB58_44:                              #   in Loop: Header=BB58_41 Depth=1
	ld.d	$a1, $fp, 32
	ldx.d	$a1, $a1, $s7
	ld.w	$a3, $a1, 12
	move	$a2, $s3
	beqz	$a3, .LBB58_38
# %bb.45:                               #   in Loop: Header=BB58_41 Depth=1
	ld.d	$a2, $s0, 224
	bnez	$a2, .LBB58_39
	b	.LBB58_37
.LBB58_46:                              # %._crit_edge140
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB58_48
# %bb.47:
	pcalau12i	$a0, %pc_hi20(append_str.z)
	ld.d	$a0, $a0, %pc_lo12(append_str.z)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$zero, $a1, %pc_lo12(append_str.used)
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$a2, $a2, %pc_lo12(.L.str.39)
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(Strsafe)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
.LBB58_48:
	ld.d	$s8, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1136
	ret
.Lfunc_end58:
	.size	translate_code, .Lfunc_end58-translate_code
                                        # -- End function
	.globl	emit_code                       # -- Begin function emit_code
	.p2align	5
	.type	emit_code,@function
emit_code:                              # @emit_code
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	ld.d	$a1, $a1, 56
	beqz	$a1, .LBB59_17
# %bb.1:
	move	$s1, $a3
	move	$s0, $a2
	move	$fp, $a0
	ld.w	$s3, $s2, 48
	ld.d	$s4, $a2, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB59_4
	.p2align	4, , 16
.LBB59_2:                               #   in Loop: Header=BB59_4 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB59_3:                               #   in Loop: Header=BB59_4 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB59_4:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB59_2
# %bb.5:                                #   in Loop: Header=BB59_4 Depth=1
	bnez	$a0, .LBB59_3
# %bb.6:                                # %tplt_linedir.exit
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 56
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 56
	move	$a1, $zero
	ori	$a2, $zero, 10
	b	.LBB59_9
	.p2align	4, , 16
.LBB59_7:                               #   in Loop: Header=BB59_9 Depth=1
	addi.d	$a1, $a1, 1
.LBB59_8:                               #   in Loop: Header=BB59_9 Depth=1
	addi.d	$a0, $a0, 1
.LBB59_9:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	beq	$a3, $a2, .LBB59_7
# %bb.10:                               #   in Loop: Header=BB59_9 Depth=1
	bnez	$a3, .LBB59_8
# %bb.11:
	ld.w	$a0, $s1, 0
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 3
	st.w	$a0, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s1, 0
	ld.d	$s0, $s0, 248
	ori	$a1, $zero, 47
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 92
	b	.LBB59_14
	.p2align	4, , 16
.LBB59_12:                              #   in Loop: Header=BB59_14 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
.LBB59_13:                              #   in Loop: Header=BB59_14 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
.LBB59_14:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 0
	beq	$a0, $s1, .LBB59_12
# %bb.15:                               #   in Loop: Header=BB59_14 Depth=1
	bnez	$a0, .LBB59_13
# %bb.16:                               # %tplt_linedir.exit22
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB59_17:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end59:
	.size	emit_code, .Lfunc_end59-emit_code
                                        # -- End function
	.globl	print_stack_union               # -- Begin function print_stack_union
	.p2align	5
	.type	print_stack_union,@function
print_stack_union:                      # @print_stack_union
# %bb.0:                                # %._crit_edge
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $a1
	ld.w	$s7, $a1, 24
	move	$s5, $a3
	move	$fp, $a2
	move	$s0, $a0
	slli.w	$s3, $s7, 1
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 88
	move	$s1, $a0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	beqz	$a1, .LBB60_2
# %bb.1:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	bgtz	$s7, .LBB60_3
	b	.LBB60_7
.LBB60_2:
	move	$s4, $zero
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	blez	$s7, .LBB60_7
.LBB60_3:                               # %.lr.ph179
	ld.d	$fp, $s2, 32
	move	$s0, $s7
	b	.LBB60_5
	.p2align	4, , 16
.LBB60_4:                               #   in Loop: Header=BB60_5 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	beqz	$s0, .LBB60_7
.LBB60_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB60_4
# %bb.6:                                #   in Loop: Header=BB60_5 Depth=1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	addi.w	$a1, $s4, 0
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s4, $a1, $a0
	b	.LBB60_4
.LBB60_7:                               # %._crit_edge180
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $s4, 1
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB60_52
# %bb.8:                                # %._crit_edge180
	move	$s4, $a0
	beqz	$a0, .LBB60_52
# %bb.9:                                # %.preheader171
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	blez	$s7, .LBB60_38
# %bb.10:                               # %.lr.ph205
	move	$s8, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $a0, 32
	ld.d	$s5, $a0, 48
	ori	$a3, $s3, 1
	addi.d	$a0, $s4, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ori	$s6, $zero, 53
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	b	.LBB60_13
	.p2align	4, , 16
.LBB60_11:                              #   in Loop: Header=BB60_13 Depth=1
	st.w	$zero, $s0, 80
.LBB60_12:                              #   in Loop: Header=BB60_13 Depth=1
	addi.d	$s8, $s8, 1
	beq	$s8, $s7, .LBB60_38
.LBB60_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_17 Depth 2
                                        #     Child Loop BB60_20 Depth 2
                                        #     Child Loop BB60_22 Depth 2
                                        #     Child Loop BB60_27 Depth 2
                                        #     Child Loop BB60_33 Depth 2
	slli.d	$a0, $s8, 3
	ldx.d	$s0, $fp, $a0
	beq	$s0, $s5, .LBB60_29
# %bb.14:                               #   in Loop: Header=BB60_13 Depth=1
	ld.w	$a0, $s0, 12
	bne	$a0, $s2, .LBB60_11
# %bb.15:                               #   in Loop: Header=BB60_13 Depth=1
	ld.d	$a0, $s0, 72
	or	$a1, $a2, $a0
	beqz	$a1, .LBB60_11
# %bb.16:                               # %.preheader170
                                        #   in Loop: Header=BB60_13 Depth=1
	sltu	$a1, $zero, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s2, $a0, $a2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$a3, $s2, -1
	addi.d	$a1, $s2, 1
	.p2align	4, , 16
.LBB60_17:                              #   Parent Loop BB60_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a3, 1
	slli.d	$a2, $a4, 1
	ldx.hu	$a5, $a0, $a2
	move	$a2, $a1
	addi.d	$a3, $a3, 1
	slli.d	$a5, $a5, 50
	addi.d	$a1, $a1, 1
	bltz	$a5, .LBB60_17
# %bb.18:                               # %.preheader169
                                        #   in Loop: Header=BB60_13 Depth=1
	andi	$a3, $a4, 255
	ori	$s2, $zero, 1
	beqz	$a3, .LBB60_24
# %bb.19:                               # %.lr.ph184.preheader
                                        #   in Loop: Header=BB60_13 Depth=1
	move	$a1, $zero
	move	$a4, $s4
	.p2align	4, , 16
.LBB60_20:                              # %.lr.ph184
                                        #   Parent Loop BB60_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $a4, 0
	ld.bu	$a3, $a2, 0
	addi.d	$a4, $a4, 1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 1
	bnez	$a3, .LBB60_20
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB60_13 Depth=1
	blez	$a1, .LBB60_25
	.p2align	4, , 16
.LBB60_22:                              # %.lr.ph187
                                        #   Parent Loop BB60_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a1
	add.d	$a1, $s4, $a1
	ld.b	$a1, $a1, -1
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bgez	$a1, .LBB60_30
# %bb.23:                               #   in Loop: Header=BB60_22 Depth=2
	addi.w	$a1, $a2, -1
	blt	$s2, $a2, .LBB60_22
.LBB60_24:                              #   in Loop: Header=BB60_13 Depth=1
	move	$a1, $zero
.LBB60_25:                              # %.critedge
                                        #   in Loop: Header=BB60_13 Depth=1
	stx.b	$zero, $s4, $a1
	ld.bu	$a0, $s4, 0
	beqz	$a0, .LBB60_31
.LBB60_26:                              # %.lr.ph194.preheader
                                        #   in Loop: Header=BB60_13 Depth=1
	move	$a1, $zero
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB60_27:                              # %.lr.ph194
                                        #   Parent Loop BB60_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a3, $a0
	ld.bu	$a0, $a2, 0
	mul.d	$a1, $a1, $s6
	add.w	$a1, $a1, $a3
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB60_27
# %bb.28:                               # %._crit_edge195.loopexit
                                        #   in Loop: Header=BB60_13 Depth=1
	bstrpick.d	$a0, $a1, 30, 0
	b	.LBB60_32
	.p2align	4, , 16
.LBB60_29:                              #   in Loop: Header=BB60_13 Depth=1
	st.w	$a3, $s0, 80
	b	.LBB60_12
.LBB60_30:                              #   in Loop: Header=BB60_13 Depth=1
	move	$a1, $a2
	stx.b	$zero, $s4, $a1
	ld.bu	$a0, $s4, 0
	bnez	$a0, .LBB60_26
.LBB60_31:                              #   in Loop: Header=BB60_13 Depth=1
	move	$a0, $zero
.LBB60_32:                              # %._crit_edge195
                                        #   in Loop: Header=BB60_13 Depth=1
	mod.wu	$s7, $a0, $s3
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $s1, $a0
	beqz	$a0, .LBB60_35
	.p2align	4, , 16
.LBB60_33:                              # %.lr.ph200
                                        #   Parent Loop BB60_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s7, 1
	beqz	$a0, .LBB60_37
# %bb.34:                               #   in Loop: Header=BB60_33 Depth=2
	slt	$a0, $a1, $s3
	maskeqz	$s7, $a1, $a0
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $s1, $a0
	bnez	$a0, .LBB60_33
.LBB60_35:                              #   in Loop: Header=BB60_13 Depth=1
	alsl.d	$s2, $s7, $s1, 3
	addi.d	$a0, $s7, 1
	st.w	$a0, $s0, 80
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB60_52
# %bb.36:                               #   in Loop: Header=BB60_13 Depth=1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ori	$s2, $zero, 1
	b	.LBB60_12
.LBB60_37:                              #   in Loop: Header=BB60_13 Depth=1
	st.w	$a1, $s0, 80
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB60_12
.LBB60_38:                              # %._crit_edge206
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 64
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.83)
	addi.d	$a2, $a2, %pc_lo12(.L.str.83)
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.w	$fp, $s7, 0
	maskeqz	$a1, $a2, $a1
	or	$s6, $a1, $a0
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	beqz	$s2, .LBB60_40
# %bb.39:
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	b	.LBB60_41
.LBB60_40:
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
.LBB60_41:
	ld.d	$a0, $s0, 80
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.105)
	addi.d	$a2, $a2, %pc_lo12(.L.str.105)
	maskeqz	$a1, $a2, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	move	$a0, $s8
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB60_43
# %bb.42:
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 2
	b	.LBB60_44
.LBB60_43:
	addi.d	$fp, $fp, 1
.LBB60_44:
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	ori	$s5, $zero, 1
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	move	$a0, $s8
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blez	$a0, .LBB60_49
# %bb.45:                               # %.lr.ph210.preheader
	slt	$a0, $s5, $s3
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$s0, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$s3, $a0, %pc_lo12(.L.str.109)
	move	$s2, $s1
	b	.LBB60_47
	.p2align	4, , 16
.LBB60_46:                              # %.lr.ph210._crit_edge
                                        #   in Loop: Header=BB60_47 Depth=1
	addi.d	$s0, $s0, -1
	addi.w	$s5, $s5, 1
	addi.d	$s2, $s2, 8
	beqz	$s0, .LBB60_49
.LBB60_47:                              # %.lr.ph210
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $s2, 0
	beqz	$s6, .LBB60_46
# %bb.48:                               #   in Loop: Header=BB60_47 Depth=1
	move	$a0, $s8
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB60_46
.LBB60_49:                              # %._crit_edge211
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	ld.w	$a1, $a0, 52
	beqz	$a1, .LBB60_51
# %bb.50:
	ld.w	$a2, $a0, 80
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a1, $a0, %pc_lo12(.L.str.110)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
.LBB60_51:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1
	st.w	$a0, $s7, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB60_52:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end60:
	.size	print_stack_union, .Lfunc_end60-print_stack_union
                                        # -- End function
	.globl	ReportTable                     # -- Begin function ReportTable
	.p2align	5
	.type	ReportTable,@function
ReportTable:                            # @ReportTable
# %bb.0:
	addi.d	$sp, $sp, -1200
	st.d	$ra, $sp, 1192                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1144                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1112                  # 8-byte Folded Spill
	move	$s2, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(tplt_open)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB61_235
# %bb.1:
	move	$s6, $a0
	ld.d	$a0, $fp, 248
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	beqz	$a0, .LBB61_3
# %bb.2:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
.LBB61_3:
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a1, $a0, %pc_lo12(.L.str.112)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $a0
	st.d	$a0, $s7, 248
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s1, $a0, 0
	beqz	$s1, .LBB61_237
# %bb.4:                                # %file_open.exit
	ld.d	$a0, $s7, 64
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 108
	addi.d	$a3, $sp, 108
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, 112
	ld.w	$a3, $s7, 120
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	beqz	$s2, .LBB61_9
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 28
	ld.w	$fp, $sp, 108
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB61_10
# %bb.6:                                # %.lr.ph
	ld.d	$a0, $s7, 256
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$a2, $a2, %pc_lo12(.L.str.39)
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	ori	$s0, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$s5, $a0, %pc_lo12(.L.str.115)
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB61_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 32
	ldx.d	$a0, $a0, $s0
	ld.d	$a3, $a0, 0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $s7, 28
	addi.d	$s6, $s6, 1
	addi.w	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	blt	$s6, $a0, .LBB61_7
# %bb.8:                                # %._crit_edge.loopexit
	add.d	$fp, $fp, $s3
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	b	.LBB61_11
.LBB61_9:                               # %.critedge623
	ld.d	$a0, $s7, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	b	.LBB61_12
.LBB61_10:
	addi.d	$fp, $fp, 1
.LBB61_11:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1
	st.w	$a0, $sp, 108
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
.LBB61_12:                              # %minimum_size_type.exit
	ld.d	$a0, $s7, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 24
	addi.w	$a1, $a0, 5
	slti	$a0, $a0, 251
	lu12i.w	$a2, 15
	ori	$s0, $a2, 4095
	sltu	$a1, $a1, $s0
	pcalau12i	$a2, %pc_hi20(.L.str.228)
	addi.d	$s3, $a2, %pc_lo12(.L.str.228)
	masknez	$a2, $s3, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.227)
	addi.d	$s4, $a3, %pc_lo12(.L.str.227)
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.226)
	addi.d	$s5, $a2, %pc_lo12(.L.str.226)
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 24
	ld.w	$fp, $sp, 108
	addi.w	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 16
	ld.w	$a1, $s7, 20
	add.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 5
	slti	$a0, $a0, 251
	sltu	$a1, $a1, $s0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 56
	addi.d	$a1, $fp, 3
	st.w	$a1, $sp, 108
	beqz	$a0, .LBB61_14
# %bb.13:
	ld.w	$a2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $fp, 4
	st.w	$a0, $sp, 108
.LBB61_14:
	addi.d	$a2, $sp, 108
	move	$a0, $s1
	move	$a1, $s7
	move	$a3, $s2
	pcaddu18i	$ra, %call36(print_stack_union)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, 104
	ld.w	$s0, $sp, 108
	beqz	$a2, .LBB61_16
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB61_17
.LBB61_16:
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB61_17:
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s0, 3
	st.w	$fp, $sp, 108
	beqz	$s2, .LBB61_19
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s0, 4
	st.w	$fp, $sp, 108
.LBB61_19:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 64
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.83)
	addi.d	$a2, $a2, %pc_lo12(.L.str.83)
	ld.d	$s4, $a3, 72
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	beqz	$s4, .LBB61_26
# %bb.20:
	ld.bu	$a0, $s4, 0
	beqz	$a0, .LBB61_26
# %bb.21:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s0, $a0, 0
	blez	$s0, .LBB61_32
# %bb.22:                               # %.lr.ph688
	move	$s5, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	move	$s0, $s5
	.p2align	4, , 16
.LBB61_23:                              # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $s0, 0
	add.d	$a3, $s4, $a2
	ld.b	$a3, $a3, -1
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a3, $a3, 50
	bgez	$a3, .LBB61_28
# %bb.24:                               #   in Loop: Header=BB61_23 Depth=1
	addi.d	$s0, $s0, -1
	blt	$a1, $a2, .LBB61_23
.LBB61_25:
	move	$s0, $zero
	b	.LBB61_32
.LBB61_26:
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a1, $a0, %pc_lo12(.L.str.127)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a1, $a0, %pc_lo12(.L.str.129)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a1, $a0, %pc_lo12(.L.str.130)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB61_33
.LBB61_27:
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 5
	b	.LBB61_34
.LBB61_28:                              # %.lr.ph692
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 95
	ori	$a2, $zero, 1
	b	.LBB61_30
	.p2align	4, , 16
.LBB61_29:                              # %.critedge4
                                        #   in Loop: Header=BB61_30 Depth=1
	addi.d	$s0, $s0, -1
	bge	$a2, $a3, .LBB61_25
.LBB61_30:                              # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $s0, 0
	add.d	$a4, $s4, $a3
	ld.b	$a4, $a4, -1
	beq	$a4, $a1, .LBB61_29
# %bb.31:                               #   in Loop: Header=BB61_30 Depth=1
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a0, $a4
	andi	$a4, $a4, 8
	bnez	$a4, .LBB61_29
.LBB61_32:                              # %.critedge2
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $s1
	move	$a2, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $s4, 72
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 72
	addi.w	$s0, $s0, 0
	add.d	$a4, $a3, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 72
	add.d	$a3, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a1, $a0, %pc_lo12(.L.str.126)
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB61_27
.LBB61_33:
	addi.d	$fp, $fp, 4
.LBB61_34:
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $s0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a1, $a0, %pc_lo12(.L.str.131)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 20
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	ld.d	$a0, $s0, 48
	ld.w	$a1, $a0, 52
	addi.d	$s0, $fp, 2
	st.w	$s0, $sp, 108
	beqz	$a1, .LBB61_36
# %bb.35:
	ld.w	$a2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	ld.w	$a2, $a0, 80
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s0, $fp, 4
	st.w	$s0, $sp, 108
.LBB61_36:
	ld.w	$a0, $a2, 276
	beqz	$a0, .LBB61_38
# %bb.37:
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $s0, 1
	st.w	$a0, $sp, 108
.LBB61_38:
	ld.d	$a0, $a2, 64
	move	$fp, $a2
	addi.d	$a3, $sp, 108
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.w	$fp, $fp, 16
	slli.w	$s2, $fp, 1
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	beqz	$a0, .LBB61_238
# %bb.39:                               # %.preheader681
	blez	$fp, .LBB61_42
# %bb.40:                               # %.lr.ph697
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB61_41:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a3, 32
	st.d	$a3, $a1, -16
	st.w	$a2, $a1, -8
	ld.w	$a5, $a3, 36
	st.w	$a4, $a1, -4
	st.d	$a3, $a1, 0
	st.w	$zero, $a1, 8
	st.w	$a5, $a1, 12
	addi.d	$fp, $fp, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 32
	bnez	$fp, .LBB61_41
.LBB61_42:                              # %._crit_edge698
	pcalau12i	$a0, %pc_hi20(axset_compare)
	addi.d	$a3, $a0, %pc_lo12(axset_compare)
	ori	$a2, $zero, 16
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB61_239
# %bb.43:                               # %acttab_alloc.exit.preheader
	move	$s5, $a0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 16
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	blez	$a0, .LBB61_72
# %bb.44:                               # %.lr.ph716
	ori	$s3, $zero, 3
	pcalau12i	$a0, %pc_hi20(.LJTI61_1)
	addi.d	$s7, $a0, %pc_lo12(.LJTI61_1)
	move	$s8, $zero
	move	$s2, $zero
	move	$s4, $zero
	move	$s6, $zero
	move	$s0, $zero
	b	.LBB61_47
	.p2align	4, , 16
.LBB61_45:                              # %._crit_edge704
                                        #   in Loop: Header=BB61_47 Depth=1
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(acttab_insert)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 40
	slt	$a1, $a0, $s2
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$s2, $a1, $a2
	slt	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$s4, $a0, $a2
.LBB61_46:                              # %acttab_alloc.exit
                                        #   in Loop: Header=BB61_47 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 16
	addi.d	$s8, $s8, 1
	slli.w	$a0, $a0, 1
	bge	$s8, $a0, .LBB61_71
.LBB61_47:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_51 Depth 2
                                        #     Child Loop BB61_62 Depth 2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 4
	ld.w	$a1, $a0, 12
	blez	$a1, .LBB61_71
# %bb.48:                               #   in Loop: Header=BB61_47 Depth=1
	ld.d	$fp, $a0, 0
	ld.w	$a0, $a0, 8
	ld.d	$s5, $fp, 24
	beqz	$a0, .LBB61_59
# %bb.49:                               # %.preheader680
                                        #   in Loop: Header=BB61_47 Depth=1
	bnez	$s5, .LBB61_51
	b	.LBB61_45
	.p2align	4, , 16
.LBB61_50:                              # %compute_action.exit.thread
                                        #   in Loop: Header=BB61_51 Depth=2
	ld.d	$s5, $s5, 24
	beqz	$s5, .LBB61_45
.LBB61_51:                              # %.lr.ph703
                                        #   Parent Loop BB61_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a3, 28
	bge	$a1, $a0, .LBB61_50
# %bb.52:                               #   in Loop: Header=BB61_51 Depth=2
	ld.w	$a0, $s5, 8
	bltu	$s3, $a0, .LBB61_50
# %bb.53:                               #   in Loop: Header=BB61_51 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI61_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI61_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB61_54:                              #   in Loop: Header=BB61_51 Depth=2
	ld.d	$a0, $s5, 16
	ld.w	$a2, $a0, 16
	bgez	$a2, .LBB61_58
	b	.LBB61_50
.LBB61_55:                              #   in Loop: Header=BB61_51 Depth=2
	ld.d	$a0, $s5, 16
	ld.w	$a0, $a0, 72
	ld.w	$a2, $a3, 16
	add.w	$a2, $a2, $a0
	bgez	$a2, .LBB61_58
	b	.LBB61_50
.LBB61_56:                              #   in Loop: Header=BB61_51 Depth=2
	ld.w	$a0, $a3, 16
	ld.w	$a2, $a3, 20
	add.w	$a2, $a2, $a0
	bgez	$a2, .LBB61_58
	b	.LBB61_50
.LBB61_57:                              #   in Loop: Header=BB61_51 Depth=2
	ld.w	$a0, $a3, 16
	ld.w	$a2, $a3, 20
	add.d	$a0, $a0, $a2
	addi.w	$a2, $a0, 1
	bltz	$a2, .LBB61_50
.LBB61_58:                              #   in Loop: Header=BB61_51 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(acttab_action)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_50
	.p2align	4, , 16
.LBB61_59:                              # %.preheader679
                                        #   in Loop: Header=BB61_47 Depth=1
	bnez	$s5, .LBB61_62
.LBB61_60:                              # %._crit_edge710
                                        #   in Loop: Header=BB61_47 Depth=1
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(acttab_insert)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 44
	slt	$a1, $a0, $s6
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$s6, $a1, $a2
	slt	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a0, $a0, $a1
	or	$s0, $a0, $a2
	b	.LBB61_46
	.p2align	4, , 16
.LBB61_61:                              # %compute_action.exit644.thread
                                        #   in Loop: Header=BB61_62 Depth=2
	ld.d	$s5, $s5, 24
	beqz	$s5, .LBB61_60
.LBB61_62:                              # %.lr.ph709
                                        #   Parent Loop BB61_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a3, 28
	blt	$a1, $a0, .LBB61_61
# %bb.63:                               #   in Loop: Header=BB61_62 Depth=2
	ld.w	$a0, $a3, 24
	beq	$a1, $a0, .LBB61_61
# %bb.64:                               #   in Loop: Header=BB61_62 Depth=2
	ld.w	$a0, $s5, 8
	bltu	$s3, $a0, .LBB61_61
# %bb.65:                               #   in Loop: Header=BB61_62 Depth=2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s7, $a0
	add.d	$a0, $s7, $a0
	jr	$a0
.LBB61_66:                              #   in Loop: Header=BB61_62 Depth=2
	ld.d	$a0, $s5, 16
	ld.w	$a2, $a0, 16
	bgez	$a2, .LBB61_70
	b	.LBB61_61
.LBB61_67:                              #   in Loop: Header=BB61_62 Depth=2
	ld.d	$a0, $s5, 16
	ld.w	$a0, $a0, 72
	ld.w	$a2, $a3, 16
	add.w	$a2, $a2, $a0
	bgez	$a2, .LBB61_70
	b	.LBB61_61
.LBB61_68:                              #   in Loop: Header=BB61_62 Depth=2
	ld.w	$a0, $a3, 16
	ld.w	$a2, $a3, 20
	add.w	$a2, $a2, $a0
	bgez	$a2, .LBB61_70
	b	.LBB61_61
.LBB61_69:                              #   in Loop: Header=BB61_62 Depth=2
	ld.w	$a0, $a3, 16
	ld.w	$a2, $a3, 20
	add.d	$a0, $a0, $a2
	addi.w	$a2, $a0, 1
	bltz	$a2, .LBB61_61
.LBB61_70:                              #   in Loop: Header=BB61_62 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(acttab_action)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_61
.LBB61_71:                              # %.critedge6.loopexit
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $s2, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a0, $s6, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB61_73
.LBB61_72:
	addi.w	$a0, $zero, -1
	move	$s0, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
.LBB61_73:                              # %.critedge6
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	ld.w	$s4, $s5, 0
	addi.d	$s3, $a0, 1
	st.w	$s3, $sp, 108
	addi.d	$s0, $s4, -1
	blez	$s4, .LBB61_85
# %bb.74:                               # %.lr.ph728
	ld.d	$a0, $s5, 8
	ld.w	$a1, $sp, 108
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$s0, $s0, 31, 0
	addi.d	$s2, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s6, $a0, %pc_lo12(.L.str.138)
	move	$s7, $zero
	move	$s5, $zero
	ori	$fp, $zero, 9
	move	$s8, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_77
	.p2align	4, , 16
.LBB61_75:                              #   in Loop: Header=BB61_77 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	move	$s5, $zero
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
.LBB61_76:                              #   in Loop: Header=BB61_77 Depth=1
	addi.w	$s7, $s7, 1
	addi.d	$s2, $s2, 8
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, -1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	beqz	$s8, .LBB61_84
.LBB61_77:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s2, 0
	bltz	$a2, .LBB61_80
# %bb.78:                               #   in Loop: Header=BB61_77 Depth=1
	beqz	$s5, .LBB61_81
.LBB61_79:                              #   in Loop: Header=BB61_77 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bne	$s5, $fp, .LBB61_82
	b	.LBB61_75
	.p2align	4, , 16
.LBB61_80:                              #   in Loop: Header=BB61_77 Depth=1
	ld.w	$a0, $a1, 16
	ld.w	$a1, $a1, 20
	add.d	$a0, $a0, $a1
	addi.w	$a2, $a0, 2
	bnez	$s5, .LBB61_79
.LBB61_81:                              #   in Loop: Header=BB61_77 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$fp, $s6
	move	$s6, $s3
	move	$s3, $a2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	move	$s3, $s6
	move	$s6, $fp
	ori	$fp, $zero, 9
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beq	$s5, $fp, .LBB61_75
.LBB61_82:                              #   in Loop: Header=BB61_77 Depth=1
	beqz	$s0, .LBB61_75
# %bb.83:                               #   in Loop: Header=BB61_77 Depth=1
	addi.w	$s5, $s5, 1
	b	.LBB61_76
.LBB61_84:                              # %._crit_edge729.loopexit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 108
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
.LBB61_85:                              # %._crit_edge729
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s3, 2
	st.w	$s7, $sp, 108
	blez	$s4, .LBB61_97
# %bb.86:                               # %.lr.ph734
	ld.d	$fp, $s5, 8
	ld.w	$s2, $sp, 108
	bstrpick.d	$s0, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s5, $a0, %pc_lo12(.L.str.138)
	move	$s6, $zero
	move	$s3, $zero
	ori	$s8, $zero, 9
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_89
	.p2align	4, , 16
.LBB61_87:                              #   in Loop: Header=BB61_89 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s7, 1
	move	$s3, $zero
	move	$s7, $s2
.LBB61_88:                              #   in Loop: Header=BB61_89 Depth=1
	addi.w	$s6, $s6, 1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, -1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$s4, .LBB61_96
.LBB61_89:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $fp, 0
	bltz	$a2, .LBB61_92
# %bb.90:                               #   in Loop: Header=BB61_89 Depth=1
	beqz	$s3, .LBB61_93
.LBB61_91:                              #   in Loop: Header=BB61_89 Depth=1
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bne	$s3, $s8, .LBB61_94
	b	.LBB61_87
	.p2align	4, , 16
.LBB61_92:                              #   in Loop: Header=BB61_89 Depth=1
	ld.w	$a2, $a0, 24
	bnez	$s3, .LBB61_91
.LBB61_93:                              #   in Loop: Header=BB61_89 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$s8, $a2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a2, $s8
	ori	$s8, $zero, 9
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beq	$s3, $s8, .LBB61_87
.LBB61_94:                              #   in Loop: Header=BB61_89 Depth=1
	beqz	$s0, .LBB61_87
# %bb.95:                               #   in Loop: Header=BB61_89 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB61_88
.LBB61_96:                              # %._crit_edge735.loopexit
	st.w	$s2, $sp, 108
.LBB61_97:                              # %._crit_edge735
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a1, $a0, %pc_lo12(.L.str.141)
	move	$a0, $s1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$fp, $a0, 16
	lu12i.w	$s5, -524288
	blez	$fp, .LBB61_103
# %bb.98:                               # %.lr.ph738
	ld.d	$a0, $a0, 0
	ori	$a1, $s5, 1
	.p2align	4, , 16
.LBB61_99:                              # =>This Inner Loop Header: Depth=1
	move	$a2, $fp
	alsl.d	$a3, $fp, $a0, 3
	ld.d	$a3, $a3, -8
	ld.w	$a3, $a3, 40
	bne	$a3, $a1, .LBB61_102
# %bb.100:                              #   in Loop: Header=BB61_99 Depth=1
	addi.w	$fp, $a2, -1
	blt	$s0, $a2, .LBB61_99
# %bb.101:
	move	$fp, $zero
	b	.LBB61_103
.LBB61_102:
	move	$fp, $a2
.LBB61_103:                             # %.loopexit918
	addi.w	$s4, $fp, -1
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a1, $a0, %pc_lo12(.L.str.142)
	move	$a0, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s6, $zero, -128
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	sltu	$a0, $s6, $a2
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	slti	$a1, $a4, 128
	lu12i.w	$a3, -8
	sltu	$a2, $a3, $a2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 4095
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	slt	$a3, $a4, $a3
	pcalau12i	$a4, %pc_hi20(.L.str.231)
	addi.d	$a6, $a4, %pc_lo12(.L.str.231)
	masknez	$a4, $a6, $a2
	pcalau12i	$a5, %pc_hi20(.L.str.230)
	addi.d	$a5, $a5, %pc_lo12(.L.str.230)
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	maskeqz	$a2, $a2, $a3
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	masknez	$a3, $a6, $a3
	or	$a2, $a2, $a3
	masknez	$a3, $a2, $a1
	masknez	$a2, $a2, $a0
	pcalau12i	$a4, %pc_hi20(.L.str.229)
	addi.d	$a4, $a4, %pc_lo12(.L.str.229)
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	maskeqz	$a0, $a0, $a1
	or	$a2, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a1, $a0, %pc_lo12(.L.str.143)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 4
	blez	$fp, .LBB61_112
# %bb.104:                              # %.lr.ph745.preheader
	move	$s0, $s7
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 31, 0
	ld.w	$s7, $sp, 108
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$s2, $fp, 3
	ori	$s3, $s5, 1
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s5, $a0, %pc_lo12(.L.str.138)
	move	$fp, $zero
	move	$s6, $zero
	move	$s4, $zero
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_106
	.p2align	4, , 16
.LBB61_105:                             #   in Loop: Header=BB61_106 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s0, 1
	move	$s4, $zero
	move	$s0, $s7
	addi.d	$fp, $fp, 8
	addi.w	$s6, $s6, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$s2, $fp, .LBB61_111
.LBB61_106:                             # %.lr.ph745
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $fp
	ld.w	$s8, $a0, 40
	bnez	$s4, .LBB61_108
# %bb.107:                              #   in Loop: Header=BB61_106 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB61_108:                             #   in Loop: Header=BB61_106 Depth=1
	xor	$a0, $s8, $s3
	sltui	$a0, $a0, 1
	masknez	$a1, $s8, $a0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	beq	$s4, $a0, .LBB61_105
# %bb.109:                              #   in Loop: Header=BB61_106 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $fp, .LBB61_105
# %bb.110:                              #   in Loop: Header=BB61_106 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$fp, $fp, 8
	addi.w	$s6, $s6, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$s2, $fp, .LBB61_106
.LBB61_111:                             # %._crit_edge746.loopexit
	st.w	$s7, $sp, 108
	lu12i.w	$s5, -524288
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	move	$s7, $s0
.LBB61_112:                             # %._crit_edge746
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a1, $a0, %pc_lo12(.L.str.144)
	move	$a0, $s1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s2, $a0, 16
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	blez	$s2, .LBB61_118
# %bb.113:                              # %.lr.ph749
	ld.d	$a0, $a0, 0
	ori	$a1, $s5, 1
	.p2align	4, , 16
.LBB61_114:                             # =>This Inner Loop Header: Depth=1
	move	$a2, $s2
	alsl.d	$a3, $s2, $a0, 3
	ld.d	$a3, $a3, -8
	ld.w	$a3, $a3, 44
	bne	$a3, $a1, .LBB61_117
# %bb.115:                              #   in Loop: Header=BB61_114 Depth=1
	addi.w	$s2, $a2, -1
	blt	$fp, $a2, .LBB61_114
# %bb.116:
	move	$s2, $zero
	b	.LBB61_118
.LBB61_117:
	move	$s2, $a2
.LBB61_118:                             # %.loopexit917
	addi.w	$s3, $s2, -1
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a1, $a0, %pc_lo12(.L.str.145)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	sltu	$a0, $s6, $a2
	slti	$a1, $s0, 128
	lu12i.w	$a3, -8
	sltu	$a2, $a3, $a2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	slt	$a3, $s0, $a3
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	masknez	$a4, $a5, $a2
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a4
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	masknez	$a3, $a2, $a1
	masknez	$a2, $a2, $a0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	maskeqz	$a0, $a0, $a1
	or	$a2, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a1, $a0, %pc_lo12(.L.str.146)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s7, 4
	blez	$s2, .LBB61_127
# %bb.119:                              # %.lr.ph756.preheader
	bstrpick.d	$a0, $s3, 31, 0
	ld.w	$s7, $sp, 108
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$s2, $s2, 3
	ori	$s6, $s5, 1
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s4, $a0, %pc_lo12(.L.str.138)
	move	$s8, $zero
	move	$s5, $zero
	move	$s3, $zero
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_121
	.p2align	4, , 16
.LBB61_120:                             #   in Loop: Header=BB61_121 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s7, $fp, 1
	move	$s3, $zero
	move	$fp, $s7
	addi.d	$s8, $s8, 8
	addi.w	$s5, $s5, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$s2, $s8, .LBB61_126
.LBB61_121:                             # %.lr.ph756
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s8
	ld.w	$s0, $a0, 44
	bnez	$s3, .LBB61_123
# %bb.122:                              #   in Loop: Header=BB61_121 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB61_123:                             #   in Loop: Header=BB61_121 Depth=1
	xor	$a0, $s0, $s6
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	beq	$s3, $a0, .LBB61_120
# %bb.124:                              #   in Loop: Header=BB61_121 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $s8, .LBB61_120
# %bb.125:                              #   in Loop: Header=BB61_121 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s8, $s8, 8
	addi.w	$s5, $s5, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$s2, $s8, .LBB61_121
.LBB61_126:                             # %._crit_edge757.loopexit
	st.w	$s7, $sp, 108
.LBB61_127:                             # %._crit_edge757
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 16
	addi.d	$fp, $fp, 2
	blez	$a0, .LBB61_135
# %bb.128:                              # %.lr.ph762
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$s0, $a1, 3
	slli.d	$s5, $a0, 3
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s3, $a0, %pc_lo12(.L.str.138)
	move	$s6, $zero
	move	$s4, $zero
	move	$s8, $zero
	ori	$s7, $zero, 9
	b	.LBB61_130
	.p2align	4, , 16
.LBB61_129:                             #   in Loop: Header=BB61_130 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	addi.d	$fp, $fp, 1
	addi.d	$s6, $s6, 8
	addi.w	$s4, $s4, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	beq	$s5, $s6, .LBB61_135
.LBB61_130:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, 0
	ldx.d	$s2, $a0, $s6
	bnez	$s8, .LBB61_132
# %bb.131:                              #   in Loop: Header=BB61_130 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB61_132:                             #   in Loop: Header=BB61_130 Depth=1
	ld.w	$a2, $s2, 48
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beq	$s8, $s7, .LBB61_129
# %bb.133:                              #   in Loop: Header=BB61_130 Depth=1
	beq	$s0, $s6, .LBB61_129
# %bb.134:                              #   in Loop: Header=BB61_130 Depth=1
	addi.w	$s8, $s8, 1
	addi.d	$s6, $s6, 8
	addi.w	$s4, $s4, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bne	$s5, $s6, .LBB61_130
.LBB61_135:                             # %._crit_edge763
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 64
	addi.d	$a1, $fp, 1
	st.w	$a1, $sp, 108
	addi.d	$a3, $sp, 108
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 276
	beqz	$a0, .LBB61_143
# %bb.136:                              # %.preheader678
	ld.w	$a0, $a1, 28
	blez	$a0, .LBB61_143
# %bb.137:                              # %.lr.ph766
	ld.w	$fp, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$s2, $a0, %pc_lo12(.L.str.148)
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$s3, $a0, %pc_lo12(.L.str.149)
	move	$s0, $zero
	move	$s4, $zero
	b	.LBB61_140
	.p2align	4, , 16
.LBB61_138:                             #   in Loop: Header=BB61_140 Depth=1
	ld.w	$a2, $a1, 8
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB61_139:                             #   in Loop: Header=BB61_140 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 28
	addi.d	$fp, $fp, 1
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 8
	bge	$s4, $a0, .LBB61_142
.LBB61_140:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 32
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $a0, 24
	bnez	$a1, .LBB61_138
# %bb.141:                              #   in Loop: Header=BB61_140 Depth=1
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB61_139
.LBB61_142:                             # %..loopexit_crit_edge
	st.w	$fp, $sp, 108
.LBB61_143:                             # %.loopexit
	ld.d	$a0, $a1, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 24
	blez	$a0, .LBB61_150
# %bb.144:                              # %.lr.ph771
	ld.w	$fp, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$s2, $a0, %pc_lo12(.L.str.150)
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$s3, $a0, %pc_lo12(.L.str.151)
	move	$s4, $zero
	move	$s0, $zero
	ori	$s5, $zero, 3
	b	.LBB61_146
	.p2align	4, , 16
.LBB61_145:                             #   in Loop: Header=BB61_146 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 24
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 8
	bge	$s0, $a0, .LBB61_148
.LBB61_146:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 32
	ldx.d	$a0, $a0, $s4
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 112
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 112
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	andi	$a0, $s0, 3
	bne	$a0, $s5, .LBB61_145
# %bb.147:                              #   in Loop: Header=BB61_146 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	b	.LBB61_145
.LBB61_148:                             # %._crit_edge772
	andi	$a0, $s0, 3
	st.w	$fp, $sp, 108
	beqz	$a0, .LBB61_150
# %bb.149:
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 108
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
.LBB61_150:                             # %._crit_edge772.thread
	ld.d	$a0, $a1, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB61_161
# %bb.151:                              # %.lr.ph779.preheader
	ld.w	$a1, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s4, $a0, %pc_lo12(.L.str.57)
	ori	$s0, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s5, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a0, $a0, %pc_lo12(.L.str.153)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $zero
	b	.LBB61_153
	.p2align	4, , 16
.LBB61_152:                             # %writeRuleText.exit
                                        #   in Loop: Header=BB61_153 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 88
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.w	$s7, $s7, 1
	beqz	$fp, .LBB61_160
.LBB61_153:                             # %.lr.ph779
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_156 Depth 2
                                        #       Child Loop BB61_159 Depth 3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	blez	$a0, .LBB61_152
# %bb.154:                              # %.lr.ph18.i
                                        #   in Loop: Header=BB61_153 Depth=1
	move	$s2, $zero
	b	.LBB61_156
	.p2align	4, , 16
.LBB61_155:                             # %.loopexit.i
                                        #   in Loop: Header=BB61_156 Depth=2
	ld.w	$a0, $fp, 24
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB61_152
.LBB61_156:                             #   Parent Loop BB61_153 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_159 Depth 3
	ld.d	$a0, $fp, 32
	slli.d	$a1, $s2, 3
	ldx.d	$s3, $a0, $a1
	ld.d	$a2, $s3, 0
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 12
	bne	$a0, $s0, .LBB61_155
# %bb.157:                              # %.preheader.i
                                        #   in Loop: Header=BB61_156 Depth=2
	ld.w	$a0, $s3, 84
	blt	$a0, $s0, .LBB61_155
# %bb.158:                              # %.lr.ph.i
                                        #   in Loop: Header=BB61_156 Depth=2
	ori	$s6, $zero, 1
	ori	$s8, $zero, 8
	.p2align	4, , 16
.LBB61_159:                             #   Parent Loop BB61_153 Depth=1
                                        #     Parent Loop BB61_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 88
	ldx.d	$a0, $a0, $s8
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 84
	addi.d	$s6, $s6, 1
	addi.d	$s8, $s8, 8
	blt	$s6, $a0, .LBB61_159
	b	.LBB61_155
.LBB61_160:                             # %._crit_edge780.loopexit
	st.w	$a1, $sp, 108
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
.LBB61_161:                             # %._crit_edge780
	ld.d	$a0, $a0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 208
	ld.w	$a0, $a3, 24
	beqz	$a1, .LBB61_173
# %bb.162:                              # %._crit_edge780
	blez	$a0, .LBB61_173
# %bb.163:                              # %.lr.ph782
	ld.w	$fp, $sp, 108
	pcalau12i	$a1, %pc_hi20(.L.str.154)
	addi.d	$s2, $a1, %pc_lo12(.L.str.154)
	move	$s0, $zero
	move	$s3, $zero
	b	.LBB61_165
	.p2align	4, , 16
.LBB61_164:                             #   in Loop: Header=BB61_165 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	bge	$s3, $a0, .LBB61_168
.LBB61_165:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a3, 32
	ldx.d	$a1, $a1, $s0
	beqz	$a1, .LBB61_164
# %bb.166:                              #   in Loop: Header=BB61_165 Depth=1
	ld.w	$a2, $a1, 12
	bnez	$a2, .LBB61_164
# %bb.167:                              #   in Loop: Header=BB61_165 Depth=1
	ld.w	$a2, $a1, 8
	ld.d	$a3, $a1, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 24
	addi.d	$fp, $fp, 1
	b	.LBB61_164
.LBB61_168:                             # %.preheader676
	st.w	$fp, $sp, 108
	blez	$a0, .LBB61_173
# %bb.169:                              # %.lr.ph785
	ld.d	$a1, $a3, 32
	move	$a2, $a0
	.p2align	4, , 16
.LBB61_170:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a3, $a3, 12
	beqz	$a3, .LBB61_236
# %bb.171:                              #   in Loop: Header=BB61_170 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB61_170
# %bb.172:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
.LBB61_173:                             # %.critedge12
	ld.d	$a1, $a3, 224
	beqz	$a1, .LBB61_185
.LBB61_174:                             # %.preheader675
	blez	$a0, .LBB61_203
# %bb.175:                              # %.lr.ph788
	ld.w	$fp, $sp, 108
	pcalau12i	$a1, %pc_hi20(.L.str.154)
	addi.d	$s2, $a1, %pc_lo12(.L.str.154)
	move	$s0, $zero
	move	$s3, $zero
	move	$a1, $zero
	b	.LBB61_178
.LBB61_176:                             #   in Loop: Header=BB61_178 Depth=1
	ld.d	$a3, $s4, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 24
	addi.d	$fp, $fp, 1
	move	$a1, $s4
	.p2align	4, , 16
.LBB61_177:                             #   in Loop: Header=BB61_178 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	bge	$s3, $a0, .LBB61_183
.LBB61_178:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a3, 32
	ldx.d	$s4, $a2, $s0
	beqz	$s4, .LBB61_177
# %bb.179:                              #   in Loop: Header=BB61_178 Depth=1
	ld.w	$a2, $s4, 12
	beqz	$a2, .LBB61_177
# %bb.180:                              #   in Loop: Header=BB61_178 Depth=1
	ld.w	$a2, $s4, 8
	blez	$a2, .LBB61_177
# %bb.181:                              #   in Loop: Header=BB61_178 Depth=1
	ld.d	$a3, $s4, 56
	beqz	$a3, .LBB61_176
# %bb.182:                              #   in Loop: Header=BB61_178 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_177
.LBB61_183:                             # %._crit_edge789
	st.w	$fp, $sp, 108
	beqz	$a1, .LBB61_185
# %bb.184:
	addi.d	$a3, $sp, 108
	move	$a0, $s1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(emit_destructor_code)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $sp, 108
	ld.w	$a0, $a3, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 108
.LBB61_185:
	blez	$a0, .LBB61_203
# %bb.186:                              # %.lr.ph798
	ori	$s3, $zero, 8
	ori	$s4, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.154)
	addi.d	$a1, $a1, %pc_lo12(.L.str.154)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.155)
	addi.d	$fp, $a1, %pc_lo12(.L.str.155)
	move	$s5, $zero
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	b	.LBB61_190
.LBB61_187:                             # %._crit_edge795.loopexit
                                        #   in Loop: Header=BB61_190 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $sp, 108
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
.LBB61_188:                             # %._crit_edge795
                                        #   in Loop: Header=BB61_190 Depth=1
	ld.d	$a0, $a3, 32
	ldx.d	$a1, $a0, $s6
	addi.d	$a3, $sp, 108
	move	$a0, $s1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(emit_destructor_code)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $sp, 108
	ld.w	$a0, $a3, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 108
.LBB61_189:                             #   in Loop: Header=BB61_190 Depth=1
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, 1
	bge	$s5, $a0, .LBB61_203
.LBB61_190:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_197 Depth 2
	ld.d	$a1, $a3, 32
	slli.d	$s6, $s5, 3
	ldx.d	$s7, $a1, $s6
	addi.d	$s5, $s5, 1
	beqz	$s7, .LBB61_189
# %bb.191:                              #   in Loop: Header=BB61_190 Depth=1
	ld.w	$a1, $s7, 12
	beqz	$a1, .LBB61_189
# %bb.192:                              #   in Loop: Header=BB61_190 Depth=1
	ld.d	$a1, $s7, 56
	beqz	$a1, .LBB61_189
# %bb.193:                              #   in Loop: Header=BB61_190 Depth=1
	ld.w	$a2, $s7, 8
	ld.d	$a3, $s7, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 108
	ld.w	$s2, $a3, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
	bge	$s5, $s2, .LBB61_188
# %bb.194:                              # %.lr.ph794
                                        #   in Loop: Header=BB61_190 Depth=1
	ld.w	$a0, $sp, 108
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$s8, $s4
	move	$fp, $s3
	b	.LBB61_197
.LBB61_195:                             #   in Loop: Header=BB61_197 Depth=2
	ld.w	$a2, $s0, 8
	ld.d	$a3, $s0, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s2, $a3, 24
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $s0, 56
	.p2align	4, , 16
.LBB61_196:                             #   in Loop: Header=BB61_197 Depth=2
	addi.w	$s8, $s8, 1
	addi.d	$fp, $fp, 8
	bge	$s8, $s2, .LBB61_187
.LBB61_197:                             #   Parent Loop BB61_190 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a3, 32
	ldx.d	$s0, $a0, $fp
	beqz	$s0, .LBB61_196
# %bb.198:                              #   in Loop: Header=BB61_197 Depth=2
	ld.w	$a0, $s0, 12
	beqz	$a0, .LBB61_196
# %bb.199:                              #   in Loop: Header=BB61_197 Depth=2
	ld.d	$a1, $s0, 56
	beqz	$a1, .LBB61_196
# %bb.200:                              #   in Loop: Header=BB61_197 Depth=2
	ld.w	$a0, $s0, 80
	ld.w	$a2, $s7, 80
	bne	$a0, $a2, .LBB61_196
# %bb.201:                              #   in Loop: Header=BB61_197 Depth=2
	ld.d	$a0, $s7, 56
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB61_195
# %bb.202:                              #   in Loop: Header=BB61_197 Depth=2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_196
.LBB61_203:                             # %._crit_edge799
	ld.d	$a0, $a3, 64
	addi.d	$a3, $sp, 108
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 144
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a3, $a0, 152
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB61_207
# %bb.204:                              # %.lr.ph804.preheader
	ld.w	$s0, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$s2, $a0, %pc_lo12(.L.str.156)
	.p2align	4, , 16
.LBB61_205:                             # %.lr.ph804
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a2, $a0, 8
	ld.w	$a3, $fp, 24
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 88
	addi.d	$s0, $s0, 1
	bnez	$fp, .LBB61_205
# %bb.206:                              # %._crit_edge805.loopexit
	st.w	$s0, $sp, 108
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
.LBB61_207:                             # %._crit_edge805
	ld.d	$a0, $a0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $s0, 8
	beqz	$s2, .LBB61_234
	.p2align	4, , 16
.LBB61_208:                             # %.lr.ph810
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(translate_code)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $s2, 88
	bnez	$s2, .LBB61_208
# %bb.209:                              # %.preheader
	ld.d	$s2, $s0, 8
	beqz	$s2, .LBB61_234
# %bb.210:
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s5, $a0, %pc_lo12(.L.str.57)
	ori	$fp, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s6, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a0, $a0, %pc_lo12(.L.str.159)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB61_214
	.p2align	4, , 16
.LBB61_211:                             # %._crit_edge816.loopexit
                                        #   in Loop: Header=BB61_214 Depth=1
	st.w	$a2, $sp, 108
.LBB61_212:                             # %._crit_edge816
                                        #   in Loop: Header=BB61_214 Depth=1
	addi.d	$a3, $sp, 108
	move	$a0, $s1
	move	$a1, $s2
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(emit_code)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
.LBB61_213:                             #   in Loop: Header=BB61_214 Depth=1
	ld.d	$s2, $s2, 88
	beqz	$s2, .LBB61_234
.LBB61_214:                             # %.lr.ph820
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_218 Depth 2
                                        #       Child Loop BB61_221 Depth 3
                                        #     Child Loop BB61_226 Depth 2
                                        #       Child Loop BB61_230 Depth 3
                                        #         Child Loop BB61_233 Depth 4
	ld.d	$a0, $s2, 56
	beqz	$a0, .LBB61_213
# %bb.215:                              #   in Loop: Header=BB61_214 Depth=1
	ld.w	$a2, $s2, 72
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 24
	blez	$a0, .LBB61_222
# %bb.216:                              # %.lr.ph18.i654
                                        #   in Loop: Header=BB61_214 Depth=1
	move	$s0, $zero
	b	.LBB61_218
	.p2align	4, , 16
.LBB61_217:                             # %.loopexit.i656
                                        #   in Loop: Header=BB61_218 Depth=2
	ld.w	$a0, $s2, 24
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB61_222
.LBB61_218:                             #   Parent Loop BB61_214 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_221 Depth 3
	ld.d	$a0, $s2, 32
	slli.d	$a1, $s0, 3
	ldx.d	$s3, $a0, $a1
	ld.d	$a2, $s3, 0
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 12
	bne	$a0, $fp, .LBB61_217
# %bb.219:                              # %.preheader.i658
                                        #   in Loop: Header=BB61_218 Depth=2
	ld.w	$a0, $s3, 84
	blt	$a0, $fp, .LBB61_217
# %bb.220:                              # %.lr.ph.i659
                                        #   in Loop: Header=BB61_218 Depth=2
	ori	$s4, $zero, 1
	ori	$s7, $zero, 8
	.p2align	4, , 16
.LBB61_221:                             #   Parent Loop BB61_214 Depth=1
                                        #     Parent Loop BB61_218 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 88
	ldx.d	$a0, $a0, $s7
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 84
	addi.d	$s4, $s4, 1
	addi.d	$s7, $s7, 8
	blt	$s4, $a0, .LBB61_221
	b	.LBB61_217
	.p2align	4, , 16
.LBB61_222:                             # %writeRuleText.exit662
                                        #   in Loop: Header=BB61_214 Depth=1
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	ld.d	$s8, $s2, 88
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
	beqz	$s8, .LBB61_212
# %bb.223:                              # %.lr.ph815.preheader
                                        #   in Loop: Header=BB61_214 Depth=1
	ld.w	$a2, $sp, 108
	b	.LBB61_226
	.p2align	4, , 16
.LBB61_224:                             # %writeRuleText.exit671
                                        #   in Loop: Header=BB61_226 Depth=2
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$zero, $s8, 56
.LBB61_225:                             #   in Loop: Header=BB61_226 Depth=2
	ld.d	$s8, $s8, 88
	beqz	$s8, .LBB61_211
.LBB61_226:                             # %.lr.ph815
                                        #   Parent Loop BB61_214 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_230 Depth 3
                                        #         Child Loop BB61_233 Depth 4
	ld.d	$a0, $s8, 56
	ld.d	$a1, $s2, 56
	bne	$a0, $a1, .LBB61_225
# %bb.227:                              #   in Loop: Header=BB61_226 Depth=2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a2, $s8, 72
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 24
	blez	$a0, .LBB61_224
# %bb.228:                              # %.lr.ph18.i663
                                        #   in Loop: Header=BB61_226 Depth=2
	move	$s3, $zero
	b	.LBB61_230
	.p2align	4, , 16
.LBB61_229:                             # %.loopexit.i665
                                        #   in Loop: Header=BB61_230 Depth=3
	ld.w	$a0, $s8, 24
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB61_224
.LBB61_230:                             #   Parent Loop BB61_214 Depth=1
                                        #     Parent Loop BB61_226 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB61_233 Depth 4
	ld.d	$a0, $s8, 32
	slli.d	$a1, $s3, 3
	ldx.d	$s4, $a0, $a1
	ld.d	$a2, $s4, 0
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 12
	bne	$a0, $fp, .LBB61_229
# %bb.231:                              # %.preheader.i667
                                        #   in Loop: Header=BB61_230 Depth=3
	ld.w	$a0, $s4, 84
	blt	$a0, $fp, .LBB61_229
# %bb.232:                              # %.lr.ph.i668
                                        #   in Loop: Header=BB61_230 Depth=3
	ori	$s7, $zero, 1
	ori	$s0, $zero, 8
	.p2align	4, , 16
.LBB61_233:                             #   Parent Loop BB61_214 Depth=1
                                        #     Parent Loop BB61_226 Depth=2
                                        #       Parent Loop BB61_230 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s4, 88
	ldx.d	$a0, $a0, $s0
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 84
	addi.d	$s7, $s7, 1
	addi.d	$s0, $s0, 8
	blt	$s7, $a0, .LBB61_233
	b	.LBB61_229
.LBB61_234:                             # %._crit_edge821
	ld.d	$a0, $s0, 64
	addi.d	$a3, $sp, 108
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 160
	ld.w	$a3, $s0, 168
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 128
	ld.w	$a3, $s0, 136
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 176
	ld.w	$a3, $s0, 184
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 192
	ld.w	$a3, $s0, 200
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB61_235:
	ld.d	$s8, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1192                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1200
	ret
.LBB61_236:
	ld.d	$a1, $a1, 0
	addi.d	$a3, $sp, 108
	move	$a0, $s1
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(emit_destructor_code)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a3, $fp
	ld.w	$a1, $sp, 108
	ld.w	$a0, $fp, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 108
	ld.d	$a1, $a3, 224
	bnez	$a1, .LBB61_174
	b	.LBB61_185
.LBB61_237:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $s7, 40
	move	$a0, $s6
	ld.d	$s8, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1192                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1200
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.LBB61_238:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB61_239:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end61:
	.size	ReportTable, .Lfunc_end61-ReportTable
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI61_0:
	.word	.LBB61_54-.LJTI61_0
	.word	.LBB61_57-.LJTI61_0
	.word	.LBB61_55-.LJTI61_0
	.word	.LBB61_56-.LJTI61_0
.LJTI61_1:
	.word	.LBB61_66-.LJTI61_1
	.word	.LBB61_69-.LJTI61_1
	.word	.LBB61_67-.LJTI61_1
	.word	.LBB61_68-.LJTI61_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function axset_compare
	.type	axset_compare,@function
axset_compare:                          # @axset_compare
# %bb.0:
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a1, 12
	addi.w	$a3, $zero, -1
	bge	$a4, $a5, .LBB62_2
.LBB62_1:
	move	$a0, $a3
	ret
.LBB62_2:
	move	$a2, $a0
	ori	$a0, $zero, 1
	bge	$a5, $a4, .LBB62_4
.LBB62_3:
	ret
.LBB62_4:
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a1, 8
	blt	$a4, $a5, .LBB62_1
# %bb.5:
	blt	$a5, $a4, .LBB62_3
# %bb.6:
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a2, 16
	move	$a0, $a3
	blt	$a1, $a2, .LBB62_3
# %bb.7:
	slt	$a0, $a2, $a1
	ret
.Lfunc_end62:
	.size	axset_compare, .Lfunc_end62-axset_compare
                                        # -- End function
	.globl	ReportHeader                    # -- Begin function ReportHeader
	.p2align	5
	.type	ReportHeader,@function
ReportHeader:                           # @ReportHeader
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
	move	$fp, $a0
	ld.d	$a0, $a0, 248
	ld.d	$s1, $fp, 256
	beqz	$a0, .LBB63_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB63_2:
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s0, $a0, %pc_lo12(.L.str.113)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 248
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$a0, $fp, 248
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB63_7
# %bb.3:                                # %file_open.exit33.preheader
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB63_6
# %bb.4:                                # %.lr.ph
	sltui	$a0, $s1, 1
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $a1, $a0
	or	$s1, $a0, $a2
	ori	$s2, $zero, 1
	ori	$s4, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$s3, $a0, %pc_lo12(.L.str.115)
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB63_5:                               # %file_open.exit33
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$a0, $a0, $s4
	ld.d	$a3, $a0, 0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	addi.d	$s5, $s5, 1
	addi.w	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB63_5
.LBB63_6:                               # %.loopexit
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
.LBB63_7:                               # %file_open.exit33.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 40
	b	.LBB63_6
.Lfunc_end63:
	.size	ReportHeader, .Lfunc_end63-ReportHeader
                                        # -- End function
	.globl	CompressTables                  # -- Begin function CompressTables
	.p2align	5
	.type	CompressTables,@function
CompressTables:                         # @CompressTables
# %bb.0:
	ld.w	$a1, $a0, 16
	blez	$a1, .LBB64_31
# %bb.1:                                # %.lr.ph109
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
	move	$fp, $a0
	move	$s0, $zero
	ori	$s1, $zero, 2
	ori	$s2, $zero, 9
	ori	$s3, $zero, 1
	b	.LBB64_4
	.p2align	4, , 16
.LBB64_2:                               # %._crit_edge106
                                        #   in Loop: Header=BB64_4 Depth=1
	ld.d	$a0, $s4, 24
	pcaddu18i	$ra, %call36(Action_sort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	st.d	$a0, $s4, 24
.LBB64_3:                               # %._crit_edge88.thread
                                        #   in Loop: Header=BB64_4 Depth=1
	addi.d	$s0, $s0, 1
	bge	$s0, $a1, .LBB64_30
.LBB64_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_9 Depth 2
                                        #       Child Loop BB64_17 Depth 3
                                        #     Child Loop BB64_22 Depth 2
                                        #     Child Loop BB64_27 Depth 2
	ld.d	$a0, $fp, 0
	slli.d	$a2, $s0, 3
	ldx.d	$s4, $a0, $a2
	ld.d	$s6, $s4, 24
	beqz	$s6, .LBB64_3
# %bb.5:                                # %.lr.ph87.preheader
                                        #   in Loop: Header=BB64_4 Depth=1
	move	$a0, $zero
	move	$a2, $zero
	move	$s5, $zero
	move	$a3, $s6
	b	.LBB64_9
.LBB64_6:                               #   in Loop: Header=BB64_9 Depth=2
	ori	$a5, $zero, 1
.LBB64_7:                               # %._crit_edge
                                        #   in Loop: Header=BB64_9 Depth=2
	slt	$a6, $a2, $a5
	masknez	$a7, $s5, $a6
	maskeqz	$a4, $a4, $a6
	or	$s5, $a4, $a7
	masknez	$a2, $a2, $a6
	maskeqz	$a4, $a5, $a6
	or	$a2, $a4, $a2
	.p2align	4, , 16
.LBB64_8:                               #   in Loop: Header=BB64_9 Depth=2
	ld.d	$a3, $a3, 24
	beqz	$a3, .LBB64_19
.LBB64_9:                               # %.lr.ph87
                                        #   Parent Loop BB64_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB64_17 Depth 3
	ld.w	$a4, $a3, 8
	beq	$a4, $s1, .LBB64_12
# %bb.10:                               # %.lr.ph87
                                        #   in Loop: Header=BB64_9 Depth=2
	bnez	$a4, .LBB64_8
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB64_9 Depth=2
	ld.d	$a4, $a3, 0
	ld.d	$a5, $fp, 56
	xor	$a4, $a4, $a5
	sltui	$a4, $a4, 1
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $s3, $a4
	or	$a0, $a4, $a0
	b	.LBB64_8
	.p2align	4, , 16
.LBB64_12:                              #   in Loop: Header=BB64_9 Depth=2
	ld.d	$a4, $a3, 16
	ld.w	$a5, $a4, 16
	bnez	$a5, .LBB64_8
# %bb.13:                               #   in Loop: Header=BB64_9 Depth=2
	beq	$a4, $s5, .LBB64_8
# %bb.14:                               # %.preheader
                                        #   in Loop: Header=BB64_9 Depth=2
	ld.d	$a6, $a3, 24
	beqz	$a6, .LBB64_6
# %bb.15:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB64_9 Depth=2
	ori	$a5, $zero, 1
	b	.LBB64_17
	.p2align	4, , 16
.LBB64_16:                              #   in Loop: Header=BB64_17 Depth=3
	ld.d	$a6, $a6, 24
	beqz	$a6, .LBB64_7
.LBB64_17:                              # %.lr.ph
                                        #   Parent Loop BB64_4 Depth=1
                                        #     Parent Loop BB64_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a6, 8
	bne	$a7, $s1, .LBB64_16
# %bb.18:                               #   in Loop: Header=BB64_17 Depth=3
	ld.d	$a7, $a6, 16
	xor	$a7, $a7, $a4
	sltui	$a7, $a7, 1
	add.w	$a5, $a5, $a7
	b	.LBB64_16
	.p2align	4, , 16
.LBB64_19:                              # %._crit_edge88
                                        #   in Loop: Header=BB64_4 Depth=1
	blez	$a2, .LBB64_3
# %bb.20:                               # %._crit_edge88
                                        #   in Loop: Header=BB64_4 Depth=1
	beqz	$a0, .LBB64_22
	b	.LBB64_3
	.p2align	4, , 16
.LBB64_21:                              #   in Loop: Header=BB64_22 Depth=2
	ld.d	$s6, $s6, 24
	beqz	$s6, .LBB64_24
.LBB64_22:                              # %.lr.ph95
                                        #   Parent Loop BB64_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s6, 8
	bne	$a0, $s1, .LBB64_21
# %bb.23:                               #   in Loop: Header=BB64_22 Depth=2
	ld.d	$a0, $s6, 16
	bne	$a0, $s5, .LBB64_21
	b	.LBB64_25
	.p2align	4, , 16
.LBB64_24:                              #   in Loop: Header=BB64_4 Depth=1
	move	$s6, $zero
.LBB64_25:                              # %._crit_edge96
                                        #   in Loop: Header=BB64_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	st.d	$a0, $s6, 0
	bnez	$a1, .LBB64_27
	b	.LBB64_2
	.p2align	4, , 16
.LBB64_26:                              #   in Loop: Header=BB64_27 Depth=2
	ld.d	$a1, $a1, 24
	beqz	$a1, .LBB64_2
.LBB64_27:                              # %.lr.ph105
                                        #   Parent Loop BB64_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $a1, 8
	bne	$a0, $s1, .LBB64_26
# %bb.28:                               #   in Loop: Header=BB64_27 Depth=2
	ld.d	$a0, $a1, 16
	bne	$a0, $s5, .LBB64_26
# %bb.29:                               #   in Loop: Header=BB64_27 Depth=2
	st.w	$s2, $a1, 8
	b	.LBB64_26
.LBB64_30:
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
.LBB64_31:                              # %._crit_edge110
	ret
.Lfunc_end64:
	.size	CompressTables, .Lfunc_end64-CompressTables
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function ResortStates
.LCPI65_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483649                      # 0x80000001
	.word	2147483649                      # 0x80000001
	.text
	.globl	ResortStates
	.p2align	5
	.type	ResortStates,@function
ResortStates:                           # @ResortStates
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a1, $a0, 16
	ld.d	$a0, $a0, 0
	blez	$a1, .LBB65_21
# %bb.1:                                # %.lr.ph48
	ld.w	$a2, $fp, 20
	pcalau12i	$a3, %pc_hi20(.LCPI65_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI65_0)
	add.w	$a2, $a2, $a1
	addi.w	$a3, $a2, 1
	ori	$a4, $zero, 3
	pcalau12i	$a5, %pc_hi20(.LJTI65_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI65_0)
	pcalau12i	$a6, %pc_hi20(.LJTI65_1)
	addi.d	$a6, $a6, %pc_lo12(.LJTI65_1)
	move	$a7, $zero
	b	.LBB65_3
	.p2align	4, , 16
.LBB65_2:                               # %._crit_edge
                                        #   in Loop: Header=BB65_3 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a1, .LBB65_21
.LBB65_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_7 Depth 2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	ld.d	$t1, $t0, 24
	st.w	$a2, $t0, 48
	vst	$vr0, $t0, 32
	beqz	$t1, .LBB65_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB65_3 Depth=1
	move	$t2, $zero
	move	$t3, $zero
	b	.LBB65_7
	.p2align	4, , 16
.LBB65_5:                               #   in Loop: Header=BB65_7 Depth=2
	addi.d	$t2, $t2, 1
	st.w	$t2, $t0, 32
.LBB65_6:                               # %compute_action.exit.thread
                                        #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB65_2
.LBB65_7:                               # %.lr.ph
                                        #   Parent Loop BB65_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t1, 8
	bltu	$a4, $t4, .LBB65_6
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB65_7 Depth=2
	slli.d	$t4, $t4, 2
	ldx.w	$t5, $a5, $t4
	add.d	$t6, $a5, $t5
	move	$t5, $a2
	jr	$t6
.LBB65_9:                               #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t5, $t1, 16
	ld.w	$t5, $t5, 16
	bgez	$t5, .LBB65_12
	b	.LBB65_6
	.p2align	4, , 16
.LBB65_10:                              #   in Loop: Header=BB65_7 Depth=2
	move	$t5, $a3
.LBB65_11:                              # %compute_action.exit
                                        #   in Loop: Header=BB65_7 Depth=2
	bltz	$t5, .LBB65_6
.LBB65_12:                              #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t5, $t1, 0
	ld.w	$t5, $t5, 8
	ld.w	$t6, $fp, 28
	blt	$t5, $t6, .LBB65_5
# %bb.13:                               #   in Loop: Header=BB65_7 Depth=2
	ld.w	$t6, $fp, 24
	bge	$t5, $t6, .LBB65_16
# %bb.14:                               #   in Loop: Header=BB65_7 Depth=2
	addi.d	$t3, $t3, 1
	st.w	$t3, $t0, 36
	b	.LBB65_6
	.p2align	4, , 16
.LBB65_15:                              #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t5, $t1, 16
	ld.w	$t5, $t5, 72
	add.w	$t5, $t5, $a1
	bgez	$t5, .LBB65_12
	b	.LBB65_6
.LBB65_16:                              #   in Loop: Header=BB65_7 Depth=2
	ldx.w	$t4, $a6, $t4
	add.d	$t5, $a6, $t4
	move	$t4, $a2
	jr	$t5
.LBB65_17:                              #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t4, $t1, 16
	ld.w	$t4, $t4, 16
	b	.LBB65_20
.LBB65_18:                              #   in Loop: Header=BB65_7 Depth=2
	move	$t4, $a3
	b	.LBB65_20
.LBB65_19:                              #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t4, $t1, 16
	ld.w	$t4, $t4, 72
	add.d	$t4, $t4, $a1
.LBB65_20:                              # %compute_action.exit37
                                        #   in Loop: Header=BB65_7 Depth=2
	st.w	$t4, $t0, 48
	b	.LBB65_6
.LBB65_21:                              # %._crit_edge49
	addi.d	$a0, $a0, 8
	addi.w	$a1, $a1, -1
	pcalau12i	$a2, %pc_hi20(stateResortCompare)
	addi.d	$a3, $a2, %pc_lo12(stateResortCompare)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	blez	$a0, .LBB65_29
# %bb.22:                               # %.lr.ph52
	ld.d	$a2, $fp, 0
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB65_24
# %bb.23:
	move	$a1, $zero
	b	.LBB65_27
.LBB65_24:                              # %vector.ph
	move	$a3, $zero
	bstrpick.d	$a1, $a0, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a4, $a2, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB65_25:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a6, $a3, 1
	addi.d	$a7, $a3, 2
	addi.d	$t0, $a3, 3
	ld.d	$t1, $a4, -16
	ld.d	$t2, $a4, -8
	ld.d	$t3, $a4, 0
	ld.d	$t4, $a4, 8
	st.w	$a3, $t1, 16
	st.w	$a6, $t2, 16
	st.w	$a7, $t3, 16
	st.w	$t0, $t4, 16
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB65_25
# %bb.26:                               # %middle.block
	beq	$a1, $a0, .LBB65_29
.LBB65_27:                              # %scalar.ph.preheader
	alsl.d	$a2, $a1, $a2, 3
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB65_28:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.w	$a1, $a3, 16
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB65_28
.LBB65_29:                              # %._crit_edge53
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end65:
	.size	ResortStates, .Lfunc_end65-ResortStates
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI65_0:
	.word	.LBB65_9-.LJTI65_0
	.word	.LBB65_10-.LJTI65_0
	.word	.LBB65_15-.LJTI65_0
	.word	.LBB65_11-.LJTI65_0
.LJTI65_1:
	.word	.LBB65_17-.LJTI65_1
	.word	.LBB65_18-.LJTI65_1
	.word	.LBB65_19-.LJTI65_1
	.word	.LBB65_20-.LJTI65_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function stateResortCompare
	.type	stateResortCompare,@function
stateResortCompare:                     # @stateResortCompare
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a2, 36
	ld.w	$a5, $a3, 36
	addi.w	$a1, $zero, -1
	bge	$a4, $a5, .LBB66_2
# %bb.1:
	move	$a0, $a1
	ret
.LBB66_2:
	ori	$a0, $zero, 1
	bge	$a5, $a4, .LBB66_4
.LBB66_3:
	ret
.LBB66_4:
	ld.w	$a4, $a2, 32
	ld.w	$a5, $a3, 32
	bge	$a4, $a5, .LBB66_6
# %bb.5:
	move	$a0, $a1
	ret
.LBB66_6:
	blt	$a5, $a4, .LBB66_3
# %bb.7:
	ld.w	$a2, $a2, 16
	ld.w	$a3, $a3, 16
	move	$a0, $a1
	blt	$a2, $a3, .LBB66_3
# %bb.8:
	slt	$a0, $a3, $a2
	ret
.Lfunc_end66:
	.size	stateResortCompare, .Lfunc_end66-stateResortCompare
                                        # -- End function
	.globl	SetSize                         # -- Begin function SetSize
	.p2align	5
	.type	SetSize,@function
SetSize:                                # @SetSize
# %bb.0:
	addi.d	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(size)
	st.w	$a0, $a1, %pc_lo12(size)
	ret
.Lfunc_end67:
	.size	SetSize, .Lfunc_end67-SetSize
                                        # -- End function
	.globl	SetNew                          # -- Begin function SetNew
	.p2align	5
	.type	SetNew,@function
SetNew:                                 # @SetNew
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(size)
	ld.w	$a0, $a0, %pc_lo12(size)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB68_2
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB68_2:
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end68:
	.size	SetNew, .Lfunc_end68-SetNew
                                        # -- End function
	.globl	SetFree                         # -- Begin function SetFree
	.p2align	5
	.type	SetFree,@function
SetFree:                                # @SetFree
# %bb.0:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end69:
	.size	SetFree, .Lfunc_end69-SetFree
                                        # -- End function
	.globl	SetAdd                          # -- Begin function SetAdd
	.p2align	5
	.type	SetAdd,@function
SetAdd:                                 # @SetAdd
# %bb.0:
	ldx.bu	$a2, $a0, $a1
	ori	$a3, $zero, 1
	sltui	$a2, $a2, 1
	stx.b	$a3, $a0, $a1
	move	$a0, $a2
	ret
.Lfunc_end70:
	.size	SetAdd, .Lfunc_end70-SetAdd
                                        # -- End function
	.globl	SetUnion                        # -- Begin function SetUnion
	.p2align	5
	.type	SetUnion,@function
SetUnion:                               # @SetUnion
# %bb.0:
	pcalau12i	$a2, %pc_hi20(size)
	ld.w	$a3, $a2, %pc_lo12(size)
	blez	$a3, .LBB71_6
# %bb.1:                                # %.lr.ph.preheader
	move	$a2, $zero
	b	.LBB71_3
	.p2align	4, , 16
.LBB71_2:                               #   in Loop: Header=BB71_3 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	beqz	$a3, .LBB71_7
.LBB71_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a1, 0
	beqz	$a4, .LBB71_2
# %bb.4:                                #   in Loop: Header=BB71_3 Depth=1
	ld.bu	$a4, $a0, 0
	bnez	$a4, .LBB71_2
# %bb.5:                                #   in Loop: Header=BB71_3 Depth=1
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 0
	b	.LBB71_2
.LBB71_6:
	move	$a2, $zero
.LBB71_7:                               # %._crit_edge
	move	$a0, $a2
	ret
.Lfunc_end71:
	.size	SetUnion, .Lfunc_end71-SetUnion
                                        # -- End function
	.globl	strhash                         # -- Begin function strhash
	.p2align	5
	.type	strhash,@function
strhash:                                # @strhash
# %bb.0:
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB72_4
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $a0
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB72_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a3, $a2
	ld.bu	$a2, $a1, 0
	alsl.d	$a4, $a0, $a0, 1
	alsl.d	$a0, $a4, $a0, 2
	add.w	$a0, $a0, $a3
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB72_2
# %bb.3:                                # %._crit_edge
	ret
.LBB72_4:
	move	$a0, $zero
	ret
.Lfunc_end72:
	.size	strhash, .Lfunc_end72-strhash
                                        # -- End function
	.globl	Strsafe                         # -- Begin function Strsafe
	.p2align	5
	.type	Strsafe,@function
Strsafe:                                # @Strsafe
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB73_5
# %bb.1:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(x1a)
	ld.d	$a0, $a0, %pc_lo12(x1a)
	beqz	$a0, .LBB73_10
# %bb.2:
	ld.bu	$a2, $fp, 0
	beqz	$a2, .LBB73_6
# %bb.3:                                # %.lr.ph.i.i.preheader
	move	$a1, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB73_4:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a1, $a1, 1
	alsl.d	$a1, $a5, $a1, 2
	add.w	$a1, $a1, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB73_4
	b	.LBB73_7
.LBB73_5:
	move	$s0, $zero
	b	.LBB73_12
.LBB73_6:
	move	$a1, $zero
.LBB73_7:                               # %strhash.exit.i
	ld.w	$a2, $a0, 0
	ld.d	$a0, $a0, 16
	addi.w	$a2, $a2, -1
	and	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a0, $a1
	beqz	$s1, .LBB73_10
	.p2align	4, , 16
.LBB73_8:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s1, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB73_12
# %bb.9:                                #   in Loop: Header=BB73_8 Depth=1
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB73_8
.LBB73_10:                              # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB73_13
# %bb.11:
	move	$s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Strsafe_insert)
	jirl	$ra, $ra, 0
.LBB73_12:                              # %Strsafe_find.exit.thread16
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB73_13:                              # %Strsafe_find.exit
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end73:
	.size	Strsafe, .Lfunc_end73-Strsafe
                                        # -- End function
	.globl	Strsafe_init                    # -- Begin function Strsafe_init
	.p2align	5
	.type	Strsafe_init,@function
Strsafe_init:                           # @Strsafe_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(x1a)
	ld.d	$a0, $s0, %pc_lo12(x1a)
	beqz	$a0, .LBB74_2
.LBB74_1:                               # %.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB74_2:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x1a)
	beqz	$a0, .LBB74_1
# %bb.3:
	move	$fp, $a0
	ori	$a0, $zero, 1024
	st.d	$a0, $fp, 0
	lu12i.w	$a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB74_5
# %bb.4:                                # %.loopexit.loopexit
	lu12i.w	$a1, 6
	add.d	$a0, $a0, $a1
	lu12i.w	$a2, 2
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB74_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x1a)
	b	.LBB74_1
.Lfunc_end74:
	.size	Strsafe_init, .Lfunc_end74-Strsafe_init
                                        # -- End function
	.globl	Strsafe_insert                  # -- Begin function Strsafe_insert
	.p2align	5
	.type	Strsafe_insert,@function
Strsafe_insert:                         # @Strsafe_insert
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
	pcalau12i	$a1, %pc_hi20(x1a)
	ld.d	$s2, $a1, %pc_lo12(x1a)
	beqz	$s2, .LBB75_22
# %bb.1:
	move	$fp, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB75_4
# %bb.2:                                # %.lr.ph.i.preheader
	move	$s3, $zero
	addi.d	$a1, $fp, 1
	.p2align	4, , 16
.LBB75_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a2, $a0
	ld.bu	$a0, $a1, 0
	alsl.d	$a3, $s3, $s3, 1
	alsl.d	$a3, $a3, $s3, 2
	add.w	$s3, $a3, $a2
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB75_3
	b	.LBB75_5
.LBB75_4:
	move	$s3, $zero
.LBB75_5:                               # %strhash.exit
	ld.w	$s6, $s2, 0
	ld.d	$s0, $s2, 16
	addi.w	$a0, $s6, -1
	and	$s5, $a0, $s3
	slli.d	$a0, $s5, 3
	ldx.d	$s1, $s0, $a0
	beqz	$s1, .LBB75_8
	.p2align	4, , 16
.LBB75_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB75_22
# %bb.7:                                #   in Loop: Header=BB75_6 Depth=1
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB75_6
.LBB75_8:                               # %._crit_edge
	ld.w	$s4, $s2, 4
	bge	$s4, $s6, .LBB75_10
# %bb.9:                                # %._crit_edge._crit_edge
	ld.d	$s1, $s2, 8
	b	.LBB75_25
.LBB75_10:
	slli.w	$s5, $s6, 1
	slli.d	$a0, $s5, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB75_22
# %bb.11:
	move	$s1, $a0
	slli.d	$a0, $s5, 4
	alsl.d	$a0, $s5, $a0, 3
	add.d	$s0, $s1, $a0
	blez	$s6, .LBB75_13
# %bb.12:                               # %.lr.ph76.preheader
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a0, $a1, $a0
	slli.d	$a2, $a0, 3
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB75_13:                              # %.preheader
	blez	$s4, .LBB75_23
# %bb.14:                               # %.lr.ph78
	ld.d	$a0, $s2, 8
	move	$a1, $zero
	addi.w	$s6, $s5, -1
	b	.LBB75_16
	.p2align	4, , 16
.LBB75_15:                              #   in Loop: Header=BB75_16 Depth=1
	alsl.d	$a4, $a4, $s0, 3
	st.d	$a5, $a3, 8
	st.d	$a2, $a3, 0
	st.d	$a4, $a3, 16
	addi.d	$a1, $a1, 1
	st.d	$a3, $a4, 0
	beq	$a1, $s4, .LBB75_24
.LBB75_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_18 Depth 2
	slli.d	$a2, $a1, 4
	alsl.d	$a3, $a1, $a2, 3
	ldx.d	$a2, $a0, $a3
	ld.bu	$a4, $a2, 0
	beqz	$a4, .LBB75_19
# %bb.17:                               # %.lr.ph.i64.preheader
                                        #   in Loop: Header=BB75_16 Depth=1
	move	$a5, $zero
	addi.d	$a6, $a2, 1
	.p2align	4, , 16
.LBB75_18:                              # %.lr.ph.i64
                                        #   Parent Loop BB75_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a7, $a4
	ld.bu	$a4, $a6, 0
	alsl.d	$t0, $a5, $a5, 1
	alsl.d	$a5, $t0, $a5, 2
	add.w	$a5, $a5, $a7
	addi.d	$a6, $a6, 1
	bnez	$a4, .LBB75_18
	b	.LBB75_20
	.p2align	4, , 16
.LBB75_19:                              #   in Loop: Header=BB75_16 Depth=1
	move	$a5, $zero
.LBB75_20:                              # %strhash.exit69
                                        #   in Loop: Header=BB75_16 Depth=1
	and	$a4, $a5, $s6
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $s0, $a5
	add.d	$a3, $s1, $a3
	beqz	$a5, .LBB75_15
# %bb.21:                               #   in Loop: Header=BB75_16 Depth=1
	addi.d	$a6, $a3, 8
	st.d	$a6, $a5, 16
	b	.LBB75_15
.LBB75_22:
	move	$a0, $zero
	b	.LBB75_28
.LBB75_23:                              # %.preheader.._crit_edge79_crit_edge
	ld.d	$a0, $s2, 8
	addi.w	$s6, $s5, -1
.LBB75_24:                              # %._crit_edge79
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.w	$s5, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	and	$s5, $s6, $s3
.LBB75_25:
	addi.d	$a0, $s4, 1
	st.w	$a0, $s2, 4
	slli.d	$a0, $s4, 4
	slli.d	$a1, $s5, 3
	ldx.d	$a1, $s0, $a1
	alsl.d	$a2, $s4, $a0, 3
	add.d	$a0, $s1, $a2
	stx.d	$fp, $s1, $a2
	alsl.d	$a2, $s5, $s0, 3
	beqz	$a1, .LBB75_27
# %bb.26:
	addi.d	$a3, $a0, 8
	st.d	$a3, $a1, 16
.LBB75_27:
	st.d	$a1, $a0, 8
	st.d	$a0, $a2, 0
	st.d	$a2, $a0, 16
	ori	$a0, $zero, 1
.LBB75_28:                              # %.critedge
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
.Lfunc_end75:
	.size	Strsafe_insert, .Lfunc_end75-Strsafe_insert
                                        # -- End function
	.globl	Strsafe_find                    # -- Begin function Strsafe_find
	.p2align	5
	.type	Strsafe_find,@function
Strsafe_find:                           # @Strsafe_find
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(x1a)
	ld.d	$a1, $a1, %pc_lo12(x1a)
	beqz	$a1, .LBB76_8
# %bb.1:
	move	$fp, $a0
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB76_4
# %bb.2:                                # %.lr.ph.i.preheader
	move	$a0, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB76_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a0, $a0, 1
	alsl.d	$a0, $a5, $a0, 2
	add.w	$a0, $a0, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB76_3
	b	.LBB76_5
.LBB76_4:
	move	$a0, $zero
.LBB76_5:                               # %strhash.exit
	ld.w	$a2, $a1, 0
	ld.d	$a1, $a1, 16
	addi.w	$a2, $a2, -1
	and	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $a1, $a0
	beqz	$s1, .LBB76_8
	.p2align	4, , 16
.LBB76_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s1, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_9
# %bb.7:                                #   in Loop: Header=BB76_6 Depth=1
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB76_6
.LBB76_8:
	move	$s0, $zero
.LBB76_9:                               # %.critedge
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end76:
	.size	Strsafe_find, .Lfunc_end76-Strsafe_find
                                        # -- End function
	.globl	Symbol_new                      # -- Begin function Symbol_new
	.p2align	5
	.type	Symbol_new,@function
Symbol_new:                             # @Symbol_new
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(x2a)
	ld.d	$a1, $a1, %pc_lo12(x2a)
	move	$fp, $a0
	beqz	$a1, .LBB77_9
# %bb.1:
	ld.bu	$a2, $fp, 0
	beqz	$a2, .LBB77_4
# %bb.2:                                # %.lr.ph.i.i.preheader
	move	$a0, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB77_3:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a0, $a0, 1
	alsl.d	$a0, $a5, $a0, 2
	add.w	$a0, $a0, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB77_3
	b	.LBB77_5
.LBB77_4:
	move	$a0, $zero
.LBB77_5:                               # %strhash.exit.i
	ld.w	$a2, $a1, 0
	ld.d	$a1, $a1, 16
	addi.w	$a2, $a2, -1
	and	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $a1, $a0
	beqz	$s0, .LBB77_9
	.p2align	4, , 16
.LBB77_6:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB77_8
# %bb.7:                                #   in Loop: Header=BB77_6 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB77_6
	b	.LBB77_9
.LBB77_8:                               # %Symbol_find.exit
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB77_11
.LBB77_9:                               # %Symbol_find.exit.thread
	ori	$a0, $zero, 1
	ori	$a1, $zero, 96
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB77_12
# %bb.10:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Strsafe)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 256
	sltui	$a0, $a0, 1
	st.w	$a0, $s0, 12
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 3
	st.d	$a0, $s0, 32
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(Symbol_insert)
	jirl	$ra, $ra, 0
.LBB77_11:
	ld.w	$a0, $s0, 52
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 52
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB77_12:
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end77:
	.size	Symbol_new, .Lfunc_end77-Symbol_new
                                        # -- End function
	.globl	Symbolcmpp                      # -- Begin function Symbolcmpp
	.p2align	5
	.type	Symbolcmpp,@function
Symbolcmpp:                             # @Symbolcmpp
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.w	$a1, $a0, 8
	ld.b	$a0, $a2, 0
	ld.w	$a2, $a3, 8
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 90
	slt	$a0, $a5, $a0
	lu12i.w	$a4, 2441
	ld.b	$a3, $a3, 0
	ori	$a6, $a4, 1664
	maskeqz	$a0, $a6, $a0
	add.w	$a4, $a0, $a1
	slt	$a0, $a5, $a3
	maskeqz	$a0, $a6, $a0
	add.w	$a5, $a0, $a2
	addi.w	$a3, $zero, -1
	bge	$a4, $a5, .LBB78_2
# %bb.1:
	move	$a0, $a3
	ret
.LBB78_2:
	ori	$a0, $zero, 1
	blt	$a5, $a4, .LBB78_5
# %bb.3:
	move	$a0, $a3
	blt	$a1, $a2, .LBB78_5
# %bb.4:
	slt	$a0, $a2, $a1
.LBB78_5:
	ret
.Lfunc_end78:
	.size	Symbolcmpp, .Lfunc_end78-Symbolcmpp
                                        # -- End function
	.globl	Symbol_init                     # -- Begin function Symbol_init
	.p2align	5
	.type	Symbol_init,@function
Symbol_init:                            # @Symbol_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(x2a)
	ld.d	$a0, $s0, %pc_lo12(x2a)
	beqz	$a0, .LBB79_2
.LBB79_1:                               # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB79_2:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x2a)
	beqz	$a0, .LBB79_1
# %bb.3:
	move	$fp, $a0
	ori	$a0, $zero, 128
	st.d	$a0, $fp, 0
	lu12i.w	$s1, 1
	ori	$a0, $s1, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB79_5
# %bb.4:                                # %.loopexit.loopexit
	add.d	$a0, $a0, $s1
	ori	$a2, $zero, 1024
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB79_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x2a)
	b	.LBB79_1
.Lfunc_end79:
	.size	Symbol_init, .Lfunc_end79-Symbol_init
                                        # -- End function
	.globl	Symbol_insert                   # -- Begin function Symbol_insert
	.p2align	5
	.type	Symbol_insert,@function
Symbol_insert:                          # @Symbol_insert
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
	pcalau12i	$a2, %pc_hi20(x2a)
	ld.d	$s3, $a2, %pc_lo12(x2a)
	beqz	$s3, .LBB80_22
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.bu	$a0, $a1, 0
	beqz	$a0, .LBB80_4
# %bb.2:                                # %.lr.ph.i.preheader
	move	$s4, $zero
	addi.d	$a1, $s0, 1
	.p2align	4, , 16
.LBB80_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a2, $a0
	ld.bu	$a0, $a1, 0
	alsl.d	$a3, $s4, $s4, 1
	alsl.d	$a3, $a3, $s4, 2
	add.w	$s4, $a3, $a2
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB80_3
	b	.LBB80_5
.LBB80_4:
	move	$s4, $zero
.LBB80_5:                               # %strhash.exit
	ld.w	$s7, $s3, 0
	ld.d	$s1, $s3, 16
	addi.w	$a0, $s7, -1
	and	$s6, $a0, $s4
	slli.d	$a0, $s6, 3
	ldx.d	$s2, $s1, $a0
	beqz	$s2, .LBB80_8
	.p2align	4, , 16
.LBB80_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB80_22
# %bb.7:                                #   in Loop: Header=BB80_6 Depth=1
	ld.d	$s2, $s2, 16
	bnez	$s2, .LBB80_6
.LBB80_8:                               # %._crit_edge
	ld.w	$s5, $s3, 4
	bge	$s5, $s7, .LBB80_10
# %bb.9:                                # %._crit_edge._crit_edge
	ld.d	$s2, $s3, 8
	b	.LBB80_25
.LBB80_10:
	slli.w	$s6, $s7, 1
	slli.d	$s1, $s6, 5
	alsl.d	$a0, $s6, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB80_22
# %bb.11:
	move	$s2, $a0
	add.d	$s1, $a0, $s1
	blez	$s7, .LBB80_13
# %bb.12:                               # %.lr.ph80.preheader
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a0, $a1, $a0
	slli.d	$a2, $a0, 3
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB80_13:                              # %.preheader
	blez	$s5, .LBB80_23
# %bb.14:                               # %.lr.ph82
	ld.d	$a0, $s3, 8
	move	$a1, $zero
	addi.w	$s7, $s6, -1
	b	.LBB80_16
	.p2align	4, , 16
.LBB80_15:                              #   in Loop: Header=BB80_16 Depth=1
	ld.d	$a3, $a3, 0
	alsl.d	$a5, $a5, $s1, 3
	st.d	$a6, $a4, 16
	st.d	$a2, $a4, 8
	st.d	$a3, $a4, 0
	st.d	$a5, $a4, 24
	addi.d	$a1, $a1, 1
	st.d	$a4, $a5, 0
	beq	$a1, $s5, .LBB80_24
.LBB80_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB80_18 Depth 2
	slli.d	$a4, $a1, 5
	add.d	$a3, $a0, $a4
	ld.d	$a2, $a3, 8
	ld.bu	$a5, $a2, 0
	beqz	$a5, .LBB80_19
# %bb.17:                               # %.lr.ph.i68.preheader
                                        #   in Loop: Header=BB80_16 Depth=1
	move	$a6, $zero
	addi.d	$a7, $a2, 1
	.p2align	4, , 16
.LBB80_18:                              # %.lr.ph.i68
                                        #   Parent Loop BB80_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t0, $a5
	ld.bu	$a5, $a7, 0
	alsl.d	$t1, $a6, $a6, 1
	alsl.d	$a6, $t1, $a6, 2
	add.w	$a6, $a6, $t0
	addi.d	$a7, $a7, 1
	bnez	$a5, .LBB80_18
	b	.LBB80_20
	.p2align	4, , 16
.LBB80_19:                              #   in Loop: Header=BB80_16 Depth=1
	move	$a6, $zero
.LBB80_20:                              # %strhash.exit73
                                        #   in Loop: Header=BB80_16 Depth=1
	and	$a5, $a6, $s7
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $s1, $a6
	add.d	$a4, $s2, $a4
	beqz	$a6, .LBB80_15
# %bb.21:                               #   in Loop: Header=BB80_16 Depth=1
	addi.d	$a7, $a4, 16
	st.d	$a7, $a6, 24
	b	.LBB80_15
.LBB80_22:
	move	$a0, $zero
	b	.LBB80_28
.LBB80_23:                              # %.preheader.._crit_edge83_crit_edge
	ld.d	$a0, $s3, 8
	addi.w	$s7, $s6, -1
.LBB80_24:                              # %._crit_edge83
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.w	$s6, $s3, 0
	st.d	$s2, $s3, 8
	st.d	$s1, $s3, 16
	and	$s6, $s7, $s4
.LBB80_25:
	addi.d	$a0, $s5, 1
	st.w	$a0, $s3, 4
	slli.d	$a2, $s5, 5
	slli.d	$a0, $s6, 3
	ldx.d	$a1, $s1, $a0
	add.d	$a0, $s2, $a2
	st.d	$s0, $a0, 8
	stx.d	$fp, $s2, $a2
	alsl.d	$a2, $s6, $s1, 3
	beqz	$a1, .LBB80_27
# %bb.26:
	addi.d	$a3, $a0, 16
	st.d	$a3, $a1, 24
.LBB80_27:
	st.d	$a1, $a0, 16
	st.d	$a0, $a2, 0
	st.d	$a2, $a0, 24
	ori	$a0, $zero, 1
.LBB80_28:                              # %.critedge
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
.Lfunc_end80:
	.size	Symbol_insert, .Lfunc_end80-Symbol_insert
                                        # -- End function
	.globl	Symbol_find                     # -- Begin function Symbol_find
	.p2align	5
	.type	Symbol_find,@function
Symbol_find:                            # @Symbol_find
# %bb.0:
	pcalau12i	$a1, %pc_hi20(x2a)
	ld.d	$a1, $a1, %pc_lo12(x2a)
	beqz	$a1, .LBB81_4
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB81_5
# %bb.2:                                # %.lr.ph.i.preheader
	move	$a0, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB81_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a0, $a0, 1
	alsl.d	$a0, $a5, $a0, 2
	add.w	$a0, $a0, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB81_3
	b	.LBB81_6
.LBB81_4:
	move	$a0, $zero
	ret
.LBB81_5:
	move	$a0, $zero
.LBB81_6:                               # %strhash.exit
	ld.w	$a2, $a1, 0
	ld.d	$a1, $a1, 16
	addi.w	$a2, $a2, -1
	and	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $a1, $a0
	beqz	$s0, .LBB81_9
	.p2align	4, , 16
.LBB81_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB81_10
# %bb.8:                                #   in Loop: Header=BB81_7 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB81_7
.LBB81_9:
	move	$a0, $zero
	b	.LBB81_11
.LBB81_10:
	ld.d	$a0, $s0, 0
.LBB81_11:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end81:
	.size	Symbol_find, .Lfunc_end81-Symbol_find
                                        # -- End function
	.globl	Symbol_Nth                      # -- Begin function Symbol_Nth
	.p2align	5
	.type	Symbol_Nth,@function
Symbol_Nth:                             # @Symbol_Nth
# %bb.0:
	move	$a1, $a0
	move	$a0, $zero
	blez	$a1, .LBB82_5
# %bb.1:
	pcalau12i	$a2, %pc_hi20(x2a)
	ld.d	$a2, $a2, %pc_lo12(x2a)
	beqz	$a2, .LBB82_5
# %bb.2:
	ld.w	$a0, $a2, 4
	bge	$a0, $a1, .LBB82_4
# %bb.3:
	move	$a0, $zero
	ret
.LBB82_4:
	ld.d	$a0, $a2, 8
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, -32
.LBB82_5:
	ret
.Lfunc_end82:
	.size	Symbol_Nth, .Lfunc_end82-Symbol_Nth
                                        # -- End function
	.globl	Symbol_count                    # -- Begin function Symbol_count
	.p2align	5
	.type	Symbol_count,@function
Symbol_count:                           # @Symbol_count
# %bb.0:
	pcalau12i	$a0, %pc_hi20(x2a)
	ld.d	$a0, $a0, %pc_lo12(x2a)
	beqz	$a0, .LBB83_2
# %bb.1:
	ld.w	$a0, $a0, 4
	ret
.LBB83_2:
	move	$a0, $zero
	ret
.Lfunc_end83:
	.size	Symbol_count, .Lfunc_end83-Symbol_count
                                        # -- End function
	.globl	Symbol_arrayof                  # -- Begin function Symbol_arrayof
	.p2align	5
	.type	Symbol_arrayof,@function
Symbol_arrayof:                         # @Symbol_arrayof
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(x2a)
	ld.d	$s0, $a0, %pc_lo12(x2a)
	beqz	$s0, .LBB84_5
# %bb.1:
	ld.w	$fp, $s0, 4
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB84_5
# %bb.2:                                # %.preheader
	blez	$fp, .LBB84_11
# %bb.3:                                # %.lr.ph
	ld.d	$a1, $s0, 8
	ori	$a2, $zero, 4
	bgeu	$fp, $a2, .LBB84_6
# %bb.4:
	move	$a2, $zero
	b	.LBB84_9
.LBB84_5:
	move	$a0, $zero
	b	.LBB84_11
.LBB84_6:                               # %vector.ph
	move	$a3, $zero
	bstrpick.d	$a2, $fp, 30, 2
	slli.d	$a2, $a2, 2
	slli.d	$a4, $fp, 3
	bstrpick.d	$a4, $a4, 33, 5
	slli.d	$a4, $a4, 5
	addi.d	$a5, $a1, 64
	.p2align	4, , 16
.LBB84_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, -64
	ld.d	$a7, $a5, -32
	ld.d	$t0, $a5, 0
	ld.d	$t1, $a5, 32
	vinsgr2vr.d	$vr0, $a6, 0
	vinsgr2vr.d	$vr0, $a7, 1
	vinsgr2vr.d	$vr1, $t0, 0
	vinsgr2vr.d	$vr1, $t1, 1
	add.d	$a6, $a0, $a3
	vstx	$vr0, $a0, $a3
	vst	$vr1, $a6, 16
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, 128
	bne	$a4, $a3, .LBB84_7
# %bb.8:                                # %middle.block
	beq	$a2, $fp, .LBB84_11
.LBB84_9:                               # %scalar.ph.preheader
	slli.d	$a3, $a2, 3
	slli.d	$a4, $a2, 5
	add.d	$a1, $a1, $a4
	sub.d	$a2, $fp, $a2
	.p2align	4, , 16
.LBB84_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	stx.d	$a4, $a0, $a3
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB84_10
.LBB84_11:                              # %.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end84:
	.size	Symbol_arrayof, .Lfunc_end84-Symbol_arrayof
                                        # -- End function
	.globl	Configcmp                       # -- Begin function Configcmp
	.p2align	5
	.type	Configcmp,@function
Configcmp:                              # @Configcmp
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.w	$a2, $a2, 72
	ld.w	$a3, $a3, 72
	sub.w	$a2, $a2, $a3
	beqz	$a2, .LBB85_2
# %bb.1:
	move	$a0, $a2
	ret
.LBB85_2:
	ld.w	$a0, $a0, 8
	ld.w	$a1, $a1, 8
	sub.w	$a2, $a0, $a1
	move	$a0, $a2
	ret
.Lfunc_end85:
	.size	Configcmp, .Lfunc_end85-Configcmp
                                        # -- End function
	.globl	statecmp                        # -- Begin function statecmp
	.p2align	5
	.type	statecmp,@function
statecmp:                               # @statecmp
# %bb.0:
	beqz	$a0, .LBB86_8
# %bb.1:
	beqz	$a1, .LBB86_8
	.p2align	4, , 16
.LBB86_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.w	$a2, $a2, 72
	ld.w	$a3, $a3, 72
	sub.w	$a2, $a2, $a3
	bnez	$a2, .LBB86_4
# %bb.3:                                #   in Loop: Header=BB86_2 Depth=1
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a1, 8
	sub.w	$a2, $a2, $a3
.LBB86_4:                               #   in Loop: Header=BB86_2 Depth=1
	ld.d	$a0, $a0, 64
	ld.d	$a1, $a1, 64
	bnez	$a2, .LBB86_7
# %bb.5:                                #   in Loop: Header=BB86_2 Depth=1
	beqz	$a0, .LBB86_7
# %bb.6:                                #   in Loop: Header=BB86_2 Depth=1
	bnez	$a1, .LBB86_2
.LBB86_7:                               # %.critedge
	sltu	$a1, $zero, $a1
	sltu	$a0, $zero, $a0
	sltui	$a3, $a2, 1
	masknez	$a0, $a0, $a1
	addi.w	$a4, $zero, -1
	maskeqz	$a1, $a4, $a1
	or	$a0, $a1, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a1, $a2, $a3
	or	$a0, $a0, $a1
	ret
.LBB86_8:                               # %.critedge.thread
	sltu	$a1, $zero, $a1
	sltu	$a0, $zero, $a0
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end86:
	.size	statecmp, .Lfunc_end86-statecmp
                                        # -- End function
	.globl	statehash                       # -- Begin function statehash
	.p2align	5
	.type	statehash,@function
statehash:                              # @statehash
# %bb.0:
	move	$a1, $zero
	beqz	$a0, .LBB87_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a2, $zero, 571
	.p2align	4, , 16
.LBB87_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a3, $a3, 72
	mul.d	$a1, $a1, $a2
	ld.w	$a4, $a0, 8
	ld.d	$a0, $a0, 64
	alsl.d	$a5, $a3, $a3, 3
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a1, $a3, $a1
	add.w	$a1, $a1, $a4
	bnez	$a0, .LBB87_2
.LBB87_3:                               # %._crit_edge
	move	$a0, $a1
	ret
.Lfunc_end87:
	.size	statehash, .Lfunc_end87-statehash
                                        # -- End function
	.globl	State_new                       # -- Begin function State_new
	.p2align	5
	.type	State_new,@function
State_new:                              # @State_new
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB88_2
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB88_2:
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end88:
	.size	State_new, .Lfunc_end88-State_new
                                        # -- End function
	.globl	State_init                      # -- Begin function State_init
	.p2align	5
	.type	State_init,@function
State_init:                             # @State_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(x3a)
	ld.d	$a0, $s0, %pc_lo12(x3a)
	beqz	$a0, .LBB89_2
.LBB89_1:                               # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB89_2:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x3a)
	beqz	$a0, .LBB89_1
# %bb.3:
	move	$fp, $a0
	ori	$a0, $zero, 128
	st.d	$a0, $fp, 0
	lu12i.w	$s1, 1
	ori	$a0, $s1, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB89_5
# %bb.4:                                # %.loopexit.loopexit
	add.d	$a0, $a0, $s1
	ori	$a2, $zero, 1024
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB89_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x3a)
	b	.LBB89_1
.Lfunc_end89:
	.size	State_init, .Lfunc_end89-State_init
                                        # -- End function
	.globl	State_insert                    # -- Begin function State_insert
	.p2align	5
	.type	State_insert,@function
State_insert:                           # @State_insert
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
	pcalau12i	$a2, %pc_hi20(x3a)
	ld.d	$s1, $a2, %pc_lo12(x3a)
	beqz	$s1, .LBB90_33
# %bb.1:
	move	$s2, $zero
	beqz	$a1, .LBB90_4
# %bb.2:                                # %.lr.ph.i.preheader
	ori	$a2, $zero, 571
	move	$a3, $a1
	.p2align	4, , 16
.LBB90_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	ld.w	$a4, $a4, 72
	mul.d	$a5, $s2, $a2
	ld.w	$a6, $a3, 8
	ld.d	$a3, $a3, 64
	alsl.d	$a7, $a4, $a4, 3
	alsl.d	$a4, $a7, $a4, 2
	add.d	$a4, $a4, $a5
	add.w	$s2, $a4, $a6
	bnez	$a3, .LBB90_3
.LBB90_4:                               # %statehash.exit
	ld.w	$s7, $s1, 0
	ld.d	$fp, $s1, 16
	addi.w	$a2, $s7, -1
	and	$a2, $a2, $s2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $fp, $a3
	beqz	$a3, .LBB90_19
# %bb.5:                                # %.lr.ph
	bnez	$a1, .LBB90_7
	b	.LBB90_18
	.p2align	4, , 16
.LBB90_6:                               # %statecmp.exit.thread
                                        #   in Loop: Header=BB90_7 Depth=1
	ld.d	$a3, $a3, 16
	beqz	$a3, .LBB90_19
.LBB90_7:                               # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_9 Depth 2
	ld.d	$a4, $a3, 8
	beqz	$a4, .LBB90_6
# %bb.8:                                # %.lr.ph.i67.preheader
                                        #   in Loop: Header=BB90_7 Depth=1
	move	$a5, $a1
	.p2align	4, , 16
.LBB90_9:                               # %.lr.ph.i67
                                        #   Parent Loop BB90_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a5, 0
	ld.w	$a6, $a6, 72
	ld.w	$a7, $a7, 72
	sub.w	$a6, $a6, $a7
	bnez	$a6, .LBB90_11
# %bb.10:                               #   in Loop: Header=BB90_9 Depth=2
	ld.w	$a6, $a4, 8
	ld.w	$a7, $a5, 8
	sub.w	$a6, $a6, $a7
.LBB90_11:                              #   in Loop: Header=BB90_9 Depth=2
	ld.d	$a4, $a4, 64
	ld.d	$a5, $a5, 64
	bnez	$a6, .LBB90_14
# %bb.12:                               #   in Loop: Header=BB90_9 Depth=2
	beqz	$a4, .LBB90_14
# %bb.13:                               #   in Loop: Header=BB90_9 Depth=2
	bnez	$a5, .LBB90_9
.LBB90_14:                              # %.critedge.i
                                        #   in Loop: Header=BB90_7 Depth=1
	bnez	$a6, .LBB90_6
# %bb.15:                               # %.critedge.i
                                        #   in Loop: Header=BB90_7 Depth=1
	bnez	$a5, .LBB90_6
# %bb.16:                               # %.critedge.i
                                        #   in Loop: Header=BB90_7 Depth=1
	bnez	$a4, .LBB90_6
	b	.LBB90_33
	.p2align	4, , 16
.LBB90_17:                              # %statecmp.exit.thread.us
                                        #   in Loop: Header=BB90_18 Depth=1
	ld.d	$a3, $a3, 16
	beqz	$a3, .LBB90_19
.LBB90_18:                              # %.critedge.thread.i.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 8
	bnez	$a4, .LBB90_17
	b	.LBB90_33
.LBB90_19:                              # %._crit_edge
	ld.w	$s3, $s1, 4
	bge	$s3, $s7, .LBB90_21
# %bb.20:                               # %._crit_edge._crit_edge
	ld.d	$s0, $s1, 8
	b	.LBB90_36
.LBB90_21:
	move	$s4, $a1
	move	$s5, $a0
	slli.w	$s6, $s7, 1
	slli.d	$fp, $s6, 5
	alsl.d	$a0, $s6, $fp, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB90_33
# %bb.22:
	move	$s0, $a0
	add.d	$fp, $a0, $fp
	blez	$s7, .LBB90_24
# %bb.23:                               # %.lr.ph84.preheader
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a0, $a1, $a0
	slli.d	$a2, $a0, 3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB90_24:                              # %.preheader
	blez	$s3, .LBB90_34
# %bb.25:                               # %.lr.ph86
	ld.d	$a0, $s1, 8
	move	$a1, $zero
	addi.w	$s7, $s6, -1
	ori	$a2, $zero, 571
	b	.LBB90_27
	.p2align	4, , 16
.LBB90_26:                              #   in Loop: Header=BB90_27 Depth=1
	ld.d	$a4, $a4, 0
	alsl.d	$a6, $a6, $fp, 3
	st.d	$a7, $a5, 16
	st.d	$a3, $a5, 8
	st.d	$a4, $a5, 0
	st.d	$a6, $a5, 24
	addi.d	$a1, $a1, 1
	st.d	$a5, $a6, 0
	beq	$a1, $s3, .LBB90_35
.LBB90_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_29 Depth 2
	slli.d	$a5, $a1, 5
	add.d	$a4, $a0, $a5
	ld.d	$a3, $a4, 8
	beqz	$a3, .LBB90_30
# %bb.28:                               # %.lr.ph.i69.preheader
                                        #   in Loop: Header=BB90_27 Depth=1
	move	$a7, $zero
	move	$a6, $a3
	.p2align	4, , 16
.LBB90_29:                              # %.lr.ph.i69
                                        #   Parent Loop BB90_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a6, 0
	ld.w	$t0, $t0, 72
	mul.d	$a7, $a7, $a2
	ld.w	$t1, $a6, 8
	ld.d	$a6, $a6, 64
	alsl.d	$t2, $t0, $t0, 3
	alsl.d	$t0, $t2, $t0, 2
	add.d	$a7, $t0, $a7
	add.w	$a7, $a7, $t1
	bnez	$a6, .LBB90_29
	b	.LBB90_31
	.p2align	4, , 16
.LBB90_30:                              #   in Loop: Header=BB90_27 Depth=1
	move	$a7, $zero
.LBB90_31:                              # %statehash.exit74
                                        #   in Loop: Header=BB90_27 Depth=1
	and	$a6, $a7, $s7
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $fp, $a7
	add.d	$a5, $s0, $a5
	beqz	$a7, .LBB90_26
# %bb.32:                               #   in Loop: Header=BB90_27 Depth=1
	addi.d	$t0, $a5, 16
	st.d	$t0, $a7, 24
	b	.LBB90_26
.LBB90_33:
	move	$a0, $zero
	b	.LBB90_39
.LBB90_34:                              # %.preheader.._crit_edge87_crit_edge
	ld.d	$a0, $s1, 8
	addi.w	$s7, $s6, -1
.LBB90_35:                              # %._crit_edge87
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.w	$s6, $s1, 0
	st.d	$s0, $s1, 8
	st.d	$fp, $s1, 16
	and	$a2, $s7, $s2
	move	$a0, $s5
	move	$a1, $s4
.LBB90_36:
	addi.d	$a3, $s3, 1
	st.w	$a3, $s1, 4
	slli.d	$a5, $s3, 5
	slli.d	$a3, $a2, 3
	ldx.d	$a4, $fp, $a3
	add.d	$a3, $s0, $a5
	st.d	$a1, $a3, 8
	stx.d	$a0, $s0, $a5
	alsl.d	$a0, $a2, $fp, 3
	beqz	$a4, .LBB90_38
# %bb.37:
	addi.d	$a1, $a3, 16
	st.d	$a1, $a4, 24
.LBB90_38:
	st.d	$a4, $a3, 16
	st.d	$a3, $a0, 0
	st.d	$a0, $a3, 24
	ori	$a0, $zero, 1
.LBB90_39:                              # %.critedge
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
.Lfunc_end90:
	.size	State_insert, .Lfunc_end90-State_insert
                                        # -- End function
	.globl	State_find                      # -- Begin function State_find
	.p2align	5
	.type	State_find,@function
State_find:                             # @State_find
# %bb.0:
	pcalau12i	$a1, %pc_hi20(x3a)
	ld.d	$a1, $a1, %pc_lo12(x3a)
	beqz	$a1, .LBB91_20
# %bb.1:
	move	$a3, $zero
	beqz	$a0, .LBB91_4
# %bb.2:                                # %.lr.ph.i.preheader
	ori	$a2, $zero, 571
	move	$a4, $a0
	.p2align	4, , 16
.LBB91_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ld.w	$a5, $a5, 72
	mul.d	$a3, $a3, $a2
	ld.w	$a6, $a4, 8
	ld.d	$a4, $a4, 64
	alsl.d	$a7, $a5, $a5, 3
	alsl.d	$a5, $a7, $a5, 2
	add.d	$a3, $a5, $a3
	add.w	$a3, $a3, $a6
	bnez	$a4, .LBB91_3
.LBB91_4:                               # %statehash.exit
	ld.w	$a2, $a1, 0
	ld.d	$a1, $a1, 16
	addi.w	$a2, $a2, -1
	and	$a2, $a2, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	beqz	$a1, .LBB91_20
# %bb.5:                                # %.lr.ph
	bnez	$a0, .LBB91_7
	b	.LBB91_18
	.p2align	4, , 16
.LBB91_6:                               # %statecmp.exit.thread
                                        #   in Loop: Header=BB91_7 Depth=1
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB91_20
.LBB91_7:                               # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_9 Depth 2
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB91_6
# %bb.8:                                # %.lr.ph.i9.preheader
                                        #   in Loop: Header=BB91_7 Depth=1
	move	$a3, $a0
	.p2align	4, , 16
.LBB91_9:                               # %.lr.ph.i9
                                        #   Parent Loop BB91_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a5, 72
	sub.w	$a4, $a4, $a5
	bnez	$a4, .LBB91_11
# %bb.10:                               #   in Loop: Header=BB91_9 Depth=2
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a3, 8
	sub.w	$a4, $a4, $a5
.LBB91_11:                              #   in Loop: Header=BB91_9 Depth=2
	ld.d	$a2, $a2, 64
	ld.d	$a3, $a3, 64
	bnez	$a4, .LBB91_14
# %bb.12:                               #   in Loop: Header=BB91_9 Depth=2
	beqz	$a2, .LBB91_14
# %bb.13:                               #   in Loop: Header=BB91_9 Depth=2
	bnez	$a3, .LBB91_9
.LBB91_14:                              # %.critedge.i
                                        #   in Loop: Header=BB91_7 Depth=1
	bnez	$a4, .LBB91_6
# %bb.15:                               # %.critedge.i
                                        #   in Loop: Header=BB91_7 Depth=1
	bnez	$a3, .LBB91_6
# %bb.16:                               # %.critedge.i
                                        #   in Loop: Header=BB91_7 Depth=1
	bnez	$a2, .LBB91_6
	b	.LBB91_19
	.p2align	4, , 16
.LBB91_17:                              # %statecmp.exit.thread.us
                                        #   in Loop: Header=BB91_18 Depth=1
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB91_20
.LBB91_18:                              # %.critedge.thread.i.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB91_17
.LBB91_19:                              # %.split.us
	ld.d	$a0, $a1, 0
	ret
.LBB91_20:
	move	$a0, $zero
	ret
.Lfunc_end91:
	.size	State_find, .Lfunc_end91-State_find
                                        # -- End function
	.globl	State_arrayof                   # -- Begin function State_arrayof
	.p2align	5
	.type	State_arrayof,@function
State_arrayof:                          # @State_arrayof
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(x3a)
	ld.d	$s1, $a0, %pc_lo12(x3a)
	beqz	$s1, .LBB92_5
# %bb.1:
	ld.w	$s0, $s1, 4
	slli.d	$fp, $s0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB92_5
# %bb.2:                                # %.preheader
	blez	$s0, .LBB92_11
# %bb.3:                                # %.lr.ph
	ld.d	$a1, $s1, 8
	ori	$a2, $zero, 4
	bgeu	$s0, $a2, .LBB92_6
# %bb.4:
	move	$a2, $zero
	b	.LBB92_9
.LBB92_5:
	move	$a0, $zero
	b	.LBB92_11
.LBB92_6:                               # %vector.ph
	move	$a3, $zero
	bstrpick.d	$a2, $s0, 30, 2
	slli.d	$a2, $a2, 2
	bstrpick.d	$a4, $fp, 33, 5
	slli.d	$a4, $a4, 5
	addi.d	$a5, $a1, 64
	.p2align	4, , 16
.LBB92_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, -64
	ld.d	$a7, $a5, -32
	ld.d	$t0, $a5, 0
	ld.d	$t1, $a5, 32
	vinsgr2vr.d	$vr0, $a6, 0
	vinsgr2vr.d	$vr0, $a7, 1
	vinsgr2vr.d	$vr1, $t0, 0
	vinsgr2vr.d	$vr1, $t1, 1
	add.d	$a6, $a0, $a3
	vstx	$vr0, $a0, $a3
	vst	$vr1, $a6, 16
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, 128
	bne	$a4, $a3, .LBB92_7
# %bb.8:                                # %middle.block
	beq	$a2, $s0, .LBB92_11
.LBB92_9:                               # %scalar.ph.preheader
	slli.d	$a3, $a2, 3
	slli.d	$a4, $a2, 5
	add.d	$a1, $a1, $a4
	sub.d	$a2, $s0, $a2
	.p2align	4, , 16
.LBB92_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	stx.d	$a4, $a0, $a3
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB92_10
.LBB92_11:                              # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end92:
	.size	State_arrayof, .Lfunc_end92-State_arrayof
                                        # -- End function
	.globl	confighash                      # -- Begin function confighash
	.p2align	5
	.type	confighash,@function
confighash:                             # @confighash
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.w	$a1, $a1, 72
	ld.w	$a0, $a0, 8
	alsl.d	$a2, $a1, $a1, 3
	alsl.d	$a1, $a2, $a1, 2
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end93:
	.size	confighash, .Lfunc_end93-confighash
                                        # -- End function
	.globl	Configtable_init                # -- Begin function Configtable_init
	.p2align	5
	.type	Configtable_init,@function
Configtable_init:                       # @Configtable_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(x4a)
	ld.d	$a0, $s0, %pc_lo12(x4a)
	beqz	$a0, .LBB94_2
.LBB94_1:                               # %.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB94_2:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x4a)
	beqz	$a0, .LBB94_1
# %bb.3:
	move	$fp, $a0
	ori	$a0, $zero, 64
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 2048
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB94_5
# %bb.4:                                # %.loopexit.loopexit
	addi.d	$a0, $a0, 1536
	ori	$a2, $zero, 512
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB94_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x4a)
	b	.LBB94_1
.Lfunc_end94:
	.size	Configtable_init, .Lfunc_end94-Configtable_init
                                        # -- End function
	.globl	Configtable_insert              # -- Begin function Configtable_insert
	.p2align	5
	.type	Configtable_insert,@function
Configtable_insert:                     # @Configtable_insert
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
	pcalau12i	$a1, %pc_hi20(x4a)
	ld.d	$s1, $a1, %pc_lo12(x4a)
	beqz	$s1, .LBB95_15
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.w	$a2, $a1, 72
	ld.w	$a3, $a0, 8
	alsl.d	$a1, $a2, $a2, 3
	ld.w	$s6, $s1, 0
	alsl.d	$a1, $a1, $a2, 2
	add.w	$s2, $a1, $a3
	ld.d	$fp, $s1, 16
	addi.w	$a1, $s6, -1
	and	$a1, $a1, $s2
	slli.d	$a4, $a1, 3
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB95_5
.LBB95_2:                               # %._crit_edge
	ld.w	$s3, $s1, 4
	bge	$s3, $s6, .LBB95_7
# %bb.3:                                # %._crit_edge._crit_edge
	ld.d	$s0, $s1, 8
	b	.LBB95_18
	.p2align	4, , 16
.LBB95_4:                               # %Configcmp.exit.thread
                                        #   in Loop: Header=BB95_5 Depth=1
	ld.d	$a4, $a4, 8
	beqz	$a4, .LBB95_2
.LBB95_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a5, 0
	ld.w	$a6, $a6, 72
	bne	$a6, $a2, .LBB95_4
# %bb.6:                                # %Configcmp.exit
                                        #   in Loop: Header=BB95_5 Depth=1
	ld.w	$a5, $a5, 8
	bne	$a5, $a3, .LBB95_4
	b	.LBB95_15
.LBB95_7:
	move	$s4, $a0
	slli.w	$s5, $s6, 1
	slli.d	$a0, $s5, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB95_15
# %bb.8:
	move	$s0, $a0
	slli.d	$a0, $s5, 4
	alsl.d	$a0, $s5, $a0, 3
	add.d	$fp, $s0, $a0
	blez	$s6, .LBB95_10
# %bb.9:                                # %.lr.ph69.preheader
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a0, $a1, $a0
	slli.d	$a2, $a0, 3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB95_10:                              # %.preheader
	blez	$s3, .LBB95_16
# %bb.11:                               # %.lr.ph71
	move	$a1, $zero
	ld.d	$a0, $s1, 8
	addi.w	$s6, $s5, -1
	slli.d	$a2, $s3, 4
	alsl.d	$a2, $s3, $a2, 3
	b	.LBB95_13
	.p2align	4, , 16
.LBB95_12:                              #   in Loop: Header=BB95_13 Depth=1
	alsl.d	$a5, $a5, $fp, 3
	st.d	$a6, $a4, 8
	stx.d	$a3, $s0, $a1
	st.d	$a5, $a4, 16
	addi.d	$a1, $a1, 24
	st.d	$a4, $a5, 0
	beq	$a2, $a1, .LBB95_17
.LBB95_13:                              # =>This Inner Loop Header: Depth=1
	ldx.d	$a3, $a0, $a1
	ld.d	$a4, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a3, 8
	alsl.d	$a6, $a4, $a4, 3
	alsl.d	$a4, $a6, $a4, 2
	add.w	$a4, $a4, $a5
	and	$a5, $a4, $s6
	slli.d	$a4, $a5, 3
	ldx.d	$a6, $fp, $a4
	add.d	$a4, $s0, $a1
	beqz	$a6, .LBB95_12
# %bb.14:                               #   in Loop: Header=BB95_13 Depth=1
	addi.d	$a7, $a4, 8
	st.d	$a7, $a6, 16
	b	.LBB95_12
.LBB95_15:
	move	$a0, $zero
	b	.LBB95_21
.LBB95_16:                              # %.preheader.._crit_edge72_crit_edge
	ld.d	$a0, $s1, 8
	addi.w	$s6, $s5, -1
.LBB95_17:                              # %._crit_edge72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.w	$s5, $s1, 0
	st.d	$s0, $s1, 8
	st.d	$fp, $s1, 16
	and	$a1, $s6, $s2
	move	$a0, $s4
.LBB95_18:
	addi.d	$a2, $s3, 1
	st.w	$a2, $s1, 4
	slli.d	$a2, $s3, 4
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $fp, $a3
	alsl.d	$a4, $s3, $a2, 3
	add.d	$a2, $s0, $a4
	stx.d	$a0, $s0, $a4
	alsl.d	$a0, $a1, $fp, 3
	beqz	$a3, .LBB95_20
# %bb.19:
	addi.d	$a1, $a2, 8
	st.d	$a1, $a3, 16
.LBB95_20:
	st.d	$a3, $a2, 8
	st.d	$a2, $a0, 0
	st.d	$a0, $a2, 16
	ori	$a0, $zero, 1
.LBB95_21:                              # %.critedge
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
.Lfunc_end95:
	.size	Configtable_insert, .Lfunc_end95-Configtable_insert
                                        # -- End function
	.globl	Configtable_find                # -- Begin function Configtable_find
	.p2align	5
	.type	Configtable_find,@function
Configtable_find:                       # @Configtable_find
# %bb.0:
	pcalau12i	$a1, %pc_hi20(x4a)
	ld.d	$a3, $a1, %pc_lo12(x4a)
	beqz	$a3, .LBB96_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.w	$a1, $a1, 72
	ld.w	$a2, $a0, 8
	alsl.d	$a0, $a1, $a1, 3
	ld.w	$a4, $a3, 0
	alsl.d	$a0, $a0, $a1, 2
	add.w	$a0, $a0, $a2
	ld.d	$a3, $a3, 16
	addi.w	$a4, $a4, -1
	and	$a0, $a4, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a3, $a0
	bnez	$a3, .LBB96_5
.LBB96_2:
	move	$a0, $zero
.LBB96_3:                               # %.critedge
	ret
	.p2align	4, , 16
.LBB96_4:                               # %Configcmp.exit.thread
                                        #   in Loop: Header=BB96_5 Depth=1
	ld.d	$a3, $a3, 8
	beqz	$a3, .LBB96_2
.LBB96_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a0, 0
	ld.w	$a4, $a4, 72
	bne	$a4, $a1, .LBB96_4
# %bb.6:                                # %Configcmp.exit
                                        #   in Loop: Header=BB96_5 Depth=1
	ld.w	$a4, $a0, 8
	bne	$a4, $a2, .LBB96_4
	b	.LBB96_3
.Lfunc_end96:
	.size	Configtable_find, .Lfunc_end96-Configtable_find
                                        # -- End function
	.globl	Configtable_clear               # -- Begin function Configtable_clear
	.p2align	5
	.type	Configtable_clear,@function
Configtable_clear:                      # @Configtable_clear
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(x4a)
	ld.d	$s0, $s1, %pc_lo12(x4a)
	beqz	$s0, .LBB97_9
# %bb.1:
	move	$fp, $a0
	ld.w	$a0, $s0, 4
	beqz	$a0, .LBB97_9
# %bb.2:
	beqz	$fp, .LBB97_6
# %bb.3:
	blez	$a0, .LBB97_6
# %bb.4:                                # %.lr.ph.preheader
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB97_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ldx.d	$a0, $a0, $s2
	jirl	$ra, $fp, 0
	ld.d	$s0, $s1, %pc_lo12(x4a)
	ld.w	$a0, $s0, 4
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 24
	blt	$s3, $a0, .LBB97_5
.LBB97_6:                               # %.loopexit
	ld.w	$a1, $s0, 0
	blez	$a1, .LBB97_8
# %bb.7:                                # %.lr.ph11
	ld.d	$a0, $s0, 16
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB97_8:                               # %._crit_edge
	st.w	$zero, $s0, 4
.LBB97_9:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end97:
	.size	Configtable_clear, .Lfunc_end97-Configtable_clear
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ori	$a2, $zero, 2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	blt	$a0, $a2, .LBB98_10
# %bb.1:                                # %.preheader12.us.preheader
	move	$s0, $a0
	addi.w	$s5, $zero, -1
	ori	$s6, $zero, 4
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s4, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s8, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$s1, $a0, %pc_lo12(.L.str.163)
	move	$s7, $zero
	b	.LBB98_3
	.p2align	4, , 16
.LBB98_2:                               # %._crit_edge.us
                                        #   in Loop: Header=BB98_3 Depth=1
	addi.w	$s7, $s7, 1
	ori	$a0, $zero, 20
	beq	$s7, $a0, .LBB98_10
.LBB98_3:                               # %.preheader12.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB98_6 Depth 2
                                        #       Child Loop BB98_7 Depth 3
	ori	$fp, $zero, 1
	b	.LBB98_6
	.p2align	4, , 16
.LBB98_4:                               # %.critedge.us
                                        #   in Loop: Header=BB98_6 Depth=2
	ld.w	$a0, $sp, 24
	bnez	$a0, .LBB98_9
# %bb.5:                                #   in Loop: Header=BB98_6 Depth=2
	addi.d	$fp, $fp, 1
	beq	$fp, $s0, .LBB98_2
.LBB98_6:                               #   Parent Loop BB98_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB98_7 Depth 3
	pcaddu18i	$ra, %call36(fork)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB98_11
	.p2align	4, , 16
.LBB98_7:                               # %.preheader.us
                                        #   Parent Loop BB98_3 Depth=1
                                        #     Parent Loop BB98_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(wait)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB98_4
# %bb.8:                                #   in Loop: Header=BB98_7 Depth=3
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	beq	$a0, $s6, .LBB98_7
	b	.LBB98_4
.LBB98_9:                               #   in Loop: Header=BB98_6 Depth=2
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s8, 0
	slli.d	$a0, $fp, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$s3, $a1, $a0
	ori	$a1, $zero, 47
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a2, $a1, $a0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	bne	$fp, $s0, .LBB98_6
	b	.LBB98_2
.LBB98_10:                              # %.split17.us
	move	$a0, $zero
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB98_11:                              # %.split19.us
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	st.d	$a0, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a1, $a0, %pc_lo12(.L.str.161)
	bstrpick.d	$a0, $fp, 31, 0
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.d	$fp, $s4, 0
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 40
	st.d	$zero, $sp, 48
	pcaddu18i	$ra, %call36(mybasename)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a1, $a0, %pc_lo12(.L.str.162)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(lemon_main)
	jirl	$ra, $ra, 0
.Lfunc_end98:
	.size	main, .Lfunc_end98-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unable to allocate memory for a new acttab."
	.size	.L.str, 44

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"malloc failed\n"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"The specified start symbol \"%s\" is not in a nonterminal of the grammar.  \"%s\" will be used as the start symbol instead."
	.size	.L.str.2, 120

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"The start symbol \"%s\" occurs on the right-hand side of a rule. This will result in a parser which does not work properly."
	.size	.L.str.3, 122

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"This rule can not be reduced.\n"
	.size	.L.str.4, 31

	.type	freelist,@object                # @freelist
	.local	freelist
	.comm	freelist,8,8
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Unable to allocate memory for a new configuration."
	.size	.L.str.5, 51

	.type	current,@object                 # @current
	.local	current
	.comm	current,8,8
	.type	currentend,@object              # @currentend
	.local	currentend
	.comm	currentend,8,8
	.type	basis,@object                   # @basis
	.local	basis
	.comm	basis,8,8
	.type	basisend,@object                # @basisend
	.local	basisend
	.comm	basisend,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Nonterminal \"%s\" has no rules."
	.size	.L.str.6, 31

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%.*s:%d: "
	.size	.L.str.7, 10

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%.*s: "
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s%.*s\n"
	.size	.L.str.9, 8

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Out of memory.  Aborting...\n"
	.size	.L.str.10, 29

	.type	lemon_main.version,@object      # @lemon_main.version
	.local	lemon_main.version
	.comm	lemon_main.version,4,4
	.type	lemon_main.rpflag,@object       # @lemon_main.rpflag
	.local	lemon_main.rpflag
	.comm	lemon_main.rpflag,4,4
	.type	lemon_main.basisflag,@object    # @lemon_main.basisflag
	.local	lemon_main.basisflag
	.comm	lemon_main.basisflag,4,4
	.type	lemon_main.compress,@object     # @lemon_main.compress
	.local	lemon_main.compress
	.comm	lemon_main.compress,4,4
	.type	lemon_main.quiet,@object        # @lemon_main.quiet
	.local	lemon_main.quiet
	.comm	lemon_main.quiet,4,4
	.type	lemon_main.statistics,@object   # @lemon_main.statistics
	.local	lemon_main.statistics
	.comm	lemon_main.statistics,4,4
	.type	lemon_main.mhflag,@object       # @lemon_main.mhflag
	.local	lemon_main.mhflag
	.comm	lemon_main.mhflag,4,4
	.type	lemon_main.options,@object      # @lemon_main.options
	.data
	.p2align	3, 0x0
lemon_main.options:
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.11
	.dword	lemon_main.basisflag
	.dword	.L.str.12
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.13
	.dword	lemon_main.compress
	.dword	.L.str.14
	.word	8                               # 0x8
	.space	4
	.dword	.L.str.15
	.dword	handle_D_option
	.dword	.L.str.16
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.17
	.dword	lemon_main.rpflag
	.dword	.L.str.18
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.19
	.dword	lemon_main.mhflag
	.dword	.L.str.20
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.21
	.dword	lemon_main.quiet
	.dword	.L.str.22
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.23
	.dword	lemon_main.statistics
	.dword	.L.str.24
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.25
	.dword	lemon_main.version
	.dword	.L.str.26
	.word	1                               # 0x1
	.space	4
	.dword	0
	.dword	0
	.dword	0
	.size	lemon_main.options, 288

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"b"
	.size	.L.str.11, 2

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Print only the basis in report."
	.size	.L.str.12, 32

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"c"
	.size	.L.str.13, 2

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Don't compress the action table."
	.size	.L.str.14, 33

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"D"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Define an %ifdef macro."
	.size	.L.str.16, 24

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"g"
	.size	.L.str.17, 2

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Print grammar without actions."
	.size	.L.str.18, 31

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"m"
	.size	.L.str.19, 2

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Output a makeheaders compatible file"
	.size	.L.str.20, 37

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"q"
	.size	.L.str.21, 2

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"(Quiet) Don't print the report file."
	.size	.L.str.22, 37

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"s"
	.size	.L.str.23, 2

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Print parser stats to standard output."
	.size	.L.str.24, 39

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"x"
	.size	.L.str.25, 2

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Print the version number."
	.size	.L.str.26, 26

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Exactly one filename argument is required.\n"
	.size	.L.str.28, 44

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"$"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"error"
	.size	.L.str.30, 6

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Empty grammar.\n"
	.size	.L.str.31, 16

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"{default}"
	.size	.L.str.32, 10

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Parser statistics: %d terminals, %d nonterminals, %d rules\n"
	.size	.L.str.33, 60

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"                   %d states, %d parser table entries, %d conflicts\n"
	.size	.L.str.34, 69

	.type	argv,@object                    # @argv
	.local	argv
	.comm	argv,8,8
	.type	op,@object                      # @op
	.local	op
	.comm	op,8,8
	.type	errstream,@object               # @errstream
	.local	errstream
	.comm	errstream,8,8
	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Valid command line options for \"%s\" are:\n"
	.size	.L.str.35, 42

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"  -%-*s  %s\n"
	.size	.L.str.37, 13

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"  %s=<integer>%*s  %s\n"
	.size	.L.str.38, 23

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.space	1
	.size	.L.str.39, 1

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"  %s=<real>%*s  %s\n"
	.size	.L.str.40, 20

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"  %s=<string>%*s  %s\n"
	.size	.L.str.41, 22

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"rb"
	.size	.L.str.42, 3

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Can't open this file for reading."
	.size	.L.str.43, 34

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Can't allocate %d of memory to hold this file."
	.size	.L.str.44, 47

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Can't read in all %d bytes of this file."
	.size	.L.str.45, 41

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"String starting on this line is not terminated before the end of the file."
	.size	.L.str.46, 75

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"C code starting on this line is not terminated before the end of the file."
	.size	.L.str.47, 75

	.type	plink_freelist,@object          # @plink_freelist
	.local	plink_freelist
	.comm	plink_freelist,8,8
	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Unable to allocate memory for a new follow-set propagation link.\n"
	.size	.L.str.48, 66

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Can't allocate space for a filename.\n"
	.size	.L.str.49, 38

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Can't open file \"%s\".\n"
	.size	.L.str.50, 23

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"// Reprint of input file \"%s\".\n// Symbols:\n"
	.size	.L.str.51, 44

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"//"
	.size	.L.str.52, 3

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	" %3d %-*.*s"
	.size	.L.str.53, 12

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"\n"
	.size	.L.str.54, 2

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"%s"
	.size	.L.str.55, 3

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	" ::="
	.size	.L.str.56, 5

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	" %s"
	.size	.L.str.57, 4

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"|%s"
	.size	.L.str.58, 4

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	" [%s]"
	.size	.L.str.60, 6

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"%s ::="
	.size	.L.str.61, 7

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	" *"
	.size	.L.str.62, 3

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"%*s shift  %d"
	.size	.L.str.63, 14

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"%*s reduce %d"
	.size	.L.str.64, 14

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%*s accept"
	.size	.L.str.65, 11

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%*s error"
	.size	.L.str.66, 10

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"%*s reduce %-3d ** Parsing conflict **"
	.size	.L.str.67, 39

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%*s shift  %d ** Parsing conflict **"
	.size	.L.str.68, 37

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	".out"
	.size	.L.str.69, 5

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"State %d:\n"
	.size	.L.str.71, 11

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"(%d)"
	.size	.L.str.72, 5

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"    %5s "
	.size	.L.str.73, 9

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"          "
	.size	.L.str.74, 11

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"----------------------------------------------------\n"
	.size	.L.str.75, 54

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Symbols:\n"
	.size	.L.str.76, 10

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"  %3d: %s"
	.size	.L.str.77, 10

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	" <lambda>"
	.size	.L.str.79, 10

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"%s/%s"
	.size	.L.str.80, 6

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"PATH"
	.size	.L.str.81, 5

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	".:/bin:/usr/bin"
	.size	.L.str.82, 16

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"Parse"
	.size	.L.str.83, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"%.*s"
	.size	.L.str.84, 5

	.type	tplt_open.templatename,@object  # @tplt_open.templatename
	.data
tplt_open.templatename:
	.asciz	"lempar.c"
	.size	tplt_open.templatename, 9

	.type	.L.str.85,@object               # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"%.*s.lt"
	.size	.L.str.85, 8

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"%s.lt"
	.size	.L.str.86, 6

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"Can't find the parser driver template file \"%s\".\n"
	.size	.L.str.87, 50

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"Can't open the template file \"%s\".\n"
	.size	.L.str.88, 36

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"#line %d \""
	.size	.L.str.89, 11

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"\"\n"
	.size	.L.str.90, 3

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"(yypminor->yy%d)"
	.size	.L.str.92, 17

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"}\n"
	.size	.L.str.93, 3

	.type	append_str.z,@object            # @append_str.z
	.local	append_str.z
	.comm	append_str.z,8,8
	.type	append_str.alloced,@object      # @append_str.alloced
	.local	append_str.alloced
	.comm	append_str.alloced,4,4
	.type	append_str.used,@object         # @append_str.used
	.local	append_str.used
	.comm	append_str.used,4,4
	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"%d"
	.size	.L.str.94, 3

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"yygotominor.yy%d"
	.size	.L.str.95, 17

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"yymsp[%d].major"
	.size	.L.str.96, 16

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"yymsp[%d].minor.yy%d"
	.size	.L.str.97, 21

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Label \"%s\" for \"%s(%s)\" is never used."
	.size	.L.str.98, 39

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Label %s for \"%s(%s)\" is never used."
	.size	.L.str.99, 37

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"  yy_destructor(%d,&yymsp[%d].minor);\n"
	.size	.L.str.100, 39

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"{%s"
	.size	.L.str.101, 4

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"Out of memory.\n"
	.size	.L.str.102, 16

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"#if INTERFACE\n"
	.size	.L.str.103, 15

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"#define %sTOKENTYPE %s\n"
	.size	.L.str.104, 24

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"void*"
	.size	.L.str.105, 6

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"#endif\n"
	.size	.L.str.106, 8

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"typedef union {\n"
	.size	.L.str.107, 17

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"  %sTOKENTYPE yy0;\n"
	.size	.L.str.108, 20

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"  %s yy%d;\n"
	.size	.L.str.109, 12

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"  int yy%d;\n"
	.size	.L.str.110, 13

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"} YYMINORTYPE;\n"
	.size	.L.str.111, 16

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	".c"
	.size	.L.str.112, 3

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	".h"
	.size	.L.str.113, 3

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"#include \"%s\"\n"
	.size	.L.str.114, 15

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"#define %s%-30s %2d\n"
	.size	.L.str.115, 21

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"#define YYCODETYPE %s\n"
	.size	.L.str.116, 23

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"#define YYNOCODE %d\n"
	.size	.L.str.117, 21

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"#define YYACTIONTYPE %s\n"
	.size	.L.str.118, 25

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"#define YYWILDCARD %d\n"
	.size	.L.str.119, 23

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"#ifndef YYSTACKDEPTH\n"
	.size	.L.str.120, 22

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"#define YYSTACKDEPTH %s\n"
	.size	.L.str.121, 25

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"#define YYSTACKDEPTH 100\n"
	.size	.L.str.122, 26

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"#define %sARG_SDECL %s;\n"
	.size	.L.str.123, 25

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"#define %sARG_PDECL ,%s\n"
	.size	.L.str.124, 25

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"#define %sARG_FETCH %s = yypParser->%s\n"
	.size	.L.str.125, 40

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"#define %sARG_STORE yypParser->%s = %s\n"
	.size	.L.str.126, 40

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"#define %sARG_SDECL\n"
	.size	.L.str.127, 21

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"#define %sARG_PDECL\n"
	.size	.L.str.128, 21

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"#define %sARG_FETCH\n"
	.size	.L.str.129, 21

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"#define %sARG_STORE\n"
	.size	.L.str.130, 21

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"#define YYNSTATE %d\n"
	.size	.L.str.131, 21

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"#define YYNRULE %d\n"
	.size	.L.str.132, 20

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"#define YYERRORSYMBOL %d\n"
	.size	.L.str.133, 26

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"#define YYERRSYMDT yy%d\n"
	.size	.L.str.134, 25

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"#define YYFALLBACK 1\n"
	.size	.L.str.135, 22

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"static const YYACTIONTYPE yy_action[] = {\n"
	.size	.L.str.136, 43

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	" /* %5d */ "
	.size	.L.str.137, 12

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	" %4d,"
	.size	.L.str.138, 6

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"};\n"
	.size	.L.str.139, 4

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"static const YYCODETYPE yy_lookahead[] = {\n"
	.size	.L.str.140, 44

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"#define YY_SHIFT_USE_DFLT (%d)\n"
	.size	.L.str.141, 32

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"#define YY_SHIFT_MAX %d\n"
	.size	.L.str.142, 25

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"static const %s yy_shift_ofst[] = {\n"
	.size	.L.str.143, 37

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"#define YY_REDUCE_USE_DFLT (%d)\n"
	.size	.L.str.144, 33

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"#define YY_REDUCE_MAX %d\n"
	.size	.L.str.145, 26

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"static const %s yy_reduce_ofst[] = {\n"
	.size	.L.str.146, 38

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"static const YYACTIONTYPE yy_default[] = {\n"
	.size	.L.str.147, 44

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"    0,  /* %10s => nothing */\n"
	.size	.L.str.148, 31

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"  %3d,  /* %10s => %s */\n"
	.size	.L.str.149, 26

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"\"%s\","
	.size	.L.str.150, 6

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"  %-15s"
	.size	.L.str.151, 8

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	" /* %3d */ \""
	.size	.L.str.152, 13

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"\",\n"
	.size	.L.str.153, 4

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"    case %d: /* %s */\n"
	.size	.L.str.154, 23

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"      break;\n"
	.size	.L.str.155, 14

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"  { %d, %d },\n"
	.size	.L.str.156, 15

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"      case %d: /* "
	.size	.L.str.157, 19

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	" */\n"
	.size	.L.str.158, 5

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"        break;\n"
	.size	.L.str.159, 16

	.type	size,@object                    # @size
	.local	size
	.comm	size,4,4
	.type	x1a,@object                     # @x1a
	.local	x1a
	.comm	x1a,8,8
	.type	x2a,@object                     # @x2a
	.local	x2a
	.comm	x2a,8,8
	.type	x3a,@object                     # @x3a
	.local	x3a
	.comm	x3a,8,8
	.type	x4a,@object                     # @x4a
	.local	x4a
	.comm	x4a,8,8
	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"lemon-child"
	.size	.L.str.160, 12

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"-s"
	.size	.L.str.161, 3

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"Processing %s\n"
	.size	.L.str.162, 15

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"Error while running on: %s\n"
	.size	.L.str.163, 28

	.type	Action_new.freelist,@object     # @Action_new.freelist
	.local	Action_new.freelist
	.comm	Action_new.freelist,8,8
	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"Unable to allocate memory for a new parser action."
	.size	.L.str.164, 51

	.type	nDefine,@object                 # @nDefine
	.local	nDefine
	.comm	nDefine,4,4
	.type	azDefine,@object                # @azDefine
	.local	azDefine
	.comm	azDefine,8,8
	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"out of memory\n"
	.size	.L.str.165, 15

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"%sundefined option.\n"
	.size	.L.str.166, 21

	.type	emsg,@object                    # @emsg
	.data
emsg:
	.asciz	"Command line syntax error: "
	.size	emsg, 28

	.type	.L.str.167,@object              # @.str.167
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.167:
	.asciz	"%smissing argument on switch.\n"
	.size	.L.str.167, 31

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"%soption requires an argument.\n"
	.size	.L.str.168, 32

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"%sillegal character in floating-point argument.\n"
	.size	.L.str.169, 49

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"%sillegal character in integer argument.\n"
	.size	.L.str.170, 42

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"\n%*s^-- here\n"
	.size	.L.str.171, 14

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"\n%*shere --^\n"
	.size	.L.str.172, 14

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"%endif"
	.size	.L.str.173, 7

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"%ifdef"
	.size	.L.str.174, 7

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"%ifndef"
	.size	.L.str.175, 8

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"unterminated %%ifdef starting on line %d\n"
	.size	.L.str.176, 42

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"There is not prior rule opon which to attach the code fragment which begins on this line."
	.size	.L.str.177, 90

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"Code fragment beginning on this line is not the first to follow the previous rule."
	.size	.L.str.178, 83

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"Token \"%s\" should be either \"%%\" or a nonterminal name."
	.size	.L.str.179, 56

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"The precedence symbol must be a terminal."
	.size	.L.str.180, 42

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"There is no prior rule to assign precedence \"[%s]\"."
	.size	.L.str.181, 52

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"Precedence mark on this line is not the first to follow the previous rule."
	.size	.L.str.182, 75

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"Missing \"]\" on precedence mark."
	.size	.L.str.183, 32

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"Expected to see a \":\" following the LHS symbol \"%s\"."
	.size	.L.str.184, 53

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"\"%s\" is not a valid alias for the LHS \"%s\"\n"
	.size	.L.str.185, 44

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"Missing \")\" following LHS alias name \"%s\"."
	.size	.L.str.186, 43

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"Missing \"->\" following: \"%s(%s)\"."
	.size	.L.str.187, 34

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"Can't allocate enough memory for this rule."
	.size	.L.str.188, 44

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"Too many symbols on RHS of rule beginning at \"%s\"."
	.size	.L.str.189, 51

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"Cannot form a compound containing a non-terminal"
	.size	.L.str.190, 49

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"Illegal character on RHS of rule: \"%s\"."
	.size	.L.str.191, 40

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"\"%s\" is not a valid alias for the RHS symbol \"%s\"\n"
	.size	.L.str.192, 51

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"name"
	.size	.L.str.193, 5

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"include"
	.size	.L.str.194, 8

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"code"
	.size	.L.str.195, 5

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"token_destructor"
	.size	.L.str.196, 17

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"default_destructor"
	.size	.L.str.197, 19

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"token_prefix"
	.size	.L.str.198, 13

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"syntax_error"
	.size	.L.str.199, 13

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"parse_accept"
	.size	.L.str.200, 13

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"parse_failure"
	.size	.L.str.201, 14

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"stack_overflow"
	.size	.L.str.202, 15

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"extra_argument"
	.size	.L.str.203, 15

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"token_type"
	.size	.L.str.204, 11

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"default_type"
	.size	.L.str.205, 13

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"stack_size"
	.size	.L.str.206, 11

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"start_symbol"
	.size	.L.str.207, 13

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"left"
	.size	.L.str.208, 5

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"right"
	.size	.L.str.209, 6

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"nonassoc"
	.size	.L.str.210, 9

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"destructor"
	.size	.L.str.211, 11

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"type"
	.size	.L.str.212, 5

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"fallback"
	.size	.L.str.213, 9

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"wildcard"
	.size	.L.str.214, 9

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"Unknown declaration keyword: \"%%%s\"."
	.size	.L.str.215, 37

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"Illegal declaration keyword: \"%s\"."
	.size	.L.str.216, 35

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"Symbol name missing after %destructor keyword"
	.size	.L.str.217, 46

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"Symbol \"%s\" has already be given a precedence."
	.size	.L.str.218, 47

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"Can't assign a precedence to \"%s\"."
	.size	.L.str.219, 35

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"The argument \"%s\" to declaration \"%%%s\" is not the first."
	.size	.L.str.220, 58

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"Illegal argument to %%%s: %s"
	.size	.L.str.221, 29

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"%%fallback argument \"%s\" should be a token"
	.size	.L.str.222, 43

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"More than one fallback assigned to token %s"
	.size	.L.str.223, 44

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"%%wildcard argument \"%s\" should be a token"
	.size	.L.str.224, 43

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"Extra wildcard to token: %s"
	.size	.L.str.225, 28

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"unsigned char"
	.size	.L.str.226, 14

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"unsigned short int"
	.size	.L.str.227, 19

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"unsigned int"
	.size	.L.str.228, 13

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"signed char"
	.size	.L.str.229, 12

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"short"
	.size	.L.str.230, 6

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"int"
	.size	.L.str.231, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Lemon version 1.0"
	.size	.Lstr, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_D_option
	.addrsig_sym axset_compare
	.addrsig_sym stateResortCompare
	.addrsig_sym Symbolcmpp
	.addrsig_sym current
	.addrsig_sym basis
	.addrsig_sym lemon_main.version
	.addrsig_sym lemon_main.rpflag
	.addrsig_sym lemon_main.basisflag
	.addrsig_sym lemon_main.compress
	.addrsig_sym lemon_main.quiet
	.addrsig_sym lemon_main.statistics
	.addrsig_sym lemon_main.mhflag
	.addrsig_sym lemon_main.options
	.addrsig_sym tplt_open.templatename
	.addrsig_sym emsg
