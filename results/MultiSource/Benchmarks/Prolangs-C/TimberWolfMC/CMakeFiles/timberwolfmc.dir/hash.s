	.file	"hash.c"
	.text
	.globl	maketabl                        # -- Begin function maketabl
	.p2align	5
	.type	maketabl,@function
maketabl:                               # @maketabl
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3976
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hashtab)
	ld.d	$a1, $a1, %got_pc_lo12(hashtab)
	st.d	$a0, $a1, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	maketabl, .Lfunc_end0-maketabl
                                        # -- End function
	.globl	delHtab                         # -- Begin function delHtab
	.p2align	5
	.type	delHtab,@function
delHtab:                                # @delHtab
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(hashtab)
	ld.d	$s0, $a0, %got_pc_lo12(hashtab)
	ld.d	$a0, $s0, 0
	move	$s1, $zero
	ori	$s2, $zero, 1009
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $a0
.LBB1_2:                                # %._crit_edge
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s2, .LBB1_7
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	slli.d	$a1, $s1, 3
	ldx.d	$a2, $a0, $a1
	beqz	$a2, .LBB1_3
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a1, $a2
	move	$a0, $a2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB1_1
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	move	$a0, $fp
	bnez	$a1, .LBB1_6
	b	.LBB1_2
.LBB1_7:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	delHtab, .Lfunc_end1-delHtab
                                        # -- End function
	.globl	addhash                         # -- Begin function addhash
	.p2align	5
	.type	addhash,@function
addhash:                                # @addhash
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB2_4
# %bb.2:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB2_7
.LBB2_3:
	move	$a0, $zero
	b	.LBB2_10
.LBB2_4:                                # %vector.ph
	move	$a1, $a0
	bstrins.d	$a1, $zero, 2, 0
	vrepli.b	$vr0, 0
	addi.d	$a2, $fp, 4
	move	$a3, $a1
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vilvl.b	$vr2, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 24
	vsrai.w	$vr2, $vr2, 24
	vilvl.b	$vr3, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 24
	vsrai.w	$vr3, $vr3, 24
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB2_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a0, $a1, .LBB2_9
.LBB2_7:                                # %.lr.ph.preheader51
	add.d	$a3, $fp, $a1
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB2_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $a3, 0
	add.w	$a2, $a2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB2_8
.LBB2_9:                                # %._crit_edge.loopexit
	bstrpick.d	$a0, $a2, 31, 0
	lu12i.w	$a1, 15588
	ori	$a1, $a1, 1413
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 32
	sub.d	$a1, $a2, $a0
	bstrpick.d	$a1, $a1, 31, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 9
	ori	$a1, $zero, 1009
	mul.d	$a0, $a0, $a1
	sub.w	$a0, $a2, $a0
.LBB2_10:                               # %._crit_edge
	pcalau12i	$a1, %got_pc_hi20(hashtab)
	ld.d	$a1, $a1, %got_pc_lo12(hashtab)
	ld.d	$a2, $a1, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $a2, $a1
	beqz	$a1, .LBB2_14
	.p2align	4, , 16
.LBB2_11:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a1
	ld.d	$a1, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_16
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a1, $s1, 16
	bnez	$a1, .LBB2_11
# %bb.13:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s1, 16
	b	.LBB2_15
.LBB2_14:
	alsl.d	$s1, $a0, $a2, 3
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s1, 0
.LBB2_15:                               # %.loopexit.sink.split
	st.d	$zero, $s0, 16
	pcalau12i	$a0, %got_pc_hi20(netctr)
	ld.d	$a0, $a0, %got_pc_lo12(netctr)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	st.w	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB2_17
.LBB2_16:
	move	$a0, $zero
.LBB2_17:                               # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	addhash, .Lfunc_end2-addhash
                                        # -- End function
	.globl	hashfind                        # -- Begin function hashfind
	.p2align	5
	.type	hashfind,@function
hashfind:                               # @hashfind
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB3_4
# %bb.2:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB3_7
.LBB3_3:
	move	$a0, $zero
	b	.LBB3_10
.LBB3_4:                                # %vector.ph
	move	$a1, $a0
	bstrins.d	$a1, $zero, 2, 0
	vrepli.b	$vr0, 0
	addi.d	$a2, $fp, 4
	move	$a3, $a1
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB3_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vilvl.b	$vr2, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 24
	vsrai.w	$vr2, $vr2, 24
	vilvl.b	$vr3, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 24
	vsrai.w	$vr3, $vr3, 24
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB3_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a0, $a1, .LBB3_9
.LBB3_7:                                # %.lr.ph.preheader30
	add.d	$a3, $fp, $a1
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB3_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $a3, 0
	add.w	$a2, $a2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB3_8
.LBB3_9:                                # %._crit_edge.loopexit
	bstrpick.d	$a0, $a2, 31, 0
	lu12i.w	$a1, 15588
	ori	$a1, $a1, 1413
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 32
	sub.d	$a1, $a2, $a0
	bstrpick.d	$a1, $a1, 31, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 9
	ori	$a1, $zero, 1009
	mul.d	$a0, $a0, $a1
	sub.w	$a0, $a2, $a0
.LBB3_10:                               # %._crit_edge
	pcalau12i	$a1, %got_pc_hi20(hashtab)
	ld.d	$a1, $a1, %got_pc_lo12(hashtab)
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $a1, $a0
	beqz	$s0, .LBB3_13
	.p2align	4, , 16
.LBB3_11:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB3_11
.LBB3_13:
	move	$a0, $zero
	b	.LBB3_15
.LBB3_14:
	ld.w	$a0, $s0, 8
.LBB3_15:                               # %.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	hashfind, .Lfunc_end3-hashfind
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
