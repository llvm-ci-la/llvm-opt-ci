	.file	"trans.c"
	.text
	.globl	trans_init                      # -- Begin function trans_init
	.p2align	5
	.type	trans_init,@function
trans_init:                             # @trans_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(play_init)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 256
	ori	$fp, $a0, 1435
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(ht)
	st.d	$s0, $a0, %pc_lo12(ht)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(he)
	st.d	$a0, $a1, %pc_lo12(he)
	beqz	$s0, .LBB0_3
# %bb.1:
	beqz	$a0, .LBB0_3
# %bb.2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_3:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	lu12i.w	$a1, 1281
	ori	$a1, $a1, 3079
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	trans_init, .Lfunc_end0-trans_init
                                        # -- End function
	.globl	emptyTT                         # -- Begin function emptyTT
	.p2align	5
	.type	emptyTT,@function
emptyTT:                                # @emptyTT
# %bb.0:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(he)
	ld.d	$a3, $a1, %pc_lo12(he)
	ori	$a2, $zero, 31
	lu12i.w	$a4, 256
	ori	$a4, $a4, 1435
	ori	$a5, $zero, 4
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a4, .LBB1_4
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ldx.bu	$a6, $a3, $a0
	andi	$a7, $a6, 31
	beq	$a7, $a2, .LBB1_1
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	sltui	$t0, $a7, 16
	masknez	$t1, $a5, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	sub.d	$a6, $a6, $a7
	stx.b	$a6, $a3, $a0
	ld.d	$a3, $a1, %pc_lo12(he)
	b	.LBB1_1
.LBB1_4:
	pcalau12i	$a0, %pc_hi20(hits)
	st.d	$zero, $a0, %pc_lo12(hits)
	pcalau12i	$a0, %pc_hi20(posed)
	st.d	$zero, $a0, %pc_lo12(posed)
	ret
.Lfunc_end1:
	.size	emptyTT, .Lfunc_end1-emptyTT
                                        # -- End function
	.globl	hitRate                         # -- Begin function hitRate
	.p2align	5
	.type	hitRate,@function
hitRate:                                # @hitRate
# %bb.0:
	pcalau12i	$a0, %pc_hi20(posed)
	ld.d	$a0, $a0, %pc_lo12(posed)
	beqz	$a0, .LBB2_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(hits)
	ld.d	$a1, $a1, %pc_lo12(hits)
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ret
.LBB2_2:
	movgr2fr.d	$fa0, $zero
	ret
.Lfunc_end2:
	.size	hitRate, .Lfunc_end2-hitRate
                                        # -- End function
	.globl	hash                            # -- Begin function hash
	.p2align	5
	.type	hash,@function
hash:                                   # @hash
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(columns)
	ld.d	$a0, $a0, %got_pc_lo12(columns)
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 8
	slli.w	$a1, $a1, 14
	slli.w	$a2, $a2, 7
	ld.w	$a3, $a0, 12
	or	$a1, $a2, $a1
	ld.w	$a2, $a0, 28
	ld.w	$a4, $a0, 24
	or	$a1, $a1, $a3
	ld.w	$a3, $a0, 20
	slli.w	$a2, $a2, 14
	slli.w	$a4, $a4, 7
	or	$a2, $a4, $a2
	or	$a2, $a2, $a3
	ld.wu	$a0, $a0, 16
	sltu	$a3, $a2, $a1
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	sltu	$a4, $a1, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	slli.d	$a2, $a3, 7
	bstrpick.d	$a2, $a2, 31, 7
	slli.d	$a2, $a2, 7
	or	$a0, $a0, $a2
	slli.d	$a0, $a0, 21
	bstrpick.d	$a1, $a1, 31, 0
	or	$a0, $a0, $a1
	srli.d	$a1, $a0, 17
	pcalau12i	$a2, %pc_hi20(lock)
	st.w	$a1, $a2, %pc_lo12(lock)
	lu12i.w	$a2, 503917
	ori	$a2, $a2, 1547
	lu32i.d	$a2, 523571
	mulh.du	$a2, $a0, $a2
	srli.d	$a2, $a2, 7
	lu12i.w	$a3, 256
	ori	$a3, $a3, 1435
	mul.d	$a2, $a2, $a3
	sub.d	$a2, $a0, $a2
	pcalau12i	$a3, %pc_hi20(htindex)
	st.w	$a2, $a3, %pc_lo12(htindex)
	bstrpick.d	$a0, $a0, 48, 17
	lu12i.w	$a2, 451063
	ori	$a2, $a2, 1717
	mul.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 32
	sub.d	$a2, $a1, $a0
	bstrpick.d	$a2, $a2, 31, 1
	add.d	$a0, $a2, $a0
	srli.d	$a0, $a0, 7
	ori	$a2, $zero, 179
	mul.d	$a0, $a0, $a2
	sub.d	$a0, $a1, $a0
	lu12i.w	$a1, 32
	or	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(stride)
	st.w	$a0, $a1, %pc_lo12(stride)
	ret
