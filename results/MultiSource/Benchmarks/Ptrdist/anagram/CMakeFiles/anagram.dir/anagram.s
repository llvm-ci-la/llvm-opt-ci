	.file	"anagram.c"
	.section	.text.unlikely.,"ax",@progbits
	.globl	Fatal                           # -- Begin function Fatal
	.p2align	5
	.type	Fatal,@function
Fatal:                                  # @Fatal
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	Fatal, .Lfunc_end0-Fatal
                                        # -- End function
	.text
	.globl	ReadDict                        # -- Begin function ReadDict
	.p2align	5
	.type	ReadDict,@function
ReadDict:                               # @ReadDict
# %bb.0:
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
	move	$s1, $a0
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_13
# %bb.1:
	ld.d	$a0, $sp, 72
	lu12i.w	$a1, 12
	ori	$a1, $a1, 2848
	add.d	$s3, $a0, $a1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(pchDictionary)
	st.d	$a0, $s4, %pc_lo12(pchDictionary)
	beqz	$a0, .LBB1_14
# %bb.2:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_15
# %bb.3:                                # %.preheader
	move	$s1, $a0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_9
# %bb.4:                                # %.lr.ph.preheader
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $zero
	addi.w	$s5, $zero, -1
	ori	$s6, $zero, 10
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	addi.d	$s3, $s7, 3
	st.b	$zero, $s7, 2
	addi.d	$a0, $fp, 3
	st.b	$a0, $s0, 0
	st.b	$s8, $s0, 1
	addi.w	$s2, $s2, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	move	$s0, $s3
	bnez	$a0, .LBB1_10
.LBB1_6:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	move	$fp, $zero
	move	$s8, $zero
	add.d	$s7, $s0, $fp
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB1_5
	.p2align	4, , 16
.LBB1_7:                                #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s3, $a0
	beq	$a0, $s6, .LBB1_5
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 10, 10
	add.d	$s8, $s8, $a0
	st.b	$s3, $s7, 2
	addi.d	$fp, $fp, 1
	add.d	$s7, $s0, $fp
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB1_7
	b	.LBB1_5
.LBB1_9:
	move	$s2, $zero
	b	.LBB1_11
.LBB1_10:                               # %._crit_edge.loopexit
	addi.d	$s0, $s7, 3
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
.LBB1_11:                               # %._crit_edge
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	st.b	$zero, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 31, 4
	ori	$a1, $zero, 1625
	bgeu	$a0, $a1, .LBB1_16
# %bb.12:
	ld.d	$a1, $s4, %pc_lo12(pchDictionary)
	ld.d	$a0, $fp, 0
	nor	$a2, $s0, $zero
	add.d	$a2, $a2, $s3
	add.d	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB1_13:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.LBB1_14:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.LBB1_15:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.LBB1_16:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	ReadDict, .Lfunc_end1-ReadDict
                                        # -- End function
	.globl	BuildMask                       # -- Begin function BuildMask
	.p2align	5
	.type	BuildMask,@function
BuildMask:                              # @BuildMask
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
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(alPhrase)
	addi.d	$fp, $a0, %pc_lo12(alPhrase)
	ori	$a2, $zero, 416
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(aqMainMask)
	addi.d	$s1, $a0, %pc_lo12(aqMainMask)
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 0
	pcalau12i	$a0, %pc_hi20(aqMainSign)
	addi.d	$s2, $a0, %pc_lo12(aqMainSign)
	vst	$vr0, $s2, 0
	pcalau12i	$s3, %pc_hi20(cchPhraseLength)
	st.w	$zero, $s3, %pc_lo12(cchPhraseLength)
	ld.bu	$s6, $s0, 0
	beqz	$s6, .LBB2_5
# %bb.1:                                # %.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$s4, $a0, 0
	move	$s5, $zero
	addi.d	$s0, $s0, 1
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	ld.bu	$s6, $s0, 0
	addi.d	$s0, $s0, 1
	beqz	$s6, .LBB2_5
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ext.w.b	$s6, $s6
	slli.d	$a0, $s6, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB2_2
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ldx.w	$a0, $a0, $a1
	alsl.d	$a0, $a0, $fp, 4
	ld.w	$a1, $a0, -1552
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, -1552
	addi.d	$s5, $s5, 1
	st.w	$s5, $s3, %pc_lo12(cchPhraseLength)
	b	.LBB2_2
.LBB2_5:                                # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(auGlobalFrequency)
	addi.d	$a0, $a0, %pc_lo12(auGlobalFrequency)
	move	$a1, $zero
	move	$a5, $zero
	move	$a6, $zero
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	ori	$a3, $zero, 26
	ori	$a4, $zero, 65
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	st.w	$a2, $t1, 0
	addi.d	$a1, $a1, 1
	beq	$a1, $a3, .LBB2_15
