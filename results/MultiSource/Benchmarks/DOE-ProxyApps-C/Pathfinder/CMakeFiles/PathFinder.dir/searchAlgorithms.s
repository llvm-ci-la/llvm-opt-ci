	.file	"searchAlgorithms.c"
	.text
	.globl	doMultiSearches                 # -- Begin function doMultiSearches
	.p2align	5
	.type	doMultiSearches,@function
doMultiSearches:                        # @doMultiSearches
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$s5, $a1, 0
	beqz	$s5, .LBB0_27
# %bb.1:                                # %.preheader.lr.ph
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	ld.d	$s7, $a0, 0
	beqz	$s7, .LBB0_27
# %bb.2:                                # %.preheader.preheader
	pcalau12i	$a2, %got_pc_hi20(stdout)
	ld.d	$s6, $a2, %got_pc_lo12(stdout)
	move	$a3, $zero
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	beqz	$s7, .LBB0_25
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $zero
	addi.d	$s1, $s5, 8
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_6
.LBB0_4:                                # %._crit_edge.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_5:                                # %findLabelPath.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $fp, 0
	addi.d	$s8, $s8, 1
	slli.d	$a1, $s8, 3
	ldx.d	$s7, $a0, $a1
	beqz	$s7, .LBB0_24
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_14 Depth 2
	ld.d	$a0, $s6, 0
	st.w	$zero, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.w	$s4, $a0, 0
	ld.w	$a0, $s7, 8
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	beqz	$a1, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	move	$s2, $a0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB0_5
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	beqz	$s2, .LBB0_5
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s7, 32
	pcaddu18i	$ra, %call36(SystemCallMap_findLabeledNodes)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.10:                               # %.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s3, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_4
# %bb.11:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 1
	bne	$s4, $a0, .LBB0_19
# %bb.12:                               # %.lr.ph.split.us.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s6, $zero
	move	$s5, $zero
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a0, $s3, 0
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, 8
	bge	$s5, $a0, .LBB0_4