.Lfunc_end3:
	.size	hash, .Lfunc_end3-hash
                                        # -- End function
	.globl	transpose                       # -- Begin function transpose
	.p2align	5
	.type	transpose,@function
transpose:                              # @transpose
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(columns)
	ld.d	$a0, $a0, %got_pc_lo12(columns)
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 8
	slli.w	$a1, $a1, 14
	slli.w	$a2, $a2, 7
	ld.w	$a3, $a0, 12
	or	$a1, $a2, $a1
	ld.w	$a2, $a0, 28
	ld.w	$a4, $a0, 24
	or	$a1, $a1, $a3
	ld.w	$a3, $a0, 20
	slli.w	$a2, $a2, 14
	slli.w	$a4, $a4, 7
	or	$a2, $a4, $a2
	or	$a2, $a2, $a3
	ld.wu	$a0, $a0, 16
	sltu	$a3, $a2, $a1
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	sltu	$a4, $a1, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	slli.d	$a2, $a3, 7
	bstrpick.d	$a2, $a2, 31, 7
	slli.d	$a2, $a2, 7
	or	$a0, $a2, $a0
	slli.d	$a0, $a0, 21
	bstrpick.d	$a1, $a1, 31, 0
	or	$a0, $a0, $a1
	srli.d	$a1, $a0, 17
	pcalau12i	$a2, %pc_hi20(lock)
	st.w	$a1, $a2, %pc_lo12(lock)
	lu12i.w	$a2, 503917
	ori	$a2, $a2, 1547
	lu32i.d	$a2, 523571
	mulh.du	$a2, $a0, $a2
	srli.d	$a2, $a2, 7
	lu12i.w	$a4, 256
	ori	$a3, $a4, 1435
	mul.d	$a2, $a2, $a3
	sub.d	$a2, $a0, $a2
	pcalau12i	$a3, %pc_hi20(htindex)
	st.w	$a2, $a3, %pc_lo12(htindex)
	bstrpick.d	$a0, $a0, 48, 17
	lu12i.w	$a3, 451063
	ori	$a3, $a3, 1717
	mul.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 32
	sub.d	$a3, $a1, $a0
	bstrpick.d	$a3, $a3, 31, 1
	add.d	$a0, $a3, $a0
	srli.d	$a0, $a0, 7
	ori	$a3, $zero, 179
	mul.d	$a0, $a0, $a3
	sub.w	$a0, $a1, $a0
	lu12i.w	$a3, 32
	or	$a3, $a0, $a3
	pcalau12i	$a0, %pc_hi20(ht)
	ld.d	$a0, $a0, %pc_lo12(ht)
	pcalau12i	$a5, %pc_hi20(stride)
	st.w	$a3, $a5, %pc_lo12(stride)
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a0, $a5
	addi.w	$a1, $a1, 0
	beq	$a5, $a1, .LBB4_8
# %bb.1:
	add.d	$a2, $a3, $a2
	addi.w	$a5, $a2, 0
	ori	$a4, $a4, 1434
	sltu	$a6, $a4, $a5
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a0, $a5
	beq	$a5, $a1, .LBB4_8
# %bb.2:
	add.d	$a2, $a2, $a3
	addi.w	$a5, $a2, 0
	slt	$a6, $a4, $a5
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a0, $a5
	beq	$a5, $a1, .LBB4_8