.LBB2_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	slli.d	$a7, $a1, 4
	ldx.wu	$a7, $fp, $a7
	alsl.d	$t1, $a1, $a0, 2
	beqz	$a7, .LBB2_6
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	alsl.d	$t0, $a1, $fp, 4
	st.w	$zero, $t1, 0
	ori	$t2, $zero, 1
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB2_9:                                #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t2, $t2, 1
	addi.d	$t1, $t1, 1
	bgeu	$a7, $t2, .LBB2_9
# %bb.10:                               #   in Loop: Header=BB2_7 Depth=1
	add.w	$t3, $a5, $t1
	bltu	$t3, $a4, .LBB2_13
# %bb.11:                               #   in Loop: Header=BB2_7 Depth=1
	bnez	$a6, .LBB2_16
# %bb.12:                               # %.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$t3, $zero
	move	$a5, $zero
	addi.d	$a6, $t2, -1
	st.w	$a6, $t0, 8
	ori	$a6, $zero, 1
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_13:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$t3, $t2, -1
	st.w	$t3, $t0, 8
	bstrpick.d	$t3, $a5, 31, 0
	sll.d	$t2, $t2, $a5
.LBB2_14:                               #   in Loop: Header=BB2_7 Depth=1
	slli.d	$t4, $a6, 3
	ldx.d	$t5, $s2, $t4
	ldx.d	$t6, $s1, $t4
	or	$t2, $t5, $t2
	stx.d	$t2, $s2, $t4
	sll.d	$a7, $a7, $t3
	or	$a7, $a7, $t6
	stx.d	$a7, $s1, $t4
	st.w	$a5, $t0, 4
	st.w	$a6, $t0, 12
	add.w	$a5, $a5, $t1
	addi.d	$a1, $a1, 1
	bne	$a1, $a3, .LBB2_7
.LBB2_15:
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
.LBB2_16:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	BuildMask, .Lfunc_end2-BuildMask
                                        # -- End function
	.globl	NewWord                         # -- Begin function NewWord
	.p2align	5
	.type	NewWord,@function
NewWord:                                # @NewWord
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_2
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_2:
	pcalau12i	$a0, %pc_hi20(cpwCand)
	ld.w	$a1, $a0, %pc_lo12(cpwCand)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	NewWord, .Lfunc_end3-NewWord
                                        # -- End function
	.globl	wprint                          # -- Begin function wprint
	.p2align	5
	.type	wprint,@function
wprint:                                 # @wprint
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end4:
	.size	wprint, .Lfunc_end4-wprint
                                        # -- End function
	.globl	NextWord                        # -- Begin function NextWord
	.p2align	5
	.type	NextWord,@function
NextWord:                               # @NextWord
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(cpwCand)
	ld.wu	$a1, $a0, %pc_lo12(cpwCand)
	srli.d	$a2, $a1, 3
	ori	$a3, $zero, 625
	bgeu	$a2, $a3, .LBB5_5
# %bb.1:
	addi.w	$s0, $a1, 0
	addi.w	$fp, $a1, 1
	st.w	$fp, $a0, %pc_lo12(cpwCand)
	pcalau12i	$a0, %pc_hi20(apwCand)
	addi.d	$s1, $a0, %pc_lo12(apwCand)
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $s1, $a0
	bnez	$a0, .LBB5_4
# %bb.2:
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_6
# %bb.3:                                # %NewWord.exit
	alsl.d	$a1, $s0, $s1, 3
	st.d	$a0, $a1, 0
.LBB5_4:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB5_5:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.LBB5_6:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	NextWord, .Lfunc_end5-NextWord
                                        # -- End function
	.globl	BuildWord                       # -- Begin function BuildWord
	.p2align	5
	.type	BuildWord,@function
BuildWord:                              # @BuildWord
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
	move	$fp, $a0
	st.h	$zero, $sp, 40
	ld.bu	$s5, $a0, 0
	st.d	$zero, $sp, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
	pcalau12i	$a0, %pc_hi20(alPhrase)
	addi.d	$s1, $a0, %pc_lo12(alPhrase)
	beqz	$s5, .LBB6_7
# %bb.1:                                # %.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $a0, 0
	move	$s2, $zero
	addi.d	$s3, $fp, 1
	addi.d	$s4, $sp, 16
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %.backedge
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.bu	$s5, $s3, 0
	addi.d	$s3, $s3, 1
	beqz	$s5, .LBB6_6
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	ext.w.b	$s5, $s5
	slli.d	$a0, $s5, 1
	ldx.hu	$a0, $s0, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$a0, $a0, -97
	ldx.b	$a1, $a0, $s4
	slli.d	$a2, $a0, 4
	ldx.w	$a2, $s1, $a2
	addi.d	$a1, $a1, 1
	andi	$a3, $a1, 255
	stx.b	$a1, $a0, $s4
	bltu	$a2, $a3, .LBB6_13
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	addi.d	$s2, $s2, 1
	b	.LBB6_2
