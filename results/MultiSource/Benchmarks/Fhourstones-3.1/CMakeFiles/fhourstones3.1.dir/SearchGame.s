	.file	"SearchGame.c"
	.text
	.globl	reset                           # -- Begin function reset
	.p2align	5
	.type	reset,@function
reset:                                  # @reset
# %bb.0:
	pcalau12i	$a0, %pc_hi20(nplies)
	st.w	$zero, $a0, %pc_lo12(nplies)
	pcalau12i	$a0, %pc_hi20(color)
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, %pc_lo12(color)
	pcalau12i	$a0, %pc_hi20(height)
	addi.d	$a0, $a0, %pc_lo12(height)
	lu12i.w	$a1, 86240
	ori	$a1, $a1, 1792
	st.w	$a1, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 796
	st.h	$a1, $a0, 4
	ori	$a1, $zero, 42
	st.b	$a1, $a0, 6
	ret
.Lfunc_end0:
	.size	reset, .Lfunc_end0-reset
                                        # -- End function
	.globl	positioncode                    # -- Begin function positioncode
	.p2align	5
	.type	positioncode,@function
positioncode:                           # @positioncode
# %bb.0:
	pcalau12i	$a0, %pc_hi20(nplies)
	ld.wu	$a0, $a0, %pc_lo12(nplies)
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(color)
	addi.d	$a1, $a1, %pc_lo12(color)
	ldx.d	$a0, $a1, $a0
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 8
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	lu12i.w	$a1, 66052
	ori	$a1, $a1, 129
	lu32i.d	$a1, 1032
	add.d	$a0, $a0, $a1
	ret
.Lfunc_end1:
	.size	positioncode, .Lfunc_end1-positioncode
                                        # -- End function
	.globl	printMoves                      # -- Begin function printMoves
	.p2align	5
	.type	printMoves,@function
printMoves:                             # @printMoves
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(nplies)
	ld.w	$a0, $s0, %pc_lo12(nplies)
	blez	$a0, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(moves)
	addi.d	$s1, $a0, %pc_lo12(moves)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$fp, $a0, %pc_lo12(.L.str)
	move	$s2, $zero
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 0
	addi.w	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(nplies)
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	blt	$s2, $a0, .LBB2_2
.LBB2_3:                                # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	printMoves, .Lfunc_end2-printMoves
                                        # -- End function
	.globl	islegal                         # -- Begin function islegal
	.p2align	5
	.type	islegal,@function
islegal:                                # @islegal
# %bb.0:
	lu12i.w	$a1, 33026
	ori	$a1, $a1, 64
	lu32i.d	$a1, 66052
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ret
.Lfunc_end3:
	.size	islegal, .Lfunc_end3-islegal
                                        # -- End function
	.globl	isplayable                      # -- Begin function isplayable
	.p2align	5
	.type	isplayable,@function
isplayable:                             # @isplayable
# %bb.0:
	pcalau12i	$a1, %pc_hi20(nplies)
	ld.wu	$a1, $a1, %pc_lo12(nplies)
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(color)
	addi.d	$a2, $a2, %pc_lo12(color)
	ldx.d	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(height)
	addi.d	$a2, $a2, %pc_lo12(height)
	ldx.b	$a0, $a2, $a0
	ori	$a2, $zero, 1
	sll.d	$a0, $a2, $a0
	or	$a0, $a0, $a1
	lu12i.w	$a1, 33026
	ori	$a1, $a1, 64
	lu32i.d	$a1, 66052
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ret
.Lfunc_end4:
	.size	isplayable, .Lfunc_end4-isplayable
                                        # -- End function
	.globl	haswon                          # -- Begin function haswon
	.p2align	5
	.type	haswon,@function
haswon:                                 # @haswon
# %bb.0:
	move	$a1, $a0
	srli.d	$a0, $a0, 6
	and	$a0, $a0, $a1
	srli.d	$a2, $a0, 12
	and	$a2, $a2, $a0
	ori	$a0, $zero, 1
	beqz	$a2, .LBB5_2
.LBB5_1:
	ret
.LBB5_2:
	srli.d	$a2, $a1, 7
	and	$a2, $a2, $a1
	srli.d	$a3, $a2, 14
	and	$a2, $a3, $a2
	bnez	$a2, .LBB5_1
# %bb.3:
	srli.d	$a2, $a1, 8
	and	$a2, $a2, $a1
	srli.d	$a3, $a2, 16
	and	$a2, $a3, $a2
	bnez	$a2, .LBB5_1
# %bb.4:
	srli.d	$a0, $a1, 1
	and	$a0, $a0, $a1
	srli.d	$a1, $a0, 2
	and	$a0, $a1, $a0
	sltu	$a0, $zero, $a0
	ret
.Lfunc_end5:
	.size	haswon, .Lfunc_end5-haswon
                                        # -- End function
	.globl	islegalhaswon                   # -- Begin function islegalhaswon
	.p2align	5
	.type	islegalhaswon,@function
islegalhaswon:                          # @islegalhaswon
# %bb.0:
	lu12i.w	$a1, 33026
	ori	$a1, $a1, 64
	lu32i.d	$a1, 66052
	and	$a1, $a0, $a1
	beqz	$a1, .LBB6_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB6_2:
	srli.d	$a1, $a0, 6
	and	$a1, $a1, $a0
	srli.d	$a2, $a1, 12
	and	$a2, $a2, $a1
	ori	$a1, $zero, 1
	beqz	$a2, .LBB6_4
.LBB6_3:                                # %haswon.exit
	move	$a0, $a1
	ret
.LBB6_4:
	srli.d	$a2, $a0, 7
	and	$a2, $a2, $a0
	srli.d	$a3, $a2, 14
	and	$a2, $a3, $a2
	bnez	$a2, .LBB6_3
# %bb.5:
	srli.d	$a2, $a0, 8
	and	$a2, $a2, $a0
	srli.d	$a3, $a2, 16
	and	$a2, $a3, $a2
	bnez	$a2, .LBB6_3
# %bb.6:
	srli.d	$a1, $a0, 1
	and	$a0, $a1, $a0
	srli.d	$a1, $a0, 2
	and	$a0, $a1, $a0
	sltu	$a1, $zero, $a0
	move	$a0, $a1
	ret
.Lfunc_end6:
	.size	islegalhaswon, .Lfunc_end6-islegalhaswon
                                        # -- End function
	.globl	backmove                        # -- Begin function backmove
	.p2align	5
	.type	backmove,@function
backmove:                               # @backmove
# %bb.0:
	pcalau12i	$a0, %pc_hi20(nplies)
	ld.w	$a1, $a0, %pc_lo12(nplies)
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, %pc_lo12(nplies)
	slli.d	$a0, $a1, 2
	pcalau12i	$a2, %pc_hi20(moves)
	addi.d	$a2, $a2, %pc_lo12(moves)
	ldx.w	$a0, $a2, $a0
	pcalau12i	$a2, %pc_hi20(height)
	addi.d	$a2, $a2, %pc_lo12(height)
	ldx.b	$a3, $a2, $a0
	addi.d	$a3, $a3, -1
	stx.b	$a3, $a2, $a0
	ext.w.b	$a0, $a3
	ori	$a2, $zero, 1
	sll.d	$a0, $a2, $a0
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(color)
	addi.d	$a2, $a2, %pc_lo12(color)
	ldx.d	$a3, $a2, $a1
	xor	$a0, $a0, $a3
	stx.d	$a0, $a2, $a1
	ret