.LBB0_14:                               # %.lr.ph.split.us.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s7, 24
	ldx.d	$a1, $a1, $s6
	pcaddu18i	$ra, %call36(SearchDiagram_findNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a2
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(SearchDiagram_findSignatureAlongEdges)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB0_4
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB0_18
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB0_13
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	st.w	$zero, $s0, 0
	b	.LBB0_13
.LBB0_19:                               # %.lr.ph.split.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	move	$s6, $zero
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_21 Depth=2
	ld.w	$a0, $s3, 0
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bge	$s6, $a0, .LBB0_4
.LBB0_21:                               # %.lr.ph.split.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 8
	ldx.d	$a0, $a0, $s5
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB0_4
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=2
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB0_20
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=2
	st.w	$zero, $s0, 0
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_24:                               # %._crit_edge.loopexit
	ld.d	$a1, $fp, 8
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
.LBB0_25:                               # %._crit_edge
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a3, 1
	slli.d	$a2, $a3, 3
	ldx.d	$s5, $a1, $a2
	beqz	$s5, .LBB0_27
# %bb.26:                               # %.preheaderthread-pre-split
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.d	$s7, $a0, 0
	bnez	$s7, .LBB0_3
	b	.LBB0_25
.LBB0_27:                               # %._crit_edge32
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -452053
	ori	$a1, $a1, 965
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 11
	add.d	$fp, $a0, $a1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -253952
	lu52i.d	$a0, $a0, 1034
	movgr2fr.d	$fa1, $a0
	ori	$s1, $zero, 0
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -489336
	ori	$a1, $a1, 2185
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 5
	add.d	$s0, $a0, $a1
	lu32i.d	$s1, -131072
	lu52i.d	$a0, $s1, 1028
	movgr2fr.d	$fa1, $a0
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $fp
	move	$a2, $s0
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end0:
	.size	doMultiSearches, .Lfunc_end0-doMultiSearches
                                        # -- End function
	.globl	findLabelPath                   # -- Begin function findLabelPath
	.p2align	5
	.type	findLabelPath,@function
findLabelPath:                          # @findLabelPath
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
	move	$s2, $a0
	ld.w	$a0, $a0, 8
	move	$s4, $a3
	move	$s0, $a2
	move	$s3, $a1
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $zero
	beqz	$s2, .LBB1_19
# %bb.1:
	beqz	$s3, .LBB1_19
# %bb.2:
	ld.d	$a1, $s3, 0
	beqz	$a1, .LBB1_16
# %bb.3:
	move	$a0, $zero
	beqz	$s0, .LBB1_19
# %bb.4:
	ld.d	$a2, $s3, 8
	beqz	$a2, .LBB1_19
# %bb.5:
	beqz	$fp, .LBB1_19
# %bb.6:
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(SystemCallMap_findLabeledNodes)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_16
# %bb.7:                                # %.preheader
	move	$s1, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB1_17
# %bb.8:                                # %.lr.ph
	ori	$a0, $zero, 1
	addi.d	$s3, $s3, 8
	bne	$s4, $a0, .LBB1_20
# %bb.9:                                # %.lr.ph.split.us.preheader
	move	$s5, $zero
	move	$s6, $zero
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bge	$s6, $a0, .LBB1_17
.LBB1_11:                               # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	ld.d	$a0, $s2, 24
	ldx.d	$a1, $a1, $s5
	pcaddu18i	$ra, %call36(SearchDiagram_findNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a2
	move	$a2, $s3
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(SearchDiagram_findSignatureAlongEdges)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB1_25
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=1
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB1_15
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_14:                               #   in Loop: Header=BB1_11 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB1_10
.LBB1_15:                               #   in Loop: Header=BB1_11 Depth=1
	st.w	$zero, $s0, 0
	b	.LBB1_10
.LBB1_16:
	move	$a0, $zero
	b	.LBB1_19
.LBB1_17:
	move	$s2, $zero
.LBB1_18:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB1_19:
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
.LBB1_20:                               # %.lr.ph.split.preheader
	move	$s4, $zero
	move	$s5, $zero
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	bge	$s5, $a0, .LBB1_18
.LBB1_22:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	ldx.d	$a0, $a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB1_18
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB1_21
# %bb.24:                               #   in Loop: Header=BB1_22 Depth=1
	st.w	$zero, $s0, 0
	b	.LBB1_21
.LBB1_25:
	ori	$s2, $zero, 1
	b	.LBB1_18
.Lfunc_end1:
	.size	findLabelPath, .Lfunc_end1-findLabelPath
                                        # -- End function
	.globl	findNextLabel                   # -- Begin function findNextLabel
	.p2align	5
	.type	findNextLabel,@function
findNextLabel:                          # @findNextLabel
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
	move	$s2, $a0
	move	$a0, $zero
	beqz	$s2, .LBB2_18
# %bb.1:
	move	$s1, $a1
	beqz	$a1, .LBB2_18
# %bb.2:
	move	$fp, $a2
	beqz	$a2, .LBB2_18
# %bb.3:
	move	$s0, $a3
	beqz	$a3, .LBB2_18
# %bb.4:
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bitfield_nodeVisited)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_17
# %bb.5:
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, 40
	beqz	$s7, .LBB2_16
# %bb.6:                                # %.lr.ph
	addi.d	$s3, $s1, 8
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=1
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB2_13
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s7, 8
	ld.d	$a0, $s4, 8
	beqz	$a0, .LBB2_7
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_7
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB2_19
# %bb.11:                               #   in Loop: Header=BB2_8 Depth=1
	ori	$a0, $zero, 50
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$s5, $a0
	move	$a0, $a1
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB2_7
# %bb.12:
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_appendVectors)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
	b	.LBB2_20
.LBB2_13:                               # %.preheader
	ld.d	$s2, $s2, 40
	beqz	$s2, .LBB2_16
	.p2align	4, , 16
.LBB2_14:                               # %.lr.ph58
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_20
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=1
	ld.d	$s2, $s2, 16
	bnez	$s2, .LBB2_14
.LBB2_16:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(NodePtrVec_pop)
	jirl	$ra, $ra, 0
.LBB2_17:                               # %.loopexit
	move	$a0, $zero
.LBB2_18:                               # %.loopexit
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
.LBB2_19:
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
.LBB2_20:
	ori	$a0, $zero, 1
	b	.LBB2_18