.LBB6_6:                                # %.preheader.loopexit
	ld.d	$a0, $sp, 16
	ld.w	$a1, $sp, 20
	ld.d	$a2, $sp, 24
	ld.w	$a3, $sp, 28
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vinsgr2vr.w	$vr4, $a3, 0
	ld.bu	$a1, $sp, 32
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr3, $vr1, 0
	vsllwil.hu.bu	$vr1, $vr2, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.hu.bu	$vr2, $vr4, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	b	.LBB6_8
.LBB6_7:
	move	$a1, $zero
	move	$s2, $zero
	vori.b	$vr3, $vr0, 0
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
.LBB6_8:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(auGlobalFrequency)
	addi.d	$a0, $a0, %pc_lo12(auGlobalFrequency)
	vld	$vr4, $a0, 0
	vld	$vr5, $a0, 16
	vadd.w	$vr0, $vr4, $vr0
	vst	$vr0, $a0, 0
	vld	$vr0, $a0, 32
	vadd.w	$vr3, $vr5, $vr3
	vld	$vr4, $a0, 48
	vst	$vr3, $a0, 16
	vadd.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 32
	vadd.w	$vr0, $vr4, $vr2
	vst	$vr0, $a0, 48
	ld.bu	$a2, $sp, 33
	ld.bu	$a3, $sp, 34
	ld.bu	$a4, $sp, 35
	vld	$vr0, $a0, 64
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	ld.w	$a1, $sp, 36
	vinsgr2vr.w	$vr1, $a4, 3
	vadd.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 64
	vinsgr2vr.w	$vr0, $a1, 0
	ld.bu	$a1, $sp, 40
	ld.w	$a2, $a0, 96
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vld	$vr1, $a0, 80
	add.d	$a1, $a2, $a1
	st.w	$a1, $a0, 96
	ld.bu	$a3, $sp, 41
	ld.w	$a4, $a0, 100
	pcalau12i	$a1, %pc_hi20(cpwCand)
	ld.wu	$a2, $a1, %pc_lo12(cpwCand)
	vadd.w	$vr0, $vr1, $vr0
	add.d	$a3, $a4, $a3
	st.w	$a3, $a0, 100
	srli.d	$a3, $a2, 3
	ori	$a4, $zero, 624
	vst	$vr0, $a0, 80
	bltu	$a4, $a3, .LBB6_14
# %bb.9:
	addi.w	$s3, $a2, 0
	addi.w	$s0, $a2, 1
	st.w	$s0, $a1, %pc_lo12(cpwCand)
	pcalau12i	$a0, %pc_hi20(apwCand)
	addi.d	$s4, $a0, %pc_lo12(apwCand)
	slli.d	$a0, $s3, 3
	ldx.d	$a0, $s4, $a0
	bnez	$a0, .LBB6_12
# %bb.10:
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_15
# %bb.11:                               # %NewWord.exit.i
	alsl.d	$a1, $s3, $s4, 3
	st.d	$a0, $a1, 0
.LBB6_12:                               # %NextWord.exit
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	ld.wu	$a1, $s1, 12
	ld.bu	$a2, $sp, 16
	ld.w	$a3, $s1, 4
	slli.d	$a1, $a1, 3
	ldx.d	$a4, $a0, $a1
	sll.d	$a2, $a2, $a3
	or	$a2, $a4, $a2
	ld.wu	$a3, $s1, 28
	stx.d	$a2, $a0, $a1
	ld.bu	$a1, $sp, 17
	ld.w	$a2, $s1, 20
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 44
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 18
	ld.w	$a3, $s1, 36
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 60
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 19
	ld.w	$a2, $s1, 52
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 76
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 20
	ld.w	$a3, $s1, 68
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 92
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 21
	ld.w	$a2, $s1, 84
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 108
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 22
	ld.w	$a3, $s1, 100
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 124
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 23
	ld.w	$a2, $s1, 116
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 140
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 24
	ld.w	$a3, $s1, 132
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 156
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 25
	ld.w	$a2, $s1, 148
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 172
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 26
	ld.w	$a3, $s1, 164
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 188
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 27
	ld.w	$a2, $s1, 180
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 204
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 28
	ld.w	$a3, $s1, 196
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 220
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 29
	ld.w	$a2, $s1, 212
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 236
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 30
	ld.w	$a3, $s1, 228
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 252
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 31
	ld.w	$a2, $s1, 244
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 268
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 32
	ld.w	$a3, $s1, 260
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 284
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 33
	ld.w	$a2, $s1, 276
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 300
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 34
	ld.w	$a3, $s1, 292
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 316
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 35
	ld.w	$a2, $s1, 308
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 332
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 36
	ld.w	$a3, $s1, 324
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 348
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 37
	ld.w	$a2, $s1, 340
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 364
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 38
	ld.w	$a3, $s1, 356
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 380
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 39
	ld.w	$a2, $s1, 372
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	ld.wu	$a2, $s1, 396
	stx.d	$a1, $a0, $a3
	ld.bu	$a1, $sp, 40
	ld.w	$a3, $s1, 388
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	sll.d	$a1, $a1, $a3
	or	$a1, $a4, $a1
	ld.wu	$a3, $s1, 412
	stx.d	$a1, $a0, $a2
	ld.bu	$a1, $sp, 41
	ld.w	$a2, $s1, 404
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a0, $a3
	st.d	$fp, $a0, 16
	st.w	$s2, $a0, 24
	sll.d	$a1, $a1, $a2
	or	$a1, $a4, $a1
	stx.d	$a1, $a0, $a3