.Lfunc_end7:
	.size	backmove, .Lfunc_end7-backmove
                                        # -- End function
	.globl	makemove                        # -- Begin function makemove
	.p2align	5
	.type	makemove,@function
makemove:                               # @makemove
# %bb.0:
	pcalau12i	$a1, %pc_hi20(height)
	addi.d	$a1, $a1, %pc_lo12(height)
	ldx.b	$a2, $a1, $a0
	addi.d	$a3, $a2, 1
	pcalau12i	$a4, %pc_hi20(nplies)
	ld.w	$a5, $a4, %pc_lo12(nplies)
	stx.b	$a3, $a1, $a0
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a2
	andi	$a2, $a5, 1
	slli.d	$a2, $a2, 3
	pcalau12i	$a3, %pc_hi20(color)
	addi.d	$a3, $a3, %pc_lo12(color)
	ldx.d	$a6, $a3, $a2
	xor	$a1, $a6, $a1
	stx.d	$a1, $a3, $a2
	addi.d	$a1, $a5, 1
	st.w	$a1, $a4, %pc_lo12(nplies)
	slli.d	$a1, $a5, 2
	pcalau12i	$a2, %pc_hi20(moves)
	addi.d	$a2, $a2, %pc_lo12(moves)
	stx.w	$a0, $a2, $a1
	ret
.Lfunc_end8:
	.size	makemove, .Lfunc_end8-makemove
                                        # -- End function
	.globl	trans_init                      # -- Begin function trans_init
	.p2align	5
	.type	trans_init,@function
trans_init:                             # @trans_init
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 2027
	ori	$a0, $a0, 3477
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(ht)
	st.d	$a0, $a1, %pc_lo12(ht)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	trans_init, .Lfunc_end9-trans_init
                                        # -- End function
	.globl	emptyTT                         # -- Begin function emptyTT
	.p2align	5
	.type	emptyTT,@function
emptyTT:                                # @emptyTT
# %bb.0:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(ht)
	lu12i.w	$a2, 16222
	ori	$a2, $a2, 3240
	.p2align	4, , 16
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, %pc_lo12(ht)
	stx.d	$zero, $a3, $a0
	addi.d	$a0, $a0, 8
	bne	$a0, $a2, .LBB10_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(posed)
	st.d	$zero, $a0, %pc_lo12(posed)
	ret
.Lfunc_end10:
	.size	emptyTT, .Lfunc_end10-emptyTT
                                        # -- End function
	.globl	hash                            # -- Begin function hash
	.p2align	5
	.type	hash,@function
hash:                                   # @hash
# %bb.0:
	pcalau12i	$a0, %pc_hi20(nplies)
	ld.w	$a1, $a0, %pc_lo12(nplies)
	andi	$a0, $a1, 1
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %pc_hi20(color)
	addi.d	$a2, $a2, %pc_lo12(color)
	ldx.d	$a0, $a2, $a0
	ld.d	$a3, $a2, 0
	ld.d	$a2, $a2, 8
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	lu12i.w	$a2, 66052
	ori	$a2, $a2, 129
	lu32i.d	$a2, 1032
	ori	$a3, $zero, 9
	add.d	$a0, $a0, $a2
	blt	$a3, $a1, .LBB11_6
# %bb.1:                                # %.preheader
	beqz	$a0, .LBB11_5
# %bb.2:                                # %.lr.ph.preheader
	move	$a1, $zero
	ori	$a2, $zero, 127
	move	$a3, $a0
	.p2align	4, , 16
.LBB11_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a3
	move	$a3, $a1
	move	$a1, $a4
	bstrins.d	$a1, $a3, 63, 7
	srli.d	$a3, $a4, 7
	bltu	$a2, $a4, .LBB11_3
# %bb.4:                                # %._crit_edge.loopexit
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	b	.LBB11_6
.LBB11_5:
	move	$a0, $zero
.LBB11_6:                               # %._crit_edge
	srli.d	$a1, $a0, 23
	pcalau12i	$a2, %pc_hi20(lock)
	st.w	$a1, $a2, %pc_lo12(lock)
	lu12i.w	$a1, -312672
	ori	$a1, $a1, 1511
	lu32i.d	$a1, 368436
	lu52i.d	$a1, $a1, -2028
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 22
	lu12i.w	$a2, 2027
	ori	$a2, $a2, 3477
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(htindex)
	st.w	$a0, $a1, %pc_lo12(htindex)
	ret
.Lfunc_end11:
	.size	hash, .Lfunc_end11-hash
                                        # -- End function
	.globl	transpose                       # -- Begin function transpose
	.p2align	5
	.type	transpose,@function
transpose:                              # @transpose
# %bb.0:
	pcalau12i	$a0, %pc_hi20(nplies)
	ld.w	$a1, $a0, %pc_lo12(nplies)
	andi	$a0, $a1, 1
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %pc_hi20(color)
	addi.d	$a2, $a2, %pc_lo12(color)
	ldx.d	$a0, $a2, $a0
	ld.d	$a3, $a2, 0
	ld.d	$a2, $a2, 8
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	lu12i.w	$a2, 66052
	ori	$a2, $a2, 129
	lu32i.d	$a2, 1032
	ori	$a3, $zero, 9
	add.d	$a0, $a0, $a2
	blt	$a3, $a1, .LBB12_6
# %bb.1:                                # %.preheader.i
	beqz	$a0, .LBB12_5
# %bb.2:                                # %.lr.ph.i.preheader
	move	$a1, $zero
	ori	$a2, $zero, 127
	move	$a3, $a0
	.p2align	4, , 16
.LBB12_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a3
	move	$a3, $a1
	move	$a1, $a4
	bstrins.d	$a1, $a3, 63, 7
	srli.d	$a3, $a4, 7
	bltu	$a2, $a4, .LBB12_3
# %bb.4:                                # %._crit_edge.loopexit.i
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	b	.LBB12_6
.LBB12_5:
	move	$a0, $zero
.LBB12_6:                               # %hash.exit
	srli.d	$a2, $a0, 23
	lu12i.w	$a1, -312672
	ori	$a1, $a1, 1511
	lu32i.d	$a1, 368436
	lu52i.d	$a1, $a1, -2028
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 22
	lu12i.w	$a3, 2027
	ori	$a3, $a3, 3477
	mul.d	$a3, $a1, $a3
	pcalau12i	$a1, %pc_hi20(ht)
	ld.d	$a4, $a1, %pc_lo12(ht)
	addi.w	$a1, $a2, 0
	sub.d	$a3, $a0, $a3
	slli.d	$a0, $a3, 3
	ldx.d	$a0, $a4, $a0
	pcalau12i	$a4, %pc_hi20(lock)
	st.w	$a2, $a4, %pc_lo12(lock)
	pcalau12i	$a2, %pc_hi20(htindex)
	bstrpick.d	$a4, $a0, 25, 0
	st.w	$a3, $a2, %pc_lo12(htindex)
	bne	$a4, $a1, .LBB12_8