# %bb.3:
	add.d	$a2, $a2, $a3
	addi.w	$a5, $a2, 0
	slt	$a6, $a4, $a5
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a0, $a5
	beq	$a5, $a1, .LBB4_8
# %bb.4:
	add.d	$a2, $a2, $a3
	addi.w	$a5, $a2, 0
	slt	$a6, $a4, $a5
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a0, $a5
	beq	$a5, $a1, .LBB4_8
# %bb.5:
	add.d	$a2, $a2, $a3
	addi.w	$a5, $a2, 0
	slt	$a6, $a4, $a5
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a0, $a5
	beq	$a5, $a1, .LBB4_8
# %bb.6:
	add.d	$a2, $a2, $a3
	addi.w	$a5, $a2, 0
	slt	$a6, $a4, $a5
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a0, $a5
	beq	$a5, $a1, .LBB4_8
# %bb.7:
	add.d	$a2, $a2, $a3
	addi.w	$a3, $a2, 0
	slt	$a4, $a4, $a3
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	ldx.w	$a0, $a0, $a3
	bne	$a0, $a1, .LBB4_9
.LBB4_8:
	pcalau12i	$a0, %pc_hi20(he)
	ld.d	$a0, $a0, %pc_lo12(he)
	ldx.b	$a0, $a0, $a2
	ret
.LBB4_9:
	addi.w	$a0, $zero, -128
	ret
.Lfunc_end4:
	.size	transpose, .Lfunc_end4-transpose
                                        # -- End function
	.globl	transput                        # -- Begin function transput
	.p2align	5
	.type	transput,@function
transput:                               # @transput
# %bb.0:
	pcalau12i	$a2, %pc_hi20(htindex)
	ld.w	$a3, $a2, %pc_lo12(htindex)
	pcalau12i	$a2, %pc_hi20(he)
	ld.d	$a2, $a2, %pc_lo12(he)
	ldx.bu	$a4, $a2, $a3
	andi	$a4, $a4, 31
	blt	$a4, $a1, .LBB5_8
# %bb.1:
	pcalau12i	$a4, %pc_hi20(stride)
	ld.w	$a4, $a4, %pc_lo12(stride)
	add.d	$a3, $a4, $a3
	addi.w	$a6, $a3, 0
	lu12i.w	$a5, 256
	ori	$a5, $a5, 1434
	slt	$a7, $a5, $a6
	addu16i.d	$a3, $a3, -16
	addi.w	$a3, $a3, -1435
	masknez	$a6, $a6, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $a6
	ldx.bu	$a6, $a2, $a3
	andi	$a6, $a6, 31
	blt	$a6, $a1, .LBB5_8
# %bb.2:
	add.d	$a3, $a4, $a3
	addi.w	$a6, $a3, 0
	slt	$a7, $a5, $a6
	addu16i.d	$a3, $a3, -16
	addi.w	$a3, $a3, -1435
	masknez	$a6, $a6, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $a6
	ldx.bu	$a6, $a2, $a3
	andi	$a6, $a6, 31
	blt	$a6, $a1, .LBB5_8
# %bb.3:
	add.d	$a3, $a4, $a3
	addi.w	$a6, $a3, 0
	slt	$a7, $a5, $a6
	addu16i.d	$a3, $a3, -16
	addi.w	$a3, $a3, -1435
	masknez	$a6, $a6, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $a6
	ldx.bu	$a6, $a2, $a3
	andi	$a6, $a6, 31
	blt	$a6, $a1, .LBB5_8
# %bb.4:
	add.d	$a3, $a4, $a3
	addi.w	$a6, $a3, 0
	slt	$a7, $a5, $a6
	addu16i.d	$a3, $a3, -16
	addi.w	$a3, $a3, -1435
	masknez	$a6, $a6, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $a6
	ldx.bu	$a6, $a2, $a3
	andi	$a6, $a6, 31
	blt	$a6, $a1, .LBB5_8
# %bb.5:
	add.d	$a3, $a4, $a3
	addi.w	$a6, $a3, 0
	slt	$a7, $a5, $a6
	addu16i.d	$a3, $a3, -16
	addi.w	$a3, $a3, -1435
	masknez	$a6, $a6, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $a6
	ldx.bu	$a6, $a2, $a3
	andi	$a6, $a6, 31
	blt	$a6, $a1, .LBB5_8