.LBB6_13:                               # %.loopexit
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
.LBB6_14:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.LBB6_15:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	BuildWord, .Lfunc_end6-BuildWord
                                        # -- End function
	.globl	AddWords                        # -- Begin function AddWords
	.p2align	5
	.type	AddWords,@function
AddWords:                               # @AddWords
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(pchDictionary)
	ld.d	$s0, $a0, %pc_lo12(pchDictionary)
	pcalau12i	$fp, %pc_hi20(cpwCand)
	st.w	$zero, $fp, %pc_lo12(cpwCand)
	ld.bu	$a0, $s0, 0
	move	$a2, $zero
	beqz	$a0, .LBB7_9
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$s1, %pc_hi20(cchMinLength)
	ld.w	$a1, $s1, %pc_lo12(cchMinLength)
	pcalau12i	$s2, %pc_hi20(cchPhraseLength)
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(BuildWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(cchMinLength)
	ld.bu	$a0, $s0, 0
.LBB7_3:                                #   in Loop: Header=BB7_4 Depth=1
	ext.w.b	$a2, $a0
	ldx.bu	$a0, $s0, $a2
	add.d	$s0, $s0, $a2
	beqz	$a0, .LBB7_8
.LBB7_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $s0, 1
	bge	$a2, $a1, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	ld.w	$a3, $s2, %pc_lo12(cchPhraseLength)
	beq	$a3, $a2, .LBB7_2
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	ld.w	$a3, $s2, %pc_lo12(cchPhraseLength)
	add.w	$a4, $a1, $a2
	bge	$a3, $a4, .LBB7_2
# %bb.7:                                #   in Loop: Header=BB7_4 Depth=1
	bne	$a3, $a2, .LBB7_3
	b	.LBB7_2
.LBB7_8:                                # %._crit_edge.loopexit
	ld.w	$a2, $fp, %pc_lo12(cpwCand)
.LBB7_9:                                # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end7:
	.size	AddWords, .Lfunc_end7-AddWords
                                        # -- End function
	.globl	DumpCandidates                  # -- Begin function DumpCandidates
	.p2align	5
	.type	DumpCandidates,@function
DumpCandidates:                         # @DumpCandidates
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(cpwCand)
	ld.w	$a0, $s0, %pc_lo12(cpwCand)
	beqz	$a0, .LBB8_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(apwCand)
	addi.d	$s1, $a0, %pc_lo12(apwCand)
	ori	$s2, $zero, 32
	ori	$s3, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	move	$s4, $zero
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	andi	$a0, $s4, 3
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	masknez	$a2, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, %pc_lo12(cpwCand)
	addi.d	$s4, $s4, 1
	addi.d	$s1, $s1, 8
	bltu	$s4, $a0, .LBB8_2
.LBB8_3:                                # %._crit_edge
	ori	$a0, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end8:
	.size	DumpCandidates, .Lfunc_end8-DumpCandidates
                                        # -- End function
	.globl	DumpWords                       # -- Begin function DumpWords
	.p2align	5
	.type	DumpWords,@function
DumpWords:                              # @DumpWords
# %bb.0:
	pcalau12i	$a0, %pc_hi20(DumpWords.X)
	ld.wu	$a1, $a0, %pc_lo12(DumpWords.X)
	addi.d	$a2, $a1, 1
	andi	$a2, $a2, 1023
	andi	$a1, $a1, 1023
	ori	$a3, $zero, 1023
	st.w	$a2, $a0, %pc_lo12(DumpWords.X)
	bne	$a1, $a3, .LBB9_5
# %bb.1:                                # %.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(cpwLast)
	ld.w	$a0, $s0, %pc_lo12(cpwLast)
	blez	$a0, .LBB9_4
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(apwSol)
	addi.d	$s1, $a0, %pc_lo12(apwSol)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$fp, $a0, %pc_lo12(.L.str.9)
	move	$s2, $zero
	.p2align	4, , 16
.LBB9_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(cpwLast)
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB9_3
.LBB9_4:                                # %._crit_edge
	ori	$a0, $zero, 10
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.LBB9_5:
	ret
.Lfunc_end9:
	.size	DumpWords, .Lfunc_end9-DumpWords
                                        # -- End function
	.globl	FindAnagram                     # -- Begin function FindAnagram
	.p2align	5
	.type	FindAnagram,@function
FindAnagram:                            # @FindAnagram
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
	pcalau12i	$t1, %pc_hi20(cpwCand)
	ld.wu	$a3, $t1, %pc_lo12(cpwCand)
	addi.d	$fp, $a2, -1
	pcalau12i	$a4, %pc_hi20(achByFrequency)
	addi.d	$a4, $a4, %pc_lo12(achByFrequency)
	add.d	$a2, $a4, $a2
	pcalau12i	$a4, %pc_hi20(alPhrase)
	addi.d	$a4, $a4, %pc_lo12(alPhrase)
	.p2align	4, , 16
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a2, 0
	alsl.d	$a5, $a5, $a4, 4
	ld.wu	$a6, $a5, 12
	ld.w	$a7, $a5, 8
	ld.wu	$a5, $a5, 4
	slli.d	$s3, $a6, 3
	ldx.d	$a6, $a0, $s3
	sll.w	$a5, $a7, $a5
	bstrpick.d	$s4, $a5, 31, 0
	and	$a5, $a6, $s4
	addi.w	$fp, $fp, 1
	addi.d	$a2, $a2, 1
	beqz	$a5, .LBB10_1
# %bb.2:                                # %.preheader
	pcalau12i	$a2, %pc_hi20(apwCand)
	addi.d	$s0, $a2, %pc_lo12(apwCand)
	alsl.d	$s8, $a3, $s0, 3
	bgeu	$a1, $s8, .LBB10_22
# %bb.3:                                # %.lr.ph.lr.ph
	pcalau12i	$a2, %pc_hi20(aqMainSign)
	addi.d	$t8, $a2, %pc_lo12(aqMainSign)
	pcalau12i	$s6, %pc_hi20(cpwLast)
	pcalau12i	$a2, %pc_hi20(apwSol)
	addi.d	$t3, $a2, %pc_lo12(apwSol)
	pcalau12i	$t4, %pc_hi20(cchPhraseLength)
	pcalau12i	$t5, %pc_hi20(DumpWords.X)
	ori	$t6, $zero, 1023
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$s7, $a2, %pc_lo12(.L.str.9)
                                        # implicit-def: $r25
	b	.LBB10_7
.LBB10_4:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB10_7 Depth=1
	addi.d	$s8, $a2, 8
	.p2align	4, , 16
.LBB10_5:                               # %._crit_edge
                                        #   in Loop: Header=BB10_7 Depth=1
	st.d	$s2, $sp, 80
	st.d	$a3, $sp, 72
.LBB10_6:                               # %.outer.backedge
                                        #   in Loop: Header=BB10_7 Depth=1
	addi.d	$a1, $a1, 8
	bgeu	$a1, $s8, .LBB10_22
.LBB10_7:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
                                        #     Child Loop BB10_18 Depth 2
	ld.d	$s5, $a1, 0
	ld.d	$a4, $a0, 0
	ld.d	$a2, $s5, 0
	ld.d	$a5, $t8, 0
	sub.d	$a3, $a4, $a2
	and	$a2, $a5, $a3
	bnez	$a2, .LBB10_5
# %bb.8:                                # %.lr.ph122.preheader
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$a6, $t8, 8
	ld.d	$a7, $a0, 8
	addi.d	$a2, $s8, -8
	.p2align	4, , 16
.LBB10_9:                               # %.lr.ph122
                                        #   Parent Loop BB10_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $s5, 8
	sub.d	$s2, $a7, $t0
	and	$t0, $a6, $s2
	bnez	$t0, .LBB10_13
# %bb.10:                               #   in Loop: Header=BB10_9 Depth=2
	ldx.d	$t0, $s5, $s3
	and	$t0, $t0, $s4
	bnez	$t0, .LBB10_14
# %bb.11:                               #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	st.d	$s5, $a2, 0
	bgeu	$a1, $a2, .LBB10_22
# %bb.12:                               #   in Loop: Header=BB10_9 Depth=2
	ld.d	$s5, $a1, 0
	ld.d	$a3, $s5, 0
	sub.d	$a3, $a4, $a3
	and	$t0, $a5, $a3
	addi.d	$a2, $a2, -8
	beqz	$t0, .LBB10_9
	b	.LBB10_4
.LBB10_13:                              #   in Loop: Header=BB10_7 Depth=1
	st.d	$s2, $sp, 80
	st.d	$a3, $sp, 72
	addi.d	$s8, $a2, 8
	b	.LBB10_6
.LBB10_14:                              #   in Loop: Header=BB10_7 Depth=1
	ld.w	$a4, $s6, %pc_lo12(cpwLast)
	st.d	$s2, $sp, 80
	st.d	$a3, $sp, 72
	addi.d	$a3, $a4, 1
	ld.w	$a5, $s5, 24
	ld.w	$a6, $t4, %pc_lo12(cchPhraseLength)
	st.w	$a3, $s6, %pc_lo12(cpwLast)
	slli.d	$a3, $a4, 3
	stx.d	$s5, $t3, $a3
	sub.d	$a3, $a6, $a5
	st.w	$a3, $t4, %pc_lo12(cchPhraseLength)
	bne	$a6, $a5, .LBB10_20
# %bb.15:                               #   in Loop: Header=BB10_7 Depth=1
	ld.wu	$a3, $t5, %pc_lo12(DumpWords.X)
	addi.d	$s8, $a2, 8
	addi.d	$a2, $a3, 1
	andi	$a2, $a2, 1023
	andi	$a3, $a3, 1023
	st.w	$a2, $t5, %pc_lo12(DumpWords.X)
	bne	$a3, $t6, .LBB10_21
# %bb.16:                               # %.preheader.i
                                        #   in Loop: Header=BB10_7 Depth=1
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$t1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bltz	$a4, .LBB10_19
# %bb.17:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB10_7 Depth=1
	move	$s1, $zero
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_18:                              # %.lr.ph.i
                                        #   Parent Loop BB10_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(cpwLast)
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB10_18
.LBB10_19:                              # %._crit_edge.i
                                        #   in Loop: Header=BB10_7 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ori	$t6, $zero, 1023
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	b	.LBB10_21
.LBB10_20:                              #   in Loop: Header=BB10_7 Depth=1
	ld.wu	$a2, $t1, %pc_lo12(cpwCand)
	alsl.d	$s8, $a2, $s0, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 72
	move	$s1, $a1
	move	$a2, $fp
	st.d	$t1, $sp, 48                    # 8-byte Folded Spill
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(FindAnagram)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ori	$t6, $zero, 1023
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s1
.LBB10_21:                              # %DumpWords.exit
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.w	$a2, $s5, 24
	ld.w	$a3, $t4, %pc_lo12(cchPhraseLength)
	ld.w	$a4, $s6, %pc_lo12(cpwLast)
	add.d	$a2, $a3, $a2
	st.w	$a2, $t4, %pc_lo12(cchPhraseLength)
	addi.d	$a2, $a4, -1
	st.w	$a2, $s6, %pc_lo12(cpwLast)
	b	.LBB10_6
.LBB10_22:                              # %.outer._crit_edge
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
.Lfunc_end10:
	.size	FindAnagram, .Lfunc_end10-FindAnagram
                                        # -- End function
	.globl	CompareFrequency                # -- Begin function CompareFrequency
	.p2align	5
	.type	CompareFrequency,@function
CompareFrequency:                       # @CompareFrequency
# %bb.0:
	ld.b	$a2, $a0, 0
	slli.d	$a0, $a2, 2
	pcalau12i	$a3, %pc_hi20(auGlobalFrequency)
	addi.d	$a3, $a3, %pc_lo12(auGlobalFrequency)
	ld.b	$a1, $a1, 0
	ldx.w	$a4, $a3, $a0
	slli.d	$a0, $a1, 2
	ldx.w	$a5, $a3, $a0
	addi.w	$a3, $zero, -1
	bgeu	$a4, $a5, .LBB11_2
# %bb.1:
	move	$a0, $a3
	ret
.LBB11_2:
	ori	$a0, $zero, 1
	bltu	$a5, $a4, .LBB11_5
# %bb.3:
	move	$a0, $a3
	blt	$a2, $a1, .LBB11_5
# %bb.4:
	slt	$a0, $a1, $a2
.LBB11_5:
	ret
.Lfunc_end11:
	.size	CompareFrequency, .Lfunc_end11-CompareFrequency
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function SortCandidates
.LCPI12_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.section	.text.unlikely.,"ax",@progbits
	.globl	SortCandidates
	.p2align	5
	.type	SortCandidates,@function
SortCandidates:                         # @SortCandidates
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_0)
	pcalau12i	$a0, %pc_hi20(achByFrequency)
	addi.d	$fp, $a0, %pc_lo12(achByFrequency)
	vst	$vr0, $fp, 0
	lu12i.w	$a0, 78113
	ori	$a0, $a0, 272
	lu32i.d	$a0, 398612
	lu52i.d	$a0, $a0, 369
	st.d	$a0, $fp, 16
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2328
	st.h	$a0, $fp, 24
	pcalau12i	$a0, %pc_hi20(CompareFrequency)
	addi.d	$a3, $a0, %pc_lo12(CompareFrequency)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 1
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 3
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 4
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 5
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 6
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 7
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 8
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 9
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 10
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 11
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 12
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 13
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 14
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 15
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 16
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 17
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 18
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 19
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 20
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 21
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 22
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 23
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 24
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 25
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a0, 97
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end12:
	.size	SortCandidates, .Lfunc_end12-SortCandidates
                                        # -- End function
	.text
	.globl	GetPhrase                       # -- Begin function GetPhrase
	.p2align	5
	.type	GetPhrase,@function