# %bb.7:
	srli.d	$a0, $a0, 61
	addi.w	$a0, $a0, 0
	ret
.LBB12_8:
	bstrpick.d	$a2, $a0, 57, 32
	bne	$a2, $a1, .LBB12_10
# %bb.9:
	bstrpick.d	$a0, $a0, 60, 58
	addi.w	$a0, $a0, 0
	ret
.LBB12_10:
	addi.w	$a0, $zero, 0
	ret
.Lfunc_end12:
	.size	transpose, .Lfunc_end12-transpose
                                        # -- End function
	.globl	transtore                       # -- Begin function transtore
	.p2align	5
	.type	transtore,@function
transtore:                              # @transtore
# %bb.0:
	pcalau12i	$a4, %pc_hi20(posed)
	ld.d	$a5, $a4, %pc_lo12(posed)
	pcalau12i	$a6, %pc_hi20(ht)
	ld.d	$a6, $a6, %pc_lo12(ht)
	addi.d	$a5, $a5, 1
	st.d	$a5, $a4, %pc_lo12(posed)
	slli.d	$a4, $a0, 3
	ldx.d	$a4, $a6, $a4
	bstrpick.d	$a5, $a4, 25, 0
	alsl.d	$a0, $a0, $a6, 3
	beq	$a5, $a1, .LBB13_3
# %bb.1:
	bstrpick.d	$a5, $a4, 31, 26
	addi.w	$a5, $a5, 0
	bge	$a3, $a5, .LBB13_3
# %bb.2:
	bstrins.d	$a4, $zero, 60, 32
	bstrins.d	$a4, $a1, 57, 32
	bstrins.d	$a4, $a2, 60, 58
	st.d	$a4, $a0, 0
	ret
.LBB13_3:
	ori	$a5, $zero, 0
	lu32i.d	$a5, -1
	lu52i.d	$a5, $a5, 511
	and	$a4, $a4, $a5
	slli.d	$a2, $a2, 61
	srli.d	$a4, $a4, 26
	bstrins.d	$a1, $a4, 63, 26
	or	$a4, $a1, $a2
	bstrins.d	$a4, $a3, 31, 26
	st.d	$a4, $a0, 0
	ret
.Lfunc_end13:
	.size	transtore, .Lfunc_end13-transtore
                                        # -- End function
	.globl	htstat                          # -- Begin function htstat
	.p2align	5
	.type	htstat,@function
htstat:                                 # @htstat
# %bb.0:                                # %.preheader21
	addi.d	$sp, $sp, -32
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 0
	pcalau12i	$a0, %pc_hi20(ht)
	ld.d	$a0, $a0, %pc_lo12(ht)
	lu12i.w	$a1, 2027
	ori	$a1, $a1, 3477
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	lu52i.d	$a2, $a2, 63
	addi.d	$a3, $sp, 0
	b	.LBB14_2
	.p2align	4, , 16
.LBB14_1:                               #   in Loop: Header=BB14_2 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	beqz	$a1, .LBB14_6
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	slli.d	$a5, $a4, 38
	beqz	$a5, .LBB14_4
# %bb.3:                                #   in Loop: Header=BB14_2 Depth=1
	srli.d	$a5, $a4, 59
	andi	$a5, $a5, 28
	ldx.w	$a6, $a5, $a3
	addi.d	$a6, $a6, 1
	stx.w	$a6, $a5, $a3
.LBB14_4:                               #   in Loop: Header=BB14_2 Depth=1
	and	$a5, $a4, $a2
	beqz	$a5, .LBB14_1
# %bb.5:                                #   in Loop: Header=BB14_2 Depth=1
	srli.d	$a4, $a4, 56
	andi	$a4, $a4, 28
	ldx.w	$a5, $a4, $a3
	addi.d	$a5, $a5, 1
	stx.w	$a5, $a4, $a3
	b	.LBB14_1
.LBB14_6:                               # %.preheader.preheader
	ld.w	$a4, $sp, 4
	ld.w	$a3, $sp, 8
	ld.w	$a2, $sp, 12
	ld.w	$a1, $sp, 16
	ld.w	$a0, $sp, 20
	add.d	$a5, $a3, $a4
	add.d	$a5, $a2, $a5
	add.d	$a5, $a1, $a5
	add.w	$a5, $a0, $a5
	blez	$a5, .LBB14_8
# %bb.7:
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a4, $a5, 31, 0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	movgr2fr.w	$fa3, $a2
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa1
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa1
	movgr2fr.w	$fa5, $a0
	ffint.d.w	$fa5, $fa5
	fdiv.d	$fa1, $fa5, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa2
	movfr2gr.d	$a3, $fa3
	movfr2gr.d	$a4, $fa4
	movfr2gr.d	$a5, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB14_8:
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	htstat, .Lfunc_end14-htstat
                                        # -- End function
	.globl	millisecs                       # -- Begin function millisecs
	.p2align	5
	.type	millisecs,@function
millisecs:                              # @millisecs
# %bb.0:
	pcalau12i	$a1, %pc_hi20(millisecs.Time)
	ld.d	$a0, $a1, %pc_lo12(millisecs.Time)
	addi.d	$a2, $a0, 1
	st.d	$a2, $a1, %pc_lo12(millisecs.Time)
	ret
.Lfunc_end15:
	.size	millisecs, .Lfunc_end15-millisecs
                                        # -- End function
	.globl	min                             # -- Begin function min
	.p2align	5
	.type	min,@function
min:                                    # @min
# %bb.0:
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ret
.Lfunc_end16:
	.size	min, .Lfunc_end16-min
                                        # -- End function
	.globl	max                             # -- Begin function max
	.p2align	5
	.type	max,@function
max:                                    # @max
# %bb.0:
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ret
.Lfunc_end17:
	.size	max, .Lfunc_end17-max
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function inithistory
.LCPI18_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
.LCPI18_1:
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	8                               # 0x8
.LCPI18_2:
	.word	5                               # 0x5
	.word	8                               # 0x8
	.word	11                              # 0xb
	.word	11                              # 0xb
.LCPI18_3:
	.word	7                               # 0x7
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.text
	.globl	inithistory
	.p2align	5
	.type	inithistory,@function