# %bb.6:
	add.d	$a3, $a4, $a3
	addi.w	$a6, $a3, 0
	slt	$a7, $a5, $a6
	addu16i.d	$a3, $a3, -16
	addi.w	$a3, $a3, -1435
	masknez	$a6, $a6, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $a6
	ldx.bu	$a6, $a2, $a3
	andi	$a6, $a6, 31
	blt	$a6, $a1, .LBB5_8
# %bb.7:
	add.d	$a3, $a4, $a3
	addi.w	$a4, $a3, 0
	slt	$a5, $a5, $a4
	addu16i.d	$a3, $a3, -16
	addi.w	$a3, $a3, -1435
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	ldx.bu	$a4, $a2, $a3
	andi	$a4, $a4, 31
	bge	$a4, $a1, .LBB5_9
.LBB5_8:
	pcalau12i	$a4, %pc_hi20(hits)
	ld.d	$a5, $a4, %pc_lo12(hits)
	pcalau12i	$a6, %pc_hi20(lock)
	ld.w	$a6, $a6, %pc_lo12(lock)
	pcalau12i	$a7, %pc_hi20(ht)
	ld.d	$a7, $a7, %pc_lo12(ht)
	addi.d	$a5, $a5, 1
	st.d	$a5, $a4, %pc_lo12(hits)
	slli.d	$a4, $a3, 2
	stx.w	$a6, $a7, $a4
	slli.d	$a0, $a0, 5
	or	$a0, $a0, $a1
	stx.b	$a0, $a2, $a3
.LBB5_9:                                # %.loopexit
	ret
.Lfunc_end5:
	.size	transput, .Lfunc_end5-transput
                                        # -- End function
	.globl	transrestore                    # -- Begin function transrestore
	.p2align	5
	.type	transrestore,@function
transrestore:                           # @transrestore
# %bb.0:
	slti	$a2, $a1, 31
	ori	$a3, $zero, 31
	pcalau12i	$a4, %pc_hi20(posed)
	ld.d	$a5, $a4, %pc_lo12(posed)
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	addi.d	$a2, $a5, 1
	st.d	$a2, $a4, %pc_lo12(posed)
	pcalau12i	$a2, %got_pc_hi20(columns)
	ld.d	$a2, $a2, %got_pc_lo12(columns)
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a2, 8
	slli.w	$a3, $a3, 14
	slli.w	$a4, $a4, 7
	ld.w	$a5, $a2, 12
	or	$a3, $a4, $a3
	ld.w	$a4, $a2, 28
	ld.w	$a6, $a2, 24
	or	$a3, $a3, $a5
	ld.w	$a5, $a2, 20
	slli.w	$a4, $a4, 14
	slli.w	$a6, $a6, 7
	or	$a4, $a6, $a4
	or	$a4, $a4, $a5
	ld.wu	$a2, $a2, 16
	sltu	$a5, $a4, $a3
	masknez	$a6, $a4, $a5
	maskeqz	$a5, $a3, $a5
	or	$a5, $a5, $a6
	sltu	$a6, $a3, $a4
	masknez	$a4, $a4, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a4
	slli.d	$a4, $a5, 7
	bstrpick.d	$a4, $a4, 31, 7
	slli.d	$a4, $a4, 7
	or	$a2, $a4, $a2
	slli.d	$a2, $a2, 21
	bstrpick.d	$a3, $a3, 31, 0
	or	$a3, $a2, $a3
	srli.d	$a4, $a3, 17
	pcalau12i	$a2, %pc_hi20(lock)
	st.w	$a4, $a2, %pc_lo12(lock)
	lu12i.w	$a2, 503917
	ori	$a2, $a2, 1547
	lu32i.d	$a2, 523571
	mulh.du	$a2, $a3, $a2
	srli.d	$a2, $a2, 7
	lu12i.w	$a6, 256
	ori	$a5, $a6, 1435
	mul.d	$a2, $a2, $a5
	sub.d	$a2, $a3, $a2
	pcalau12i	$a5, %pc_hi20(htindex)
	st.w	$a2, $a5, %pc_lo12(htindex)
	bstrpick.d	$a3, $a3, 48, 17
	lu12i.w	$a5, 451063
	ori	$a5, $a5, 1717
	mul.d	$a3, $a3, $a5
	srli.d	$a3, $a3, 32
	sub.d	$a5, $a4, $a3
	bstrpick.d	$a5, $a5, 31, 1
	add.d	$a3, $a5, $a3
	srli.d	$a3, $a3, 7
	ori	$a5, $zero, 179
	mul.d	$a3, $a3, $a5
	sub.w	$a3, $a4, $a3
	lu12i.w	$a5, 32
	or	$a5, $a3, $a5
	pcalau12i	$a3, %pc_hi20(ht)
	ld.d	$a3, $a3, %pc_lo12(ht)
	pcalau12i	$a7, %pc_hi20(stride)
	st.w	$a5, $a7, %pc_lo12(stride)
	slli.d	$a7, $a2, 2
	ldx.w	$a7, $a3, $a7
	addi.w	$a4, $a4, 0
	beq	$a7, $a4, .LBB6_8