GetPhrase:                              # @GetPhrase
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(fInteractive)
	ld.w	$a2, $a2, %pc_lo12(fInteractive)
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a2, .LBB13_2
# %bb.1:
	ori	$a0, $zero, 62
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB13_2:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_4
# %bb.3:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB13_4:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	GetPhrase, .Lfunc_end13-GetPhrase
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
	addi.w	$a2, $a0, -4
	addi.w	$a3, $zero, -3
	bltu	$a3, $a2, .LBB14_2
# %bb.1:                                # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Fatal)
	jirl	$ra, $ra, 0
.LBB14_2:
	move	$fp, $a1
	ori	$a1, $zero, 3
	pcalau12i	$s6, %pc_hi20(cchMinLength)
	bne	$a0, $a1, .LBB14_4
# %bb.3:
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s6, %pc_lo12(cchMinLength)
.LBB14_4:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(isatty)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	pcalau12i	$s4, %pc_hi20(fInteractive)
	st.w	$a0, $s4, %pc_lo12(fInteractive)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(ReadDict)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s2, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$fp, $a0, %got_pc_lo12(stdin)
	pcalau12i	$a0, %pc_hi20(achPhrase)
	addi.d	$s5, $a0, %pc_lo12(achPhrase)
	pcalau12i	$s8, %pc_hi20(cpwCand)
	ori	$s1, $zero, 10
	pcalau12i	$a0, %pc_hi20(apwCand)
	addi.d	$a0, $a0, %pc_lo12(apwCand)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s0, $zero, 32
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s3, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(pchDictionary)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(cchPhraseLength)
	pcalau12i	$a0, %pc_hi20(cpwLast)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(jbAnagram)
	addi.d	$a0, $a0, %pc_lo12(jbAnagram)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(aqMainMask)
	addi.d	$a0, $a0, %pc_lo12(aqMainMask)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	b	.LBB14_6
	.p2align	4, , 16