inithistory:                            # @inithistory
# %bb.0:                                # %.preheader26
	pcalau12i	$a0, %pc_hi20(history)
	addi.d	$a0, $a0, %pc_lo12(history)
	ori	$a1, $zero, 4
	pcalau12i	$a2, %pc_hi20(.LCPI18_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI18_0)
	lu32i.d	$a1, 3
	st.d	$a1, $a0, 16
	st.d	$a1, $a0, 184
	vst	$vr0, $a0, 168
	vst	$vr0, $a0, 0
	ori	$a2, $zero, 6
	pcalau12i	$a3, %pc_hi20(.LCPI18_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI18_1)
	lu32i.d	$a2, 4
	st.d	$a2, $a0, 44
	st.d	$a2, $a0, 156
	vst	$vr1, $a0, 140
	vst	$vr1, $a0, 28
	ori	$a3, $zero, 8
	pcalau12i	$a4, %pc_hi20(.LCPI18_2)
	vld	$vr2, $a4, %pc_lo12(.LCPI18_2)
	lu32i.d	$a3, 5
	st.d	$a3, $a0, 72
	st.d	$a3, $a0, 128
	vst	$vr2, $a0, 112
	vst	$vr2, $a0, 56
	pcalau12i	$a4, %pc_hi20(.LCPI18_3)
	vld	$vr3, $a4, %pc_lo12(.LCPI18_3)
	ori	$a4, $zero, 10
	lu32i.d	$a4, 7
	st.d	$a4, $a0, 100
	vst	$vr3, $a0, 84
	st.d	$a1, $a0, 212
	st.d	$a1, $a0, 380
	vst	$vr0, $a0, 364
	vst	$vr0, $a0, 196
	st.d	$a2, $a0, 240
	st.d	$a2, $a0, 352
	vst	$vr1, $a0, 336
	vst	$vr1, $a0, 224
	st.d	$a3, $a0, 268
	st.d	$a3, $a0, 324
	vst	$vr2, $a0, 308
	vst	$vr2, $a0, 252
	st.d	$a4, $a0, 296
	vst	$vr3, $a0, 280
	ret
.Lfunc_end18:
	.size	inithistory, .Lfunc_end18-inithistory
                                        # -- End function
	.globl	ab                              # -- Begin function ab
	.p2align	5
	.type	ab,@function
ab:                                     # @ab
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(nodes)
	ld.d	$a4, $a3, %pc_lo12(nodes)
	pcalau12i	$s4, %pc_hi20(nplies)
	ld.w	$a2, $s4, %pc_lo12(nplies)
	addi.d	$a4, $a4, 1
	st.d	$a4, $a3, %pc_lo12(nodes)
	ori	$a3, $zero, 41
	ori	$s8, $zero, 3
	beq	$a2, $a3, .LBB19_32
# %bb.1:
	andi	$a3, $a2, 1
	xori	$a4, $a3, 1
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(color)
	addi.d	$s6, $a5, %pc_lo12(color)
	ldx.d	$a5, $s6, $a4
	pcalau12i	$a4, %pc_hi20(height)
	addi.d	$s0, $a4, %pc_lo12(height)
	move	$a4, $zero
	move	$a7, $zero
	move	$t8, $zero
	ori	$t0, $zero, 1
	lu12i.w	$a6, 33026
	ori	$a6, $a6, 64
	lu32i.d	$a6, 66052
	ori	$t1, $zero, 2
	addi.d	$t2, $sp, 156
	ori	$t3, $zero, 7
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               #   in Loop: Header=BB19_3 Depth=1
	addi.d	$a7, $a7, 1
	addi.w	$a4, $a4, 1
	beq	$a7, $t3, .LBB19_25
.LBB19_3:                               # =>This Inner Loop Header: Depth=1
	ldx.b	$t5, $s0, $a7
	sll.d	$t4, $t0, $t5
	or	$t4, $t4, $a5
	and	$t6, $t4, $a6
	bnez	$t6, .LBB19_2
# %bb.4:                                #   in Loop: Header=BB19_3 Depth=1
	bstrpick.d	$t5, $t5, 31, 0
	sll.d	$t5, $t1, $t5
	or	$t6, $t5, $a5
	and	$t7, $t6, $a6
	ori	$t5, $zero, 1
	bnez	$t7, .LBB19_9
# %bb.5:                                #   in Loop: Header=BB19_3 Depth=1
	srli.d	$t5, $t6, 6
	and	$t5, $t5, $t6
	srli.d	$t7, $t5, 12
	and	$t5, $t7, $t5
	bnez	$t5, .LBB19_8
# %bb.6:                                #   in Loop: Header=BB19_3 Depth=1
	srli.d	$t5, $t6, 7
	and	$t5, $t5, $t6
	srli.d	$t7, $t5, 14
	and	$t5, $t7, $t5
	bnez	$t5, .LBB19_8
# %bb.7:                                #   in Loop: Header=BB19_3 Depth=1
	srli.d	$t5, $t6, 8
	and	$t5, $t5, $t6
	srli.d	$t7, $t5, 16
	and	$t5, $t7, $t5
	beqz	$t5, .LBB19_15
.LBB19_8:                               #   in Loop: Header=BB19_3 Depth=1
	move	$t5, $zero
.LBB19_9:                               # %islegalhaswon.exit
                                        #   in Loop: Header=BB19_3 Depth=1
	srli.d	$t6, $t4, 6
	and	$t6, $t6, $t4
	srli.d	$t7, $t6, 12
	and	$t6, $t7, $t6
	bnez	$t6, .LBB19_16
# %bb.10:                               #   in Loop: Header=BB19_3 Depth=1
	srli.d	$t6, $t4, 7
	and	$t6, $t6, $t4
	srli.d	$t7, $t6, 14
	and	$t6, $t7, $t6
	bnez	$t6, .LBB19_16
# %bb.11:                               #   in Loop: Header=BB19_3 Depth=1
	srli.d	$t6, $t4, 8
	and	$t6, $t6, $t4
	srli.d	$t7, $t6, 16
	and	$t6, $t7, $t6
	bnez	$t6, .LBB19_16
# %bb.12:                               # %haswon.exit
                                        #   in Loop: Header=BB19_3 Depth=1
	srli.d	$t6, $t4, 1
	and	$t4, $t6, $t4
	srli.d	$t6, $t4, 2
	and	$t4, $t6, $t4
	bnez	$t4, .LBB19_16
# %bb.13:                               #   in Loop: Header=BB19_3 Depth=1
	beqz	$t5, .LBB19_2
# %bb.14:                               #   in Loop: Header=BB19_3 Depth=1
	slli.d	$t4, $t8, 2
	addi.w	$t8, $t8, 1
	stx.w	$a4, $t4, $t2
	b	.LBB19_2
.LBB19_15:                              #   in Loop: Header=BB19_3 Depth=1
	srli.d	$t5, $t6, 1
	and	$t5, $t5, $t6
	srli.d	$t6, $t5, 2
	and	$t5, $t6, $t5
	sltui	$t5, $t5, 1
	b	.LBB19_9
.LBB19_16:                              # %haswon.exit.thread
	ori	$s8, $zero, 1
	beqz	$t5, .LBB19_32
# %bb.17:
	ori	$t0, $zero, 5
	bltu	$t0, $a7, .LBB19_29