.Lfunc_end2:
	.size	findNextLabel, .Lfunc_end2-findNextLabel
                                        # -- End function
	.globl	findAndRecordAllPaths           # -- Begin function findAndRecordAllPaths
	.p2align	5
	.type	findAndRecordAllPaths,@function
findAndRecordAllPaths:                  # @findAndRecordAllPaths
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
	beqz	$a0, .LBB3_6
# %bb.1:
	move	$s4, $a1
	beqz	$a1, .LBB3_6
# %bb.2:
	move	$s3, $a2
	beqz	$a2, .LBB3_6
# %bb.3:
	move	$s1, $a3
	beqz	$a3, .LBB3_6
# %bb.4:
	move	$s2, $a4
	beqz	$a4, .LBB3_6
# %bb.5:
	move	$fp, $a6
	move	$s0, $a5
	move	$s5, $a0
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(Bitfield_nodeVisited)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_7
.LBB3_6:
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
.LBB3_7:
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s5, 40
	beqz	$s7, .LBB3_33
# %bb.8:                                # %.lr.ph
	addi.d	$s6, $s4, 8
	addi.d	$a0, $s3, 4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s0, .LBB3_27
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(globalStats)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB3_12
.LBB3_10:                               #   in Loop: Header=BB3_12 Depth=1
	ld.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$s8, $a0
	move	$a0, $a1
	move	$a1, $s6
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s8
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(findAndRecordAllPaths)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=1
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB3_31
.LBB3_12:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s7, 8
	ld.d	$a0, $s8, 8
	beqz	$a0, .LBB3_11
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_11
# %bb.14:                               #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $s6, 0
	bnez	$a0, .LBB3_10
# %bb.15:                               #   in Loop: Header=BB3_12 Depth=1
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_nodeVisited)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_24
# %bb.16:                               #   in Loop: Header=BB3_12 Depth=1
	move	$s8, $a0
	ld.bu	$a0, $fp, 4
	bnez	$a0, .LBB3_21
# %bb.17:                               #   in Loop: Header=BB3_12 Depth=1
	ld.bu	$a0, $fp, 5
	beqz	$a0, .LBB3_21
# %bb.18:                               #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(globalStats)
	bnez	$a0, .LBB3_20
# %bb.19:                               #   in Loop: Header=BB3_12 Depth=1
	pcaddu18i	$ra, %call36(Stats_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(globalStats)
.LBB3_20:                               # %logStats.exit.i
                                        #   in Loop: Header=BB3_12 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(Stats_logPath)
	jirl	$ra, $ra, 0
.LBB3_21:                               #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.w	$a1, $s1, 0
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a1, $a0, -8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(NodeVecVec_insert)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB3_23:                               #   in Loop: Header=BB3_12 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
.LBB3_24:                               # %logResult.exit
                                        #   in Loop: Header=BB3_12 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(NodePtrVec_pop)
	jirl	$ra, $ra, 0
	b	.LBB3_11
.LBB3_25:                               # %logResult.exit.us
                                        #   in Loop: Header=BB3_27 Depth=1
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_nodeVisited)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(NodePtrVec_pop)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_26:                               #   in Loop: Header=BB3_27 Depth=1
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB3_31
.LBB3_27:                               # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s7, 8
	ld.d	$a0, $s8, 8
	beqz	$a0, .LBB3_26
# %bb.28:                               #   in Loop: Header=BB3_27 Depth=1
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_26
# %bb.29:                               #   in Loop: Header=BB3_27 Depth=1
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB3_25
# %bb.30:                               #   in Loop: Header=BB3_27 Depth=1
	ld.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$s8, $a0
	move	$a0, $a1
	move	$a1, $s6
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s8
	move	$a5, $zero
	move	$a6, $fp
	pcaddu18i	$ra, %call36(findAndRecordAllPaths)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	b	.LBB3_26
.LBB3_31:                               # %.preheader
	ld.d	$s5, $s5, 40
	beqz	$s5, .LBB3_33
	.p2align	4, , 16
.LBB3_32:                               # %.lr.ph65
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 8
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(findAndRecordAllPaths)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 16
	bnez	$s5, .LBB3_32