.LBB14_5:                               #   in Loop: Header=BB14_6 Depth=1
	move	$a1, $zero
	move	$a0, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s6, %pc_lo12(cchMinLength)
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB14_6:                               # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_19 Depth 2
                                        #     Child Loop BB14_13 Depth 2
	ld.w	$a0, $s4, %pc_lo12(fInteractive)
	beqz	$a0, .LBB14_8
# %bb.7:                                #   in Loop: Header=BB14_6 Depth=1
	ori	$a0, $zero, 62
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB14_8:                               #   in Loop: Header=BB14_6 Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	move	$a0, $s5
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_28
# %bb.9:                                # %GetPhrase.exit
                                        #   in Loop: Header=BB14_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 1
	ldx.hu	$a0, $a0, $a2
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB14_5
# %bb.10:                               #   in Loop: Header=BB14_6 Depth=1
	ori	$a0, $zero, 63
	bne	$a1, $a0, .LBB14_15
# %bb.11:                               #   in Loop: Header=BB14_6 Depth=1
	move	$s6, $fp
	move	$fp, $s2
	move	$s2, $s4
	ld.w	$a0, $s8, %pc_lo12(cpwCand)
	beqz	$a0, .LBB14_14
# %bb.12:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	move	$s4, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB14_13:                              # %.lr.ph.i
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s5, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 16
	andi	$a0, $s4, 3
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$a2, $a0, $a2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $s8, %pc_lo12(cpwCand)
	addi.d	$a3, $s4, 1
	addi.d	$a0, $s5, 8
	move	$s4, $a3
	bltu	$a3, $a2, .LBB14_13