# %bb.18:                               # %.lr.ph184.preheader
	addi.d	$a7, $a7, 1
	ori	$t0, $zero, 1
	ori	$t1, $zero, 7
	ori	$s8, $zero, 1
	b	.LBB19_20
	.p2align	4, , 16
.LBB19_19:                              # %.critedge.backedge
                                        #   in Loop: Header=BB19_20 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $t1, .LBB19_29
.LBB19_20:                              # %.lr.ph184
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$t2, $s0, $a7
	sll.d	$t2, $t0, $t2
	or	$t2, $t2, $a5
	and	$t3, $t2, $a6
	bnez	$t3, .LBB19_19
# %bb.21:                               #   in Loop: Header=BB19_20 Depth=1
	srli.d	$t3, $t2, 6
	and	$t3, $t3, $t2
	srli.d	$t4, $t3, 12
	and	$t3, $t4, $t3
	bnez	$t3, .LBB19_32
# %bb.22:                               #   in Loop: Header=BB19_20 Depth=1
	srli.d	$t3, $t2, 7
	and	$t3, $t3, $t2
	srli.d	$t4, $t3, 14
	and	$t3, $t4, $t3
	bnez	$t3, .LBB19_32
# %bb.23:                               #   in Loop: Header=BB19_20 Depth=1
	srli.d	$t3, $t2, 8
	and	$t3, $t3, $t2
	srli.d	$t4, $t3, 16
	and	$t3, $t4, $t3
	bnez	$t3, .LBB19_32
# %bb.24:                               # %islegalhaswon.exit132
                                        #   in Loop: Header=BB19_20 Depth=1
	srli.d	$t3, $t2, 1
	and	$t2, $t3, $t2
	srli.d	$t3, $t2, 2
	and	$t2, $t3, $t2
	beqz	$t2, .LBB19_19
	b	.LBB19_32
.LBB19_25:
	beqz	$t8, .LBB19_31
# %bb.26:
	ori	$a4, $zero, 40
	beq	$a2, $a4, .LBB19_32
# %bb.27:
	ori	$a4, $zero, 1
	bne	$t8, $a4, .LBB19_33
# %bb.28:                               # %..thread145_crit_edge
	ld.w	$a4, $sp, 156
	b	.LBB19_30
.LBB19_29:                              # %.thread142
	ori	$a5, $zero, 40
	ori	$s8, $zero, 3
	beq	$a2, $a5, .LBB19_32
.LBB19_30:                              # %.thread145
	ldx.b	$a5, $s0, $a4
	addi.d	$a6, $a5, 1
	slli.d	$a3, $a3, 3
	ldx.d	$a7, $s6, $a3
	stx.b	$a6, $s0, $a4
	ori	$fp, $zero, 1
	sll.d	$a5, $fp, $a5
	xor	$a5, $a5, $a7
	stx.d	$a5, $s6, $a3
	addi.d	$a3, $a2, 1
	st.w	$a3, $s4, %pc_lo12(nplies)
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(moves)
	addi.d	$s1, $a3, %pc_lo12(moves)
	stx.w	$a4, $s1, $a2
	ori	$s2, $zero, 6
	sub.w	$a2, $s2, $a1
	sub.w	$a1, $s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(ab)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(nplies)
	addi.w	$a1, $a1, -1
	slli.d	$a2, $a1, 2
	ldx.w	$a2, $s1, $a2
	ldx.b	$a3, $s0, $a2
	addi.d	$a3, $a3, -1
	stx.b	$a3, $s0, $a2
	st.w	$a1, $s4, %pc_lo12(nplies)
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $s6, $a1
	sub.d	$s8, $s2, $a0
	ext.w.b	$a0, $a3
	sll.d	$a0, $fp, $a0
	xor	$a0, $a0, $a2
	stx.d	$a0, $s6, $a1
	b	.LBB19_32
.LBB19_31:
	ori	$s8, $zero, 1
.LBB19_32:                              # %islegalhaswon.exit132.thread
	addi.w	$a0, $s8, 0
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB19_33:
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $s6, $a4
	ld.d	$a5, $s6, 0
	ld.d	$a6, $s6, 8
	add.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	lu12i.w	$a5, 66052
	ori	$a5, $a5, 129
	lu32i.d	$a5, 1032
	ori	$a6, $zero, 9
	add.d	$a4, $a4, $a5
	blt	$a6, $a2, .LBB19_39
# %bb.34:                               # %.preheader.i.i
	beqz	$a4, .LBB19_38
# %bb.35:                               # %.lr.ph.i.i.preheader
	move	$a5, $zero
	ori	$a6, $zero, 127
	move	$a7, $a4
	.p2align	4, , 16
.LBB19_36:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$t0, $a7
	move	$a7, $a5
	move	$a5, $t0
	bstrins.d	$a5, $a7, 63, 7
	srli.d	$a7, $t0, 7
	bltu	$a6, $t0, .LBB19_36
# %bb.37:                               # %._crit_edge.loopexit.i.i
	sltu	$a6, $a5, $a4
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a5, $a6
	or	$a4, $a5, $a4
	b	.LBB19_39
.LBB19_38:
	move	$a4, $zero
.LBB19_39:                              # %hash.exit.i
	srli.d	$t0, $a4, 23
	addi.w	$t1, $t0, 0
	lu12i.w	$a5, -312672
	ori	$a5, $a5, 1511
	lu32i.d	$a5, 368436
	lu52i.d	$a5, $a5, -2028
	mulh.du	$a5, $a4, $a5
	srli.d	$a5, $a5, 22
	lu12i.w	$a6, 2027
	ori	$a6, $a6, 3477
	pcalau12i	$t4, %pc_hi20(ht)
	ld.d	$a7, $t4, %pc_lo12(ht)
	mul.d	$a5, $a5, $a6
	sub.d	$t2, $a4, $a5
	slli.d	$t3, $t2, 3
	ldx.d	$a4, $a7, $t3
	pcalau12i	$a5, %pc_hi20(lock)
	st.w	$t0, $a5, %pc_lo12(lock)
	pcalau12i	$a5, %pc_hi20(htindex)
	bstrpick.d	$a6, $a4, 25, 0
	st.w	$t2, $a5, %pc_lo12(htindex)
	bne	$a6, $t1, .LBB19_41
# %bb.40:
	srli.d	$s8, $a4, 61
	b	.LBB19_43
.LBB19_41:
	bstrpick.d	$a5, $a4, 57, 32
	ori	$a6, $zero, 6
	bne	$a5, $t1, .LBB19_51
# %bb.42:
	bstrpick.d	$s8, $a4, 60, 58
.LBB19_43:                              # %transpose.exit
	addi.w	$a4, $s8, 0
	beqz	$a4, .LBB19_50
# %bb.44:                               # %transpose.exit
	ori	$a5, $zero, 4
	beq	$a4, $a5, .LBB19_48
# %bb.45:                               # %transpose.exit
	ori	$a1, $zero, 2
	bne	$a4, $a1, .LBB19_32
# %bb.46:
	ori	$s8, $zero, 2
	blt	$a1, $a0, .LBB19_32