# %bb.1:
	add.d	$a2, $a5, $a2
	addi.w	$a7, $a2, 0
	ori	$a6, $a6, 1434
	sltu	$t0, $a6, $a7
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a7, $a7, $t0
	maskeqz	$a2, $a2, $t0
	or	$a2, $a2, $a7
	slli.d	$a7, $a2, 2
	ldx.w	$a7, $a3, $a7
	beq	$a7, $a4, .LBB6_8
# %bb.2:
	add.d	$a2, $a2, $a5
	addi.w	$a7, $a2, 0
	slt	$t0, $a6, $a7
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a7, $a7, $t0
	maskeqz	$a2, $a2, $t0
	or	$a2, $a2, $a7
	slli.d	$a7, $a2, 2
	ldx.w	$a7, $a3, $a7
	beq	$a7, $a4, .LBB6_8
# %bb.3:
	add.d	$a2, $a2, $a5
	addi.w	$a7, $a2, 0
	slt	$t0, $a6, $a7
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a7, $a7, $t0
	maskeqz	$a2, $a2, $t0
	or	$a2, $a2, $a7
	slli.d	$a7, $a2, 2
	ldx.w	$a7, $a3, $a7
	beq	$a7, $a4, .LBB6_8
# %bb.4:
	add.d	$a2, $a2, $a5
	addi.w	$a7, $a2, 0
	slt	$t0, $a6, $a7
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a7, $a7, $t0
	maskeqz	$a2, $a2, $t0
	or	$a2, $a2, $a7
	slli.d	$a7, $a2, 2
	ldx.w	$a7, $a3, $a7
	beq	$a7, $a4, .LBB6_8
# %bb.5:
	add.d	$a2, $a2, $a5
	addi.w	$a7, $a2, 0
	slt	$t0, $a6, $a7
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a7, $a7, $t0
	maskeqz	$a2, $a2, $t0
	or	$a2, $a2, $a7
	slli.d	$a7, $a2, 2
	ldx.w	$a7, $a3, $a7
	beq	$a7, $a4, .LBB6_8
# %bb.6:
	add.d	$a2, $a2, $a5
	addi.w	$a7, $a2, 0
	slt	$t0, $a6, $a7
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a7, $a7, $t0
	maskeqz	$a2, $a2, $t0
	or	$a2, $a2, $a7
	slli.d	$a7, $a2, 2
	ldx.w	$a7, $a3, $a7
	beq	$a7, $a4, .LBB6_8
# %bb.7:
	add.d	$a2, $a2, $a5
	addi.w	$a5, $a2, 0
	slt	$a6, $a6, $a5
	addu16i.d	$a2, $a2, -16
	addi.w	$a2, $a2, -1435
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 2
	ldx.w	$a3, $a3, $a5
	bne	$a3, $a4, .LBB6_9
.LBB6_8:
	pcalau12i	$a3, %pc_hi20(hits)
	ld.d	$a4, $a3, %pc_lo12(hits)
	addi.d	$a4, $a4, 1
	pcalau12i	$a5, %pc_hi20(he)
	ld.d	$a5, $a5, %pc_lo12(he)
	st.d	$a4, $a3, %pc_lo12(hits)
	slli.d	$a0, $a0, 5
	or	$a0, $a1, $a0
	stx.b	$a0, $a5, $a2
	ret