.LBB14_14:                              # %DumpCandidates.exit
                                        #   in Loop: Header=BB14_6 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	move	$s4, $s2
	move	$s2, $fp
	move	$fp, $s6
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	b	.LBB14_6
.LBB14_15:                              #   in Loop: Header=BB14_6 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildMask)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(pchDictionary)
	move	$a1, $zero
	st.w	$zero, $s8, %pc_lo12(cpwCand)
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB14_24
# %bb.16:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.w	$a1, $s6, %pc_lo12(cchMinLength)
	move	$s5, $a0
	b	.LBB14_19
	.p2align	4, , 16
.LBB14_17:                              #   in Loop: Header=BB14_19 Depth=2
	addi.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(BuildWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(cchMinLength)
	ld.bu	$a2, $s5, 0
.LBB14_18:                              #   in Loop: Header=BB14_19 Depth=2
	ext.w.b	$a0, $a2
	ldx.bu	$a3, $s5, $a0
	add.d	$s5, $s5, $a0
	move	$a2, $a3
	beqz	$a3, .LBB14_23
.LBB14_19:                              # %.lr.ph.i10
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s5, 1
	bge	$a0, $a1, .LBB14_21
# %bb.20:                               #   in Loop: Header=BB14_19 Depth=2
	ld.w	$a3, $s7, %pc_lo12(cchPhraseLength)
	beq	$a3, $a0, .LBB14_17
	b	.LBB14_18
	.p2align	4, , 16
.LBB14_21:                              #   in Loop: Header=BB14_19 Depth=2
	ld.w	$a3, $s7, %pc_lo12(cchPhraseLength)
	add.w	$a4, $a1, $a0
	bge	$a3, $a4, .LBB14_17
# %bb.22:                               #   in Loop: Header=BB14_19 Depth=2
	bne	$a3, $a0, .LBB14_18
	b	.LBB14_17
.LBB14_23:                              # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.w	$a1, $s8, %pc_lo12(cpwCand)
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
.LBB14_24:                              # %AddWords.exit
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a2, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(cpwCand)
	beqz	$a0, .LBB14_6
# %bb.25:                               # %AddWords.exit
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.w	$a0, $s7, %pc_lo12(cchPhraseLength)
	beqz	$a0, .LBB14_6
# %bb.26:                               #   in Loop: Header=BB14_6 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$zero, $a1, %pc_lo12(cpwLast)
	pcaddu18i	$ra, %call36(SortCandidates)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_setjmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_6
# %bb.27:                               #   in Loop: Header=BB14_6 Depth=1
	move	$a2, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FindAnagram)
	jirl	$ra, $ra, 0
	b	.LBB14_6