.LBB3_33:                               # %._crit_edge
	move	$a0, $s1
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
	pcaddu18i	$t8, %call36(NodePtrVec_pop)
	jr	$t8
.Lfunc_end3:
	.size	findAndRecordAllPaths, .Lfunc_end3-findAndRecordAllPaths
                                        # -- End function
	.globl	findAllPossibleLegs             # -- Begin function findAllPossibleLegs
	.p2align	5
	.type	findAllPossibleLegs,@function
findAllPossibleLegs:                    # @findAllPossibleLegs
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $a0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 32
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB4_30
# %bb.1:                                # %.preheader.preheader
	move	$a2, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s0, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
.LBB4_3:                                # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a1, .LBB4_31
.LBB4_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_25 Depth 3
                                        #       Child Loop BB4_18 Depth 3
	blez	$a1, .LBB4_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$fp, $zero
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	slli.d	$s1, $a2, 3
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_9 Depth=2
	beqz	$s4, .LBB4_8
.LBB4_7:                                # %.thread44
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a0, $s2, 32
	ld.w	$a1, $a0, 0
	addi.d	$fp, $fp, 1
	addi.w	$s0, $s0, 1
	bge	$fp, $a1, .LBB4_2
.LBB4_9:                                # %.lr.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_25 Depth 3
                                        #       Child Loop BB4_18 Depth 3
	st.d	$zero, $sp, 72
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 56
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a0, $s1
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 56
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 64
	ori	$a0, $zero, 25
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 8
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56
	beqz	$a1, .LBB4_6
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=2
	beqz	$s4, .LBB4_6
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=2
	move	$s5, $a0
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB4_6
# %bb.12:                               #   in Loop: Header=BB4_9 Depth=2
	beqz	$s5, .LBB4_6
# %bb.13:                               #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(SystemCallMap_findLabeledNodes)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_7
# %bb.14:                               # %.preheader.i
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$s6, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB4_28
# %bb.15:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_23
# %bb.16:                               # %.lr.ph.split.us.i.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$s8, $zero
	move	$s3, $zero
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               #   in Loop: Header=BB4_18 Depth=3
	ld.w	$a0, $s6, 0
	addi.d	$s3, $s3, 1
	addi.d	$s8, $s8, 8
	bge	$s3, $a0, .LBB4_28