# %bb.47:
	ori	$a1, $zero, 3
	ori	$a6, $zero, 4
	b	.LBB19_51
.LBB19_48:
	ori	$s8, $zero, 4
	blt	$a1, $a5, .LBB19_32
# %bb.49:
	ori	$a0, $zero, 3
	ori	$a6, $zero, 2
	b	.LBB19_51
.LBB19_50:
	ori	$a6, $zero, 6
.LBB19_51:                              # %transpose.exit.thread
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(posed)
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a4, $a4, %pc_lo12(posed)
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	st.d	$t2, $sp, 56                    # 8-byte Folded Spill
	blez	$t8, .LBB19_72
# %bb.52:                               # %.lr.ph172
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	ori	$a4, $zero, 196
	mul.d	$a3, $a3, $a4
	pcalau12i	$a4, %pc_hi20(history)
	addi.d	$a4, $a4, %pc_lo12(history)
	move	$t3, $zero
	move	$s4, $zero
	add.d	$s8, $a4, $a3
	ori	$a3, $zero, 6
	sub.w	$a3, $a3, $a1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	addi.d	$t4, $sp, 160
	addi.d	$t5, $sp, 156
	ori	$t6, $zero, 1
	ori	$s7, $zero, 1
	ori	$a4, $zero, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$t8, $sp, 96                    # 8-byte Folded Spill
	ori	$s2, $zero, 6
	b	.LBB19_56
.LBB19_53:                              #   in Loop: Header=BB19_56 Depth=1
	move	$a3, $a1
	move	$a0, $s5
.LBB19_54:                              #   in Loop: Header=BB19_56 Depth=1
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	addi.d	$t5, $sp, 156
.LBB19_55:                              #   in Loop: Header=BB19_56 Depth=1
	addi.d	$s7, $s7, 1
	ld.d	$t4, $sp, 128                   # 8-byte Folded Reload
	addi.d	$t4, $t4, 4
	ld.d	$t6, $sp, 112                   # 8-byte Folded Reload
	addi.d	$t6, $t6, 1
	addi.d	$t3, $t3, -1
	move	$a4, $a3
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	beq	$s4, $t8, .LBB19_73
.LBB19_56:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_58 Depth 2
                                        #     Child Loop BB19_63 Depth 2
                                        #     Child Loop BB19_66 Depth 2
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a4, $s4, 1
	alsl.d	$a3, $s4, $t5, 2
	move	$a6, $s4
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	bgeu	$a4, $t8, .LBB19_59
# %bb.57:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB19_56 Depth=1
	ld.w	$a4, $a3, 0
	ldx.b	$a4, $s0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s8, $a4
	move	$a4, $t8
	move	$a7, $t6
	move	$t0, $t4
	move	$a6, $s4
	.p2align	4, , 16
.LBB19_58:                              # %.lr.ph
                                        #   Parent Loop BB19_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, 0
	ldx.b	$t1, $s0, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s8, $t1
	slt	$t2, $a5, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$a5, $a5, $t2
	or	$a5, $t1, $a5
	masknez	$a6, $a6, $t2
	maskeqz	$t1, $a7, $t2
	or	$a6, $t1, $a6
	addi.d	$t0, $t0, 4
	addi.d	$a4, $a4, -1
	addi.d	$a7, $a7, 1
	bne	$s7, $a4, .LBB19_58
.LBB19_59:                              # %._crit_edge
                                        #   in Loop: Header=BB19_56 Depth=1
	st.d	$t6, $sp, 112                   # 8-byte Folded Spill
	st.d	$t4, $sp, 128                   # 8-byte Folded Spill
	addi.w	$t0, $a6, 0
	slli.d	$a4, $t0, 2
	ldx.w	$s3, $a4, $t5
	bge	$s4, $t0, .LBB19_67
# %bb.60:                               # %.lr.ph167.preheader
                                        #   in Loop: Header=BB19_56 Depth=1
	sub.d	$a5, $t0, $s4
	ori	$a4, $zero, 8
	bgeu	$a5, $a4, .LBB19_62
# %bb.61:                               #   in Loop: Header=BB19_56 Depth=1
	move	$a4, $t0
	b	.LBB19_65
.LBB19_62:                              # %vector.ph
                                        #   in Loop: Header=BB19_56 Depth=1
	addi.w	$a7, $zero, -8
	and	$a6, $a5, $a7
	sub.d	$a4, $t0, $a6
	add.d	$t1, $t3, $t0
	and	$a7, $t1, $a7
	addi.d	$t1, $sp, 140
	alsl.d	$t0, $t0, $t1, 2
	.p2align	4, , 16
.LBB19_63:                              # %vector.body
                                        #   Parent Loop BB19_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t0, -16
	vst	$vr0, $t0, 4
	vst	$vr1, $t0, -12
	addi.d	$a7, $a7, -8
	addi.d	$t0, $t0, -32
	bnez	$a7, .LBB19_63
# %bb.64:                               # %middle.block
                                        #   in Loop: Header=BB19_56 Depth=1
	beq	$a5, $a6, .LBB19_67
.LBB19_65:                              # %.lr.ph167.preheader261
                                        #   in Loop: Header=BB19_56 Depth=1
	alsl.d	$a5, $a4, $t5, 2
	.p2align	4, , 16
.LBB19_66:                              # %.lr.ph167
                                        #   Parent Loop BB19_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, -4
	addi.d	$a7, $a5, -4
	addi.d	$a4, $a4, -1
	st.w	$a6, $a5, 0
	move	$a5, $a7
	blt	$s4, $a4, .LBB19_66
.LBB19_67:                              # %._crit_edge168
                                        #   in Loop: Header=BB19_56 Depth=1
	st.d	$t3, $sp, 144                   # 8-byte Folded Spill
	st.w	$s3, $a3, 0
	ldx.b	$a1, $s0, $s3
	andi	$a3, $a2, 1
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $s6, $a3
	addi.d	$a5, $a1, 1
	stx.b	$a5, $s0, $s3
	ori	$a5, $zero, 1
	sll.d	$a1, $a5, $a1
	xor	$a1, $a4, $a1
	stx.d	$a1, $s6, $a3
	addi.d	$a1, $a2, 1
	move	$fp, $s6
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $s6, %pc_lo12(nplies)
	slli.d	$a1, $a2, 2
	pcalau12i	$a2, %pc_hi20(moves)
	addi.d	$s1, $a2, %pc_lo12(moves)
	stx.w	$s3, $s1, $a1
	move	$s5, $a0
	sub.w	$a1, $s2, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ab)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s6, %pc_lo12(nplies)
	addi.w	$a2, $a4, -1
	slli.d	$a1, $a2, 2
	ldx.w	$a1, $s1, $a1
	ldx.b	$a5, $s0, $a1
	sub.w	$a3, $s2, $a0
	addi.d	$a5, $a5, -1
	stx.b	$a5, $s0, $a1
	andi	$a1, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a6, $fp, $a1
	st.w	$a2, $s6, %pc_lo12(nplies)
	move	$s6, $fp
	ext.w.b	$a5, $a5
	ori	$a7, $zero, 1
	sll.d	$a5, $a7, $a5
	xor	$a5, $a5, $a6
	stx.d	$a5, $fp, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bge	$a1, $a3, .LBB19_53