.LBB14_28:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	main, .Lfunc_end14-main
                                        # -- End function
	.type	cchMinLength,@object            # @cchMinLength
	.data
	.globl	cchMinLength
	.p2align	2, 0x0
cchMinLength:
	.word	3                               # 0x3
	.size	cchMinLength, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot stat dictionary\n"
	.size	.L.str, 24

	.type	pchDictionary,@object           # @pchDictionary
	.bss
	.globl	pchDictionary
	.p2align	3, 0x0
pchDictionary:
	.dword	0
	.size	pchDictionary, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Unable to allocate memory for dictionary\n"
	.size	.L.str.1, 42

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"r"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Cannot open dictionary\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"main dictionary has %u entries\n"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Dictionary too large; increase MAXWORDS\n"
	.size	.L.str.5, 41

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%lu bytes wasted\n"
	.size	.L.str.6, 18

	.type	alPhrase,@object                # @alPhrase
	.bss
	.globl	alPhrase
	.p2align	3, 0x0
alPhrase:
	.space	416
	.size	alPhrase, 416

	.type	aqMainMask,@object              # @aqMainMask
	.globl	aqMainMask
	.p2align	3, 0x0
aqMainMask:
	.space	16
	.size	aqMainMask, 16

	.type	aqMainSign,@object              # @aqMainSign
	.globl	aqMainSign
	.p2align	3, 0x0
aqMainSign:
	.space	16
	.size	aqMainSign, 16

	.type	cchPhraseLength,@object         # @cchPhraseLength
	.globl	cchPhraseLength
	.p2align	2, 0x0
cchPhraseLength:
	.word	0                               # 0x0
	.size	cchPhraseLength, 4

	.type	auGlobalFrequency,@object       # @auGlobalFrequency
	.globl	auGlobalFrequency
	.p2align	4, 0x0
auGlobalFrequency:
	.space	104
	.size	auGlobalFrequency, 104

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"MAX_QUADS not large enough\n"
	.size	.L.str.7, 28

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Out of memory after %d candidates\n"
	.size	.L.str.8, 35

	.type	cpwCand,@object                 # @cpwCand
	.bss
	.globl	cpwCand
	.p2align	2, 0x0
cpwCand:
	.word	0                               # 0x0
	.size	cpwCand, 4

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"%s "
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Too many candidates\n"
	.size	.L.str.10, 21

	.type	apwCand,@object                 # @apwCand
	.bss
	.globl	apwCand
	.p2align	3, 0x0
apwCand:
	.space	40000
	.size	apwCand, 40000

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"%d candidates\n"
	.size	.L.str.11, 15

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%15s%c"
	.size	.L.str.12, 7

	.type	DumpWords.X,@object             # @DumpWords.X
	.local	DumpWords.X
	.comm	DumpWords.X,4,4
	.type	cpwLast,@object                 # @cpwLast
	.bss
	.globl	cpwLast
	.p2align	2, 0x0
cpwLast:
	.word	0                               # 0x0
	.size	cpwLast, 4

	.type	apwSol,@object                  # @apwSol
	.globl	apwSol
	.p2align	3, 0x0
apwSol:
	.space	408
	.size	apwSol, 408

	.type	achByFrequency,@object          # @achByFrequency
	.globl	achByFrequency
	.p2align	4, 0x0
achByFrequency:
	.space	26
	.size	achByFrequency, 26

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Order of search will be "
	.size	.L.str.14, 25

	.type	fInteractive,@object            # @fInteractive
	.bss
	.globl	fInteractive
	.p2align	2, 0x0
fInteractive:
	.word	0                               # 0x0
	.size	fInteractive, 4

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"Usage: anagram dictionary [length]\n"
	.size	.L.str.16, 36

	.type	achPhrase,@object               # @achPhrase
	.bss
	.globl	achPhrase
achPhrase:
	.space	255
	.size	achPhrase, 255

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"New length: %d\n"
	.size	.L.str.17, 16

	.type	jbAnagram,@object               # @jbAnagram
	.bss
	.globl	jbAnagram
	.p2align	3, 0x0
jbAnagram:
	.space	304
	.size	jbAnagram, 304

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CompareFrequency
	.addrsig_sym aqMainMask
	.addrsig_sym apwCand
	.addrsig_sym achByFrequency
	.addrsig_sym achPhrase
	.addrsig_sym jbAnagram