.LBB4_18:                               # %.lr.ph.split.us.i
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s2, 24
	ldx.d	$a1, $a1, $s8
	pcaddu18i	$ra, %call36(SearchDiagram_findNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_21
# %bb.19:                               #   in Loop: Header=BB4_18 Depth=3
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a2
	addi.d	$a2, $sp, 64
	move	$a3, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(SearchDiagram_findSignatureAlongEdges)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB4_29
# %bb.20:                               #   in Loop: Header=BB4_18 Depth=3
	ld.w	$a0, $s4, 0
	bnez	$a0, .LBB4_22
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_21:                               #   in Loop: Header=BB4_18 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB4_17
.LBB4_22:                               #   in Loop: Header=BB4_18 Depth=3
	st.w	$zero, $s4, 0
	b	.LBB4_17
.LBB4_23:                               # %.lr.ph.split.i.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$s3, $zero
	move	$s8, $zero
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_24:                               #   in Loop: Header=BB4_25 Depth=3
	ld.w	$a0, $s6, 0
	addi.d	$s8, $s8, 1
	addi.d	$s3, $s3, 8
	bge	$s8, $a0, .LBB4_28
.LBB4_25:                               # %.lr.ph.split.i
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s6, 8
	ldx.d	$a0, $a0, $s3
	addi.d	$a1, $sp, 64
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB4_29
# %bb.26:                               #   in Loop: Header=BB4_25 Depth=3
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB4_24
# %bb.27:                               #   in Loop: Header=BB4_25 Depth=3
	st.w	$zero, $s4, 0
	b	.LBB4_24
.LBB4_28:                               # %findLabelPath.exit.thread41
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	b	.LBB4_7
.LBB4_29:                               # %.loopexit
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB4_7
.LBB4_30:
	move	$s0, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB4_31:                               # %._crit_edge55
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -452053
	ori	$a1, $a1, 965
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 11
	add.d	$s1, $a0, $a1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -253952
	lu52i.d	$a0, $a0, 1034
	movgr2fr.d	$fa1, $a0
	ori	$fp, $zero, 0
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -489336
	ori	$a1, $a1, 2185
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 5
	add.d	$s2, $a0, $a1
	lu32i.d	$fp, -131072
	lu52i.d	$a0, $fp, 1028
	movgr2fr.d	$fa1, $a0
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	movfr2gr.d	$s3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 56
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(YAMLWriteInt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(YAMLWriteString)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end4:
	.size	findAllPossibleLegs, .Lfunc_end4-findAllPossibleLegs
                                        # -- End function
	.globl	findAndLogAllPossibleLegs       # -- Begin function findAndLogAllPossibleLegs
	.p2align	5
	.type	findAndLogAllPossibleLegs,@function
findAndLogAllPossibleLegs:              # @findAndLogAllPossibleLegs
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
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	beqz	$a0, .LBB5_15
# %bb.1:
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.b	$zero, $fp, 4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$zero, $a0, 8
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(NodeVecVec_new)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 32
	ld.w	$a1, $a0, 0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	blez	$a1, .LBB5_16
# %bb.2:                                # %.preheader.preheader
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L__const.findAndLogAllPossibleLegs.fullIntSignature)
	addi.d	$s8, $a2, %pc_lo12(.L__const.findAndLogAllPossibleLegs.fullIntSignature)
	move	$s0, $zero
	move	$s6, $zero
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph74.split.us
                                        #   in Loop: Header=BB5_5 Depth=1
	add.w	$s6, $s6, $a1
.LBB5_4:                                # %._crit_edge75
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$s0, $s0, 1
	bge	$s0, $a1, .LBB5_17
.LBB5_5:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #       Child Loop BB5_13 Depth 3
	blez	$a1, .LBB5_4
# %bb.6:                                # %.lr.ph74
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a2, $a0, 8
	slli.d	$s2, $s0, 3
	ldx.d	$a2, $a2, $s2
	ld.d	$a2, $a2, 16
	ld.w	$a2, $a2, 0
	blez	$a2, .LBB5_3
# %bb.7:                                # %.lr.ph74.split.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s4, $zero
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_8:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB5_10 Depth=2
	ld.w	$a1, $a0, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
.LBB5_9:                                # %._crit_edge
                                        #   in Loop: Header=BB5_10 Depth=2
	addi.d	$s4, $s4, 1
	addi.w	$s6, $s6, 1
	bge	$s4, $a1, .LBB5_4
.LBB5_10:                               # %.lr.ph74.split
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_13 Depth 3
	ld.d	$a2, $a0, 8
	ldx.d	$a2, $a2, $s2
	ld.d	$a2, $a2, 16
	ld.w	$a2, $a2, 0
	blez	$a2, .LBB5_9
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB5_10 Depth=2
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $zero
	move	$fp, $zero
	addi.d	$a1, $a0, 8
	slli.d	$s3, $s4, 3
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_12:                               #   in Loop: Header=BB5_13 Depth=3
	ld.d	$a0, $s1, 32
	ld.d	$a1, $a0, 8
	ldx.d	$a1, $a1, $s2
	ld.d	$a1, $a1, 16
	ld.w	$a2, $a1, 0
	addi.d	$fp, $fp, 1
	addi.d	$a1, $a0, 8
	addi.d	$s5, $s5, 8
	bge	$fp, $a2, .LBB5_8
.LBB5_13:                               #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s8, 8
	st.d	$zero, $sp, 104
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 88
	st.w	$a0, $sp, 80
	ld.d	$a0, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 72
	ldx.d	$a0, $a1, $s2
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 88
	ldx.d	$a0, $a1, $s3
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 96
	st.w	$s0, $sp, 72
	st.w	$s4, $sp, 76
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 32
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s2
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s5
	move	$s7, $a0
	move	$a0, $a1
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 76
	move	$a3, $s6
	move	$a4, $s7
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(findAndRecordAllPaths)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB5_12
# %bb.14:                               #   in Loop: Header=BB5_13 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
	b	.LBB5_12
.LBB5_15:
	move	$s1, $zero
	b	.LBB5_24
.LBB5_16:
	move	$s6, $zero
.LBB5_17:                               # %._crit_edge79
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s1, $a0, 0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -452053
	ori	$a1, $a1, 965
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 11
	add.d	$s3, $a0, $a1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -253952
	lu52i.d	$a0, $a0, 1034
	movgr2fr.d	$fa1, $a0
	ori	$fp, $zero, 0
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -489336
	ori	$a1, $a1, 2185
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 5
	add.d	$s4, $a0, $a1
	lu32i.d	$fp, -131072
	lu52i.d	$a0, $fp, 1028
	movgr2fr.d	$fa1, $a0
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	movfr2gr.d	$s5, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 88
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(YAMLWriteInt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(YAMLWriteString)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $fp, 6
	beqz	$a0, .LBB5_20
# %bb.18:
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB5_20
# %bb.19:
	ld.w	$a1, $fp, 16
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(buildGraphFromPaths)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	pcaddu18i	$ra, %call36(exportGraph)
	jirl	$ra, $ra, 0
.LBB5_20:
	ld.bu	$a0, $fp, 5
	beqz	$a0, .LBB5_24
# %bb.21:
	ld.bu	$a0, $fp, 4
	bnez	$a0, .LBB5_24
# %bb.22:
	pcalau12i	$s2, %pc_hi20(globalStats)
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	beqz	$a0, .LBB5_24
# %bb.23:
	pcaddu18i	$ra, %call36(Stats_calculate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	ld.d	$a1, $a0, 0
	ld.w	$a3, $a1, 0
	ld.d	$a2, $a0, 24
	ld.d	$a1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	ld.w	$fp, $a0, 8
	ld.w	$a1, $a0, 12
	bge	$a1, $fp, .LBB5_25
.LBB5_24:                               # %printStats.exit
	move	$a0, $s1
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
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
	ret
.LBB5_25:                               # %.lr.ph.preheader.i
	addi.d	$s3, $fp, -1
	slli.d	$s4, $fp, 2
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$s0, $a1, %pc_lo12(.L.str.11)
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_26:                               #   in Loop: Header=BB5_27 Depth=1
	ld.w	$a1, $a0, 12
	addi.d	$s3, $s3, 1
	addi.w	$fp, $fp, 1
	addi.d	$s4, $s4, 4
	bge	$s3, $a1, .LBB5_24
.LBB5_27:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 32
	ldx.w	$a2, $a1, $s4
	beqz	$a2, .LBB5_26
# %bb.28:                               #   in Loop: Header=BB5_27 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	b	.LBB5_26
.Lfunc_end5:
	.size	findAndLogAllPossibleLegs, .Lfunc_end5-findAndLogAllPossibleLegs
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n\nOverall Search Time: %02d:02%d:%05.2f\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Immediately before parallel\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n\n%d found out of %d searches. Overall Time: %d:%d:%2.3f\n"
	.size	.L.str.2, 58

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%02d:%02d:%02.3f"
	.size	.L.str.3, 17

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Signatures Found"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Search Time"
	.size	.L.str.5, 12

	.type	.L__const.findAndLogAllPossibleLegs.fullIntSignature,@object # @__const.findAndLogAllPossibleLegs.fullIntSignature
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.findAndLogAllPossibleLegs.fullIntSignature:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.size	.L__const.findAndLogAllPossibleLegs.fullIntSignature, 12

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"\n\n%d found for %d searches. Overall Time: %d:%d:%2.3f\n"
	.size	.L.str.7, 55

	.type	globalStats,@object             # @globalStats
	.local	globalStats
	.comm	globalStats,8,8
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\nThis graph has %f average nodes between labels.\nStandard deviation: %f, total paths: %d\n\n"
	.size	.L.str.9, 91

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\tShortest Path: %d, Longest Path: %d\n"
	.size	.L.str.10, 38

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\tlength %d appeared %d times\n"
	.size	.L.str.11, 30

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"CrashAndBURN!!!\n"
	.size	.Lstr, 17

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Immediately before nested for's"
	.size	.Lstr.1, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