# %bb.68:                               #   in Loop: Header=BB19_56 Depth=1
	move	$a5, $a0
	move	$a0, $s5
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bge	$s5, $a3, .LBB19_54
# %bb.69:                               #   in Loop: Header=BB19_56 Depth=1
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	addi.d	$t5, $sp, 156
	blez	$a4, .LBB19_55
# %bb.70:                               #   in Loop: Header=BB19_56 Depth=1
	bge	$a3, $a1, .LBB19_79
# %bb.71:                               #   in Loop: Header=BB19_56 Depth=1
	move	$a0, $a3
	b	.LBB19_55
.LBB19_72:
	ori	$a3, $zero, 1
.LBB19_73:                              # %.loopexit
	addi.w	$a0, $a3, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	masknez	$a1, $a3, $a0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a6, %pc_lo12(posed)
	ori	$a4, $zero, 3
	maskeqz	$a0, $a4, $a0
	or	$s8, $a0, $a1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $a1, %pc_lo12(ht)
	sltui	$a5, $a0, 2
	addi.d	$a1, $a3, 1
	st.d	$a1, $a6, %pc_lo12(posed)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	clz.d	$a0, $a0
	xori	$a0, $a0, 63
	masknez	$fp, $a0, $a5
	bstrpick.d	$a3, $a1, 25, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a4, 3
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	beq	$a3, $a4, .LBB19_76
# %bb.74:                               # %.loopexit
	bstrpick.d	$a3, $a1, 31, 26
	addi.w	$a3, $a3, 0
	bgeu	$fp, $a3, .LBB19_76
# %bb.75:
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 25, 0
	bstrins.d	$a1, $a3, 60, 32
	bstrins.d	$a1, $s8, 60, 58
	b	.LBB19_77
.LBB19_76:
	ori	$a3, $zero, 0
	lu32i.d	$a3, -1
	lu52i.d	$a3, $a3, 511
	and	$a1, $a1, $a3
	slli.d	$a3, $s8, 61
	srli.d	$a1, $a1, 26
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	bstrins.d	$a4, $a1, 63, 26
	or	$a1, $a4, $a3
	bstrins.d	$a1, $fp, 31, 26
.LBB19_77:                              # %transtore.exit
	st.d	$a1, $a0, 0
	bgez	$a2, .LBB19_32
# %bb.78:
	pcaddu18i	$ra, %call36(printMoves)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s8, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ldx.b	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB19_32
.LBB19_79:
	addi.w	$a0, $s4, 0
	addi.d	$a1, $a5, -3
	sltui	$a1, $a1, 1
	addi.w	$a4, $t8, -1
	slt	$a0, $a0, $a4
	addi.d	$a0, $a0, 3
	masknez	$a3, $a3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a3, $a0, $a3
	beqz	$s4, .LBB19_73
# %bb.80:                               # %.preheader.preheader
	addi.d	$a0, $sp, 156
	move	$a1, $s4
.LBB19_81:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	ldx.b	$a4, $s0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s8, $a4
	addi.d	$a5, $a5, -1
	stx.w	$a5, $s8, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB19_81
# %bb.82:
	ldx.b	$a0, $s0, $s3
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s8, $a0
	add.d	$a1, $a1, $s4
	stx.w	$a1, $s8, $a0
	b	.LBB19_73
.Lfunc_end19:
	.size	ab, .Lfunc_end19-ab
                                        # -- End function
	.globl	solve                           # -- Begin function solve
	.p2align	5
	.type	solve,@function
solve:                                  # @solve
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nplies)
	ld.wu	$a0, $a0, %pc_lo12(nplies)
	andi	$a1, $a0, 1
	xori	$a2, $a1, 1
	pcalau12i	$a0, %pc_hi20(nodes)
	st.d	$zero, $a0, %pc_lo12(nodes)
	pcalau12i	$fp, %pc_hi20(msecs)
	ori	$a0, $zero, 1
	st.d	$a0, $fp, %pc_lo12(msecs)
	slli.d	$a3, $a2, 3
	pcalau12i	$a2, %pc_hi20(color)
	addi.d	$a2, $a2, %pc_lo12(color)
	ldx.d	$a3, $a2, $a3
	srli.d	$a4, $a3, 6
	and	$a4, $a4, $a3
	srli.d	$a5, $a4, 12
	and	$a4, $a5, $a4
	bnez	$a4, .LBB20_4
# %bb.1:
	srli.d	$a4, $a3, 7
	and	$a4, $a4, $a3
	srli.d	$a5, $a4, 14
	and	$a4, $a5, $a4
	bnez	$a4, .LBB20_4
# %bb.2:
	srli.d	$a4, $a3, 8
	and	$a4, $a4, $a3
	srli.d	$a5, $a4, 16
	and	$a4, $a5, $a4
	bnez	$a4, .LBB20_4
# %bb.3:                                # %haswon.exit
	srli.d	$a4, $a3, 1
	and	$a3, $a4, $a3
	srli.d	$a4, $a3, 2
	and	$a3, $a4, $a3
	beqz	$a3, .LBB20_5
.LBB20_4:                               # %haswon.exit.thread
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB20_5:                               # %.preheader
	slli.d	$a0, $a1, 3
	ldx.d	$a1, $a2, $a0
	pcalau12i	$a0, %pc_hi20(height)
	addi.d	$a2, $a0, %pc_lo12(height)
	move	$a3, $zero
	ori	$a4, $zero, 1
	lu12i.w	$a0, 33026
	ori	$a5, $a0, 64
	lu32i.d	$a5, 66052
	ori	$a6, $zero, 7
	b	.LBB20_7
	.p2align	4, , 16
.LBB20_6:                               # %islegalhaswon.exit.thread14
                                        #   in Loop: Header=BB20_7 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a6, .LBB20_12
.LBB20_7:                               # =>This Inner Loop Header: Depth=1
	ldx.b	$a0, $a2, $a3
	sll.d	$a0, $a4, $a0
	or	$a7, $a0, $a1
	and	$a0, $a7, $a5
	bnez	$a0, .LBB20_6
# %bb.8:                                #   in Loop: Header=BB20_7 Depth=1
	srli.d	$a0, $a7, 6
	and	$a0, $a0, $a7
	srli.d	$t0, $a0, 12
	and	$t0, $t0, $a0
	ori	$a0, $zero, 5
	bnez	$t0, .LBB20_4
# %bb.9:                                #   in Loop: Header=BB20_7 Depth=1
	srli.d	$t0, $a7, 7
	and	$t0, $t0, $a7
	srli.d	$t1, $t0, 14
	and	$t0, $t1, $t0
	bnez	$t0, .LBB20_4