.LBB6_9:
	pcaddu18i	$t8, %call36(transput)
	jr	$t8
.Lfunc_end6:
	.size	transrestore, .Lfunc_end6-transrestore
                                        # -- End function
	.globl	transtore                       # -- Begin function transtore
	.p2align	5
	.type	transtore,@function
transtore:                              # @transtore
# %bb.0:
	slti	$a2, $a1, 31
	ori	$a3, $zero, 31
	pcalau12i	$a4, %pc_hi20(posed)
	ld.d	$a5, $a4, %pc_lo12(posed)
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	addi.d	$a2, $a5, 1
	st.d	$a2, $a4, %pc_lo12(posed)
	pcalau12i	$a2, %got_pc_hi20(columns)
	ld.d	$a2, $a2, %got_pc_lo12(columns)
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a2, 8
	slli.w	$a3, $a3, 14
	slli.w	$a4, $a4, 7
	ld.w	$a5, $a2, 12
	or	$a3, $a4, $a3
	ld.w	$a4, $a2, 28
	ld.w	$a6, $a2, 24
	or	$a3, $a3, $a5
	ld.w	$a5, $a2, 20
	slli.w	$a4, $a4, 14
	slli.w	$a6, $a6, 7
	or	$a4, $a6, $a4
	or	$a4, $a4, $a5
	ld.wu	$a2, $a2, 16
	sltu	$a5, $a4, $a3
	masknez	$a6, $a4, $a5
	maskeqz	$a5, $a3, $a5
	or	$a5, $a5, $a6
	sltu	$a6, $a3, $a4
	masknez	$a4, $a4, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a4
	slli.d	$a4, $a5, 7
	bstrpick.d	$a4, $a4, 31, 7
	slli.d	$a4, $a4, 7
	or	$a2, $a4, $a2
	slli.d	$a2, $a2, 21
	bstrpick.d	$a3, $a3, 31, 0
	or	$a2, $a2, $a3
	srli.d	$a3, $a2, 17
	pcalau12i	$a4, %pc_hi20(lock)
	st.w	$a3, $a4, %pc_lo12(lock)
	lu12i.w	$a4, 503917
	ori	$a4, $a4, 1547
	lu32i.d	$a4, 523571
	mulh.du	$a4, $a2, $a4
	srli.d	$a4, $a4, 7
	lu12i.w	$a5, 256
	ori	$a5, $a5, 1435
	mul.d	$a4, $a4, $a5
	sub.d	$a4, $a2, $a4
	pcalau12i	$a5, %pc_hi20(htindex)
	st.w	$a4, $a5, %pc_lo12(htindex)
	bstrpick.d	$a2, $a2, 48, 17
	lu12i.w	$a4, 451063
	ori	$a4, $a4, 1717
	mul.d	$a2, $a2, $a4
	srli.d	$a2, $a2, 32
	sub.d	$a4, $a3, $a2
	bstrpick.d	$a4, $a4, 31, 1
	add.d	$a2, $a4, $a2
	srli.d	$a2, $a2, 7
	ori	$a4, $zero, 179
	mul.d	$a2, $a2, $a4
	sub.d	$a2, $a3, $a2
	lu12i.w	$a3, 32
	or	$a2, $a2, $a3
	pcalau12i	$a3, %pc_hi20(stride)
	st.w	$a2, $a3, %pc_lo12(stride)
	pcaddu18i	$t8, %call36(transput)
	jr	$t8
.Lfunc_end7:
	.size	transtore, .Lfunc_end7-transtore
                                        # -- End function
	.globl	htstat                          # -- Begin function htstat
	.p2align	5
	.type	htstat,@function
htstat:                                 # @htstat
# %bb.0:                                # %.preheader27.preheader
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 40
	ori	$a2, $zero, 128
	addi.d	$fp, $sp, 40
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 8
	vst	$vr0, $sp, 24
	pcalau12i	$a0, %pc_hi20(he)
	ld.d	$a0, $a0, %pc_lo12(he)
	lu12i.w	$a1, 256
	ori	$a1, $a1, 1435
	addi.d	$a2, $sp, 8
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_1:                                #   in Loop: Header=BB8_2 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB8_4
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	andi	$a4, $a3, 31
	slli.d	$a5, $a4, 2
	ldx.w	$a6, $a5, $fp
	addi.d	$a6, $a6, 1
	stx.w	$a6, $a5, $fp
	beqz	$a4, .LBB8_1
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	ext.w.b	$a3, $a3
	srai.d	$a3, $a3, 5
	alsl.d	$a3, $a3, $a2, 2
	ld.w	$a4, $a3, 16
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, 16
	b	.LBB8_1
.LBB8_4:                                # %.preheader.preheader
	ld.w	$a0, $sp, 8
	ld.w	$a1, $sp, 12
	ld.w	$s3, $sp, 16
	ld.w	$s0, $sp, 20
	add.d	$a0, $a1, $a0
	add.d	$a0, $s3, $a0
	add.d	$a0, $s0, $a0
	ld.w	$s2, $sp, 24
	ld.w	$s1, $sp, 28
	ld.w	$fp, $sp, 32
	ld.w	$a1, $sp, 36
	add.d	$a0, $s2, $a0
	add.d	$a0, $s1, $a0
	add.d	$a0, $fp, $a0
	add.w	$s4, $a1, $a0
	blez	$s4, .LBB8_9
# %bb.5:
	pcalau12i	$a0, %pc_hi20(posed)
	ld.d	$a0, $a0, %pc_lo12(posed)
	beqz	$a0, .LBB8_7
# %bb.6:
	pcalau12i	$a1, %pc_hi20(hits)
	ld.d	$a1, $a1, %pc_lo12(hits)
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	b	.LBB8_8
.LBB8_7:
	movgr2fr.d	$fa0, $zero
.LBB8_8:                                # %hitRate.exit
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $s3
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa2, $s0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	movgr2fr.w	$fa3, $s2
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa1
	movgr2fr.w	$fa4, $s1
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa1
	movgr2fr.w	$fa5, $fp
	ffint.d.w	$fa5, $fa5
	fdiv.d	$fa1, $fa5, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa2
	movfr2gr.d	$a3, $fa3
	movfr2gr.d	$a4, $fa4
	movfr2gr.d	$a5, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB8_9:
	ld.w	$a1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$fp, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 44
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 48
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 56
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 60
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 64
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	ori	$a2, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 72
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 76
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 80
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 84
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 88
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 92
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 96
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 100
	ori	$a2, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 104
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 108
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 112
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 116
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 120
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 124
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 128
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 132
	ori	$a2, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 136
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 140
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 144
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 148
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 152
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 156
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 160
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 164
	ori	$a2, $zero, 10
	move	$a0, $fp
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end8:
	.size	htstat, .Lfunc_end8-htstat
                                        # -- End function
	.type	ht,@object                      # @ht
	.bss
	.globl	ht
	.p2align	3, 0x0
ht:
	.dword	0
	.size	ht, 8

	.type	he,@object                      # @he
	.globl	he
	.p2align	3, 0x0
he:
	.dword	0
	.size	he, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Failed to allocate %u bytes.\n"
	.size	.L.str, 30

	.type	hits,@object                    # @hits
	.bss
	.globl	hits
	.p2align	3, 0x0
hits:
	.dword	0                               # 0x0
	.size	hits, 8

	.type	posed,@object                   # @posed
	.globl	posed
	.p2align	3, 0x0
posed:
	.dword	0                               # 0x0
	.size	posed, 8

	.type	lock,@object                    # @lock
	.globl	lock
	.p2align	2, 0x0
lock:
	.word	0                               # 0x0
	.size	lock, 4

	.type	htindex,@object                 # @htindex
	.globl	htindex
	.p2align	2, 0x0
htindex:
	.word	0                               # 0x0
	.size	htindex, 4

	.type	stride,@object                  # @stride
	.globl	stride
	.p2align	2, 0x0
stride:
	.word	0                               # 0x0
	.size	stride, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"store rate = %.3f\n"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\n"
	.size	.L.str.2, 45

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%7d%c"
	.size	.L.str.3, 6

	.section	".note.GNU-stack","",@progbits
	.addrsig