# %bb.10:                               #   in Loop: Header=BB20_7 Depth=1
	srli.d	$t0, $a7, 8
	and	$t0, $t0, $a7
	srli.d	$t1, $t0, 16
	and	$t0, $t1, $t0
	bnez	$t0, .LBB20_4
# %bb.11:                               # %islegalhaswon.exit
                                        #   in Loop: Header=BB20_7 Depth=1
	srli.d	$t0, $a7, 1
	and	$a7, $t0, $a7
	srli.d	$t0, $a7, 2
	and	$a7, $t0, $a7
	beqz	$a7, .LBB20_6
	b	.LBB20_4
.LBB20_12:
	pcaddu18i	$ra, %call36(inithistory)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(millisecs.Time)
	ld.d	$a0, $s0, %pc_lo12(millisecs.Time)
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, %pc_lo12(millisecs.Time)
	st.d	$a0, $fp, %pc_lo12(msecs)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(ab)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(millisecs.Time)
	ld.d	$a2, $fp, %pc_lo12(msecs)
	addi.d	$a1, $a1, 1
	st.d	$a1, $s0, %pc_lo12(millisecs.Time)
	sub.d	$a1, $a1, $a2
	st.d	$a1, $fp, %pc_lo12(msecs)
	b	.LBB20_4
.Lfunc_end20:
	.size	solve, .Lfunc_end20-solve
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	lu12i.w	$a0, 2027
	ori	$fp, $a0, 3477
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(ht)
	st.d	$a0, $s3, %pc_lo12(ht)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 6
	ori	$s4, $zero, 6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(nplies)
	st.w	$zero, $s5, %pc_lo12(nplies)
	pcalau12i	$a0, %pc_hi20(color)
	addi.d	$s6, $a0, %pc_lo12(color)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $s6, 0
	pcalau12i	$a0, %pc_hi20(height)
	addi.d	$s7, $a0, %pc_lo12(height)
	lu12i.w	$a0, 86240
	ori	$a0, $a0, 1792
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.w	$a0, $s7, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 796
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.h	$a0, $s7, 4
	ori	$a0, $zero, 42
	st.b	$a0, $s7, 6
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s1, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s2, $zero, -1
	beq	$a0, $s2, .LBB21_12
# %bb.1:                                # %.lr.ph.preheader
	ori	$s8, $zero, 1
	pcalau12i	$a1, %pc_hi20(moves)
	addi.d	$a1, $a1, %pc_lo12(moves)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s0, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a1, 16222
	ori	$fp, $a1, 3240
	pcalau12i	$a1, %pc_hi20(posed)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_2:                               #   in Loop: Header=BB21_4 Depth=1
	ld.w	$a0, $s5, %pc_lo12(nplies)
	ldx.b	$a2, $s7, $a1
	andi	$a3, $a0, 1
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $s6, $a3
	addi.d	$a5, $a2, 1
	stx.b	$a5, $s7, $a1
	sll.d	$a2, $s8, $a2
	xor	$a2, $a4, $a2
	stx.d	$a2, $s6, $a3
	addi.d	$a2, $a0, 1
	st.w	$a2, $s5, %pc_lo12(nplies)
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	stx.w	$a1, $a2, $a0
.LBB21_3:                               #   in Loop: Header=BB21_4 Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB21_12
.LBB21_4:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_8 Depth 2
                                        #     Child Loop BB21_10 Depth 2
	addi.w	$a1, $a0, -49
	bgeu	$s4, $a1, .LBB21_2
# %bb.5:                                #   in Loop: Header=BB21_4 Depth=1
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB21_3
# %bb.6:                                #   in Loop: Header=BB21_4 Depth=1
	ld.w	$a1, $s5, %pc_lo12(nplies)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nplies)
	blez	$a0, .LBB21_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB21_4 Depth=1
	move	$s4, $zero
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_8:                               # %.lr.ph.i
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s8, 0
	addi.w	$a1, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nplies)
	addi.d	$s4, $s4, 1
	addi.d	$s8, $s8, 4
	blt	$s4, $a0, .LBB21_8
.LBB21_9:                               # %printMoves.exit
                                        #   in Loop: Header=BB21_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB21_10:                              #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, %pc_lo12(ht)
	stx.d	$zero, $a1, $a0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB21_10
# %bb.11:                               # %emptyTT.exit
                                        #   in Loop: Header=BB21_4 Depth=1
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	st.d	$zero, $s4, %pc_lo12(posed)
	pcaddu18i	$ra, %call36(solve)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, %pc_lo12(posed)
	move	$a1, $a0
	sltui	$a0, $a3, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.b	$a2, $a2, $a1
	clz.d	$a3, $a3
	xori	$a3, $a3, 63
	masknez	$a3, $a3, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(htstat)
	jirl	$ra, $ra, 0
	st.w	$zero, $s5, %pc_lo12(nplies)
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $s6, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a1, $s7, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.h	$a1, $s7, 4
	ori	$a1, $zero, 42
	st.b	$a1, $s7, 6
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 6
	ori	$s8, $zero, 1
	bne	$a0, $s2, .LBB21_4
.LBB21_12:                              # %._crit_edge
	move	$a0, $zero
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
.Lfunc_end21:
	.size	main, .Lfunc_end21-main
                                        # -- End function
	.type	nplies,@object                  # @nplies
	.bss
	.globl	nplies
	.p2align	2, 0x0
nplies:
	.word	0                               # 0x0
	.size	nplies, 4

	.type	color,@object                   # @color
	.globl	color
	.p2align	3, 0x0
color:
	.space	16
	.size	color, 16

	.type	height,@object                  # @height
	.globl	height
height:
	.space	7
	.size	height, 7

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	moves,@object                   # @moves
	.bss
	.globl	moves
	.p2align	2, 0x0
moves:
	.space	168
	.size	moves, 168

	.type	ht,@object                      # @ht
	.globl	ht
	.p2align	3, 0x0
ht:
	.dword	0
	.size	ht, 8

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

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\n"
	.size	.L.str.1, 45

	.type	millisecs.Time,@object          # @millisecs.Time
	.local	millisecs.Time
	.comm	millisecs.Time,8,8
	.type	history,@object                 # @history
	.bss
	.globl	history
	.p2align	4, 0x0
history:
	.space	392
	.size	history, 392

	.type	nodes,@object                   # @nodes
	.globl	nodes
	.p2align	3, 0x0
nodes:
	.dword	0                               # 0x0
	.size	nodes, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%c%d\n"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"#-<=>+"
	.size	.L.str.3, 7

	.type	msecs,@object                   # @msecs
	.bss
	.globl	msecs
	.p2align	3, 0x0
msecs:
	.dword	0                               # 0x0
	.size	msecs, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Fhourstones 3.1 (C)"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Boardsize = %dx%d\n"
	.size	.L.str.5, 19

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Using %d transposition table entries.\n"
	.size	.L.str.6, 39

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\nSolving %d-ply position after "
	.size	.L.str.7, 32

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" . . ."
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"score = %d (%c)  work = %d\n"
	.size	.L.str.9, 28

	.section	".note.GNU-stack","",@progbits
	.addrsig
