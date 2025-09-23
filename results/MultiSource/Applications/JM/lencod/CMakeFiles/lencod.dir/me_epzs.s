	.file	"me_epzs.c"
	.text
	.globl	allocEPZScolocated              # -- Begin function allocEPZScolocated
	.p2align	5
	.type	allocEPZScolocated,@function
allocEPZScolocated:                     # @allocEPZScolocated
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_2:
	st.w	$s2, $s0, 4
	st.w	$s1, $s0, 8
	addi.d	$a0, $s0, 16
	bstrpick.d	$a1, $s1, 62, 61
	add.w	$a1, $s1, $a1
	srai.d	$a2, $a1, 2
	bstrpick.d	$a1, $s2, 62, 61
	add.w	$a1, $s2, $a1
	srai.d	$s2, $a1, 2
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a3, $s2
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_4
# %bb.3:
	addi.d	$a0, $s0, 24
	bstrpick.d	$a1, $s1, 62, 60
	add.w	$a1, $s1, $a1
	srai.d	$s1, $a1, 3
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 32
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
.LBB0_4:
	st.w	$fp, $s0, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	allocEPZScolocated, .Lfunc_end0-allocEPZScolocated
                                        # -- End function
	.globl	freeEPZScolocated               # -- Begin function freeEPZScolocated
	.p2align	5
	.type	freeEPZScolocated,@function
freeEPZScolocated:                      # @freeEPZScolocated
# %bb.0:
	beqz	$a0, .LBB1_4
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a1, $a0, 8
	ld.d	$a0, $a0, 16
	bstrpick.d	$a2, $a1, 62, 61
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB1_3
# %bb.2:
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 24
	bstrpick.d	$a2, $a1, 62, 60
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 3
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 32
	bstrpick.d	$a2, $a1, 62, 60
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 3
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
.LBB1_3:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_4:
	ret
.Lfunc_end1:
	.size	freeEPZScolocated, .Lfunc_end1-freeEPZScolocated
                                        # -- End function
	.globl	allocEPZSpattern                # -- Begin function allocEPZSpattern
	.p2align	5
	.type	allocEPZSpattern,@function
allocEPZSpattern:                       # @allocEPZSpattern
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB2_2:
	st.w	$fp, $s0, 0
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	allocEPZSpattern, .Lfunc_end2-allocEPZSpattern
                                        # -- End function
	.globl	freeEPZSpattern                 # -- Begin function freeEPZSpattern
	.p2align	5
	.type	freeEPZSpattern,@function
freeEPZSpattern:                        # @freeEPZSpattern
# %bb.0:
	beqz	$a0, .LBB3_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 8
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB3_2:
	ret
.Lfunc_end3:
	.size	freeEPZSpattern, .Lfunc_end3-freeEPZSpattern
                                        # -- End function
	.globl	assignEPZSpattern               # -- Begin function assignEPZSpattern
	.p2align	5
	.type	assignEPZSpattern,@function
assignEPZSpattern:                      # @assignEPZSpattern
# %bb.0:
	ld.w	$a5, $a0, 0
	blez	$a5, .LBB4_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a5, %pc_hi20(mv_rescale)
	ld.w	$a5, $a5, %pc_lo12(mv_rescale)
	ld.d	$a7, $a0, 8
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a6, $a1, 6
	pcalau12i	$a1, %pc_hi20(pattern_data)
	addi.d	$t0, $a1, %pc_lo12(pattern_data)
	move	$a1, $zero
	add.d	$a6, $a6, $t0
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	.p2align	4, , 16
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a6, -8
	sra.w	$t0, $t0, $a5
	st.w	$t0, $a7, -8
	ld.w	$t0, $a6, -4
	sra.w	$t0, $t0, $a5
	st.w	$t0, $a7, -4
	ld.d	$t0, $a6, 0
	st.d	$t0, $a7, 0
	ld.w	$t0, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	blt	$a1, $t0, .LBB4_2
.LBB4_3:                                # %._crit_edge
	st.w	$a2, $a0, 16
	st.w	$a3, $a0, 20
	st.d	$a4, $a0, 24
	ret
.Lfunc_end4:
	.size	assignEPZSpattern, .Lfunc_end4-assignEPZSpattern
                                        # -- End function
	.globl	EPZSWindowPredictorInit         # -- Begin function EPZSWindowPredictorInit
	.p2align	5
	.type	EPZSWindowPredictorInit,@function
EPZSWindowPredictorInit:                # @EPZSWindowPredictorInit
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a3, $a3, 0
	ldptr.w	$a3, $a3, 4120
	sltu	$a3, $zero, $a3
	slli.d	$a3, $a3, 1
	mul.d	$a5, $a0, $a0
	addi.d	$a4, $zero, -1
	beqz	$a2, .LBB5_6
# %bb.1:                                # %.preheader156.preheader
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB5_2:                                # %.preheader156
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a4, 1
	sll.w	$a6, $a2, $a4
	bge	$a5, $a6, .LBB5_2
# %bb.3:                                # %RoundLog2.exit129
	ori	$a2, $zero, 3
	bltu	$a4, $a2, .LBB5_12
# %bb.4:                                # %.lr.ph
	move	$a2, $zero
	addi.w	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 1
	addi.d	$a4, $a4, -2
	sll.w	$a0, $a0, $a3
	ld.d	$a5, $a1, 8
	ori	$a6, $zero, 0
	lu32i.d	$a6, 8
	addi.w	$a7, $zero, -1
	.p2align	4, , 16
.LBB5_5:                                # %.preheader.preheader
                                        # =>This Inner Loop Header: Depth=1
	sra.w	$t0, $a0, $a4
	slli.d	$t1, $a2, 32
	alsl.d	$t2, $a2, $a5, 4
	slli.d	$a2, $a2, 4
	stx.w	$t0, $a5, $a2
	st.w	$zero, $t2, 4
	st.w	$t0, $t2, 16
	st.w	$t0, $t2, 20
	st.w	$zero, $t2, 32
	st.w	$t0, $t2, 36
	sub.d	$a2, $zero, $t0
	st.w	$a2, $t2, 48
	st.w	$t0, $t2, 52
	st.w	$a2, $t2, 64
	st.w	$zero, $t2, 68
	st.w	$a2, $t2, 80
	st.w	$a2, $t2, 84
	st.w	$zero, $t2, 96
	st.w	$a2, $t2, 100
	st.w	$t0, $t2, 112
	st.w	$a2, $t2, 116
	alsl.d	$t2, $t0, $t0, 1
	addi.d	$t2, $t2, 1
	sll.w	$t2, $t2, $a3
	srai.d	$t2, $t2, 1
	add.d	$t1, $t1, $a6
	srai.d	$t3, $t1, 32
	srai.d	$t1, $t1, 28
	add.d	$t4, $a5, $t1
	stx.w	$t2, $a5, $t1
	st.w	$a2, $t4, 4
	st.w	$t2, $t4, 16
	st.w	$zero, $t4, 20
	st.w	$t2, $t4, 32
	st.w	$t0, $t4, 36
	st.w	$t0, $t4, 48
	st.w	$t2, $t4, 52
	st.w	$zero, $t4, 64
	st.w	$t2, $t4, 68
	st.w	$a2, $t4, 80
	st.w	$t2, $t4, 84
	sub.d	$t1, $zero, $t2
	st.w	$t1, $t4, 96
	st.w	$t0, $t4, 100
	st.w	$t1, $t4, 112
	st.w	$zero, $t4, 116
	st.w	$t1, $t4, 128
	st.w	$a2, $t4, 132
	st.w	$a2, $t4, 144
	st.w	$t1, $t4, 148
	st.w	$zero, $t4, 160
	st.w	$t1, $t4, 164
	st.w	$t0, $t4, 176
	addi.w	$a2, $t3, 12
	addi.w	$a4, $a4, -1
	st.w	$t1, $t4, 180
	bne	$a4, $a7, .LBB5_5
	b	.LBB5_11
.LBB5_6:                                # %.preheader.preheader161
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB5_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a4, 1
	sll.w	$a6, $a2, $a4
	bge	$a5, $a6, .LBB5_7
# %bb.8:                                # %RoundLog2.exit
	ori	$a2, $zero, 3
	bltu	$a4, $a2, .LBB5_12
# %bb.9:                                # %.lr.ph142
	move	$a2, $zero
	addi.w	$a4, $a4, 1
	bstrpick.d	$a5, $a4, 31, 1
	ld.d	$a4, $a1, 8
	addi.d	$a5, $a5, -2
	sll.w	$a0, $a0, $a3
	addi.w	$a3, $zero, -1
	.p2align	4, , 16
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	sra.w	$a6, $a0, $a5
	alsl.d	$a7, $a2, $a4, 4
	slli.d	$t0, $a2, 4
	stx.w	$a6, $a4, $t0
	st.w	$zero, $a7, 4
	st.w	$a6, $a7, 16
	st.w	$a6, $a7, 20
	st.w	$zero, $a7, 32
	st.w	$a6, $a7, 36
	sub.d	$t0, $zero, $a6
	st.w	$t0, $a7, 48
	st.w	$a6, $a7, 52
	st.w	$t0, $a7, 64
	st.w	$zero, $a7, 68
	st.w	$t0, $a7, 80
	st.w	$t0, $a7, 84
	st.w	$zero, $a7, 96
	st.w	$t0, $a7, 100
	st.w	$a6, $a7, 112
	addi.w	$a2, $a2, 8
	addi.w	$a5, $a5, -1
	st.w	$t0, $a7, 116
	bne	$a5, $a3, .LBB5_10
.LBB5_11:                               # %.loopexit
	st.w	$a2, $a1, 0
	ret
.LBB5_12:
	st.w	$zero, $a1, 0
	ret
.Lfunc_end5:
	.size	EPZSWindowPredictorInit, .Lfunc_end5-EPZSWindowPredictorInit
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function EPZSInit
.LCPI6_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	0                               # 0x0
.LCPI6_1:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	12                              # 0xc
	.word	0                               # 0x0
	.text
	.globl	EPZSInit
	.p2align	5
	.type	EPZSInit,@function
EPZSInit:                               # @EPZSInit
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a7, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a7, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3156
	ldx.w	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a6, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a6, 0
	ld.w	$a2, $a1, 28
	move	$s7, $zero
	mul.w	$a3, $a2, $a2
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	sll.w	$a5, $a4, $s7
	addi.w	$s7, $s7, 1
	bge	$a3, $a5, .LBB6_1
# %bb.2:                                # %RoundLog2.exit
	ldptr.w	$a3, $a1, 2120
	addi.d	$a0, $a0, -8
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	beqz	$a3, .LBB6_4
# %bb.3:
	ldptr.w	$a3, $a1, 2128
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
.LBB6_4:
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	ldptr.w	$a3, $a1, 4120
	slli.d	$a2, $a2, 1
	addi.d	$a2, $a2, 1
	slli.d	$a4, $a3, 1
	bstrpick.d	$a4, $a4, 31, 1
	slli.d	$a4, $a4, 1
	sll.w	$a2, $a2, $a4
	pcalau12i	$a4, %pc_hi20(searcharray)
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.w	$a2, $a4, %pc_lo12(searcharray)
	sltui	$a5, $a3, 1
	lu12i.w	$a6, 1
	ori	$a2, $a6, 20
	ldx.w	$a4, $a1, $a2
	ori	$a2, $a6, 16
	ldx.w	$a3, $a1, $a2
	ori	$a2, $a6, 12
	ldx.w	$a2, $a1, $a2
	ori	$a6, $a6, 36
	ldx.w	$a1, $a1, $a6
	slli.d	$s8, $a5, 1
	pcalau12i	$a5, %pc_hi20(mv_rescale)
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.w	$s8, $a5, %pc_lo12(mv_rescale)
	pcalau12i	$a5, %pc_hi20(medthres)
	addi.d	$a5, $a5, %pc_lo12(medthres)
	st.w	$zero, $a5, 0
	pcalau12i	$a6, %pc_hi20(maxthres)
	addi.d	$a6, $a6, %pc_lo12(maxthres)
	st.w	$zero, $a6, 0
	pcalau12i	$a7, %pc_hi20(minthres)
	addi.d	$a7, $a7, %pc_lo12(minthres)
	st.w	$zero, $a7, 0
	pcalau12i	$t0, %pc_hi20(subthres)
	addi.d	$t0, $t0, %pc_lo12(subthres)
	st.w	$zero, $t0, 0
	slli.d	$t1, $a4, 8
	sll.w	$t1, $t1, $a0
	st.w	$t1, $a5, 4
	alsl.d	$t1, $a3, $a3, 1
	slli.d	$t2, $t1, 8
	sll.w	$t2, $t2, $a0
	st.w	$t2, $a6, 4
	slli.d	$t2, $a2, 6
	sll.w	$t2, $t2, $a0
	st.w	$t2, $a7, 4
	slli.d	$t2, $a1, 8
	sll.w	$t2, $t2, $a0
	st.w	$t2, $t0, 4
	slli.d	$t2, $a4, 7
	sll.w	$t2, $t2, $a0
	st.w	$t2, $a5, 8
	slli.d	$t3, $t1, 7
	sll.w	$t3, $t3, $a0
	st.w	$t3, $a6, 8
	slli.d	$t4, $a2, 5
	sll.w	$t4, $t4, $a0
	st.w	$t4, $a7, 8
	slli.d	$t5, $a1, 7
	sll.w	$t5, $t5, $a0
	st.w	$t5, $t0, 8
	st.w	$t2, $a5, 12
	st.w	$t3, $a6, 12
	st.w	$t4, $a7, 12
	st.w	$t5, $t0, 12
	slli.d	$t2, $a4, 6
	sll.w	$t2, $t2, $a0
	st.w	$t2, $a5, 16
	slli.d	$t2, $t1, 6
	sll.w	$t2, $t2, $a0
	st.w	$t2, $a6, 16
	slli.d	$t2, $a2, 4
	sll.w	$t2, $t2, $a0
	st.w	$t2, $a7, 16
	slli.d	$t2, $a1, 6
	sll.w	$t2, $t2, $a0
	st.w	$t2, $t0, 16
	slli.d	$t2, $a4, 5
	sll.w	$t2, $t2, $a0
	st.w	$t2, $a5, 20
	slli.d	$t1, $t1, 5
	sll.w	$t1, $t1, $a0
	st.w	$t1, $a6, 20
	slli.d	$t3, $a2, 3
	sll.w	$t3, $t3, $a0
	st.w	$t3, $a7, 20
	slli.d	$t4, $a1, 5
	sll.w	$t4, $t4, $a0
	st.w	$t4, $t0, 20
	st.w	$t2, $a5, 24
	st.w	$t1, $a6, 24
	st.w	$t3, $a7, 24
	st.w	$t4, $t0, 24
	slli.d	$a4, $a4, 4
	sll.w	$a4, $a4, $a0
	st.w	$a4, $a5, 28
	slli.d	$a4, $a3, 5
	alsl.w	$a3, $a3, $a4, 4
	sll.w	$a3, $a3, $a0
	st.w	$a3, $a6, 28
	slli.d	$a2, $a2, 2
	sll.w	$a2, $a2, $a0
	st.w	$a2, $a7, 28
	slli.d	$a1, $a1, 4
	sll.w	$a0, $a1, $a0
	st.w	$a0, $t0, 28
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB6_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s8, $a0, %pc_lo12(mv_rescale)
.LBB6_6:                                # %.lr.ph.i
	ori	$s3, $zero, 4
	st.w	$s3, $fp, 0
	ori	$a0, $zero, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(sdiamond)
	addi.d	$a1, $a1, %pc_lo12(sdiamond)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $a1, 0
	st.w	$zero, $a0, 0
	srl.w	$s5, $s3, $s8
	st.w	$s5, $a0, 4
	ori	$s1, $zero, 3
	ori	$s0, $zero, 3
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	lu32i.d	$s0, 3
	st.d	$s0, $a0, 8
	st.w	$s5, $a0, 16
	vst	$vr0, $a0, 20
	addi.d	$a1, $zero, -4
	sra.w	$s2, $a1, $s8
	st.w	$s2, $a0, 36
	ori	$a1, $zero, 1
	lu32i.d	$a1, 3
	st.d	$a1, $a0, 40
	st.w	$s2, $a0, 48
	ori	$s6, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 2
	st.d	$a1, $a0, 52
	st.w	$s1, $a0, 60
	lu32i.d	$s4, 1
	st.d	$s4, $fp, 16
	st.d	$fp, $fp, 24
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB6_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.wu	$s8, $a0, %pc_lo12(mv_rescale)
	srl.w	$s5, $s3, $s8
	addi.d	$a0, $zero, -4
	sra.w	$s2, $a0, $s8
.LBB6_8:                                # %.lr.ph.i26
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(square)
	st.d	$fp, $a1, %pc_lo12(square)
	st.w	$zero, $a0, 0
	st.w	$s5, $a0, 4
	ori	$a1, $zero, 7
	lu32i.d	$a1, 3
	st.d	$a1, $a0, 8
	st.w	$s5, $a0, 16
	st.w	$s5, $a0, 20
	ori	$s3, $zero, 7
	lu32i.d	$s3, 5
	st.d	$s3, $a0, 24
	st.w	$s5, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 36
	st.w	$s1, $a0, 44
	st.w	$s5, $a0, 48
	st.w	$s2, $a0, 52
	ori	$s4, $zero, 1
	lu32i.d	$s4, 5
	st.d	$s4, $a0, 56
	st.w	$zero, $a0, 64
	st.w	$s2, $a0, 68
	st.d	$s0, $a0, 72
	st.w	$s2, $a0, 80
	st.w	$s2, $a0, 84
	ori	$a1, $zero, 3
	lu32i.d	$a1, 5
	st.d	$a1, $a0, 88
	st.w	$s2, $a0, 96
	lu32i.d	$s6, 5
	st.d	$s6, $a0, 100
	st.w	$s1, $a0, 108
	st.w	$s2, $a0, 112
	st.w	$s5, $a0, 116
	ori	$a1, $zero, 5
	lu32i.d	$a1, 5
	st.d	$a1, $a0, 120
	ori	$s1, $zero, 1
	lu32i.d	$s1, 1
	st.d	$s1, $fp, 16
	st.d	$fp, $fp, 24
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB6_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.wu	$s8, $a0, %pc_lo12(mv_rescale)
	addi.d	$a0, $zero, -4
	sra.w	$s2, $a0, $s8
	ori	$a0, $zero, 4
	srl.w	$s5, $a0, $s8
.LBB6_10:                               # %.lr.ph.i31
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 12
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(ediamond)
	st.d	$fp, $a1, %pc_lo12(ediamond)
	st.w	$s2, $a0, 0
	st.w	$s5, $a0, 4
	ori	$a1, $zero, 10
	ori	$a2, $zero, 10
	lu32i.d	$a2, 5
	st.d	$a2, $a0, 8
	st.w	$zero, $a0, 16
	ori	$a4, $zero, 8
	srl.w	$a2, $a4, $s8
	st.w	$a2, $a0, 20
	ori	$a3, $zero, 10
	lu32i.d	$a3, 8
	st.d	$a3, $a0, 24
	st.w	$zero, $a0, 32
	st.w	$s5, $a0, 36
	lu32i.d	$a1, 7
	st.d	$a1, $a0, 40
	st.w	$s5, $a0, 48
	st.w	$s5, $a0, 52
	st.d	$s4, $a0, 56
	st.w	$a2, $a0, 64
	ori	$s4, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 68
	st.w	$a4, $a0, 76
	st.w	$s5, $a0, 80
	st.d	$a1, $a0, 84
	ori	$a3, $zero, 7
	st.w	$a3, $a0, 92
	st.w	$s5, $a0, 96
	st.w	$s2, $a0, 100
	ori	$s5, $zero, 4
	ori	$a1, $zero, 4
	lu32i.d	$a1, 5
	st.d	$a1, $a0, 104
	st.w	$zero, $a0, 112
	addi.d	$a1, $zero, -8
	sra.w	$a1, $a1, $s8
	st.w	$a1, $a0, 116
	ori	$a2, $zero, 4
	lu32i.d	$a2, 8
	st.d	$a2, $a0, 120
	st.w	$zero, $a0, 128
	st.w	$s2, $a0, 132
	ori	$a2, $zero, 4
	lu32i.d	$a2, 7
	st.d	$a2, $a0, 136
	st.w	$s2, $a0, 144
	st.w	$s2, $a0, 148
	st.d	$s3, $a0, 152
	st.w	$a1, $a0, 160
	ori	$a1, $zero, 0
	lu32i.d	$a1, 7
	st.d	$a1, $a0, 164
	st.w	$a4, $a0, 172
	st.w	$s2, $a0, 176
	st.d	$a1, $a0, 180
	st.w	$a3, $a0, 188
	st.d	$s1, $fp, 16
	st.d	$fp, $fp, 24
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB6_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB6_12:                               # %.lr.ph.i36
	bstrpick.d	$s7, $s7, 31, 1
	ori	$s0, $zero, 8
	st.w	$s0, $fp, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.wu	$s2, $a1, %pc_lo12(mv_rescale)
	pcalau12i	$a1, %pc_hi20(ldiamond)
	st.d	$fp, $a1, %pc_lo12(ldiamond)
	st.w	$zero, $a0, 0
	srl.w	$s1, $s0, $s2
	st.w	$s1, $a0, 4
	ori	$s6, $zero, 6
	ori	$a1, $zero, 6
	lu32i.d	$a1, 5
	st.d	$a1, $a0, 8
	srl.w	$s3, $s5, $s2
	st.w	$s3, $a0, 16
	st.w	$s3, $a0, 20
	ori	$a1, $zero, 0
	lu32i.d	$a1, 3
	st.d	$a1, $a0, 24
	st.w	$s1, $a0, 32
	st.d	$zero, $a0, 36
	ori	$a1, $zero, 5
	st.w	$a1, $a0, 44
	st.w	$s3, $a0, 48
	addi.d	$a2, $zero, -4
	sra.w	$s8, $a2, $s2
	st.w	$s8, $a0, 52
	ori	$a2, $zero, 2
	lu32i.d	$a2, 3
	st.d	$a2, $a0, 56
	st.w	$zero, $a0, 64
	addi.d	$a2, $zero, -8
	sra.w	$s0, $a2, $s2
	st.w	$s0, $a0, 68
	ori	$a2, $zero, 2
	lu32i.d	$a2, 5
	st.d	$a2, $a0, 72
	st.w	$s8, $a0, 80
	st.w	$s8, $a0, 84
	lu32i.d	$s5, 3
	st.d	$s5, $a0, 88
	st.w	$s0, $a0, 96
	lu32i.d	$s4, 4
	st.d	$s4, $a0, 100
	st.w	$a1, $a0, 108
	st.w	$s8, $a0, 112
	st.w	$s3, $a0, 116
	ori	$a1, $zero, 6
	lu32i.d	$a1, 3
	st.d	$a1, $a0, 120
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 16
	st.d	$fp, $fp, 24
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB6_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.wu	$s2, $a0, %pc_lo12(mv_rescale)
	ori	$a0, $zero, 8
	srl.w	$s1, $a0, $s2
	ori	$a0, $zero, 4
	srl.w	$s3, $a0, $s2
	addi.d	$a0, $zero, -4
	sra.w	$s8, $a0, $s2
	addi.d	$a0, $zero, -8
	sra.w	$s0, $a0, $s2
.LBB6_14:                               # %.lr.ph.i41
	addi.d	$a0, $s7, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s7, $zero, 12
	st.w	$s7, $fp, 0
	ori	$a0, $zero, 12
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(sbdiamond)
	st.d	$fp, $a1, %pc_lo12(sbdiamond)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.w	$zero, $a0, 0
	st.w	$s1, $a0, 4
	lu32i.d	$s6, 12
	st.d	$s6, $a0, 8
	st.w	$s3, $a0, 16
	st.w	$s3, $a0, 20
	ori	$s5, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 12
	st.d	$a2, $a0, 24
	st.w	$s1, $a0, 32
	st.d	$zero, $a0, 36
	st.w	$s7, $a0, 44
	st.w	$s3, $a0, 48
	st.w	$s8, $a0, 52
	ori	$a2, $zero, 2
	lu32i.d	$a2, 12
	st.d	$a2, $a0, 56
	st.w	$zero, $a0, 64
	st.w	$s0, $a0, 68
	st.d	$a2, $a0, 72
	st.w	$s8, $a0, 80
	st.w	$s8, $a0, 84
	ori	$s1, $zero, 4
	ori	$a3, $zero, 4
	lu32i.d	$a3, 12
	st.d	$a3, $a0, 88
	st.w	$s0, $a0, 96
	ori	$s4, $zero, 0
	lu32i.d	$s4, 4
	st.d	$s4, $a0, 100
	st.w	$s7, $a0, 108
	st.w	$s8, $a0, 112
	st.w	$s3, $a0, 116
	st.d	$s6, $a0, 120
	st.w	$zero, $a0, 128
	ori	$a3, $zero, 2
	srl.w	$a3, $a3, $s2
	pcalau12i	$a4, %pc_hi20(.LCPI6_1)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_1)
	st.w	$a3, $a0, 132
	st.d	$s6, $a0, 136
	st.w	$a3, $a0, 144
	vst	$vr0, $a0, 148
	addi.d	$a3, $zero, -2
	sra.w	$a3, $a3, $s2
	st.w	$a3, $a0, 164
	st.d	$a2, $a0, 168
	st.w	$a3, $a0, 176
	st.d	$s4, $a0, 180
	st.w	$s7, $a0, 188
	ori	$s0, $zero, 0
	lu32i.d	$s0, 1
	st.d	$s0, $fp, 16
	st.d	$a1, $fp, 24
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB6_16
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB6_16:                               # %.lr.ph.i46
	ori	$s2, $zero, 8
	st.w	$s2, $fp, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(pmvfast)
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.wu	$a2, $a2, %pc_lo12(mv_rescale)
	st.d	$fp, $a1, %pc_lo12(pmvfast)
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $s3, 0
	st.w	$zero, $a0, 0
	srl.w	$a3, $s2, $a2
	st.w	$a3, $a0, 4
	ori	$a4, $zero, 6
	ori	$a5, $zero, 6
	lu32i.d	$a5, 5
	st.d	$a5, $a0, 8
	srl.w	$a5, $s1, $a2
	st.w	$a5, $a0, 16
	st.w	$a5, $a0, 20
	lu32i.d	$s5, 3
	st.d	$s5, $a0, 24
	st.w	$a3, $a0, 32
	st.d	$zero, $a0, 36
	ori	$a3, $zero, 5
	st.w	$a3, $a0, 44
	st.w	$a5, $a0, 48
	addi.d	$a6, $zero, -4
	sra.w	$a6, $a6, $a2
	st.w	$a6, $a0, 52
	ori	$a7, $zero, 2
	ori	$t0, $zero, 2
	lu32i.d	$t0, 3
	st.d	$t0, $a0, 56
	st.w	$zero, $a0, 64
	addi.d	$t0, $zero, -8
	sra.w	$a2, $t0, $a2
	st.w	$a2, $a0, 68
	lu32i.d	$a7, 5
	st.d	$a7, $a0, 72
	st.w	$a6, $a0, 80
	st.w	$a6, $a0, 84
	lu32i.d	$s1, 3
	st.d	$s1, $a0, 88
	st.w	$a2, $a0, 96
	st.d	$s4, $a0, 100
	st.w	$a3, $a0, 108
	st.w	$a6, $a0, 112
	st.w	$a5, $a0, 116
	lu32i.d	$a4, 3
	st.d	$a4, $a0, 120
	st.d	$s0, $fp, 16
	st.d	$a1, $fp, 24
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	slli.w	$fp, $s1, 3
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s5, $s3
	bnez	$a0, .LBB6_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB6_18:                               # %allocEPZSpattern.exit50
	st.w	$fp, $s0, 0
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	pcalau12i	$s2, %pc_hi20(window_predictor)
	st.d	$s0, $s2, %pc_lo12(window_predictor)
	slli.d	$a0, $s1, 4
	alsl.w	$fp, $s1, $a0, 2
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s2, %pc_lo12(window_predictor)
.LBB6_20:                               # %allocEPZSpattern.exit51
	st.w	$fp, $s1, 0
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	st.d	$a0, $s1, 8
	pcalau12i	$a0, %pc_hi20(window_predictor_extended)
	ld.w	$a2, $a1, 28
	st.d	$s1, $a0, %pc_lo12(window_predictor_extended)
	lu12i.w	$s2, 1
	ori	$a0, $s2, 24
	ldx.w	$a4, $a1, $a0
	ext.w.h	$a3, $a2
	mul.d	$a0, $a3, $a3
	addi.d	$a5, $zero, -1
	ori	$a6, $zero, 2
	.p2align	4, , 16
.LBB6_21:                               # =>This Inner Loop Header: Depth=1
	addi.w	$a5, $a5, 1
	sll.w	$a7, $a6, $a5
	bge	$a0, $a7, .LBB6_21
# %bb.22:                               # %RoundLog2.exit.i
	ori	$a0, $zero, 3
	bltu	$a5, $a0, .LBB6_26
# %bb.23:                               # %.lr.ph142.i
	move	$a0, $zero
	addi.w	$a2, $a5, 1
	sltu	$a5, $zero, $a4
	bstrpick.d	$a2, $a2, 31, 1
	addi.d	$a2, $a2, -2
	ld.d	$a4, $s0, 8
	slli.d	$a5, $a5, 1
	sll.w	$a3, $a3, $a5
	addi.w	$a5, $zero, -1
	.p2align	4, , 16
.LBB6_24:                               # =>This Inner Loop Header: Depth=1
	sra.w	$a6, $a3, $a2
	alsl.d	$a7, $a0, $a4, 4
	slli.d	$t0, $a0, 4
	stx.w	$a6, $a4, $t0
	st.w	$zero, $a7, 4
	st.w	$a6, $a7, 16
	st.w	$a6, $a7, 20
	st.w	$zero, $a7, 32
	st.w	$a6, $a7, 36
	sub.d	$t0, $zero, $a6
	st.w	$t0, $a7, 48
	st.w	$a6, $a7, 52
	st.w	$t0, $a7, 64
	st.w	$zero, $a7, 68
	st.w	$t0, $a7, 80
	st.w	$t0, $a7, 84
	st.w	$zero, $a7, 96
	st.w	$t0, $a7, 100
	st.w	$a6, $a7, 112
	addi.w	$a0, $a0, 8
	addi.w	$a2, $a2, -1
	st.w	$t0, $a7, 116
	bne	$a2, $a5, .LBB6_24
# %bb.25:                               # %.loopexit.loopexit.i
	ld.w	$a2, $a1, 28
	b	.LBB6_27
.LBB6_26:
	move	$a0, $zero
.LBB6_27:                               # %EPZSWindowPredictorInit.exit
	st.w	$a0, $s0, 0
	ext.w.h	$a0, $a2
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(EPZSWindowPredictorInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ori	$a1, $s2, 4
	ldx.w	$a1, $a0, $a1
	ori	$a2, $s2, 8
	ldx.w	$a0, $a0, $a2
	alsl.d	$a1, $a1, $a1, 3
	add.d	$a1, $fp, $a1
	alsl.d	$a0, $a0, $a0, 1
	add.d	$a0, $a1, $a0
	addi.w	$s0, $a0, 10
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB6_29
# %bb.28:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB6_29:                               # %allocEPZSpattern.exit53
	st.w	$s0, $fp, 0
	ori	$a1, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $s0, 0
	ld.w	$a1, $a1, 52
	st.d	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(predictor)
	st.d	$fp, $a0, %pc_lo12(predictor)
	bstrpick.d	$a0, $a1, 62, 61
	add.w	$a0, $a1, $a0
	srai.d	$a3, $a0, 2
	pcalau12i	$a0, %pc_hi20(EPZSDistortion)
	addi.d	$a0, $a0, %pc_lo12(EPZSDistortion)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(searcharray)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(EPZSMap)
	addi.d	$a0, $a0, %pc_lo12(EPZSMap)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(get_mem2Dshort)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ldptr.w	$a2, $a1, 4104
	add.w	$fp, $a0, $fp
	beqz	$a2, .LBB6_31
# %bb.30:
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 52
	ld.w	$a2, $a0, 32
	bstrpick.d	$a0, $a1, 62, 61
	add.w	$a0, $a1, $a0
	srai.d	$a5, $a0, 2
	pcalau12i	$a0, %pc_hi20(EPZSMotion)
	addi.d	$a0, $a0, %pc_lo12(EPZSMotion)
	ori	$a1, $zero, 6
	ori	$a3, $zero, 7
	ori	$a4, $zero, 4
	ori	$a6, $zero, 2
	pcaddu18i	$ra, %call36(get_mem6Dshort)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	add.w	$fp, $a0, $fp
.LBB6_31:
	ldptr.w	$a0, $a1, 4100
	beqz	$a0, .LBB6_37
# %bb.32:
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$s1, $a0, 52
	ld.w	$s2, $a0, 68
	ld.w	$s3, $a1, 1152
	ori	$a0, $zero, 1
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB6_34
# %bb.33:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB6_34:
	st.w	$s1, $s0, 4
	st.w	$s2, $s0, 8
	addi.d	$a0, $s0, 16
	bstrpick.d	$a1, $s2, 62, 61
	add.w	$a1, $s2, $a1
	srai.d	$a2, $a1, 2
	bstrpick.d	$a1, $s1, 62, 61
	add.w	$a1, $s1, $a1
	srai.d	$s1, $a1, 2
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB6_36
# %bb.35:
	addi.d	$a0, $s0, 24
	bstrpick.d	$a1, $s2, 62, 60
	add.w	$a1, $s2, $a1
	srai.d	$s2, $a1, 3
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 32
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
.LBB6_36:                               # %allocEPZScolocated.exit
	ld.d	$a1, $s4, 0
	st.w	$s3, $s0, 0
	pcalau12i	$a0, %pc_hi20(EPZSCo_located)
	st.d	$s0, $a0, %pc_lo12(EPZSCo_located)
.LBB6_37:
	ori	$a0, $zero, 4088
	ldx.w	$a0, $a1, $a0
	addi.w	$a4, $a0, -1
	ori	$a2, $zero, 4
	pcalau12i	$a0, %pc_hi20(.Lswitch.table.EPZSInit.4)
	addi.d	$a0, $a0, %pc_lo12(.Lswitch.table.EPZSInit.4)
	move	$a3, $s5
	bltu	$a2, $a4, .LBB6_39
# %bb.38:                               # %switch.lookup
	slli.d	$a3, $a4, 3
	ldx.d	$a3, $a0, $a3
.LBB6_39:
	ori	$a4, $zero, 4092
	ldx.w	$a1, $a1, $a4
	ld.d	$a3, $a3, 0
	pcalau12i	$a4, %pc_hi20(searchPattern)
	addi.w	$a1, $a1, -2
	st.d	$a3, $a4, %pc_lo12(searchPattern)
	bltu	$a2, $a1, .LBB6_41
# %bb.40:                               # %switch.lookup90
	slli.d	$a1, $a1, 3
	ldx.d	$s5, $a0, $a1
.LBB6_41:
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(searchPatternD)
	st.d	$a0, $a1, %pc_lo12(searchPatternD)
	move	$a0, $fp
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
.Lfunc_end6:
	.size	EPZSInit, .Lfunc_end6-EPZSInit
                                        # -- End function
	.globl	EPZSDelete                      # -- Begin function EPZSDelete
	.p2align	5
	.type	EPZSDelete,@function
EPZSDelete:                             # @EPZSDelete
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s0, 0
	ldptr.w	$a0, $a0, 4100
	beqz	$a0, .LBB7_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(EPZSCo_located)
	ld.d	$fp, $a0, %pc_lo12(EPZSCo_located)
	beqz	$fp, .LBB7_5
# %bb.2:
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 16
	bstrpick.d	$a2, $a1, 62, 61
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB7_4
# %bb.3:
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 24
	bstrpick.d	$a2, $a1, 62, 60
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 3
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 32
	bstrpick.d	$a2, $a1, 62, 60
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 3
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
.LBB7_4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %freeEPZScolocated.exit
	pcalau12i	$a0, %pc_hi20(EPZSMap)
	ld.d	$a0, $a0, %pc_lo12(EPZSMap)
	pcaddu18i	$ra, %call36(free_mem2Dshort)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(EPZSDistortion)
	ld.d	$a0, $a0, %pc_lo12(EPZSDistortion)
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(window_predictor_extended)
	ld.d	$fp, $a0, %pc_lo12(window_predictor_extended)
	beqz	$fp, .LBB7_7
# %bb.6:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_7:                                # %freeEPZSpattern.exit
	pcalau12i	$a0, %pc_hi20(window_predictor)
	ld.d	$fp, $a0, %pc_lo12(window_predictor)
	beqz	$fp, .LBB7_9
# %bb.8:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %freeEPZSpattern.exit4
	pcalau12i	$a0, %pc_hi20(predictor)
	ld.d	$fp, $a0, %pc_lo12(predictor)
	beqz	$fp, .LBB7_11
# %bb.10:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_11:                               # %freeEPZSpattern.exit6
	pcalau12i	$a0, %pc_hi20(pmvfast)
	ld.d	$fp, $a0, %pc_lo12(pmvfast)
	beqz	$fp, .LBB7_13
# %bb.12:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_13:                               # %freeEPZSpattern.exit8
	pcalau12i	$a0, %pc_hi20(sbdiamond)
	ld.d	$fp, $a0, %pc_lo12(sbdiamond)
	beqz	$fp, .LBB7_15
# %bb.14:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_15:                               # %freeEPZSpattern.exit10
	pcalau12i	$a0, %pc_hi20(ldiamond)
	ld.d	$fp, $a0, %pc_lo12(ldiamond)
	beqz	$fp, .LBB7_17
# %bb.16:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_17:                               # %freeEPZSpattern.exit12
	pcalau12i	$a0, %pc_hi20(ediamond)
	ld.d	$fp, $a0, %pc_lo12(ediamond)
	beqz	$fp, .LBB7_19
# %bb.18:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_19:                               # %freeEPZSpattern.exit14
	pcalau12i	$a0, %pc_hi20(sdiamond)
	ld.d	$fp, $a0, %pc_lo12(sdiamond)
	beqz	$fp, .LBB7_21
# %bb.20:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_21:                               # %freeEPZSpattern.exit16
	pcalau12i	$a0, %pc_hi20(square)
	ld.d	$fp, $a0, %pc_lo12(square)
	beqz	$fp, .LBB7_23
# %bb.22:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_23:                               # %freeEPZSpattern.exit18
	ld.d	$a0, $s0, 0
	ldptr.w	$a0, $a0, 4104
	beqz	$a0, .LBB7_25
# %bb.24:
	pcalau12i	$a0, %pc_hi20(EPZSMotion)
	ld.d	$a0, $a0, %pc_lo12(EPZSMotion)
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 32
	ori	$a1, $zero, 6
	ori	$a3, $zero, 7
	ori	$a4, $zero, 4
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free_mem6Dshort)
	jr	$t8
.LBB7_25:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	EPZSDelete, .Lfunc_end7-EPZSDelete
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function EPZSSliceInit
.LCPI8_0:
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	EPZSSliceInit
	.p2align	5
	.type	EPZSSliceInit,@function
EPZSSliceInit:                          # @EPZSSliceInit
# %bb.0:
	addi.d	$sp, $sp, -1776
	st.d	$ra, $sp, 1768                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1760                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1752                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1744                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1736                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1728                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1720                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1712                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1704                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1696                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1688                  # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a0, $a1, 0
	ld.w	$a1, $a0, 20
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15268
	pcalau12i	$a2, %pc_hi20(mv_scale)
	addi.d	$a0, $a2, %pc_lo12(mv_scale)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a7, 4
	vrepli.w	$vr0, 256
	bltz	$a1, .LBB8_33
# %bb.1:                                # %.preheader941.lr.ph
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a2, 0
	addi.d	$a2, $a0, 12
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a1, $a1, 1
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	addi.d	$t6, $a6, 256
	addi.d	$a0, $a6, 128
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$a0, $a1, %got_pc_lo12(listXsize)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$t5, $zero
	ori	$t8, $zero, 256
	ori	$fp, $zero, 127
	ori	$s0, $zero, 4
	ori	$s1, $zero, 2047
	vrepli.w	$vr1, -128
	vrepli.w	$vr2, 127
	vrepli.w	$vr3, 32
	vldi	$vr4, -2553
	vrepli.b	$vr5, 0
	vrepli.h	$vr6, 1
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %._crit_edge955.split.us
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.d	$t5, $t5, 1
	lu12i.w	$a1, 1
	add.d	$t6, $t6, $a1
	add.d	$a6, $a6, $a1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$t5, $a0, .LBB8_33
.LBB8_3:                                # %.preheader941
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
                                        #       Child Loop BB8_27 Depth 3
                                        #       Child Loop BB8_31 Depth 3
                                        #     Child Loop BB8_7 Depth 2
                                        #       Child Loop BB8_18 Depth 3
                                        #       Child Loop BB8_21 Depth 3
                                        #       Child Loop BB8_13 Depth 3
                                        #       Child Loop BB8_16 Depth 3
	slli.d	$a1, $t5, 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$s4, $a0, $a1
	blez	$s4, .LBB8_2
# %bb.4:                                # %.preheader940.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	bstrpick.d	$s5, $s4, 31, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s6, $t5, $a0, 3
	ori	$a0, $zero, 2
	bgeu	$t5, $a0, .LBB8_22
# %bb.5:                                # %.preheader940.lr.ph.split.us.split.us
                                        #   in Loop: Header=BB8_3 Depth=1
	move	$t2, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s3, $a0, 4
	ld.d	$s6, $s6, 0
	bstrpick.d	$a1, $s5, 30, 2
	slli.d	$s7, $a1, 2
	vreplgr2vr.w	$vr7, $s3
	bstrpick.d	$a1, $s5, 30, 1
	slli.d	$s8, $a1, 1
	addi.d	$ra, $s6, 16
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	move	$t0, $a6
	move	$a3, $t6
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_6:                                # %._crit_edge.split.us.us.us
                                        #   in Loop: Header=BB8_7 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$a3, $a3, 4
	addi.d	$t0, $t0, 4
	addi.d	$t3, $t3, 4
	beq	$t2, $s5, .LBB8_2
.LBB8_7:                                # %.preheader940.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_18 Depth 3
                                        #       Child Loop BB8_21 Depth 3
                                        #       Child Loop BB8_13 Depth 3
                                        #       Child Loop BB8_16 Depth 3
	slli.d	$a1, $t2, 3
	ldx.d	$a1, $s6, $a1
	ld.w	$a1, $a1, 4
	bne	$s3, $a1, .LBB8_10
# %bb.8:                                # %.lr.ph.split.us.split.us.us.us.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	ori	$a0, $zero, 1
	bne	$s4, $a0, .LBB8_12
# %bb.9:                                #   in Loop: Header=BB8_7 Depth=2
	move	$a4, $zero
	b	.LBB8_15
	.p2align	4, , 16
.LBB8_10:                               # %.lr.ph.split.us.split.us967.us
                                        #   in Loop: Header=BB8_7 Depth=2
	sub.w	$a1, $s3, $a1
	addi.w	$a4, $zero, -128
	slt	$a2, $a4, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	slti	$a2, $a1, 127
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $fp, $a2
	or	$a1, $a1, $a2
	ext.w.h	$a2, $a1
	bstrpick.d	$a5, $a1, 7, 7
	add.d	$a1, $a1, $a5
	ext.w.b	$a1, $a1
	srai.d	$a1, $a1, 1
	srai.d	$a5, $a1, 63
	xor	$a1, $a1, $a5
	sub.d	$a1, $a1, $a5
	or	$a1, $a1, $a7
	div.d	$a1, $a1, $a2
	ext.w.h	$t1, $a1
	bgeu	$s4, $s0, .LBB8_17
# %bb.11:                               #   in Loop: Header=BB8_7 Depth=2
	move	$s2, $zero
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_12:                               # %vector.body.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	move	$a1, $s8
	move	$a4, $t3
	.p2align	4, , 16
.LBB8_13:                               # %vector.body
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$t8, $a4, -128
	st.w	$t8, $a4, 0
	addi.d	$a1, $a1, -2
	addi.d	$a4, $a4, 256
	bnez	$a1, .LBB8_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB8_7 Depth=2
	move	$a4, $s8
	beq	$s8, $s5, .LBB8_6
.LBB8_15:                               # %.lr.ph.split.us.split.us.us.us.preheader1322
                                        #   in Loop: Header=BB8_7 Depth=2
	slli.d	$a1, $a4, 7
	sub.d	$a4, $s5, $a4
	.p2align	4, , 16
.LBB8_16:                               # %.lr.ph.split.us.split.us.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	stx.w	$t8, $t0, $a1
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 128
	bnez	$a4, .LBB8_16
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_17:                               # %vector.ph1282
                                        #   in Loop: Header=BB8_7 Depth=2
	vreplgr2vr.w	$vr8, $t1
	move	$a1, $ra
	move	$t4, $a3
	move	$s2, $s7
	.p2align	4, , 16
.LBB8_18:                               # %vector.body1287
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, -16
	ld.d	$a5, $a1, -8
	ld.d	$t7, $a1, 0
	ld.d	$a0, $a1, 8
	ld.w	$a2, $a2, 4
	ld.w	$a5, $a5, 4
	ld.w	$t7, $t7, 4
	ld.w	$a0, $a0, 4
	vinsgr2vr.w	$vr9, $a2, 0
	vinsgr2vr.w	$vr9, $a5, 1
	vinsgr2vr.w	$vr9, $t7, 2
	vinsgr2vr.w	$vr9, $a0, 3
	vsub.w	$vr9, $vr7, $vr9
	vmax.w	$vr9, $vr9, $vr1
	vmin.w	$vr9, $vr9, $vr2
	vori.b	$vr10, $vr3, 0
	vmadd.w	$vr10, $vr9, $vr8
	vsrai.w	$vr9, $vr10, 6
	addi.d	$a0, $zero, -2048
	vreplgr2vr.w	$vr10, $a0
	vmax.w	$vr9, $vr9, $vr10
	vmin.w	$vr9, $vr9, $vr4
	vstelm.w	$vr9, $t4, -256, 0
	vstelm.w	$vr9, $t4, -128, 1
	vstelm.w	$vr9, $t4, 0, 2
	vstelm.w	$vr9, $t4, 128, 3
	addi.d	$s2, $s2, -4
	addi.d	$t4, $t4, 512
	addi.d	$a1, $a1, 32
	bnez	$s2, .LBB8_18
# %bb.19:                               # %middle.block1290
                                        #   in Loop: Header=BB8_7 Depth=2
	move	$s2, $s7
	beq	$s7, $s5, .LBB8_6
.LBB8_20:                               # %scalar.ph1280.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	slli.d	$a0, $s2, 7
	add.d	$a1, $t0, $a0
	alsl.d	$t4, $s2, $s6, 3
	sub.d	$s2, $s5, $s2
	.p2align	4, , 16
.LBB8_21:                               # %scalar.ph1280
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $t4, 0
	ld.w	$a2, $a2, 4
	sub.w	$a2, $s3, $a2
	slt	$t7, $a4, $a2
	maskeqz	$a2, $a2, $t7
	masknez	$t7, $a4, $t7
	or	$a2, $a2, $t7
	slti	$t7, $a2, 127
	maskeqz	$a2, $a2, $t7
	masknez	$t7, $fp, $t7
	or	$a2, $a2, $t7
	mul.d	$a2, $a2, $t1
	addi.w	$a2, $a2, 32
	srai.d	$a2, $a2, 6
	addi.w	$t7, $zero, -2048
	slt	$a5, $t7, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $t7, $a5
	or	$a2, $a2, $a5
	slti	$a5, $a2, 2047
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $s1, $a5
	or	$a2, $a2, $a5
	st.w	$a2, $a1, 0
	addi.d	$a1, $a1, 128
	addi.d	$s2, $s2, -1
	addi.d	$t4, $t4, 8
	bnez	$s2, .LBB8_21
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_22:                               # %.preheader940.us.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	move	$s7, $zero
	bstrpick.d	$a1, $t5, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	bstrpick.d	$a2, $s5, 30, 2
	slli.d	$s8, $a2, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	masknez	$a2, $a0, $a1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	maskeqz	$a1, $a0, $a1
	or	$ra, $a1, $a2
	move	$s3, $a6
	move	$t2, $t6
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_23:                               # %._crit_edge.split.us963
                                        #   in Loop: Header=BB8_24 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$t2, $t2, 4
	addi.d	$s3, $s3, 4
	beq	$s7, $s5, .LBB8_2
.LBB8_24:                               # %.preheader940.us
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_27 Depth 3
                                        #       Child Loop BB8_31 Depth 3
	slli.d	$a3, $s7, 3
	bgeu	$s4, $s0, .LBB8_26
# %bb.25:                               #   in Loop: Header=BB8_24 Depth=2
	move	$t4, $zero
	b	.LBB8_29
	.p2align	4, , 16
.LBB8_26:                               # %vector.ph1295
                                        #   in Loop: Header=BB8_24 Depth=2
	ld.d	$a0, $s6, 0
	ldx.d	$a1, $a0, $a3
	vldrepl.w	$vr9, $a1, 4
	vldrepl.w	$vr7, $ra, 0
	vseq.w	$vr8, $vr7, $vr9
	vpickev.h	$vr10, $vr8, $vr8
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	vld	$vr11, $a1, %pc_lo12(.LCPI8_0)
	vsub.w	$vr9, $vr7, $vr9
	vmax.w	$vr9, $vr9, $vr1
	vmin.w	$vr9, $vr9, $vr2
	vshuf.b	$vr11, $vr0, $vr9, $vr11
	vsrli.b	$vr12, $vr11, 7
	vadd.b	$vr11, $vr11, $vr12
	vsrai.b	$vr11, $vr11, 1
	vneg.b	$vr12, $vr11
	vmax.b	$vr11, $vr11, $vr12
	vilvl.b	$vr11, $vr5, $vr11
	vbitseti.h	$vr11, $vr11, 14
	vpickev.h	$vr9, $vr9, $vr9
	vbitsel.v	$vr9, $vr9, $vr6, $vr10
	vpickve2gr.h	$a1, $vr11, 3
	ori	$a2, $a7, 127
	and	$a1, $a1, $a2
	vpickve2gr.h	$a4, $vr9, 3
	ext.w.h	$a4, $a4
	div.d	$a1, $a1, $a4
	vpickve2gr.h	$a4, $vr11, 2
	and	$a4, $a4, $a2
	vpickve2gr.h	$a5, $vr9, 2
	ext.w.h	$a5, $a5
	div.d	$a4, $a4, $a5
	vpickve2gr.h	$a5, $vr11, 1
	and	$a5, $a5, $a2
	vpickve2gr.h	$t0, $vr9, 1
	ext.w.h	$t0, $t0
	div.d	$a5, $a5, $t0
	vpickve2gr.h	$t0, $vr11, 0
	and	$a2, $t0, $a2
	vpickve2gr.h	$t0, $vr9, 0
	ext.w.h	$t0, $t0
	div.d	$a2, $a2, $t0
	vinsgr2vr.h	$vr9, $a2, 0
	vinsgr2vr.h	$vr9, $a5, 2
	vinsgr2vr.h	$vr9, $a4, 4
	vinsgr2vr.h	$vr9, $a1, 6
	vslli.w	$vr9, $vr9, 16
	vsrai.w	$vr9, $vr9, 16
	addi.d	$a1, $a0, 16
	move	$a4, $t2
	move	$t0, $s8
	.p2align	4, , 16
.LBB8_27:                               # %vector.body1304
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a1, -16
	ld.d	$a2, $a1, -8
	ld.d	$a5, $a1, 0
	ld.d	$t1, $a1, 8
	ld.w	$a0, $a0, 4
	ld.w	$a2, $a2, 4
	ld.w	$a5, $a5, 4
	ld.w	$t1, $t1, 4
	vinsgr2vr.w	$vr10, $a0, 0
	vinsgr2vr.w	$vr10, $a2, 1
	vinsgr2vr.w	$vr10, $a5, 2
	vinsgr2vr.w	$vr10, $t1, 3
	vsub.w	$vr10, $vr7, $vr10
	vmax.w	$vr10, $vr10, $vr1
	vmin.w	$vr10, $vr10, $vr2
	vori.b	$vr11, $vr3, 0
	vmadd.w	$vr11, $vr10, $vr9
	vsrai.w	$vr10, $vr11, 6
	addi.d	$a0, $zero, -2048
	vreplgr2vr.w	$vr11, $a0
	vmax.w	$vr10, $vr10, $vr11
	vmin.w	$vr10, $vr10, $vr4
	vbitsel.v	$vr10, $vr10, $vr0, $vr8
	vstelm.w	$vr10, $a4, -256, 0
	vstelm.w	$vr10, $a4, -128, 1
	vstelm.w	$vr10, $a4, 0, 2
	vstelm.w	$vr10, $a4, 128, 3
	addi.d	$t0, $t0, -4
	addi.d	$a4, $a4, 512
	addi.d	$a1, $a1, 32
	bnez	$t0, .LBB8_27
# %bb.28:                               # %middle.block1308
                                        #   in Loop: Header=BB8_24 Depth=2
	move	$t4, $s8
	beq	$s8, $s5, .LBB8_23
.LBB8_29:                               # %scalar.ph1293.preheader
                                        #   in Loop: Header=BB8_24 Depth=2
	ld.d	$a0, $s6, 0
	ldx.d	$a1, $a0, $a3
	ld.w	$a3, $a1, 4
	ld.w	$a4, $ra, 0
	sub.w	$a1, $a4, $a3
	addi.w	$t0, $zero, -128
	slt	$a2, $t0, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $t0, $a2
	or	$a1, $a1, $a2
	slti	$a2, $a1, 127
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $fp, $a2
	or	$t1, $a1, $a2
	bstrpick.d	$a1, $t1, 7, 7
	add.d	$a1, $t1, $a1
	ext.w.b	$a1, $a1
	srai.d	$a1, $a1, 1
	srai.d	$a2, $a1, 63
	xor	$a1, $a1, $a2
	sub.d	$a1, $a1, $a2
	or	$a2, $a1, $a7
	slli.d	$a1, $t4, 7
	add.d	$t3, $s3, $a1
	alsl.d	$a1, $t4, $a0, 3
	sub.d	$t4, $s5, $t4
	ext.w.h	$s2, $a2
	b	.LBB8_31
	.p2align	4, , 16
.LBB8_30:                               #   in Loop: Header=BB8_31 Depth=3
	st.w	$a2, $t3, 0
	addi.d	$t3, $t3, 128
	addi.d	$t4, $t4, -1
	addi.d	$a1, $a1, 8
	beqz	$t4, .LBB8_23
.LBB8_31:                               # %scalar.ph1293
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a2, $zero, 256
	beq	$a4, $a3, .LBB8_30
# %bb.32:                               #   in Loop: Header=BB8_31 Depth=3
	ld.d	$a0, $a1, 0
	ld.w	$a0, $a0, 4
	ext.w.h	$a2, $t1
	sub.w	$a0, $a4, $a0
	slt	$a5, $t0, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $t0, $a5
	or	$a0, $a0, $a5
	slti	$a5, $a0, 127
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $fp, $a5
	or	$a0, $a0, $a5
	div.d	$a2, $s2, $a2
	ext.w.h	$a2, $a2
	mul.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 32
	srai.d	$a0, $a0, 6
	addi.w	$a2, $zero, -2048
	slt	$a5, $a2, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a2, $a2, $a5
	or	$a0, $a0, $a2
	slti	$a2, $a0, 2047
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s1, $a2
	or	$a2, $a0, $a2
	b	.LBB8_30
.LBB8_33:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4100
	beqz	$a0, .LBB8_187
# %bb.34:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	ld.d	$a3, $a1, 0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 2
	pcalau12i	$a2, %got_pc_hi20(listXsize)
	ld.d	$a4, $a2, %got_pc_lo12(listXsize)
	ldx.w	$a0, $a4, $a0
	ori	$a2, $zero, 2
	move	$a6, $a3
	blt	$a0, $a2, .LBB8_36
# %bb.35:
	ld.d	$a6, $a1, 8
.LBB8_36:                               # %.preheader939
	vst	$vr0, $sp, 96
	vst	$vr0, $sp, 888
	ori	$a0, $zero, 256
	lu32i.d	$a0, 256
	st.d	$a0, $sp, 112
	st.d	$a0, $sp, 904
	vst	$vr0, $sp, 228
	vst	$vr0, $sp, 1020
	st.d	$a0, $sp, 244
	st.d	$a0, $sp, 1036
	vst	$vr0, $sp, 360
	vst	$vr0, $sp, 1152
	st.d	$a0, $sp, 376
	st.d	$a0, $sp, 1168
	vst	$vr0, $sp, 492
	vst	$vr0, $sp, 1284
	st.d	$a0, $sp, 508
	st.d	$a0, $sp, 1300
	st.d	$a0, $sp, 640
	st.d	$a0, $sp, 1432
	st.d	$a0, $sp, 772
	st.d	$a0, $sp, 1564
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 15268
	vst	$vr0, $sp, 624
	vst	$vr0, $sp, 1416
	vst	$vr0, $sp, 756
	vst	$vr0, $sp, 1548
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bltz	$a0, .LBB8_53
# %bb.37:                               # %.preheader937.lr.ph
	slli.w	$t1, $a0, 2
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	move	$a1, $zero
	addi.d	$t0, $a0, 8
	addi.d	$t2, $a0, 4
	addi.d	$t3, $a0, 12
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$t4, $a0, 128
	ori	$t5, $zero, 127
	ori	$t6, $zero, 2
	ori	$t7, $zero, 2047
	addi.d	$fp, $sp, 888
	addi.w	$s8, $zero, -128
	b	.LBB8_39
	.p2align	4, , 16
.LBB8_38:                               # %._crit_edge972
                                        #   in Loop: Header=BB8_39 Depth=1
	addi.d	$a1, $s0, 2
	lu12i.w	$a0, 2
	add.d	$t4, $t4, $a0
	addi.d	$fp, $fp, 264
	bgeu	$s0, $t1, .LBB8_52
.LBB8_39:                               # %.preheader937
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_43 Depth 2
	move	$s0, $a1
	slli.d	$a0, $a1, 2
	ldx.w	$s1, $a4, $a0
	blez	$s1, .LBB8_38
# %bb.40:                               # %.lr.ph
                                        #   in Loop: Header=BB8_39 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $s0, $a0
	slli.d	$a1, $a0, 3
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s2, $a5, $a1
	ld.d	$a1, $s2, 0
	slli.d	$a2, $s0, 3
	ld.w	$s3, $a1, 4
	ldx.d	$s4, $a5, $a2
	slli.d	$a0, $a0, 2
	ldx.w	$s5, $a4, $a0
	move	$s6, $fp
	move	$s7, $t4
	b	.LBB8_43
	.p2align	4, , 16
.LBB8_41:                               #   in Loop: Header=BB8_43 Depth=2
	st.w	$a2, $s6, 0
.LBB8_42:                               #   in Loop: Header=BB8_43 Depth=2
	st.w	$t8, $s6, 132
	addi.d	$s1, $s1, -1
	addi.d	$s4, $s4, 8
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	beqz	$s1, .LBB8_38
.LBB8_43:                               #   Parent Loop BB8_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $t2
	beqz	$s0, .LBB8_46
# %bb.44:                               #   in Loop: Header=BB8_43 Depth=2
	move	$a1, $t0
	beq	$s0, $t6, .LBB8_46
# %bb.45:                               #   in Loop: Header=BB8_43 Depth=2
	move	$a1, $t3
.LBB8_46:                               #   in Loop: Header=BB8_43 Depth=2
	ld.d	$a0, $s4, 0
	ld.w	$a0, $a0, 4
	ld.w	$a1, $a1, 0
	sub.w	$a0, $a1, $a0
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$ra, $s4, 0
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	slti	$a1, $a0, 127
	ld.w	$a5, $ra, 4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t5, $a1
	or	$a1, $a0, $a1
	ori	$t8, $zero, 256
	beq	$s3, $a5, .LBB8_48
# %bb.47:                               #   in Loop: Header=BB8_43 Depth=2
	sub.w	$a0, $s3, $a5
	slt	$a2, $s8, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	slti	$a2, $a0, 127
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $t5, $a2
	or	$a0, $a0, $a2
	bstrpick.d	$a2, $a0, 7, 7
	add.d	$a2, $a0, $a2
	ext.w.b	$a2, $a2
	srai.d	$a2, $a2, 1
	srai.d	$a5, $a2, 63
	xor	$a2, $a2, $a5
	sub.d	$a2, $a2, $a5
	or	$a2, $a2, $a7
	ext.w.h	$a0, $a0
	div.d	$a0, $a2, $a0
	ext.w.h	$a0, $a0
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 32
	srai.d	$a0, $a0, 6
	addi.w	$a2, $zero, -2048
	slt	$a5, $a2, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a2, $a2, $a5
	or	$a0, $a0, $a2
	slti	$a2, $a0, 2047
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $t7, $a2
	or	$t8, $a0, $a2
.LBB8_48:                               #   in Loop: Header=BB8_43 Depth=2
	ld.w	$a0, $s7, -128
	mul.d	$a0, $a0, $t8
	addi.w	$a0, $a0, 128
	srai.d	$a2, $a0, 8
	st.w	$a2, $s6, -792
	addi.d	$t8, $t8, -256
	st.w	$t8, $s6, -660
	blt	$s5, $t6, .LBB8_41
# %bb.49:                               #   in Loop: Header=BB8_43 Depth=2
	ld.d	$a0, $s2, 8
	ld.w	$a2, $a0, 4
	ld.w	$a5, $ra, 4
	ori	$t8, $zero, 256
	beq	$a2, $a5, .LBB8_51
# %bb.50:                               #   in Loop: Header=BB8_43 Depth=2
	sub.w	$a0, $a2, $a5
	slt	$a2, $s8, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	slti	$a2, $a0, 127
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $t5, $a2
	or	$a0, $a0, $a2
	bstrpick.d	$a2, $a0, 7, 7
	add.d	$a2, $a0, $a2
	ext.w.b	$a2, $a2
	srai.d	$a2, $a2, 1
	srai.d	$a5, $a2, 63
	xor	$a2, $a2, $a5
	sub.d	$a2, $a2, $a5
	or	$a2, $a2, $a7
	ext.w.h	$a0, $a0
	div.d	$a0, $a2, $a0
	ext.w.h	$a0, $a0
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 32
	srai.d	$a0, $a0, 6
	addi.w	$a1, $zero, -2048
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slti	$a1, $a0, 2047
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t7, $a1
	or	$t8, $a0, $a1
.LBB8_51:                               #   in Loop: Header=BB8_43 Depth=2
	ld.w	$a0, $s7, 0
	mul.d	$a0, $a0, $t8
	addi.w	$a0, $a0, 128
	srli.d	$a0, $a0, 8
	st.w	$a0, $s6, 0
	addi.d	$t8, $t8, -256
	b	.LBB8_42
.LBB8_52:                               # %._crit_edge975
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB8_56
.LBB8_53:                               # %._crit_edge975.thread
	ori	$a0, $zero, 16
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	masknez	$a0, $a0, $a5
	ori	$a1, $zero, 24
	maskeqz	$a1, $a1, $a5
	or	$a0, $a1, $a0
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a1, $a7, $a0
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a5
	ori	$a2, $zero, 40
	maskeqz	$a2, $a2, $a5
	or	$a0, $a2, $a0
	ld.w	$a5, $a4, 0
	ldx.d	$a2, $a7, $a0
	ori	$a0, $zero, 2
	blt	$a5, $a0, .LBB8_55
# %bb.54:
	ld.d	$a0, $a1, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$t1, $a2, 8
	move	$a7, $zero
	b	.LBB8_62
.LBB8_55:
	ld.d	$t1, $a2, 0
	move	$a7, $zero
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	b	.LBB8_62
.LBB8_56:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 24
	ori	$a7, $zero, 1
	beqz	$a1, .LBB8_61
# %bb.57:
	ld.w	$a0, $a3, 0
	beq	$a1, $a0, .LBB8_61
# %bb.58:
	ldptr.w	$a0, $a3, 6428
	beqz	$a0, .LBB8_61
# %bb.59:
	ori	$a7, $zero, 1
	bne	$a1, $a7, .LBB8_188
# %bb.60:
	ldptr.d	$a0, $a3, 6536
	ldptr.d	$a6, $a3, 6544
	b	.LBB8_189
.LBB8_61:
	move	$t1, $a3
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
.LBB8_62:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB8_116
.LBB8_63:                               # %.loopexit936
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 24
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	beqz	$a0, .LBB8_101
# %bb.64:                               # %.preheader927
	ldptr.w	$a1, $a3, 6396
	ori	$a0, $zero, 8
	blt	$a1, $a0, .LBB8_101
# %bb.65:                               # %.preheader926.lr.ph
	ldptr.w	$a5, $a3, 6392
	ori	$a0, $zero, 4
	blt	$a5, $a0, .LBB8_101
# %bb.66:                               # %.preheader926.us.preheader
	bstrpick.d	$a0, $a1, 62, 60
	add.w	$a0, $a1, $a0
	srai.d	$a0, $a0, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$s0, $a5, 31, 2
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$t0, $zero
	ori	$s8, $zero, 1
	addi.w	$ra, $zero, -1
	lu12i.w	$fp, -8
	lu12i.w	$a0, 7
	ori	$s6, $a0, 4095
	lu12i.w	$a0, 3
	ori	$t5, $a0, 2168
	b	.LBB8_68
	.p2align	4, , 16
.LBB8_67:                               # %._crit_edge996.us
                                        #   in Loop: Header=BB8_68 Depth=1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$t0, $t0, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$t0, $a0, .LBB8_101
.LBB8_68:                               # %.preheader926.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_82 Depth 2
                                        #       Child Loop BB8_85 Depth 3
                                        #       Child Loop BB8_95 Depth 3
                                        #     Child Loop BB8_71 Depth 2
                                        #       Child Loop BB8_74 Depth 3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	slli.d	$t6, $t0, 3
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	beqz	$a7, .LBB8_79
# %bb.69:                               # %.lr.ph995.split.us.us
                                        #   in Loop: Header=BB8_68 Depth=1
	ldptr.d	$a0, $a3, 6504
	ld.d	$a0, $a0, 0
	ldx.d	$a5, $a0, $t6
	move	$t3, $zero
	addi.d	$t7, $a1, 24
	b	.LBB8_71
	.p2align	4, , 16
.LBB8_70:                               #   in Loop: Header=BB8_71 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ldx.d	$a1, $a1, $t6
	ldx.d	$a1, $a1, $t8
	st.w	$zero, $a1, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t6
	ldx.d	$t2, $a0, $t8
	move	$a1, $zero
	st.h	$zero, $t2, 0
	addi.d	$t3, $t3, 1
	st.h	$a1, $t2, 2
	beq	$t3, $s0, .LBB8_67
.LBB8_71:                               #   Parent Loop BB8_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_74 Depth 3
	slli.d	$t8, $t3, 3
	ldx.d	$a0, $a5, $t8
	ld.w	$t2, $a4, 0
	slti	$a0, $a0, 0
	slt	$a1, $s8, $t2
	and	$a1, $a0, $a1
	masknez	$a0, $a3, $a1
	maskeqz	$a2, $a6, $a1
	or	$s1, $a2, $a0
	ldptr.d	$a0, $s1, 6504
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t6
	ldx.d	$s2, $a0, $t8
	beq	$s2, $ra, .LBB8_70
# %bb.72:                               # %.preheader920.us.us
                                        #   in Loop: Header=BB8_71 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 14456
	slt	$a2, $a0, $t2
	masknez	$t0, $t2, $a2
	maskeqz	$a0, $a0, $a2
	or	$t0, $a0, $t0
	ori	$t2, $zero, 256
	blez	$t0, .LBB8_76
# %bb.73:                               # %.lr.ph993.us.us.preheader
                                        #   in Loop: Header=BB8_71 Depth=2
	move	$s3, $zero
	slli.d	$t4, $t0, 2
	move	$t0, $t7
	.p2align	4, , 16
.LBB8_74:                               # %.lr.ph993.us.us
                                        #   Parent Loop BB8_68 Depth=1
                                        #     Parent Loop BB8_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $t0, 0
	beq	$a0, $s2, .LBB8_77
# %bb.75:                               #   in Loop: Header=BB8_74 Depth=3
	addi.d	$s3, $s3, 4
	addi.d	$t0, $t0, 8
	bne	$t4, $s3, .LBB8_74
.LBB8_76:                               #   in Loop: Header=BB8_71 Depth=2
	move	$a1, $zero
	b	.LBB8_78
.LBB8_77:                               #   in Loop: Header=BB8_71 Depth=2
	addi.d	$a0, $sp, 96
	masknez	$a0, $a0, $a1
	addi.d	$a2, $sp, 888
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	ldx.w	$t2, $a0, $s3
	addi.d	$a0, $sp, 228
	masknez	$a0, $a0, $a1
	addi.d	$a2, $sp, 1020
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ldx.w	$a1, $a0, $s3
.LBB8_78:                               # %.loopexit921.us.us
                                        #   in Loop: Header=BB8_71 Depth=2
	ldptr.d	$a0, $s1, 6512
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t6
	ldx.d	$s1, $a0, $t8
	ld.h	$a0, $s1, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	mul.d	$a0, $t2, $a0
	addi.w	$a0, $a0, 128
	ld.d	$t0, $a2, 0
	srai.d	$a0, $a0, 8
	slt	$t4, $fp, $a0
	maskeqz	$a0, $a0, $t4
	ldx.d	$t0, $t0, $t6
	masknez	$t4, $fp, $t4
	or	$a0, $a0, $t4
	slt	$t4, $a0, $s6
	ldx.d	$t0, $t0, $t8
	maskeqz	$a0, $a0, $t4
	masknez	$t4, $s6, $t4
	or	$a0, $a0, $t4
	st.h	$a0, $t0, 0
	ld.h	$a0, $s1, 2
	mul.d	$a0, $t2, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$t2, $fp, $a0
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $fp, $t2
	or	$a0, $a0, $t2
	slt	$t2, $a0, $s6
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $s6, $t2
	or	$a0, $a0, $t2
	st.h	$a0, $t0, 2
	ld.h	$a0, $s1, 0
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 128
	ld.d	$a2, $a2, 8
	srai.d	$a0, $a0, 8
	slt	$t0, $fp, $a0
	maskeqz	$a0, $a0, $t0
	ldx.d	$a2, $a2, $t6
	masknez	$t0, $fp, $t0
	or	$a0, $a0, $t0
	slt	$t0, $a0, $s6
	ldx.d	$t2, $a2, $t8
	maskeqz	$a0, $a0, $t0
	masknez	$a2, $s6, $t0
	or	$a0, $a0, $a2
	st.h	$a0, $t2, 0
	ld.h	$a0, $s1, 2
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$a1, $fp, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a1, $a0, $a1
	addi.d	$t3, $t3, 1
	st.h	$a1, $t2, 2
	bne	$t3, $s0, .LBB8_71
	b	.LBB8_67
	.p2align	4, , 16
.LBB8_79:                               # %.lr.ph995.split.us1000
                                        #   in Loop: Header=BB8_68 Depth=1
	ldptr.d	$a0, $t1, 6504
	ld.w	$t7, $a4, 16
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldptr.d	$a2, $a2, 6504
	ld.d	$a0, $a0, 0
	ld.w	$t8, $a4, 8
	ldptr.d	$a5, $a3, 6528
	ld.d	$a2, $a2, 0
	ldx.d	$s1, $a0, $t6
	slli.d	$a0, $t0, 4
	ldx.d	$s2, $a5, $a0
	ldx.d	$s3, $a2, $t6
	move	$s4, $zero
	addi.d	$a0, $a1, 1080
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 552
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB8_82
	.p2align	4, , 16
.LBB8_80:                               #   in Loop: Header=BB8_82 Depth=2
	ld.h	$a0, $a1, 2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $a1, 2
	ld.h	$a0, $a5, 2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $a5, 2
.LBB8_81:                               #   in Loop: Header=BB8_82 Depth=2
	addi.d	$s4, $s4, 1
	beq	$s4, $s0, .LBB8_67
.LBB8_82:                               #   Parent Loop BB8_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_85 Depth 3
                                        #       Child Loop BB8_95 Depth 3
	slli.d	$a5, $s4, 3
	ldx.d	$a0, $s1, $a5
	ld.w	$a1, $a4, 0
	slti	$a0, $a0, 0
	slt	$a1, $s8, $a1
	and	$s5, $a0, $a1
	masknez	$a0, $t1, $s5
	maskeqz	$a1, $a6, $s5
	or	$a1, $a1, $a0
	ldptr.d	$a0, $a1, 6504
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t6
	ldx.d	$s7, $a0, $a5
	beq	$s7, $ra, .LBB8_88
# %bb.83:                               # %.preheader924.us
                                        #   in Loop: Header=BB8_82 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $t5
	slli.w	$a0, $a0, 1
	slt	$a2, $a0, $t7
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $t7, $a2
	or	$t0, $a0, $a2
	ori	$t2, $zero, 256
	blez	$t0, .LBB8_87
# %bb.84:                               # %.lr.ph989.us.preheader
                                        #   in Loop: Header=BB8_82 Depth=2
	move	$t3, $zero
	slli.d	$t4, $t0, 2
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_85:                               # %.lr.ph989.us
                                        #   Parent Loop BB8_68 Depth=1
                                        #     Parent Loop BB8_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $t0, 0
	beq	$a0, $s7, .LBB8_89
# %bb.86:                               #   in Loop: Header=BB8_85 Depth=3
	addi.d	$t3, $t3, 4
	addi.d	$t0, $t0, 8
	bne	$t4, $t3, .LBB8_85
.LBB8_87:                               #   in Loop: Header=BB8_82 Depth=2
	move	$s7, $zero
	b	.LBB8_90
	.p2align	4, , 16
.LBB8_88:                               #   in Loop: Header=BB8_82 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	ld.d	$a1, $a0, 0
	ldx.d	$a1, $a1, $t6
	ldx.d	$a1, $a1, $a5
	st.w	$zero, $a1, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t6
	ldx.d	$t2, $a0, $a5
	move	$t0, $zero
	st.h	$zero, $t2, 0
	st.h	$t0, $t2, 2
	ldx.bu	$a0, $s2, $s4
	bnez	$a0, .LBB8_92
	b	.LBB8_91
.LBB8_89:                               #   in Loop: Header=BB8_82 Depth=2
	addi.d	$a0, $sp, 624
	masknez	$a0, $a0, $s5
	addi.d	$a2, $sp, 1416
	maskeqz	$a2, $a2, $s5
	or	$a0, $a2, $a0
	ldx.w	$t2, $a0, $t3
	addi.d	$a0, $sp, 756
	masknez	$a0, $a0, $s5
	addi.d	$a2, $sp, 1548
	maskeqz	$a2, $a2, $s5
	or	$a0, $a2, $a0
	ldx.w	$s7, $a0, $t3
.LBB8_90:                               # %.loopexit925.us
                                        #   in Loop: Header=BB8_82 Depth=2
	ldptr.d	$a0, $a1, 6512
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t6
	ldx.d	$s5, $a0, $a5
	ld.h	$a0, $s5, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 32
	mul.d	$a0, $t2, $a0
	addi.w	$a0, $a0, 128
	ld.d	$a1, $a2, 0
	srai.d	$a0, $a0, 8
	slt	$t0, $fp, $a0
	maskeqz	$a0, $a0, $t0
	ldx.d	$a1, $a1, $t6
	masknez	$t0, $fp, $t0
	or	$a0, $a0, $t0
	slt	$t0, $a0, $s6
	ldx.d	$a1, $a1, $a5
	maskeqz	$a0, $a0, $t0
	masknez	$t0, $s6, $t0
	or	$a0, $a0, $t0
	st.h	$a0, $a1, 0
	ld.h	$a0, $s5, 2
	mul.d	$a0, $t2, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$t0, $fp, $a0
	maskeqz	$a0, $a0, $t0
	masknez	$t0, $fp, $t0
	or	$a0, $a0, $t0
	slt	$t0, $a0, $s6
	maskeqz	$a0, $a0, $t0
	masknez	$t0, $s6, $t0
	or	$a0, $a0, $t0
	st.h	$a0, $a1, 2
	ld.h	$a0, $s5, 0
	mul.d	$a0, $s7, $a0
	addi.w	$a0, $a0, 128
	ld.d	$a2, $a2, 8
	srai.d	$a0, $a0, 8
	slt	$t0, $fp, $a0
	maskeqz	$a0, $a0, $t0
	ldx.d	$a2, $a2, $t6
	masknez	$t0, $fp, $t0
	or	$a0, $a0, $t0
	slt	$t0, $a0, $s6
	ldx.d	$t2, $a2, $a5
	maskeqz	$a0, $a0, $t0
	masknez	$a2, $s6, $t0
	or	$a0, $a0, $a2
	st.h	$a0, $t2, 0
	ld.h	$a0, $s5, 2
	mul.d	$a0, $s7, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$a2, $fp, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	slt	$a2, $a0, $s6
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s6, $a2
	or	$t0, $a0, $a2
	st.h	$t0, $t2, 2
	ldx.bu	$a0, $s2, $s4
	bnez	$a0, .LBB8_92
.LBB8_91:                               #   in Loop: Header=BB8_82 Depth=2
	ld.h	$a0, $a1, 2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $a1, 2
	ld.h	$a0, $t2, 2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $t2, 2
.LBB8_92:                               #   in Loop: Header=BB8_82 Depth=2
	ldx.d	$a0, $s3, $a5
	ld.w	$a1, $a4, 0
	slti	$a0, $a0, 0
	slt	$a1, $s8, $a1
	and	$s5, $a0, $a1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	masknez	$a0, $a0, $s5
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s5
	or	$a1, $a1, $a0
	ldptr.d	$a0, $a1, 6504
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t6
	ldx.d	$s7, $a0, $a5
	beq	$s7, $ra, .LBB8_98
# %bb.93:                               # %.preheader922.us
                                        #   in Loop: Header=BB8_82 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $t5
	slli.w	$a0, $a0, 1
	slt	$a2, $a0, $t8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $t8, $a2
	or	$t0, $a0, $a2
	ori	$t2, $zero, 256
	blez	$t0, .LBB8_97
# %bb.94:                               # %.lr.ph991.us.preheader
                                        #   in Loop: Header=BB8_82 Depth=2
	move	$t3, $zero
	slli.d	$t4, $t0, 2
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_95:                               # %.lr.ph991.us
                                        #   Parent Loop BB8_68 Depth=1
                                        #     Parent Loop BB8_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $t0, 0
	beq	$a0, $s7, .LBB8_99
# %bb.96:                               #   in Loop: Header=BB8_95 Depth=3
	addi.d	$t3, $t3, 4
	addi.d	$t0, $t0, 8
	bne	$t4, $t3, .LBB8_95
.LBB8_97:                               #   in Loop: Header=BB8_82 Depth=2
	move	$s7, $zero
	b	.LBB8_100
	.p2align	4, , 16
.LBB8_98:                               #   in Loop: Header=BB8_82 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a0, 0
	ldx.d	$a1, $a1, $t6
	ldx.d	$a1, $a1, $a5
	st.w	$zero, $a1, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t6
	ldx.d	$a5, $a0, $a5
	move	$t0, $zero
	st.h	$zero, $a5, 0
	st.h	$t0, $a5, 2
	ldx.bu	$a0, $s2, $s4
	bnez	$a0, .LBB8_81
	b	.LBB8_80
.LBB8_99:                               #   in Loop: Header=BB8_82 Depth=2
	addi.d	$a0, $sp, 360
	masknez	$a0, $a0, $s5
	addi.d	$a2, $sp, 1152
	maskeqz	$a2, $a2, $s5
	or	$a0, $a2, $a0
	ldx.w	$t2, $a0, $t3
	addi.d	$a0, $sp, 492
	masknez	$a0, $a0, $s5
	addi.d	$a2, $sp, 1284
	maskeqz	$a2, $a2, $s5
	or	$a0, $a2, $a0
	ldx.w	$s7, $a0, $t3
.LBB8_100:                              # %.loopexit923.us
                                        #   in Loop: Header=BB8_82 Depth=2
	ldptr.d	$a0, $a1, 6512
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t6
	ldx.d	$s5, $a0, $a5
	ld.h	$a0, $s5, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 24
	mul.d	$a0, $t2, $a0
	addi.w	$a0, $a0, 128
	ld.d	$a1, $a2, 0
	srai.d	$a0, $a0, 8
	slt	$t0, $fp, $a0
	maskeqz	$a0, $a0, $t0
	ldx.d	$a1, $a1, $t6
	masknez	$t0, $fp, $t0
	or	$a0, $a0, $t0
	slt	$t0, $a0, $s6
	ldx.d	$a1, $a1, $a5
	maskeqz	$a0, $a0, $t0
	masknez	$t0, $s6, $t0
	or	$a0, $a0, $t0
	st.h	$a0, $a1, 0
	ld.h	$a0, $s5, 2
	mul.d	$a0, $t2, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$t0, $fp, $a0
	maskeqz	$a0, $a0, $t0
	masknez	$t0, $fp, $t0
	or	$a0, $a0, $t0
	slt	$t0, $a0, $s6
	maskeqz	$a0, $a0, $t0
	masknez	$t0, $s6, $t0
	or	$a0, $a0, $t0
	st.h	$a0, $a1, 2
	ld.h	$a0, $s5, 0
	mul.d	$a0, $s7, $a0
	addi.w	$a0, $a0, 128
	ld.d	$a2, $a2, 8
	srai.d	$a0, $a0, 8
	slt	$t0, $fp, $a0
	maskeqz	$a0, $a0, $t0
	ldx.d	$a2, $a2, $t6
	masknez	$t0, $fp, $t0
	or	$a0, $a0, $t0
	slt	$t0, $a0, $s6
	ldx.d	$a5, $a2, $a5
	maskeqz	$a0, $a0, $t0
	masknez	$a2, $s6, $t0
	or	$a0, $a0, $a2
	st.h	$a0, $a5, 0
	ld.h	$a0, $s5, 2
	mul.d	$a0, $s7, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$a2, $fp, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	slt	$a2, $a0, $s6
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s6, $a2
	or	$t0, $a0, $a2
	st.h	$t0, $a5, 2
	ldx.bu	$a0, $s2, $s4
	bnez	$a0, .LBB8_81
	b	.LBB8_80
.LBB8_101:                              # %.loopexit928
	ldptr.w	$a0, $a3, 6396
	srai.d	$t3, $a0, 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	beqz	$a0, .LBB8_151
# %bb.102:                              # %.critedge.preheader
	blez	$t3, .LBB8_187
# %bb.103:                              # %.preheader919.lr.ph
	ldptr.w	$a0, $a3, 6392
	srai.d	$a5, $a0, 2
	blez	$a5, .LBB8_187
# %bb.104:                              # %.preheader919.lr.ph.split.us
	ldptr.d	$a0, $a3, 6504
	ld.d	$a7, $a0, 0
	addi.d	$t1, $sp, 1020
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$t2, $a0, %got_pc_lo12(enc_picture)
	move	$t3, $zero
	ori	$t4, $zero, 1
	addi.w	$t5, $zero, -1
	addi.d	$t6, $sp, 96
	lu12i.w	$t7, -8
	lu12i.w	$a0, 7
	ori	$t8, $a0, 4095
	b	.LBB8_106
	.p2align	4, , 16
.LBB8_105:                              # %._crit_edge1005.us
                                        #   in Loop: Header=BB8_106 Depth=1
	addi.d	$t3, $t3, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$t3, $a0, .LBB8_187
.LBB8_106:                              # %.preheader919.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_108 Depth 2
                                        #       Child Loop BB8_111 Depth 3
	slli.d	$fp, $t3, 3
	ld.d	$a0, $t2, 0
	ldx.d	$s0, $a7, $fp
	move	$s1, $zero
	addi.d	$s2, $a0, 24
	b	.LBB8_108
	.p2align	4, , 16
.LBB8_107:                              #   in Loop: Header=BB8_108 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ldx.d	$a1, $a1, $fp
	ldx.d	$a1, $a1, $s3
	st.w	$zero, $a1, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $fp
	ldx.d	$s3, $a0, $s3
	move	$a1, $zero
	st.h	$zero, $s3, 0
	addi.d	$s1, $s1, 1
	st.h	$a1, $s3, 2
	beq	$s1, $a5, .LBB8_105
.LBB8_108:                              #   Parent Loop BB8_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_111 Depth 3
	slli.d	$s3, $s1, 3
	ldx.d	$a0, $s0, $s3
	ld.w	$s4, $a4, 0
	slti	$a0, $a0, 0
	slt	$a1, $t4, $s4
	and	$a1, $a0, $a1
	masknez	$a0, $a3, $a1
	maskeqz	$a2, $a6, $a1
	or	$s5, $a2, $a0
	ldptr.d	$a0, $s5, 6504
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $fp
	ldx.d	$s6, $a0, $s3
	beq	$s6, $t5, .LBB8_107
# %bb.109:                              # %.preheader917.us
                                        #   in Loop: Header=BB8_108 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 14456
	slt	$a2, $a0, $s4
	masknez	$s4, $s4, $a2
	maskeqz	$a0, $a0, $a2
	or	$s8, $a0, $s4
	ori	$s4, $zero, 256
	blez	$s8, .LBB8_113
# %bb.110:                              # %.lr.ph1002.us.preheader
                                        #   in Loop: Header=BB8_108 Depth=2
	move	$s7, $zero
	slli.d	$s8, $s8, 2
	move	$ra, $s2
	.p2align	4, , 16
.LBB8_111:                              # %.lr.ph1002.us
                                        #   Parent Loop BB8_106 Depth=1
                                        #     Parent Loop BB8_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $ra, 0
	beq	$a0, $s6, .LBB8_114
# %bb.112:                              #   in Loop: Header=BB8_111 Depth=3
	addi.d	$s7, $s7, 4
	addi.d	$ra, $ra, 8
	bne	$s8, $s7, .LBB8_111
.LBB8_113:                              #   in Loop: Header=BB8_108 Depth=2
	move	$a1, $zero
	b	.LBB8_115
.LBB8_114:                              #   in Loop: Header=BB8_108 Depth=2
	masknez	$a0, $t6, $a1
	addi.d	$a2, $sp, 888
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	ldx.w	$s4, $a0, $s7
	addi.d	$a0, $sp, 228
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t1, $a1
	or	$a0, $a1, $a0
	ldx.w	$a1, $a0, $s7
.LBB8_115:                              # %.loopexit918.us
                                        #   in Loop: Header=BB8_108 Depth=2
	ldptr.d	$a0, $s5, 6512
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $fp
	ldx.d	$s5, $a0, $s3
	ld.h	$a0, $s5, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	mul.d	$a0, $s4, $a0
	addi.w	$a0, $a0, 128
	ld.d	$s6, $a2, 0
	srai.d	$a0, $a0, 8
	slt	$s7, $t7, $a0
	maskeqz	$a0, $a0, $s7
	ldx.d	$s6, $s6, $fp
	masknez	$s7, $t7, $s7
	or	$a0, $a0, $s7
	slt	$s7, $a0, $t8
	ldx.d	$s6, $s6, $s3
	maskeqz	$a0, $a0, $s7
	masknez	$s7, $t8, $s7
	or	$a0, $a0, $s7
	st.h	$a0, $s6, 0
	ld.h	$a0, $s5, 2
	mul.d	$a0, $s4, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$s4, $t7, $a0
	maskeqz	$a0, $a0, $s4
	masknez	$s4, $t7, $s4
	or	$a0, $a0, $s4
	slt	$s4, $a0, $t8
	maskeqz	$a0, $a0, $s4
	masknez	$s4, $t8, $s4
	or	$a0, $a0, $s4
	st.h	$a0, $s6, 2
	ld.h	$a0, $s5, 0
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 128
	ld.d	$a2, $a2, 8
	srai.d	$a0, $a0, 8
	slt	$s4, $t7, $a0
	maskeqz	$a0, $a0, $s4
	ldx.d	$a2, $a2, $fp
	masknez	$s4, $t7, $s4
	or	$a0, $a0, $s4
	slt	$s4, $a0, $t8
	ldx.d	$s3, $a2, $s3
	maskeqz	$a0, $a0, $s4
	masknez	$a2, $t8, $s4
	or	$a0, $a0, $a2
	st.h	$a0, $s3, 0
	ld.h	$a0, $s5, 2
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$a1, $t7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t7, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $t8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t8, $a1
	or	$a1, $a0, $a1
	addi.d	$s1, $s1, 1
	st.h	$a1, $s3, 2
	bne	$s1, $a5, .LBB8_108
	b	.LBB8_105
.LBB8_116:                              # %.preheader935
	ldptr.w	$a0, $a3, 6396
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	blez	$a0, .LBB8_63
# %bb.117:                              # %.lr.ph987
	ldptr.w	$a0, $a3, 6392
	srai.d	$t4, $a0, 2
	blez	$t4, .LBB8_63
# %bb.118:                              # %.lr.ph984.us.preheader
	lu12i.w	$a0, 262143
	ori	$a0, $a0, 4092
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $zero
	ori	$s0, $zero, 1
	addi.w	$s1, $zero, -1
	lu12i.w	$s3, -8
	lu12i.w	$a0, 7
	ori	$s4, $a0, 4095
	b	.LBB8_120
	.p2align	4, , 16
.LBB8_119:                              # %._crit_edge985.us
                                        #   in Loop: Header=BB8_120 Depth=1
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB8_63
.LBB8_120:                              # %.lr.ph984.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_122 Depth 2
                                        #       Child Loop BB8_140 Depth 3
                                        #       Child Loop BB8_128 Depth 3
                                        #       Child Loop BB8_134 Depth 3
	move	$s5, $zero
	bstrpick.d	$s6, $fp, 31, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $a0, 0
	srli.d	$a0, $fp, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	add.w	$s8, $a0, $s6
	addi.d	$s2, $s7, 24
	slli.d	$t5, $fp, 3
	b	.LBB8_122
	.p2align	4, , 16
.LBB8_121:                              #   in Loop: Header=BB8_122 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ldx.d	$a1, $a1, $t5
	ldx.d	$a1, $a1, $t7
	st.w	$zero, $a1, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t5
	ldx.d	$t7, $a0, $t7
	move	$a1, $zero
	st.h	$zero, $t7, 0
	addi.d	$s5, $s5, 1
	st.h	$a1, $t7, 2
	beq	$s5, $t4, .LBB8_119
.LBB8_122:                              #   Parent Loop BB8_120 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_140 Depth 3
                                        #       Child Loop BB8_128 Depth 3
                                        #       Child Loop BB8_134 Depth 3
	slli.d	$t7, $s5, 3
	bnez	$a7, .LBB8_131
# %bb.123:                              #   in Loop: Header=BB8_122 Depth=2
	ldptr.d	$a0, $a3, 6528
	ldx.d	$a0, $a0, $t5
	ldx.bu	$a0, $a0, $s5
	beqz	$a0, .LBB8_131
# %bb.124:                              #   in Loop: Header=BB8_122 Depth=2
	ld.w	$a0, $s7, 4
	ld.w	$a1, $t1, 4
	sub.w	$a1, $a0, $a1
	srai.d	$a2, $a1, 31
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a5, $a5, 4
	ldptr.d	$t0, $a3, 6504
	xor	$a1, $a1, $a2
	sub.w	$a2, $a1, $a2
	sub.w	$a0, $a0, $a5
	ld.d	$a1, $t0, 0
	srai.d	$a5, $a0, 31
	xor	$a0, $a0, $a5
	sub.w	$a0, $a0, $a5
	alsl.d	$a1, $s8, $a1, 3
	bgeu	$a0, $a2, .LBB8_137
# %bb.125:                              #   in Loop: Header=BB8_122 Depth=2
	ld.d	$a0, $a1, 0
	ldx.d	$a5, $a0, $t7
	beq	$a5, $s1, .LBB8_121
# %bb.126:                              # %.preheader931.us
                                        #   in Loop: Header=BB8_122 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a1, $a1, 14456
	slti	$a2, $a5, 0
	slt	$t0, $s0, $a0
	and	$t2, $a2, $t0
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$t0, $a1, $a0
	ori	$a1, $zero, 256
	blez	$t0, .LBB8_130
# %bb.127:                              # %.lr.ph979.us.preheader
                                        #   in Loop: Header=BB8_122 Depth=2
	move	$t8, $zero
	slli.d	$t3, $t0, 2
	move	$t6, $s2
	.p2align	4, , 16
.LBB8_128:                              # %.lr.ph979.us
                                        #   Parent Loop BB8_120 Depth=1
                                        #     Parent Loop BB8_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $t6, 0
	beq	$a0, $a5, .LBB8_145
# %bb.129:                              #   in Loop: Header=BB8_128 Depth=3
	addi.d	$t8, $t8, 4
	addi.d	$t6, $t6, 8
	bne	$t3, $t8, .LBB8_128
.LBB8_130:                              #   in Loop: Header=BB8_122 Depth=2
	move	$a5, $zero
	b	.LBB8_146
	.p2align	4, , 16
.LBB8_131:                              #   in Loop: Header=BB8_122 Depth=2
	ldptr.d	$a0, $a3, 6504
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t5
	ldx.d	$a0, $a0, $t7
	ld.w	$a5, $a4, 0
	slti	$a0, $a0, 0
	slt	$a1, $s0, $a5
	and	$a1, $a0, $a1
	masknez	$a0, $a3, $a1
	maskeqz	$a2, $a6, $a1
	or	$t2, $a2, $a0
	ldptr.d	$a0, $t2, 6504
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t5
	ldx.d	$t8, $a0, $t7
	beq	$t8, $s1, .LBB8_121
# %bb.132:                              # %.preheader929.us
                                        #   in Loop: Header=BB8_122 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 14456
	slt	$a2, $a0, $a5
	masknez	$a5, $a5, $a2
	maskeqz	$a0, $a0, $a2
	or	$t0, $a0, $a5
	ori	$a5, $zero, 256
	blez	$t0, .LBB8_136
# %bb.133:                              # %.lr.ph981.us.preheader
                                        #   in Loop: Header=BB8_122 Depth=2
	move	$t3, $zero
	slli.d	$t6, $t0, 2
	move	$ra, $s2
	.p2align	4, , 16
.LBB8_134:                              # %.lr.ph981.us
                                        #   Parent Loop BB8_120 Depth=1
                                        #     Parent Loop BB8_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $ra, 0
	beq	$a0, $t8, .LBB8_143
# %bb.135:                              #   in Loop: Header=BB8_134 Depth=3
	addi.d	$t3, $t3, 4
	addi.d	$ra, $ra, 8
	bne	$t6, $t3, .LBB8_134
.LBB8_136:                              #   in Loop: Header=BB8_122 Depth=2
	move	$a1, $zero
	b	.LBB8_144
.LBB8_137:                              #   in Loop: Header=BB8_122 Depth=2
	ld.d	$a0, $a1, 32
	ldx.d	$a5, $a0, $t7
	beq	$a5, $s1, .LBB8_121
# %bb.138:                              # %.preheader933.us
                                        #   in Loop: Header=BB8_122 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a1, $a1, 14456
	slti	$a2, $a5, 0
	slt	$t0, $s0, $a0
	and	$t2, $a2, $t0
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$t0, $a1, $a0
	ori	$a1, $zero, 256
	blez	$t0, .LBB8_142
# %bb.139:                              # %.lr.ph977.us.preheader
                                        #   in Loop: Header=BB8_122 Depth=2
	move	$t8, $zero
	slli.d	$t3, $t0, 2
	move	$t6, $s2
	.p2align	4, , 16
.LBB8_140:                              # %.lr.ph977.us
                                        #   Parent Loop BB8_120 Depth=1
                                        #     Parent Loop BB8_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $t6, 0
	beq	$a0, $a5, .LBB8_147
# %bb.141:                              #   in Loop: Header=BB8_140 Depth=3
	addi.d	$t8, $t8, 4
	addi.d	$t6, $t6, 8
	bne	$t3, $t8, .LBB8_140
.LBB8_142:                              #   in Loop: Header=BB8_122 Depth=2
	move	$a5, $zero
	b	.LBB8_148
.LBB8_143:                              #   in Loop: Header=BB8_122 Depth=2
	addi.d	$a0, $sp, 96
	masknez	$a0, $a0, $a1
	addi.d	$a2, $sp, 888
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	ldx.w	$a5, $a0, $t3
	addi.d	$a0, $sp, 228
	masknez	$a0, $a0, $a1
	addi.d	$a2, $sp, 1020
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ldx.w	$a1, $a0, $t3
.LBB8_144:                              # %.loopexit930.us
                                        #   in Loop: Header=BB8_122 Depth=2
	ldptr.d	$a0, $t2, 6512
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t5
	ldx.d	$t2, $a0, $t7
	ld.h	$a0, $t2, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	mul.d	$a0, $a5, $a0
	addi.w	$a0, $a0, 128
	ld.d	$t0, $a2, 0
	srai.d	$a0, $a0, 8
	slt	$t3, $s3, $a0
	maskeqz	$a0, $a0, $t3
	ldx.d	$t0, $t0, $t5
	masknez	$t3, $s3, $t3
	or	$a0, $a0, $t3
	slt	$t3, $a0, $s4
	ldx.d	$t0, $t0, $t7
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $s4, $t3
	or	$a0, $a0, $t3
	st.h	$a0, $t0, 0
	ld.h	$a0, $t2, 2
	mul.d	$a0, $a5, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$a5, $s3, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $s3, $a5
	or	$a0, $a0, $a5
	slt	$a5, $a0, $s4
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $s4, $a5
	or	$a0, $a0, $a5
	st.h	$a0, $t0, 2
	ld.h	$a0, $t2, 0
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 128
	ld.d	$a2, $a2, 8
	srai.d	$a0, $a0, 8
	slt	$a5, $s3, $a0
	maskeqz	$a0, $a0, $a5
	ldx.d	$a2, $a2, $t5
	masknez	$a5, $s3, $a5
	or	$a0, $a0, $a5
	slt	$a5, $a0, $s4
	ldx.d	$t7, $a2, $t7
	maskeqz	$a0, $a0, $a5
	masknez	$a2, $s4, $a5
	or	$a0, $a0, $a2
	st.h	$a0, $t7, 0
	ld.h	$a0, $t2, 2
	mul.d	$a0, $a1, $a0
	b	.LBB8_150
.LBB8_145:                              #   in Loop: Header=BB8_122 Depth=2
	addi.d	$a0, $sp, 96
	masknez	$a0, $a0, $t2
	addi.d	$a1, $sp, 888
	maskeqz	$a1, $a1, $t2
	or	$a0, $a1, $a0
	ldx.w	$a1, $a0, $t8
	addi.d	$a0, $sp, 228
	masknez	$a0, $a0, $t2
	addi.d	$a2, $sp, 1020
	maskeqz	$a2, $a2, $t2
	or	$a0, $a2, $a0
	ldx.w	$a5, $a0, $t8
.LBB8_146:                              # %.loopexit932.us
                                        #   in Loop: Header=BB8_122 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	masknez	$a0, $a0, $t2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $t2
	b	.LBB8_149
.LBB8_147:                              #   in Loop: Header=BB8_122 Depth=2
	addi.d	$a0, $sp, 96
	masknez	$a0, $a0, $t2
	addi.d	$a1, $sp, 888
	maskeqz	$a1, $a1, $t2
	or	$a0, $a1, $a0
	ldx.w	$a1, $a0, $t8
	addi.d	$a0, $sp, 228
	masknez	$a0, $a0, $t2
	addi.d	$a2, $sp, 1020
	maskeqz	$a2, $a2, $t2
	or	$a0, $a2, $a0
	ldx.w	$a5, $a0, $t8
.LBB8_148:                              # %.loopexit934.us
                                        #   in Loop: Header=BB8_122 Depth=2
	masknez	$a0, $t1, $t2
	maskeqz	$a2, $a6, $t2
.LBB8_149:                              #   in Loop: Header=BB8_122 Depth=2
	or	$a0, $a2, $a0
	ldptr.d	$a0, $a0, 6512
	ld.d	$a0, $a0, 0
	slli.d	$a2, $s6, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$t2, $a0, $t7
	ld.h	$a0, $t2, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 128
	ld.d	$t0, $a2, 0
	srai.d	$a0, $a0, 8
	slt	$t3, $s3, $a0
	maskeqz	$a0, $a0, $t3
	ldx.d	$t0, $t0, $t5
	masknez	$t3, $s3, $t3
	or	$a0, $a0, $t3
	slt	$t3, $a0, $s4
	ldx.d	$t0, $t0, $t7
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $s4, $t3
	or	$a0, $a0, $t3
	st.h	$a0, $t0, 0
	ld.h	$a0, $t2, 2
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	st.h	$a0, $t0, 2
	ld.h	$a0, $t2, 0
	mul.d	$a0, $a5, $a0
	addi.w	$a0, $a0, 128
	ld.d	$a1, $a2, 8
	srai.d	$a0, $a0, 8
	slt	$a2, $s3, $a0
	maskeqz	$a0, $a0, $a2
	ldx.d	$a1, $a1, $t5
	masknez	$a2, $s3, $a2
	or	$a0, $a0, $a2
	slt	$a2, $a0, $s4
	ldx.d	$t7, $a1, $t7
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $s4, $a2
	or	$a0, $a0, $a1
	st.h	$a0, $t7, 0
	ld.h	$a0, $t2, 2
	mul.d	$a0, $a5, $a0
.LBB8_150:                              #   in Loop: Header=BB8_122 Depth=2
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a1, $a0, $a1
	addi.d	$s5, $s5, 1
	st.h	$a1, $t7, 2
	bne	$s5, $t4, .LBB8_122
	b	.LBB8_119
.LBB8_151:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB8_167
.LBB8_152:                              # %.critedge913.preheader
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	blez	$t3, .LBB8_187
.LBB8_153:                              # %.preheader.lr.ph
	ldptr.w	$a0, $a3, 6392
	srai.d	$a4, $a0, 2
	blez	$a4, .LBB8_187
# %bb.154:                              # %.preheader.us.preheader
	ldptr.d	$a1, $a3, 6528
	move	$a2, $zero
	slli.d	$a3, $a4, 3
	b	.LBB8_156
	.p2align	4, , 16
.LBB8_155:                              # %._crit_edge1017.us
                                        #   in Loop: Header=BB8_156 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $t3, .LBB8_187
.LBB8_156:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_161 Depth 2
	slli.d	$a4, $a2, 3
	ldx.d	$a5, $a1, $a4
	move	$a6, $zero
	b	.LBB8_161
	.p2align	4, , 16
.LBB8_157:                              #   in Loop: Header=BB8_161 Depth=2
	beqz	$t1, .LBB8_164
.LBB8_158:                              #   in Loop: Header=BB8_161 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$t0, $a0, 0
	ldx.d	$t0, $t0, $a4
	ld.d	$a0, $a0, 8
	ldx.d	$t0, $t0, $a6
	ldx.d	$a0, $a0, $a4
	ld.h	$t1, $t0, 2
	ldx.d	$a0, $a0, $a6
	slli.d	$t1, $t1, 1
	st.h	$t1, $t0, 2
	ld.h	$t0, $a0, 2
	slli.d	$t0, $t0, 1
.LBB8_159:                              # %.thread899.thread.us
                                        #   in Loop: Header=BB8_161 Depth=2
	st.h	$t0, $a0, 2
.LBB8_160:                              # %.thread899.thread.us
                                        #   in Loop: Header=BB8_161 Depth=2
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 1
	beq	$a3, $a6, .LBB8_155
.LBB8_161:                              #   Parent Loop BB8_156 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t1, $a5, 0
	beqz	$a7, .LBB8_157
# %bb.162:                              #   in Loop: Header=BB8_161 Depth=2
	beqz	$t2, .LBB8_166
# %bb.163:                              # %.thread899.thread900.us
                                        #   in Loop: Header=BB8_161 Depth=2
	bnez	$t1, .LBB8_160
	b	.LBB8_165
.LBB8_164:                              # %.thread899.us
                                        #   in Loop: Header=BB8_161 Depth=2
	beqz	$t2, .LBB8_160
.LBB8_165:                              # %.thread899.thread900.us.thread
                                        #   in Loop: Header=BB8_161 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$t0, $a0, 0
	ldx.d	$t0, $t0, $a4
	ld.d	$a0, $a0, 8
	ldx.d	$t0, $t0, $a6
	ldx.d	$a0, $a0, $a4
	ld.h	$t1, $t0, 2
	ldx.d	$a0, $a0, $a6
	addi.d	$t1, $t1, 1
	srli.d	$t1, $t1, 1
	st.h	$t1, $t0, 2
	ld.h	$t0, $a0, 2
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 1
	b	.LBB8_159
.LBB8_166:                              #   in Loop: Header=BB8_161 Depth=2
	bnez	$t1, .LBB8_158
	b	.LBB8_160
.LBB8_167:                              # %.preheader916
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	blez	$t3, .LBB8_187
# %bb.168:                              # %.lr.ph1014
	ldptr.w	$a0, $a3, 6392
	srai.d	$a5, $a0, 2
	blez	$a5, .LBB8_153
# %bb.169:                              # %.lr.ph1014.split.us
	ldptr.d	$a0, $a3, 6528
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 262143
	ori	$a0, $a0, 4092
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$t6, $zero
	ori	$t7, $zero, 1
	addi.w	$t8, $zero, -1
	lu12i.w	$s0, -8
	lu12i.w	$a0, 7
	ori	$s1, $a0, 4095
	b	.LBB8_171
	.p2align	4, , 16
.LBB8_170:                              # %._crit_edge1012.us
                                        #   in Loop: Header=BB8_171 Depth=1
	addi.d	$t6, $t6, 1
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	beq	$t6, $t3, .LBB8_152
.LBB8_171:                              # %.lr.ph1011.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_175 Depth 2
                                        #       Child Loop BB8_179 Depth 3
	move	$s2, $zero
	bstrpick.d	$s3, $t6, 31, 1
	srli.d	$a0, $t6, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $a1, 0
	slli.d	$s5, $t6, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$s6, $a1, $s5
	add.w	$a0, $a0, $s3
	addi.d	$a1, $s4, 24
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$s8, $a0, 3
	b	.LBB8_175
	.p2align	4, , 16
.LBB8_172:                              #   in Loop: Header=BB8_175 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ldx.d	$a1, $a1, $s5
	ldx.d	$a1, $a1, $ra
	st.w	$zero, $a1, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s5
	ldx.d	$a1, $a0, $ra
	move	$t1, $zero
	st.h	$zero, $a1, 0
.LBB8_173:                              # %.sink.split
                                        #   in Loop: Header=BB8_175 Depth=2
	st.h	$t1, $a1, 2
.LBB8_174:                              #   in Loop: Header=BB8_175 Depth=2
	addi.d	$s2, $s2, 1
	beq	$s2, $a5, .LBB8_170
.LBB8_175:                              #   Parent Loop BB8_171 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_179 Depth 3
	ldx.bu	$a0, $s6, $s2
	beqz	$a0, .LBB8_174
# %bb.176:                              #   in Loop: Header=BB8_175 Depth=2
	ldptr.d	$a0, $a3, 6504
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s8
	slli.d	$ra, $s2, 3
	ldx.d	$a0, $a0, $ra
	ld.w	$t2, $a4, 0
	slti	$a0, $a0, 0
	slt	$a1, $t7, $t2
	and	$t1, $a0, $a1
	masknez	$a0, $a3, $t1
	maskeqz	$a1, $a6, $t1
	or	$a1, $a1, $a0
	ldptr.d	$a0, $a1, 6504
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s8
	ldx.d	$t5, $a0, $ra
	beq	$t5, $t8, .LBB8_172
# %bb.177:                              # %.preheader914.us
                                        #   in Loop: Header=BB8_175 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 14456
	slt	$a2, $a0, $t2
	masknez	$t0, $t2, $a2
	maskeqz	$a0, $a0, $a2
	or	$t4, $a0, $t0
	ori	$t3, $zero, 256
	blez	$t4, .LBB8_181
# %bb.178:                              # %.lr.ph1008.us.preheader
                                        #   in Loop: Header=BB8_175 Depth=2
	move	$t2, $zero
	slli.d	$t4, $t4, 2
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_179:                              # %.lr.ph1008.us
                                        #   Parent Loop BB8_171 Depth=1
                                        #     Parent Loop BB8_175 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $fp, 0
	beq	$a0, $t5, .LBB8_182
# %bb.180:                              #   in Loop: Header=BB8_179 Depth=3
	addi.d	$t2, $t2, 4
	addi.d	$fp, $fp, 8
	bne	$t4, $t2, .LBB8_179
.LBB8_181:                              #   in Loop: Header=BB8_175 Depth=2
	move	$t1, $zero
	b	.LBB8_183
.LBB8_182:                              #   in Loop: Header=BB8_175 Depth=2
	addi.d	$a0, $sp, 96
	masknez	$a0, $a0, $t1
	addi.d	$a2, $sp, 888
	maskeqz	$a2, $a2, $t1
	or	$a0, $a2, $a0
	ldx.w	$t3, $a0, $t2
	addi.d	$a0, $sp, 228
	masknez	$a0, $a0, $t1
	addi.d	$a2, $sp, 1020
	maskeqz	$a2, $a2, $t1
	or	$a0, $a2, $a0
	ldx.w	$t1, $a0, $t2
.LBB8_183:                              # %.loopexit915.us
                                        #   in Loop: Header=BB8_175 Depth=2
	ldptr.d	$t2, $a1, 6544
	ld.w	$a0, $s4, 4
	ld.w	$a2, $t2, 4
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $t0, 16
	ldptr.d	$fp, $a1, 6536
	sub.w	$a1, $a0, $a2
	ld.d	$a2, $t5, 0
	srai.d	$t4, $a1, 31
	ld.w	$t0, $fp, 4
	xor	$a1, $a1, $t4
	ldx.d	$a2, $a2, $s5
	sub.w	$s7, $a1, $t4
	sub.w	$a0, $a0, $t0
	srai.d	$t0, $a0, 31
	ldx.d	$a1, $a2, $ra
	xor	$a0, $a0, $t0
	sub.w	$a0, $a0, $t0
	slli.d	$t4, $s3, 3
	bgeu	$a0, $s7, .LBB8_185
# %bb.184:                              #   in Loop: Header=BB8_175 Depth=2
	ldptr.d	$a0, $fp, 6512
	b	.LBB8_186
.LBB8_185:                              #   in Loop: Header=BB8_175 Depth=2
	ldptr.d	$a0, $t2, 6512
.LBB8_186:                              # %.sink.split
                                        #   in Loop: Header=BB8_175 Depth=2
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t4
	ldx.d	$a0, $a0, $ra
	ld.h	$a2, $a0, 0
	mul.d	$a2, $t3, $a2
	addi.w	$a2, $a2, 128
	srai.d	$a2, $a2, 8
	slt	$t0, $s0, $a2
	maskeqz	$a2, $a2, $t0
	masknez	$t0, $s0, $t0
	or	$a2, $a2, $t0
	slt	$t0, $a2, $s1
	maskeqz	$a2, $a2, $t0
	masknez	$t0, $s1, $t0
	or	$a2, $a2, $t0
	st.h	$a2, $a1, 0
	ld.h	$a2, $a0, 2
	mul.d	$a2, $t3, $a2
	addi.w	$a2, $a2, 128
	srai.d	$a2, $a2, 8
	slt	$t0, $s0, $a2
	maskeqz	$a2, $a2, $t0
	masknez	$t0, $s0, $t0
	or	$a2, $a2, $t0
	slt	$t0, $a2, $s1
	maskeqz	$a2, $a2, $t0
	masknez	$t0, $s1, $t0
	or	$a2, $a2, $t0
	st.h	$a2, $a1, 2
	ld.h	$a1, $a0, 0
	mul.d	$a1, $t1, $a1
	addi.w	$a1, $a1, 128
	ld.d	$a2, $t5, 8
	srai.d	$a1, $a1, 8
	slt	$t0, $s0, $a1
	maskeqz	$a1, $a1, $t0
	ldx.d	$a2, $a2, $s5
	masknez	$t0, $s0, $t0
	or	$t0, $a1, $t0
	slt	$t2, $t0, $s1
	ldx.d	$a1, $a2, $ra
	maskeqz	$a2, $t0, $t2
	masknez	$t0, $s1, $t2
	or	$a2, $a2, $t0
	st.h	$a2, $a1, 0
	ld.h	$a0, $a0, 2
	mul.d	$a0, $t1, $a0
	addi.w	$a0, $a0, 128
	srai.d	$a0, $a0, 8
	slt	$a2, $s0, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s0, $a2
	or	$a0, $a0, $a2
	slt	$a2, $a0, $s1
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s1, $a2
	or	$t1, $a0, $a2
	b	.LBB8_173
.LBB8_187:                              # %.loopexit
	ld.d	$s8, $sp, 1688                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1696                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1704                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1712                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1720                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1728                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1736                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1744                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1752                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1760                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1768                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1776
	ret
.LBB8_188:
	ldptr.d	$a0, $a3, 6544
	ldptr.d	$a6, $a3, 6536
.LBB8_189:
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$t1, $a0
	move	$a3, $a0
	b	.LBB8_62
.Lfunc_end8:
	.size	EPZSSliceInit, .Lfunc_end8-EPZSSliceInit
                                        # -- End function
	.globl	EPZSPelBlockMotionSearch        # -- Begin function EPZSPelBlockMotionSearch
	.p2align	5
	.type	EPZSPelBlockMotionSearch,@function
EPZSPelBlockMotionSearch:               # @EPZSPelBlockMotionSearch
# %bb.0:
	addi.d	$sp, $sp, -720
	st.d	$ra, $sp, 712                   # 8-byte Folded Spill
	st.d	$fp, $sp, 704                   # 8-byte Folded Spill
	st.d	$s0, $sp, 696                   # 8-byte Folded Spill
	st.d	$s1, $sp, 688                   # 8-byte Folded Spill
	st.d	$s2, $sp, 680                   # 8-byte Folded Spill
	st.d	$s3, $sp, 672                   # 8-byte Folded Spill
	st.d	$s4, $sp, 664                   # 8-byte Folded Spill
	st.d	$s5, $sp, 656                   # 8-byte Folded Spill
	st.d	$s6, $sp, 648                   # 8-byte Folded Spill
	st.d	$s7, $sp, 640                   # 8-byte Folded Spill
	st.d	$s8, $sp, 632                   # 8-byte Folded Spill
	ld.d	$t7, $sp, 736
	ld.d	$t8, $sp, 720
	ld.d	$t0, $sp, 728
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	add.w	$t4, $a3, $a2
	slli.d	$t1, $t4, 3
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	st.d	$t1, $sp, 320                   # 8-byte Folded Spill
	ldx.d	$a0, $a0, $t1
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ldx.d	$s4, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$s0, $a0, 0
	alsl.d	$t5, $t8, $s0, 3
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$s1, $a0, 0
	ld.w	$a0, $s1, 196
	pcalau12i	$a1, %pc_hi20(mv_rescale)
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.wu	$s6, $a1, %pc_lo12(mv_rescale)
	sub.d	$a0, $a7, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	ld.h	$t1, $t7, 0
	sub.d	$a0, $a0, $s6
	ld.h	$t2, $t7, 2
	move	$s2, $a6
	sll.w	$a1, $a6, $a0
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	add.w	$fp, $a1, $t1
	sll.w	$a0, $a7, $a0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(medthres)
	addi.d	$a1, $a0, %pc_lo12(medthres)
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$t3, $a0, 192
	slli.d	$t6, $t8, 2
	st.d	$t1, $sp, 272                   # 8-byte Folded Spill
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	beqz	$t3, .LBB9_2
.LBB9_1:
	ldptr.w	$a0, $s0, 2936
	sltu	$a0, $zero, $a0
	b	.LBB9_5
.LBB9_2:
	ld.w	$a0, $a0, 196
	beqz	$a0, .LBB9_4
# %bb.3:
	ld.w	$a0, $s1, 20
	ori	$t3, $zero, 1
	beq	$a0, $t3, .LBB9_1
.LBB9_4:
	move	$a0, $zero
.LBB9_5:
	ld.w	$a2, $s1, 192
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a2, $t5, 76
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	ld.w	$s7, $t5, 72
	st.d	$t2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	add.w	$a2, $a4, $t2
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(EPZSDistortion)
	ld.d	$a4, $a4, %pc_lo12(EPZSDistortion)
	ld.h	$a6, $t0, 0
	ld.h	$ra, $t0, 2
	st.d	$t6, $sp, 112                   # 8-byte Folded Spill
	ldx.w	$a2, $a1, $t6
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a2
	addi.d	$s5, $t8, -1
	addi.w	$t0, $s5, 0
	slli.d	$a2, $t0, 3
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ldx.d	$a4, $a4, $a2
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(searchPattern)
	pcalau12i	$t1, %pc_hi20(EPZSBlkCount)
	ld.h	$a4, $t1, %pc_lo12(EPZSBlkCount)
	ld.d	$s8, $s3, %pc_lo12(searchPattern)
	ldptr.d	$t0, $s4, 6448
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	slli.w	$a2, $a2, 16
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a4, $a4, 1
	st.d	$t1, $sp, 328                   # 8-byte Folded Spill
	st.h	$a4, $t1, %pc_lo12(EPZSBlkCount)
	pcalau12i	$t1, %got_pc_hi20(ref_pic_sub)
	ld.d	$t3, $t1, %got_pc_lo12(ref_pic_sub)
	lu12i.w	$s1, 1
	ori	$t1, $s1, 2296
	ldx.w	$t2, $s4, $t1
	st.d	$t0, $t3, 0
	pcalau12i	$t0, %got_pc_hi20(img_width)
	ld.d	$t4, $t0, %got_pc_lo12(img_width)
	ori	$t0, $s1, 2300
	ldx.w	$t1, $s4, $t0
	st.d	$t4, $sp, 256                   # 8-byte Folded Spill
	st.h	$t2, $t4, 0
	pcalau12i	$t0, %got_pc_hi20(img_height)
	ld.d	$t0, $t0, %got_pc_lo12(img_height)
	st.d	$t0, $sp, 240                   # 8-byte Folded Spill
	st.h	$t1, $t0, 0
	ori	$t0, $s1, 2312
	ldx.w	$t0, $s4, $t0
	ori	$t4, $s1, 2316
	ldx.w	$t4, $s4, $t4
	pcalau12i	$t5, %pc_hi20(width_pad)
	st.w	$t0, $t5, %pc_lo12(width_pad)
	pcalau12i	$t0, %pc_hi20(height_pad)
	st.w	$t4, $t0, %pc_lo12(height_pad)
	beqz	$a0, .LBB9_7
# %bb.6:
	pcalau12i	$t0, %pc_hi20(wp_weight)
	ld.d	$t0, $t0, %pc_lo12(wp_weight)
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ldx.d	$t0, $t0, $a3
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$t0, $t0, $a2
	ld.w	$t0, $t0, 0
	pcalau12i	$t4, %got_pc_hi20(weight_luma)
	ld.d	$t4, $t4, %got_pc_lo12(weight_luma)
	pcalau12i	$t5, %pc_hi20(wp_offset)
	ld.d	$t5, $t5, %pc_lo12(wp_offset)
	ldx.d	$t5, $t5, $a3
	ldx.d	$t5, $t5, $a2
	st.w	$t0, $t4, 0
	ld.w	$t0, $t5, 0
	pcalau12i	$t4, %got_pc_hi20(offset_luma)
	ld.d	$t4, $t4, %got_pc_lo12(offset_luma)
	st.w	$t0, $t4, 0
.LBB9_7:
	sll.w	$t0, $fp, $s6
	bstrpick.d	$t4, $s2, 31, 2
	pcalau12i	$t5, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t5, $t5, %got_pc_lo12(ChromaMEEnable)
	ld.w	$t5, $t5, 0
	beqz	$t5, .LBB9_10
# %bb.8:
	ldptr.d	$t5, $s4, 6464
	ld.d	$t6, $t5, 0
	st.d	$t6, $t3, 8
	ld.d	$t5, $t5, 8
	st.d	$t5, $t3, 16
	ori	$t3, $s1, 2320
	ldx.w	$t3, $s4, $t3
	ori	$t5, $s1, 2324
	ldx.w	$a5, $s4, $t5
	pcalau12i	$t5, %pc_hi20(width_pad_cr)
	st.w	$t3, $t5, %pc_lo12(width_pad_cr)
	pcalau12i	$t3, %pc_hi20(height_pad_cr)
	st.w	$a5, $t3, %pc_lo12(height_pad_cr)
	beqz	$a0, .LBB9_10
# %bb.9:
	pcalau12i	$a5, %pc_hi20(wp_weight)
	ld.d	$a5, $a5, %pc_lo12(wp_weight)
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a3
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a2
	ld.d	$a5, $a5, 4
	pcalau12i	$t3, %got_pc_hi20(weight_cr)
	ld.d	$t3, $t3, %got_pc_lo12(weight_cr)
	pcalau12i	$t5, %pc_hi20(wp_offset)
	ld.d	$t5, $t5, %pc_lo12(wp_offset)
	st.d	$a5, $t3, 0
	ldx.d	$a5, $t5, $a3
	ldx.d	$a5, $a5, $a2
	ld.w	$t3, $a5, 4
	pcalau12i	$t5, %got_pc_hi20(offset_cr)
	ld.d	$t5, $t5, %got_pc_lo12(offset_cr)
	ld.w	$a5, $a5, 8
	st.w	$t3, $t5, 0
	st.w	$a5, $t5, 4
.LBB9_10:
	ldptr.w	$a5, $s0, 4104
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	sll.w	$t5, $a2, $s6
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	srai.d	$t6, $a2, 18
	ext.w.h	$t3, $t4
	beqz	$a5, .LBB9_12
# %bb.11:
	pcalau12i	$a3, %pc_hi20(EPZSMotion)
	ld.d	$a3, $a3, %pc_lo12(EPZSMotion)
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a2
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a2
	slli.d	$a5, $t6, 3
	ldx.d	$a3, $a3, $a5
	slli.d	$a5, $t3, 3
	ldx.d	$a3, $a3, $a5
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	b	.LBB9_13
.LBB9_12:
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
.LBB9_13:
	move	$s4, $s7
	ld.d	$s0, $sp, 744
	ld.d	$a3, $sp, 760
	st.d	$a3, $sp, 424                   # 8-byte Folded Spill
	ext.w.h	$a2, $s7
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ext.w.h	$a3, $a3
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	alsl.w	$a3, $s2, $a6, 2
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	alsl.w	$a3, $a7, $ra, 2
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	st.d	$t7, $sp, 352                   # 8-byte Folded Spill
	st.d	$t3, $sp, 192                   # 8-byte Folded Spill
	st.d	$t6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	bltz	$t0, .LBB9_17
# %bb.14:
	ext.w.h	$a5, $t2
	sub.d	$a5, $a5, $a2
	bge	$t0, $a5, .LBB9_17
# %bb.15:
	bltz	$t5, .LBB9_17
# %bb.16:
	ext.w.h	$a3, $t1
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a5
	slt	$a3, $t5, $a3
	xori	$a3, $a3, 1
.LBB9_17:
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	bstrpick.d	$s3, $a5, 15, 0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	bstrpick.d	$s5, $a5, 15, 0
	st.d	$t8, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$a1, $t8, $a1, 2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ref_access_method)
	ld.d	$a6, $a1, %got_pc_lo12(ref_access_method)
	pcalau12i	$a1, %pc_hi20(EPZSMap)
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(EPZSMap)
	slli.d	$a5, $s0, 3
	ldx.d	$a1, $a1, $a5
	st.d	$a6, $sp, 344                   # 8-byte Folded Spill
	st.w	$a3, $a6, 0
	slli.d	$a3, $s0, 1
	stx.h	$a4, $a1, $a3
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$a1, $a1, %got_pc_lo12(mvbits)
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	sub.w	$a3, $t0, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	sub.w	$a4, $t5, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a1, $a1, $a4
	add.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	mul.w	$a1, $a1, $a3
	srli.d	$s6, $a1, 16
	ori	$a1, $zero, 24
	maskeqz	$a1, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	ld.d	$a0, $a0, %got_pc_lo12(computeUniPred)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ldx.d	$a6, $a0, $a1
	addi.w	$a4, $t0, 80
	addi.w	$a5, $t5, 80
	lu12i.w	$a0, 524287
	ori	$a3, $a0, 4095
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	add.w	$t3, $s6, $a0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	blez	$a0, .LBB9_19
# %bb.18:
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB9_33
.LBB9_19:
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	bge	$s0, $fp, .LBB9_24
# %bb.20:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.h	$a1, $a1, 0
	ori	$a2, $s1, 24
	ldx.w	$a0, $a0, $a2
	sub.d	$a1, $a1, $a4
	slli.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 31, 1
	slli.d	$a2, $a2, 1
	sll.w	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	bge	$fp, $a1, .LBB9_24
# %bb.21:
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	bge	$s0, $a1, .LBB9_24
# %bb.22:
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.h	$a1, $a1, 0
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	sll.w	$a0, $a1, $a0
	sub.w	$a0, $a0, $s0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB9_24
# %bb.23:
	move	$a0, $zero
	b	.LBB9_25
.LBB9_24:
	ori	$a0, $zero, 1
.LBB9_25:
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	bge	$a2, $t3, .LBB9_32
# %bb.26:
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a1, $s2, $a0
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $s5, 0
	slli.w	$a2, $s4, 16
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ext.w.h	$s2, $a1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ext.w.h	$s7, $a1
	ld.w	$s1, $a0, 160
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.h	$a1, $a1, 0
	ld.w	$a2, $a0, 164
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.h	$a2, $a2, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 12
	srai.d	$a1, $a1, 4
	addi.w	$s3, $a1, -1
	addi.d	$fp, $s2, -1
	addi.d	$a3, $sp, 608
	move	$a1, $fp
	move	$a2, $s7
	move	$s4, $a4
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 12
	addi.d	$s6, $s7, -1
	addi.d	$a3, $sp, 584
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 12
	add.d	$s4, $s2, $s4
	addi.d	$a3, $sp, 560
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 12
	addi.d	$a3, $sp, 536
	move	$a1, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	blez	$s7, .LBB9_37
# %bb.27:
	move	$a2, $s4
	ori	$a0, $zero, 7
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	blt	$a0, $s2, .LBB9_38
# %bb.28:
	lu12i.w	$a0, 128
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB9_58
# %bb.29:
	slt	$a0, $s1, $s3
	lu12i.w	$a1, 256
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	xor	$a2, $a7, $a1
	sltu	$a2, $zero, $a2
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	bne	$a7, $a1, .LBB9_31
# %bb.30:
	st.w	$zero, $sp, 560
.LBB9_31:
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $sp, 608
	srai.d	$a7, $a7, 18
	move	$a0, $t0
	bnez	$a1, .LBB9_43
	b	.LBB9_44
.LBB9_32:
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	slli.d	$a0, $a3, 2
	bnez	$s6, .LBB9_183
	b	.LBB9_184
.LBB9_33:
	slli.d	$a0, $a3, 2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB9_19
# %bb.34:
	bge	$a0, $t3, .LBB9_19
# %bb.35:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4104
	beqz	$a0, .LBB9_188
# %bb.36:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.h	$s3, $a0, 0
	st.h	$s5, $a0, 2
	b	.LBB9_188
.LBB9_37:
	slt	$a0, $s1, $s3
	addi.d	$a1, $s4, -16
	sltu	$a1, $zero, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	b	.LBB9_41
.LBB9_38:
	slt	$a0, $s1, $s3
	move	$a4, $a2
	addi.d	$a1, $a2, -16
	sltu	$a1, $zero, $a1
	ori	$a2, $zero, 16
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	bne	$a4, $a2, .LBB9_40
# %bb.39:
	st.w	$zero, $sp, 560
.LBB9_40:
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
.LBB9_41:
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
.LBB9_42:
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a1, $sp, 608
	srai.d	$a7, $a7, 18
	move	$a0, $t0
	beqz	$a1, .LBB9_44
.LBB9_43:
	sub.d	$a0, $a3, $a7
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s7, $a0
.LBB9_44:
	ld.w	$a2, $sp, 584
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	slli.w	$a1, $a1, 16
	beqz	$a2, .LBB9_46
# %bb.45:
	slli.d	$a2, $a3, 2
	ldx.w	$t0, $s7, $a2
.LBB9_46:
	ld.w	$a2, $sp, 560
	beqz	$a2, .LBB9_48
# %bb.47:
	move	$s5, $a7
	add.d	$a2, $a7, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s7, $a2
	slt	$a3, $t0, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $t0, $a3
	or	$t0, $a3, $a2
	b	.LBB9_49
.LBB9_48:
	move	$s5, $a7
.LBB9_49:
	srai.d	$a1, $a1, 18
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	slt	$a1, $a0, $t0
	masknez	$a2, $t0, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	pcalau12i	$a1, %pc_hi20(minthres)
	addi.d	$a1, $a1, %pc_lo12(minthres)
	ldx.w	$a1, $a1, $a6
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(maxthres)
	addi.d	$a1, $a1, %pc_lo12(maxthres)
	ldx.w	$a1, $a1, $a6
	slt	$a2, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	alsl.d	$a0, $a0, $a0, 3
	alsl.w	$fp, $a3, $a0, 1
	slli.d	$a0, $s3, 3
	vld	$vr0, $sp, 608
	ldx.d	$a7, $a5, $a0
	ldx.d	$a4, $a4, $a0
	pcalau12i	$s1, %pc_hi20(predictor)
	vst	$vr0, $sp, 512
	vld	$vr0, $sp, 584
	ld.d	$a0, $s1, %pc_lo12(predictor)
	ld.d	$a1, $sp, 624
	ld.d	$a2, $sp, 600
	vst	$vr0, $sp, 488
	vld	$vr0, $sp, 560
	st.d	$a1, $sp, 528
	st.d	$a2, $sp, 504
	ld.d	$a1, $sp, 576
	vst	$vr0, $sp, 464
	ld.d	$a2, $sp, 552
	vld	$vr0, $sp, 536
	ld.d	$a0, $a0, 8
	st.d	$a1, $sp, 480
	st.d	$a2, $sp, 456
	vst	$vr0, $sp, 440
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 488
	addi.d	$a2, $sp, 464
	addi.d	$a3, $sp, 440
	st.d	$a4, $sp, 0
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s6
	pcaddu18i	$ra, %call36(EPZSSpatialPredictors)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ldptr.w	$a1, $a2, 4104
	beqz	$a1, .LBB9_52
# %bb.50:
	pcalau12i	$a1, %pc_hi20(EPZSMotion)
	ld.d	$a1, $a1, %pc_lo12(EPZSMotion)
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a3
	ld.d	$a3, $s1, %pc_lo12(predictor)
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a4
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.h	$a4, $a4, 0
	ld.d	$a3, $a3, 8
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a5
	srai.d	$a4, $a4, 2
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	blez	$t2, .LBB9_53
# %bb.51:
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a5, $t3, 3
	ldx.d	$a5, $a1, $a5
	sub.d	$a6, $t2, $s5
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a5, $a6
	ld.h	$a5, $a6, 0
	ld.h	$a6, $a6, 2
	b	.LBB9_54
.LBB9_52:
	ori	$a1, $zero, 5
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	ldptr.w	$a3, $a2, 4100
	srai.d	$a4, $fp, 3
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	bnez	$a3, .LBB9_64
	b	.LBB9_87
.LBB9_53:
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
.LBB9_54:                               # %.critedge.i
	st.w	$a5, $a3, 80
	slt	$a7, $zero, $t3
	ori	$t0, $zero, 4
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $t3, $a7
	or	$a7, $a7, $t0
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $t0
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a1, $a7
	st.w	$a6, $a3, 84
	or	$a5, $a6, $a5
	slli.d	$a6, $t2, 3
	ldx.d	$a6, $a7, $a6
	sltui	$a5, $a5, 1
	ori	$a7, $zero, 6
	sub.d	$a7, $a7, $a5
	ld.h	$t0, $a6, 0
	ld.h	$a6, $a6, 2
	alsl.d	$t1, $a7, $a3, 4
	slli.d	$a7, $a7, 4
	stx.w	$t0, $a3, $a7
	st.w	$a6, $t1, 4
	or	$a6, $a6, $t0
	sltu	$a6, $zero, $a6
	sub.d	$a5, $a6, $a5
	addi.d	$a5, $a5, 6
	add.d	$a6, $s5, $t2
	alsl.d	$a3, $a5, $a3, 4
	bge	$a6, $a4, .LBB9_57
# %bb.55:
	slli.d	$a4, $a6, 3
	blez	$t3, .LBB9_61
# %bb.56:
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a6, $t3, $a6
	b	.LBB9_62
.LBB9_57:                               # %.critedge81.i
	move	$a1, $zero
	move	$a4, $zero
	st.w	$zero, $a3, 0
	b	.LBB9_63
.LBB9_58:
	slt	$a0, $s1, $s3
	move	$a4, $a2
	addi.d	$a1, $a2, -8
	sltu	$a1, $zero, $a1
	ori	$a2, $zero, 8
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	bne	$a4, $a2, .LBB9_60
# %bb.59:
	st.w	$zero, $sp, 560
.LBB9_60:
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	b	.LBB9_42
.LBB9_61:
	ori	$a6, $zero, 4
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a6, $a6, $a7
.LBB9_62:                               # %EPZSSpatialMemPredictors.exit
	slli.d	$a6, $a6, 3
	ldx.d	$a1, $a1, $a6
	ldx.d	$a4, $a1, $a4
	ld.h	$a1, $a4, 0
	ld.h	$a4, $a4, 2
	st.w	$a1, $a3, 0
.LBB9_63:                               # %EPZSSpatialMemPredictors.exit
	st.w	$a4, $a3, 4
	or	$a1, $a4, $a1
	sltu	$a1, $zero, $a1
	add.d	$a1, $a5, $a1
	ldptr.w	$a3, $a2, 4100
	srai.d	$a4, $fp, 3
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	beqz	$a3, .LBB9_87
.LBB9_64:
	move	$s2, $s1
	ld.d	$a3, $s1, %pc_lo12(predictor)
	ld.w	$t6, $sp, 608
	ld.w	$t2, $sp, 584
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	slli.w	$a4, $a4, 14
	srai.d	$t0, $a4, 16
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 12
	pcalau12i	$a5, %pc_hi20(mv_scale)
	addi.d	$a5, $a5, %pc_lo12(mv_scale)
	pcalau12i	$a6, %pc_hi20(EPZSCo_located)
	ld.d	$a6, $a6, %pc_lo12(EPZSCo_located)
	addi.d	$a7, $s4, -2
	sltui	$a7, $a7, 1
	ori	$t1, $zero, 32
	masknez	$t1, $t1, $a7
	ori	$t3, $zero, 24
	maskeqz	$a7, $t3, $a7
	or	$a7, $a7, $t1
	sltui	$t1, $s4, 1
	masknez	$a7, $a7, $t1
	ori	$t3, $zero, 16
	maskeqz	$t1, $t3, $t1
	or	$a7, $t1, $a7
	ldx.d	$a6, $a6, $a7
	slli.d	$a7, $s3, 3
	ldx.d	$t1, $a6, $a7
	slli.d	$a6, $t0, 3
	ldx.d	$t4, $t1, $a6
	add.d	$a5, $a5, $a4
	slli.d	$a6, $s6, 7
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	slli.d	$a7, $a4, 3
	ldx.d	$t3, $t4, $a7
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	ld.w	$t5, $a4, %pc_lo12(mv_rescale)
	ld.d	$a4, $a3, 8
	ldx.w	$a3, $a5, $a6
	ld.h	$a5, $t3, 0
	addi.d	$t5, $t5, 8
	alsl.d	$t7, $a1, $a4, 4
	slli.d	$t8, $a1, 4
	mul.d	$fp, $a3, $a5
	bstrpick.d	$a5, $t5, 15, 0
	addi.d	$a6, $a5, -1
	ori	$s1, $zero, 1
	sll.w	$a6, $s1, $a6
	ld.h	$t3, $t3, 2
	add.d	$fp, $fp, $a6
	sra.w	$fp, $fp, $t5
	stx.w	$fp, $a4, $t8
	mul.d	$t3, $a3, $t3
	add.d	$t3, $t3, $a6
	sra.w	$t3, $t3, $t5
	st.w	$t3, $t7, 4
	or	$t3, $t3, $fp
	sltu	$t3, $zero, $t3
	add.d	$a1, $a1, $t3
	blt	$s1, $s6, .LBB9_72
# %bb.65:
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	bge	$t5, $t3, .LBB9_71
# %bb.66:
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	srai.d	$t3, $t3, 4
	addi.w	$t3, $t3, -1
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
	add.d	$t5, $t7, $t5
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	slt	$t3, $t7, $t3
	addi.d	$t5, $t5, -16
	xori	$t3, $t3, 1
	sltui	$t5, $t5, 1
	and	$t3, $t5, $t3
	alsl.d	$t5, $t0, $t1, 3
	beqz	$t6, .LBB9_74
# %bb.67:
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	addi.d	$t6, $t6, -1
	slli.d	$t6, $t6, 3
	ldx.d	$t7, $t4, $t6
	ld.h	$t8, $t7, 0
	alsl.d	$fp, $a1, $a4, 4
	slli.d	$s1, $a1, 4
	mul.d	$t8, $a3, $t8
	ld.h	$t7, $t7, 2
	add.d	$t8, $t8, $a6
	sra.w	$t8, $t8, $a5
	stx.w	$t8, $a4, $s1
	mul.d	$t7, $a3, $t7
	add.d	$t7, $t7, $a6
	sra.w	$t7, $t7, $a5
	st.w	$t7, $fp, 4
	or	$t7, $t7, $t8
	sltu	$t7, $zero, $t7
	add.d	$a1, $a1, $t7
	beqz	$t2, .LBB9_69
# %bb.68:
	ld.d	$t7, $t5, -8
	ldx.d	$t7, $t7, $t6
	ld.h	$t8, $t7, 0
	alsl.d	$fp, $a1, $a4, 4
	slli.d	$s1, $a1, 4
	mul.d	$t8, $a3, $t8
	ld.h	$t7, $t7, 2
	add.d	$t8, $t8, $a6
	sra.w	$t8, $t8, $a5
	stx.w	$t8, $a4, $s1
	mul.d	$t7, $a3, $t7
	add.d	$t7, $t7, $a6
	sra.w	$t7, $t7, $a5
	st.w	$t7, $fp, 4
	or	$t7, $t7, $t8
	sltu	$t7, $zero, $t7
	add.d	$a1, $a1, $t7
.LBB9_69:
	move	$s1, $s2
	bnez	$t3, .LBB9_75
# %bb.70:
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	add.d	$t7, $t7, $t0
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $t1, $t7
	ldx.d	$t6, $t7, $t6
	ld.h	$t7, $t6, 0
	alsl.d	$t8, $a1, $a4, 4
	slli.d	$fp, $a1, 4
	mul.d	$t7, $a3, $t7
	ld.h	$t6, $t6, 2
	add.d	$t7, $t7, $a6
	sra.w	$t7, $t7, $a5
	stx.w	$t7, $a4, $fp
	mul.d	$t6, $a3, $t6
	add.d	$t6, $t6, $a6
	sra.w	$t6, $t6, $a5
	st.w	$t6, $t8, 4
	or	$t6, $t6, $t7
	sltu	$t6, $zero, $t6
	add.d	$a1, $a1, $t6
	b	.LBB9_75
.LBB9_71:
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	b	.LBB9_73
.LBB9_72:
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
.LBB9_73:                               # %EPZSTemporalPredictors.exit
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	move	$s1, $s2
	b	.LBB9_88
.LBB9_74:
	move	$s1, $s2
.LBB9_75:
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	beqz	$t2, .LBB9_77
# %bb.76:
	ld.d	$t6, $t5, -8
	ldx.d	$t6, $t6, $a7
	ld.h	$t7, $t6, 0
	alsl.d	$t8, $a1, $a4, 4
	slli.d	$fp, $a1, 4
	mul.d	$t7, $a3, $t7
	ld.h	$t6, $t6, 2
	add.d	$t7, $t7, $a6
	sra.w	$t7, $t7, $a5
	stx.w	$t7, $a4, $fp
	mul.d	$t6, $a3, $t6
	add.d	$t6, $t6, $a6
	sra.w	$t6, $t6, $a5
	st.w	$t6, $t8, 4
	or	$t6, $t6, $t7
	sltu	$t6, $zero, $t6
	add.d	$a1, $a1, $t6
.LBB9_77:
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	beqz	$s2, .LBB9_82
# %bb.78:
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	add.d	$t6, $s5, $t6
	slli.d	$t6, $t6, 3
	ldx.d	$t4, $t4, $t6
	ld.h	$t7, $t4, 0
	alsl.d	$t8, $a1, $a4, 4
	slli.d	$fp, $a1, 4
	mul.d	$t7, $a3, $t7
	ld.h	$t4, $t4, 2
	add.d	$t7, $t7, $a6
	sra.w	$t7, $t7, $a5
	stx.w	$t7, $a4, $fp
	mul.d	$t4, $a3, $t4
	add.d	$t4, $t4, $a6
	sra.w	$t4, $t4, $a5
	st.w	$t4, $t8, 4
	or	$t4, $t4, $t7
	sltu	$t4, $zero, $t4
	add.d	$a1, $a1, $t4
	beqz	$t2, .LBB9_80
# %bb.79:
	ld.d	$t2, $t5, -8
	ldx.d	$t2, $t2, $t6
	ld.h	$t4, $t2, 0
	alsl.d	$t5, $a1, $a4, 4
	slli.d	$t7, $a1, 4
	mul.d	$t4, $a3, $t4
	ld.h	$t2, $t2, 2
	add.d	$t4, $t4, $a6
	sra.w	$t4, $t4, $a5
	stx.w	$t4, $a4, $t7
	mul.d	$t2, $a3, $t2
	add.d	$t2, $t2, $a6
	sra.w	$t2, $t2, $a5
	st.w	$t2, $t5, 4
	or	$t2, $t2, $t4
	sltu	$t2, $zero, $t2
	add.d	$a1, $a1, $t2
.LBB9_80:
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	beqz	$t3, .LBB9_84
# %bb.81:
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	b	.LBB9_88
.LBB9_82:
	beqz	$t3, .LBB9_85
# %bb.83:
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	b	.LBB9_87
.LBB9_84:                               # %.thread.i
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	add.d	$t0, $t2, $t0
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t1, $t0
	ldx.d	$t1, $t0, $t6
	ld.h	$t2, $t1, 0
	alsl.d	$t3, $a1, $a4, 4
	slli.d	$t4, $a1, 4
	mul.d	$t2, $a3, $t2
	ld.h	$t1, $t1, 2
	add.d	$t2, $t2, $a6
	sra.w	$t2, $t2, $a5
	stx.w	$t2, $a4, $t4
	mul.d	$t1, $a3, $t1
	add.d	$t1, $t1, $a6
	sra.w	$t1, $t1, $a5
	st.w	$t1, $t3, 4
	or	$t1, $t1, $t2
	sltu	$t1, $zero, $t1
	add.d	$a1, $a1, $t1
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	b	.LBB9_86
.LBB9_85:                               # %._crit_edge.i
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	add.d	$t0, $t2, $t0
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t1, $t0
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
.LBB9_86:
	ldx.d	$a7, $t0, $a7
	ld.h	$t0, $a7, 0
	alsl.d	$t1, $a1, $a4, 4
	slli.d	$t2, $a1, 4
	mul.d	$t0, $a3, $t0
	ld.h	$a7, $a7, 2
	add.d	$t0, $t0, $a6
	sra.w	$t0, $t0, $a5
	stx.w	$t0, $a4, $t2
	mul.d	$a3, $a3, $a7
	add.d	$a3, $a3, $a6
	sra.w	$a3, $a3, $a5
	st.w	$a3, $t1, 4
	or	$a3, $a3, $t0
	sltu	$a3, $zero, $a3
	add.d	$a1, $a1, $a3
.LBB9_87:                               # %EPZSTemporalPredictors.exit
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
.LBB9_88:                               # %EPZSTemporalPredictors.exit
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	bge	$a3, $t3, .LBB9_103
# %bb.89:
	ori	$a3, $zero, 1
	blt	$a3, $s6, .LBB9_91
# %bb.90:
	ori	$a3, $zero, 5
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	blt	$a4, $a3, .LBB9_93
.LBB9_91:
	ori	$a3, $zero, 2
	blt	$a3, $s6, .LBB9_103
# %bb.92:
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.w	$a3, $a3, 24
	or	$a3, $a3, $s4
	beqz	$a3, .LBB9_103
.LBB9_93:
	ldptr.w	$a2, $a2, 4096
	ori	$a3, $zero, 1
	bge	$a3, $a2, .LBB9_97
.LBB9_94:                               # %.critedge565
	ori	$a2, $zero, 4
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	blt	$a2, $a3, .LBB9_99
# %bb.95:                               # %.critedge565
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB9_99
# %bb.96:
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 24
	or	$a0, $a0, $s4
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 2
	sub.d	$a0, $a2, $a0
	slt	$a0, $s6, $a0
	pcalau12i	$a2, %pc_hi20(window_predictor_extended)
	addi.d	$a2, $a2, %pc_lo12(window_predictor_extended)
	pcalau12i	$a3, %pc_hi20(window_predictor)
	addi.d	$a3, $a3, %pc_lo12(window_predictor)
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a3
	ld.d	$a0, $a0, 0
	b	.LBB9_100
.LBB9_97:
	beqz	$a2, .LBB9_103
# %bb.98:
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.w	$a2, $a2, 20
	bnez	$a2, .LBB9_103
	b	.LBB9_94
.LBB9_99:                               # %.thread
	pcalau12i	$a0, %pc_hi20(window_predictor)
	ld.d	$a0, $a0, %pc_lo12(window_predictor)
.LBB9_100:
	ld.w	$a2, $a0, 0
	blez	$a2, .LBB9_103
# %bb.101:                              # %.lr.ph.i
	ld.d	$a4, $s1, %pc_lo12(predictor)
	move	$a2, $zero
	ld.h	$a3, $ra, 0
	ld.d	$a5, $a4, 8
	ld.d	$a6, $a0, 8
	ld.h	$a4, $ra, 2
	bstrpick.d	$a7, $a1, 31, 0
	alsl.d	$a5, $a7, $a5, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	.p2align	4, , 16
.LBB9_102:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, -4
	add.d	$a7, $a7, $a3
	st.w	$a7, $a5, -4
	ld.w	$a7, $a6, 0
	add.d	$a7, $a7, $a4
	st.w	$a7, $a5, 0
	ld.w	$a7, $a0, 0
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a5, 16
	addi.w	$a1, $a1, 1
	addi.d	$a6, $a6, 16
	blt	$a2, $a7, .LBB9_102
.LBB9_103:                              # %.critedge
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.d	$t8, $s0, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	sub.d	$t2, $s0, $a0
	st.d	$t8, $sp, 304                   # 8-byte Folded Spill
	st.d	$t2, $sp, 312                   # 8-byte Folded Spill
	beqz	$s6, .LBB9_105
# %bb.104:                              # %.critedge
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	slt	$a0, $a0, $t3
	slt	$a2, $zero, $s6
	and	$a0, $a2, $a0
	beqz	$a0, .LBB9_111
.LBB9_105:
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	ld.w	$a0, $t0, 12
	beqz	$a0, .LBB9_111
# %bb.106:
	ldptr.d	$a0, $t0, 14384
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	slli.w	$a2, $a2, 16
	srai.d	$a2, $a2, 18
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a0, $a2
	ld.d	$a3, $s1, %pc_lo12(predictor)
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, %pc_lo12(mv_rescale)
	slli.d	$a4, $s3, 3
	ldx.d	$a7, $a2, $a4
	ld.d	$a2, $a3, 8
	addi.w	$a3, $a0, 0
	slli.d	$a4, $s6, 3
	ldx.d	$a4, $a7, $a4
	alsl.d	$a5, $a1, $a2, 4
	slli.d	$t1, $a1, 4
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a6, $s2, 1
	pcalau12i	$t2, %pc_hi20(blk_parent)
	addi.d	$t2, $t2, %pc_lo12(blk_parent)
	ldx.h	$a6, $t2, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$t2, $a4, $a6
	ld.h	$t3, $t2, 0
	sltui	$t4, $a3, 1
	addi.d	$a3, $a0, -1
	ori	$a6, $zero, 1
	sll.w	$a3, $a6, $a3
	add.d	$t5, $a3, $t3
	sra.w	$t5, $t5, $a0
	maskeqz	$t3, $t3, $t4
	ld.h	$t2, $t2, 2
	masknez	$t5, $t5, $t4
	or	$t3, $t3, $t5
	stx.w	$t3, $a2, $t1
	add.d	$t1, $a3, $t2
	sra.w	$t1, $t1, $a0
	maskeqz	$t2, $t2, $t4
	masknez	$t1, $t1, $t4
	or	$t1, $t2, $t1
	st.w	$t1, $a5, 4
	or	$a5, $t1, $t3
	sltu	$a5, $zero, $a5
	add.w	$a1, $a1, $a5
	sltui	$a5, $a0, 1
	beqz	$s6, .LBB9_110
# %bb.107:
	ori	$t1, $zero, 5
	blt	$s2, $t1, .LBB9_109
# %bb.108:
	ld.w	$t0, $t0, 24
	beqz	$t0, .LBB9_112
.LBB9_109:
	addi.w	$t0, $a0, 8
	alsl.d	$t1, $a1, $a2, 4
	slli.d	$t2, $a1, 4
	slli.d	$t3, $s3, 12
	pcalau12i	$t4, %pc_hi20(mv_scale)
	addi.d	$t4, $t4, %pc_lo12(mv_scale)
	addi.d	$t5, $s6, -1
	slli.d	$t6, $t5, 3
	ldx.d	$t6, $a7, $t6
	add.d	$t3, $t4, $t3
	slli.d	$t4, $s6, 7
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	slli.d	$t7, $s2, 3
	ldx.d	$t6, $t6, $t7
	add.d	$t8, $t3, $t4
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $t8, $t5
	ld.h	$t8, $t6, 0
	mul.d	$t8, $t5, $t8
	bstrpick.d	$fp, $t0, 15, 0
	addi.d	$fp, $fp, -1
	move	$s3, $s1
	ori	$s1, $zero, 1
	sll.w	$fp, $s1, $fp
	move	$s1, $s3
	ld.h	$t6, $t6, 2
	add.d	$t8, $t8, $fp
	sra.w	$t8, $t8, $t0
	stx.w	$t8, $a2, $t2
	mul.d	$t2, $t5, $t6
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a7, $a7, 0
	add.d	$t2, $t2, $fp
	sra.w	$t2, $t2, $t0
	st.w	$t2, $t1, 4
	ldx.d	$a7, $a7, $t7
	or	$t1, $t2, $t8
	ld.d	$t8, $sp, 304                   # 8-byte Folded Reload
	sltu	$t1, $zero, $t1
	ldx.w	$t2, $t3, $t4
	ld.h	$t3, $a7, 0
	add.w	$a1, $a1, $t1
	alsl.d	$t1, $a1, $a2, 4
	slli.d	$t4, $a1, 4
	mul.d	$t3, $t2, $t3
	ld.h	$a7, $a7, 2
	add.d	$t3, $t3, $fp
	sra.w	$t3, $t3, $t0
	stx.w	$t3, $a2, $t4
	mul.d	$a7, $t2, $a7
	add.d	$a7, $a7, $fp
	sra.w	$a7, $a7, $t0
	st.w	$a7, $t1, 4
	or	$a7, $a7, $t3
	sltu	$a7, $zero, $a7
	add.w	$a1, $a1, $a7
.LBB9_110:
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	bne	$s2, $a6, .LBB9_113
	b	.LBB9_114
.LBB9_111:
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB9_115
.LBB9_112:
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 168                   # 8-byte Folded Reload
.LBB9_113:                              # %.thread.i579
	ld.d	$a6, $a4, 8
	ld.h	$a7, $a6, 0
	alsl.d	$t0, $a1, $a2, 4
	slli.d	$t1, $a1, 4
	add.d	$t2, $a3, $a7
	sra.w	$t2, $t2, $a0
	maskeqz	$a7, $a7, $a5
	ld.h	$a6, $a6, 2
	masknez	$t2, $t2, $a5
	or	$a7, $a7, $t2
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	stx.w	$a7, $a2, $t1
	add.d	$t1, $a3, $a6
	sra.w	$t1, $t1, $a0
	maskeqz	$a6, $a6, $a5
	masknez	$t1, $t1, $a5
	or	$a6, $a6, $t1
	st.w	$a6, $t0, 4
	or	$a6, $a6, $a7
	sltu	$a6, $zero, $a6
	ori	$a7, $zero, 4
	add.w	$a1, $a1, $a6
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	beq	$a6, $a7, .LBB9_115
.LBB9_114:
	ld.d	$a4, $a4, 32
	ld.h	$a6, $a4, 0
	alsl.d	$a7, $a1, $a2, 4
	slli.d	$t0, $a1, 4
	add.d	$t1, $a3, $a6
	sra.w	$t1, $t1, $a0
	maskeqz	$a6, $a6, $a5
	ld.h	$a4, $a4, 2
	masknez	$t1, $t1, $a5
	or	$a6, $a6, $t1
	stx.w	$a6, $a2, $t0
	add.d	$a2, $a3, $a4
	sra.w	$a0, $a2, $a0
	maskeqz	$a2, $a4, $a5
	masknez	$a0, $a0, $a5
	or	$a0, $a2, $a0
	st.w	$a0, $a7, 4
	or	$a0, $a0, $a6
	sltu	$a0, $zero, $a0
	add.w	$a1, $a1, $a0
.LBB9_115:                              # %EPZSBlockTypePredictors.exit
	add.d	$a0, $t7, $t4
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	blez	$a1, .LBB9_135
# %bb.116:                              # %.lr.ph.preheader
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a2, $s1, %pc_lo12(predictor)
	move	$fp, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	slli.d	$s1, $a1, 4
	lu12i.w	$a0, 524287
	ori	$s4, $a0, 4095
	b	.LBB9_119
.LBB9_117:                              #   in Loop: Header=BB9_119 Depth=1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	move	$s4, $t3
	st.d	$s5, $sp, 264                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	move	$t3, $a0
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_118:                              #   in Loop: Header=BB9_119 Depth=1
	addi.d	$fp, $fp, 16
	beq	$s1, $fp, .LBB9_130
.LBB9_119:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, 8
	ldx.w	$s7, $a0, $fp
	ld.h	$a1, $ra, 0
	sub.w	$a1, $s7, $a1
	srai.d	$a3, $a1, 31
	xor	$a1, $a1, $a3
	sub.w	$a1, $a1, $a3
	blt	$s0, $a1, .LBB9_118
# %bb.120:                              #   in Loop: Header=BB9_119 Depth=1
	add.d	$a0, $a0, $fp
	ld.w	$s5, $a0, 4
	ld.h	$a0, $ra, 2
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s0, $a0, .LBB9_118
# %bb.121:                              #   in Loop: Header=BB9_119 Depth=1
	ld.d	$a0, $t6, %pc_lo12(EPZSMap)
	add.w	$a1, $s5, $t2
	slli.d	$a1, $a1, 3
	ldx.d	$a4, $a0, $a1
	add.w	$a5, $s7, $t8
	slli.d	$a0, $a5, 1
	ldx.hu	$a0, $a4, $a0
	ld.hu	$a3, $t5, %pc_lo12(EPZSBlkCount)
	beq	$a0, $a3, .LBB9_118
# %bb.122:                              #   in Loop: Header=BB9_119 Depth=1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.wu	$a1, $a0, %pc_lo12(mv_rescale)
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	add.d	$a0, $s7, $a0
	sll.w	$a0, $a0, $a1
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	add.d	$a6, $s5, $a6
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a7, $a7, 0
	sll.w	$a1, $a6, $a1
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	sub.w	$a6, $a0, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a7, $a6
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	sub.w	$t0, $a1, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$a7, $a7, $t0
	alsl.d	$a4, $a5, $a4, 1
	add.d	$a5, $a7, $a6
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	mul.w	$a5, $a5, $a6
	srai.d	$s3, $a5, 16
	st.h	$a3, $a4, 0
	bge	$s3, $s4, .LBB9_118
# %bb.123:                              #   in Loop: Header=BB9_119 Depth=1
	move	$s6, $t3
	ori	$a2, $zero, 1
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	bltz	$a0, .LBB9_127
# %bb.124:                              #   in Loop: Header=BB9_119 Depth=1
	ori	$a2, $zero, 1
	bltz	$a1, .LBB9_127
# %bb.125:                              #   in Loop: Header=BB9_119 Depth=1
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.h	$a2, $a2, 0
	sub.d	$a3, $a2, $a7
	ori	$a2, $zero, 1
	bge	$a0, $a3, .LBB9_127
# %bb.126:                              #   in Loop: Header=BB9_119 Depth=1
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.h	$a2, $a2, 0
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a3
	slt	$a2, $a1, $a2
	xori	$a2, $a2, 1
.LBB9_127:                              #   in Loop: Header=BB9_119 Depth=1
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a6, $a2, 0
	sub.w	$a3, $s4, $s3
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	move	$a2, $a7
	jirl	$ra, $a6, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(predictor)
	add.w	$a0, $a0, $s3
	move	$t3, $s6
	blt	$a0, $s6, .LBB9_117
# %bb.128:                              #   in Loop: Header=BB9_119 Depth=1
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	bge	$a0, $s4, .LBB9_118
# %bb.129:                              #   in Loop: Header=BB9_119 Depth=1
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	move	$s4, $a0
	ori	$s2, $zero, 1
	b	.LBB9_118
.LBB9_130:                              # %._crit_edge.loopexit
	sltu	$a1, $zero, $s2
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $t3, .LBB9_136
.LBB9_131:
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4088
	pcalau12i	$a1, %pc_hi20(square)
	addi.d	$a1, $a1, %pc_lo12(square)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(sdiamond)
	addi.d	$a1, $a1, %pc_lo12(sdiamond)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	beqz	$a0, .LBB9_144
# %bb.132:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	srli.d	$a1, $a0, 1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	add.w	$a0, $a0, $a1
	bge	$t3, $a0, .LBB9_137
# %bb.133:
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	or	$a0, $a1, $a3
	bnez	$a0, .LBB9_140
.LBB9_134:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB9_143
.LBB9_135:
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	move	$a1, $zero
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $t3, .LBB9_131
.LBB9_136:
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	slli.d	$a0, $a3, 2
	bnez	$s6, .LBB9_183
	b	.LBB9_184
.LBB9_137:
	ori	$a0, $zero, 5
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB9_142
# %bb.138:
	slt	$a0, $zero, $s6
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sltu	$a1, $zero, $a1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB9_142
# %bb.139:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(searchPattern)
	b	.LBB9_144
.LBB9_140:
	ld.h	$a0, $ra, 0
	sub.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 31
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(mv_rescale)
	xor	$a0, $a0, $a1
	sub.w	$a1, $a0, $a1
	ori	$a0, $zero, 2
	sub.d	$a2, $a0, $a2
	sll.w	$a0, $a0, $a2
	bgeu	$a1, $a0, .LBB9_142
# %bb.141:
	ld.h	$a1, $ra, 2
	sub.w	$a1, $a3, $a1
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$a1, $a1, $a2
	bltu	$a1, $a0, .LBB9_134
.LBB9_142:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
.LBB9_143:
	ld.d	$s8, $a0, 0
.LBB9_144:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s7, 2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(mv_rescale)
	ori	$s7, $zero, 1
	ori	$a0, $zero, 4
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	slt	$a0, $a0, $a2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	st.d	$s0, $sp, 288                   # 8-byte Folded Spill
	b	.LBB9_147
	.p2align	4, , 16
.LBB9_145:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
.LBB9_146:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$s8, $a0, 0
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
.LBB9_147:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_150 Depth 2
                                        #       Child Loop BB9_154 Depth 3
	move	$a2, $zero
	move	$s1, $zero
	move	$a3, $zero
	st.d	$zero, $sp, 320                 # 8-byte Folded Spill
	move	$a0, $s8
	b	.LBB9_150
	.p2align	4, , 16
.LBB9_148:                              #   in Loop: Header=BB9_150 Depth=2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	beqz	$a0, .LBB9_165
.LBB9_149:                              #   in Loop: Header=BB9_150 Depth=2
	ld.w	$a2, $s8, 16
	ld.d	$s8, $s8, 24
	ld.w	$a3, $s8, 20
	move	$s1, $zero
	st.d	$zero, $sp, 320                 # 8-byte Folded Spill
	move	$a0, $s8
	beq	$a2, $s7, .LBB9_168
.LBB9_150:                              #   Parent Loop BB9_147 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_154 Depth 3
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	addi.d	$s4, $a0, 1
	b	.LBB9_154
.LBB9_151:                              #   in Loop: Header=BB9_154 Depth=3
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s3, $sp, 264                   # 8-byte Folded Spill
	move	$t3, $a0
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
.LBB9_152:                              #   in Loop: Header=BB9_154 Depth=3
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_153:                              #   in Loop: Header=BB9_154 Depth=3
	ld.w	$a0, $s8, 0
	addi.w	$a2, $s1, 1
	slt	$a3, $a2, $a0
	masknez	$a0, $a0, $a3
	addi.w	$s4, $s4, -1
	sub.w	$s1, $a2, $a0
	bge	$s7, $s4, .LBB9_148
.LBB9_154:                              #   Parent Loop BB9_147 Depth=1
                                        #     Parent Loop BB9_150 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s8, 8
	slli.d	$a2, $s1, 4
	ldx.w	$a2, $a0, $a2
	ld.h	$a3, $ra, 0
	add.w	$s5, $a2, $fp
	sub.w	$a2, $s5, $a3
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$a2, $a2, $a3
	blt	$s0, $a2, .LBB9_153
# %bb.155:                              #   in Loop: Header=BB9_154 Depth=3
	alsl.d	$a0, $s1, $a0, 4
	ld.w	$a0, $a0, 4
	ld.h	$a2, $ra, 2
	add.w	$s3, $a0, $s2
	sub.w	$a0, $s3, $a2
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	bltu	$s0, $a0, .LBB9_153
# %bb.156:                              #   in Loop: Header=BB9_154 Depth=3
	ld.d	$a0, $t6, %pc_lo12(EPZSMap)
	add.w	$a2, $s3, $t2
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	add.w	$a5, $s5, $t8
	slli.d	$a0, $a5, 1
	ldx.hu	$a0, $a4, $a0
	ld.hu	$a3, $t5, %pc_lo12(EPZSBlkCount)
	beq	$a0, $a3, .LBB9_153
# %bb.157:                              #   in Loop: Header=BB9_154 Depth=3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	add.d	$a0, $s5, $a0
	sll.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	add.d	$a2, $s3, $a2
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	sll.w	$t1, $a2, $a1
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	sub.w	$a7, $a0, $a2
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a6, $a7
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	sub.w	$t0, $t1, $a2
	slli.d	$t0, $t0, 2
	ldx.w	$a6, $a6, $t0
	alsl.d	$a4, $a5, $a4, 1
	add.d	$a5, $a6, $a7
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	mul.w	$a5, $a5, $a6
	srai.d	$s6, $a5, 16
	st.h	$a3, $a4, 0
	bge	$s6, $t3, .LBB9_153
# %bb.158:                              #   in Loop: Header=BB9_154 Depth=3
	ori	$a1, $zero, 1
	bltz	$a0, .LBB9_162
# %bb.159:                              #   in Loop: Header=BB9_154 Depth=3
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	ld.h	$a3, $a3, 0
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	bge	$a0, $a3, .LBB9_163
# %bb.160:                              #   in Loop: Header=BB9_154 Depth=3
	bltz	$t1, .LBB9_163
# %bb.161:                              #   in Loop: Header=BB9_154 Depth=3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.h	$a1, $a1, 0
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	slt	$a1, $t1, $a1
	xori	$a1, $a1, 1
	b	.LBB9_163
.LBB9_162:                              #   in Loop: Header=BB9_154 Depth=3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
.LBB9_163:                              #   in Loop: Header=BB9_154 Depth=3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a6, $a1, 0
	sub.w	$a3, $t3, $s6
	addi.w	$a4, $a0, 80
	addi.w	$a5, $t1, 80
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	move	$s0, $t3
	jirl	$ra, $a6, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(mv_rescale)
	add.w	$a0, $a0, $s6
	blt	$a0, $s0, .LBB9_151
# %bb.164:                              #   in Loop: Header=BB9_154 Depth=3
	move	$t3, $s0
	b	.LBB9_152
	.p2align	4, , 16
.LBB9_165:                              #   in Loop: Header=BB9_150 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bne	$a0, $fp, .LBB9_167
# %bb.166:                              #   in Loop: Header=BB9_150 Depth=2
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	beq	$a0, $s2, .LBB9_149
.LBB9_167:                              #   in Loop: Header=BB9_150 Depth=2
	ld.d	$a0, $s8, 8
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 4
	ld.w	$s1, $a0, 8
	move	$a3, $zero
	addi.d	$a0, $a0, 12
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	bne	$a2, $s7, .LBB9_150
	.p2align	4, , 16
.LBB9_168:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	blez	$a0, .LBB9_173
# %bb.169:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 24
	bnez	$a0, .LBB9_173
# %bb.170:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.w	$a2, $a0, 2
	blt	$a2, $t3, .LBB9_189
# %bb.171:                              #   in Loop: Header=BB9_147 Depth=1
	alsl.w	$a2, $a0, $a0, 1
	bge	$a2, $t3, .LBB9_173
# %bb.172:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	bge	$a2, $a0, .LBB9_189
	.p2align	4, , 16
.LBB9_173:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB9_182
# %bb.174:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 20
	sltu	$a0, $zero, $a0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	and	$a0, $a2, $a0
	bnez	$a0, .LBB9_182
# %bb.175:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $t3, .LBB9_182
# %bb.176:                              #   in Loop: Header=BB9_147 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4092
	blez	$a0, .LBB9_182
# %bb.177:                              #   in Loop: Header=BB9_147 Depth=1
	ld.h	$a2, $ra, 0
	or	$a0, $s3, $s5
	bnez	$a0, .LBB9_180
.LBB9_178:                              # %._crit_edge665
                                        #   in Loop: Header=BB9_147 Depth=1
	sub.w	$a0, $s3, $a2
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	ori	$a3, $zero, 2
	sub.d	$a2, $a3, $a1
	sll.w	$a2, $a3, $a2
	bgeu	$a0, $a2, .LBB9_145
# %bb.179:                              #   in Loop: Header=BB9_147 Depth=1
	ld.h	$a0, $ra, 2
	sub.w	$a0, $s5, $a0
	srai.d	$a3, $a0, 31
	xor	$a0, $a0, $a3
	sub.w	$a3, $a0, $a3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB9_145
	b	.LBB9_146
	.p2align	4, , 16
.LBB9_180:                              #   in Loop: Header=BB9_147 Depth=1
	pcalau12i	$a0, %pc_hi20(searchPatternD)
	addi.d	$a0, $a0, %pc_lo12(searchPatternD)
	bne	$s3, $a2, .LBB9_146
# %bb.181:                              #   in Loop: Header=BB9_147 Depth=1
	ld.h	$a3, $ra, 2
	bne	$s5, $a3, .LBB9_146
	b	.LBB9_178
.LBB9_182:
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	slli.d	$a0, $a3, 2
	beqz	$s6, .LBB9_184
.LBB9_183:
	ldx.w	$a1, $s7, $a0
	bge	$t3, $a1, .LBB9_185
.LBB9_184:                              # %._crit_edge664
	stx.w	$t3, $s7, $a0
.LBB9_185:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4104
	beqz	$a0, .LBB9_187
# %bb.186:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.h	$s3, $a0, 0
	st.h	$s5, $a0, 2
.LBB9_187:
	st.h	$s3, $ra, 0
	st.h	$s5, $ra, 2
.LBB9_188:
	move	$a0, $t3
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
	ret
.LBB9_189:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4104
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.h	$a1, $ra, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $ra, 2
	beqz	$a0, .LBB9_188
# %bb.190:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.h	$a1, $a0, 0
	st.h	$a2, $a0, 2
	b	.LBB9_188
.Lfunc_end9:
	.size	EPZSPelBlockMotionSearch, .Lfunc_end9-EPZSPelBlockMotionSearch
                                        # -- End function
	.p2align	5                               # -- Begin function EPZSSpatialPredictors
	.type	EPZSSpatialPredictors,@function
EPZSSpatialPredictors:                  # @EPZSSpatialPredictors
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$t0, $sp, 40
	ld.d	$t1, $sp, 32
	add.w	$a4, $a5, $a4
	slli.d	$a4, $a4, 12
	pcalau12i	$t2, %pc_hi20(mv_scale)
	addi.d	$t2, $t2, %pc_lo12(mv_scale)
	pcalau12i	$t3, %pc_hi20(mv_rescale)
	ld.w	$t4, $t3, %pc_lo12(mv_rescale)
	add.d	$a4, $t2, $a4
	slli.d	$a6, $a6, 7
	add.d	$a6, $a4, $a6
	addi.d	$t3, $t4, 8
	st.d	$zero, $t0, 0
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$t6, $a4, 0
	ldptr.w	$a4, $t6, 15268
	beqz	$a4, .LBB10_14
# %bb.1:
	ld.w	$t7, $a0, 0
	addi.w	$a4, $zero, -1
	beqz	$a5, .LBB10_27
# %bb.2:
	move	$a5, $a4
	beqz	$t7, .LBB10_4
# %bb.3:
	ld.w	$a5, $a0, 20
	ldptr.d	$t2, $t6, 14224
	ld.w	$t5, $a0, 4
	ori	$t8, $zero, 536
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a7, $a5
	ld.w	$fp, $a0, 16
	mul.d	$t5, $t5, $t8
	add.d	$t2, $t2, $t5
	ld.w	$t2, $t2, 424
	ldx.b	$a5, $a5, $fp
	sltui	$t2, $t2, 1
	sll.w	$a5, $a5, $t2
.LBB10_4:
	ld.w	$t5, $a1, 0
	move	$t2, $a4
	beqz	$t5, .LBB10_6
# %bb.5:
	ld.w	$t2, $a1, 20
	ldptr.d	$t5, $t6, 14224
	ld.w	$t8, $a1, 4
	ori	$fp, $zero, 536
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a7, $t2
	ld.w	$s0, $a1, 16
	mul.d	$t8, $t8, $fp
	add.d	$t5, $t5, $t8
	ld.w	$t5, $t5, 424
	ldx.b	$t2, $t2, $s0
	sltui	$t5, $t5, 1
	sll.w	$t2, $t2, $t5
.LBB10_6:
	ld.w	$t8, $a2, 0
	move	$t5, $a4
	beqz	$t8, .LBB10_8
# %bb.7:
	ld.w	$t5, $a2, 20
	ldptr.d	$t8, $t6, 14224
	ld.w	$fp, $a2, 4
	ori	$s0, $zero, 536
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a7, $t5
	ld.w	$s1, $a2, 16
	mul.d	$fp, $fp, $s0
	add.d	$t8, $t8, $fp
	ld.w	$t8, $t8, 424
	ldx.b	$t5, $t5, $s1
	sltui	$t8, $t8, 1
	sll.w	$t5, $t5, $t8
.LBB10_8:
	ld.w	$t8, $a3, 0
	beqz	$t8, .LBB10_10
# %bb.9:
	ld.w	$a4, $a3, 20
	ldptr.d	$t8, $t6, 14224
	ld.w	$fp, $a3, 4
	ori	$s0, $zero, 536
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a7, $a4
	ld.w	$a7, $a3, 16
	mul.d	$fp, $fp, $s0
	add.d	$t8, $t8, $fp
	ld.w	$t8, $t8, 424
	ldx.b	$a4, $a4, $a7
	sltui	$a7, $t8, 1
	sll.w	$a4, $a4, $a7
.LBB10_10:
	bstrpick.d	$a7, $t3, 15, 0
	beqz	$t7, .LBB10_43
# %bb.11:
	ld.w	$t7, $a0, 20
	slli.d	$t7, $t7, 3
	ld.w	$t8, $a0, 16
	ldx.d	$t7, $t1, $t7
	slli.d	$t8, $t8, 3
	ldx.d	$t7, $t7, $t8
	slli.d	$t8, $a5, 2
	ldx.w	$t8, $a6, $t8
	ld.h	$t7, $t7, 0
	mul.d	$t7, $t8, $t7
	addi.d	$t8, $a7, -1
	ori	$fp, $zero, 1
	sll.w	$t8, $fp, $t8
	add.d	$t7, $t7, $t8
	sra.w	$t7, $t7, $t3
	st.w	$t7, $t0, 16
	ld.w	$t7, $a0, 0
	beqz	$t7, .LBB10_44
.LBB10_12:
	ld.w	$t7, $a0, 20
	ldptr.d	$t8, $t6, 14224
	ld.w	$fp, $a0, 4
	ori	$s0, $zero, 536
	slli.d	$t7, $t7, 3
	ld.w	$a0, $a0, 16
	ldx.d	$t7, $t1, $t7
	mul.d	$fp, $fp, $s0
	add.d	$t8, $t8, $fp
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $t7, $a0
	ld.w	$t7, $t8, 424
	slli.d	$t8, $a5, 2
	ldx.w	$t8, $a6, $t8
	ld.h	$a0, $a0, 2
	mul.d	$a0, $t8, $a0
	beqz	$t7, .LBB10_52
# %bb.13:
	addi.d	$t7, $a7, -1
	ori	$t8, $zero, 1
	sll.w	$t7, $t8, $t7
	add.d	$a0, $a0, $t7
	sra.w	$a0, $a0, $a7
	st.w	$a0, $t0, 20
	ld.w	$a0, $a1, 0
	bnez	$a0, .LBB10_45
	b	.LBB10_53
.LBB10_14:
	ld.w	$t6, $a0, 0
	addi.w	$a4, $zero, -1
	move	$a5, $a4
	beqz	$t6, .LBB10_16
# %bb.15:
	ld.w	$a5, $a0, 20
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a7, $a5
	ld.w	$t2, $a0, 16
	ldx.b	$a5, $a5, $t2
.LBB10_16:
	ld.w	$t5, $a1, 0
	move	$t2, $a4
	beqz	$t5, .LBB10_18
# %bb.17:
	ld.w	$t2, $a1, 20
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a7, $t2
	ld.w	$t5, $a1, 16
	ldx.b	$t2, $t2, $t5
.LBB10_18:
	ld.w	$t7, $a2, 0
	move	$t5, $a4
	beqz	$t7, .LBB10_20
# %bb.19:
	ld.w	$t5, $a2, 20
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a7, $t5
	ld.w	$t7, $a2, 16
	ldx.b	$t5, $t5, $t7
.LBB10_20:
	ld.w	$t7, $a3, 0
	beqz	$t7, .LBB10_22
# %bb.21:
	ld.w	$a4, $a3, 20
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a7, $a4
	ld.w	$a7, $a3, 16
	ldx.b	$a4, $a4, $a7
.LBB10_22:
	beqz	$t6, .LBB10_48
# %bb.23:
	ld.w	$a7, $a0, 20
	slli.d	$a7, $a7, 3
	ld.w	$t6, $a0, 16
	ldx.d	$a7, $t1, $a7
	slli.d	$t6, $t6, 3
	ldx.d	$a7, $a7, $t6
	slli.d	$t6, $a5, 2
	ldx.w	$t6, $a6, $t6
	ld.h	$a7, $a7, 0
	mul.d	$a7, $t6, $a7
	bstrpick.d	$t7, $t3, 15, 0
	addi.d	$t7, $t7, -1
	ori	$t8, $zero, 1
	sll.w	$t7, $t8, $t7
	add.d	$a7, $a7, $t7
	sra.w	$a7, $a7, $t3
	st.w	$a7, $t0, 16
	ld.w	$a7, $a0, 20
	slli.d	$a7, $a7, 3
	ld.w	$a0, $a0, 16
	ldx.d	$a7, $t1, $a7
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a7, $a0
	ld.h	$a0, $a0, 2
	mul.d	$a0, $t6, $a0
	add.d	$a0, $a0, $t7
	sra.w	$a0, $a0, $t3
	st.w	$a0, $t0, 20
	ld.w	$a0, $a1, 0
	beqz	$a0, .LBB10_49
.LBB10_24:
	ld.w	$a0, $a1, 20
	slli.d	$a0, $a0, 3
	ld.w	$a7, $a1, 16
	ldx.d	$a0, $t1, $a0
	slli.d	$a7, $a7, 3
	ldx.d	$a0, $a0, $a7
	slli.d	$a7, $t2, 2
	ldx.w	$a7, $a6, $a7
	ld.h	$a0, $a0, 0
	mul.d	$a0, $a7, $a0
	bstrpick.d	$t6, $t3, 15, 0
	addi.d	$t6, $t6, -1
	ori	$t7, $zero, 1
	sll.w	$t6, $t7, $t6
	add.d	$a0, $a0, $t6
	sra.w	$a0, $a0, $t3
	st.w	$a0, $t0, 32
	ld.w	$a0, $a1, 20
	slli.d	$a0, $a0, 3
	ld.w	$a1, $a1, 16
	ldx.d	$a0, $t1, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.h	$a0, $a0, 2
	mul.d	$a0, $a7, $a0
	add.d	$a0, $a0, $t6
	sra.w	$a0, $a0, $t3
	st.w	$a0, $t0, 36
	ld.w	$a0, $a2, 0
	beqz	$a0, .LBB10_50
.LBB10_25:
	ld.w	$a0, $a2, 20
	slli.d	$a0, $a0, 3
	ld.w	$a1, $a2, 16
	ldx.d	$a0, $t1, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t5, 2
	ldx.w	$a1, $a6, $a1
	ld.h	$a0, $a0, 0
	mul.d	$a0, $a1, $a0
	bstrpick.d	$a7, $t3, 15, 0
	addi.d	$a7, $a7, -1
	ori	$t6, $zero, 1
	sll.w	$a7, $t6, $a7
	add.d	$a0, $a0, $a7
	sra.w	$a0, $a0, $t3
	st.w	$a0, $t0, 48
	ld.w	$a0, $a2, 20
	slli.d	$a0, $a0, 3
	ld.w	$a2, $a2, 16
	ldx.d	$a0, $t1, $a0
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.h	$a0, $a0, 2
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a7
	sra.w	$a0, $a0, $t3
	st.w	$a0, $t0, 52
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB10_51
.LBB10_26:
	ld.w	$a0, $a3, 20
	slli.d	$a0, $a0, 3
	ld.w	$a1, $a3, 16
	ldx.d	$a0, $t1, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a4, 2
	ldx.w	$a1, $a6, $a1
	ld.h	$a0, $a0, 0
	mul.d	$a0, $a1, $a0
	bstrpick.d	$a2, $t3, 15, 0
	addi.d	$a2, $a2, -1
	ori	$a6, $zero, 1
	sll.w	$a2, $a6, $a2
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $t3
	st.w	$a0, $t0, 64
	ld.w	$a0, $a3, 20
	slli.d	$a0, $a0, 3
	ld.w	$a3, $a3, 16
	ldx.d	$a0, $t1, $a0
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.h	$a0, $a0, 2
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a1, $a0, $t3
	b	.LBB10_88
.LBB10_27:
	move	$a5, $a4
	beqz	$t7, .LBB10_30
# %bb.28:
	ld.w	$a5, $a0, 20
	ldptr.d	$t2, $t6, 14224
	ld.w	$t5, $a0, 4
	ori	$t8, $zero, 536
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a7, $a5
	ld.w	$fp, $a0, 16
	mul.d	$t5, $t5, $t8
	add.d	$t2, $t2, $t5
	ld.w	$t2, $t2, 424
	ldx.bu	$a5, $a5, $fp
	ext.w.b	$a5, $a5
	beqz	$t2, .LBB10_30
# %bb.29:
	srai.d	$a5, $a5, 1
.LBB10_30:
	ld.w	$t5, $a1, 0
	move	$t2, $a4
	beqz	$t5, .LBB10_33
# %bb.31:
	ld.w	$t2, $a1, 20
	ldptr.d	$t5, $t6, 14224
	ld.w	$t8, $a1, 4
	ori	$fp, $zero, 536
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a7, $t2
	ld.w	$s0, $a1, 16
	mul.d	$t8, $t8, $fp
	add.d	$t5, $t5, $t8
	ld.w	$t5, $t5, 424
	ldx.bu	$t2, $t2, $s0
	ext.w.b	$t2, $t2
	beqz	$t5, .LBB10_33
# %bb.32:
	srai.d	$t2, $t2, 1
.LBB10_33:
	ld.w	$t8, $a2, 0
	move	$t5, $a4
	beqz	$t8, .LBB10_36
# %bb.34:
	ld.w	$t5, $a2, 20
	ldptr.d	$t8, $t6, 14224
	ld.w	$fp, $a2, 4
	ori	$s0, $zero, 536
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a7, $t5
	ld.w	$s1, $a2, 16
	mul.d	$fp, $fp, $s0
	add.d	$t8, $t8, $fp
	ld.w	$t8, $t8, 424
	ldx.bu	$t5, $t5, $s1
	ext.w.b	$t5, $t5
	beqz	$t8, .LBB10_36
# %bb.35:
	srai.d	$t5, $t5, 1
.LBB10_36:
	ld.w	$t8, $a3, 0
	beqz	$t8, .LBB10_39
# %bb.37:
	ld.w	$a4, $a3, 20
	ldptr.d	$t8, $t6, 14224
	ld.w	$fp, $a3, 4
	ori	$s0, $zero, 536
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a7, $a4
	ld.w	$a7, $a3, 16
	mul.d	$fp, $fp, $s0
	add.d	$t8, $t8, $fp
	ld.w	$t8, $t8, 424
	ldx.bu	$a4, $a4, $a7
	ext.w.b	$a4, $a4
	beqz	$t8, .LBB10_39
# %bb.38:
	srai.d	$a4, $a4, 1
.LBB10_39:
	slli.d	$a7, $a5, 2
	beqz	$t7, .LBB10_67
# %bb.40:
	ld.w	$t7, $a0, 20
	slli.d	$t7, $t7, 3
	ld.w	$t8, $a0, 16
	ldx.d	$t7, $t1, $t7
	slli.d	$t8, $t8, 3
	ldx.d	$t7, $t7, $t8
	ldx.w	$t8, $a6, $a7
	ld.h	$t7, $t7, 0
	mul.d	$t7, $t8, $t7
	bstrpick.d	$t8, $t3, 15, 0
	addi.d	$t8, $t8, -1
	ori	$fp, $zero, 1
	sll.w	$t8, $fp, $t8
	add.d	$t7, $t7, $t8
	sra.w	$t7, $t7, $t3
	st.w	$t7, $t0, 16
	ld.w	$t7, $a0, 0
	beqz	$t7, .LBB10_68
.LBB10_41:
	ld.w	$t7, $a0, 20
	slli.d	$t7, $t7, 3
	ld.w	$t8, $a0, 16
	ldx.d	$t7, $t1, $t7
	ldptr.d	$fp, $t6, 14224
	ld.w	$a0, $a0, 4
	slli.d	$t8, $t8, 3
	ldx.d	$t7, $t7, $t8
	ori	$t8, $zero, 536
	mul.d	$a0, $a0, $t8
	ldx.w	$a7, $a6, $a7
	ld.h	$t7, $t7, 2
	add.d	$a0, $fp, $a0
	ld.w	$t8, $a0, 424
	mul.d	$a0, $a7, $t7
	bstrpick.d	$t7, $t3, 15, 0
	addi.d	$a7, $t7, -1
	beqz	$t8, .LBB10_72
# %bb.42:
	addi.d	$t7, $t7, -2
	ori	$t8, $zero, 1
	sll.w	$t7, $t8, $t7
	add.d	$a0, $a0, $t7
	sra.w	$a0, $a0, $a7
	st.w	$a0, $t0, 20
	ld.w	$a7, $a1, 0
	slli.d	$a0, $t2, 2
	bnez	$a7, .LBB10_69
	b	.LBB10_73
.LBB10_43:
	ori	$t7, $zero, 12
	srl.w	$t7, $t7, $t4
	st.w	$t7, $t0, 16
	ld.w	$t7, $a0, 0
	bnez	$t7, .LBB10_12
.LBB10_44:
	move	$a0, $zero
	st.w	$a0, $t0, 20
	ld.w	$a0, $a1, 0
	beqz	$a0, .LBB10_53
.LBB10_45:
	ld.w	$a0, $a1, 20
	slli.d	$a0, $a0, 3
	ld.w	$t7, $a1, 16
	ldx.d	$a0, $t1, $a0
	slli.d	$t7, $t7, 3
	ldx.d	$a0, $a0, $t7
	slli.d	$t7, $t2, 2
	ldx.w	$t7, $a6, $t7
	ld.h	$a0, $a0, 0
	mul.d	$a0, $t7, $a0
	addi.d	$t7, $a7, -1
	ori	$t8, $zero, 1
	sll.w	$t7, $t8, $t7
	add.d	$a0, $a0, $t7
	sra.w	$a0, $a0, $t3
	st.w	$a0, $t0, 32
	ld.w	$a0, $a1, 0
	beqz	$a0, .LBB10_54
.LBB10_46:
	ld.w	$a0, $a1, 20
	ldptr.d	$t7, $t6, 14224
	ld.w	$t8, $a1, 4
	ori	$fp, $zero, 536
	slli.d	$a0, $a0, 3
	ld.w	$a1, $a1, 16
	ldx.d	$a0, $t1, $a0
	mul.d	$t8, $t8, $fp
	add.d	$t7, $t7, $t8
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $t7, 424
	slli.d	$t7, $t2, 2
	ldx.w	$t7, $a6, $t7
	ld.h	$a0, $a0, 2
	mul.d	$a0, $t7, $a0
	beqz	$a1, .LBB10_58
# %bb.47:
	addi.d	$a1, $a7, -1
	ori	$t7, $zero, 1
	sll.w	$a1, $t7, $a1
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a7
	st.w	$a0, $t0, 36
	ld.w	$a0, $a2, 0
	bnez	$a0, .LBB10_55
	b	.LBB10_59
.LBB10_48:
	move	$a0, $zero
	ori	$a7, $zero, 12
	srl.w	$a7, $a7, $t4
	st.w	$a7, $t0, 16
	st.w	$a0, $t0, 20
	ld.w	$a0, $a1, 0
	bnez	$a0, .LBB10_24
.LBB10_49:
	st.w	$zero, $t0, 32
	ori	$a0, $zero, 12
	srl.w	$a0, $a0, $t4
	st.w	$a0, $t0, 36
	ld.w	$a0, $a2, 0
	bnez	$a0, .LBB10_25
.LBB10_50:
	move	$a0, $zero
	ori	$a1, $zero, 12
	srl.w	$a1, $a1, $t4
	sub.d	$a1, $zero, $a1
	st.w	$a1, $t0, 48
	st.w	$a0, $t0, 52
	ld.w	$a0, $a3, 0
	bnez	$a0, .LBB10_26
.LBB10_51:
	st.w	$zero, $t0, 64
	b	.LBB10_87
.LBB10_52:
	addi.d	$t7, $a7, 1
	ori	$t8, $zero, 1
	sll.w	$t8, $t8, $a7
	add.d	$a0, $a0, $t8
	sra.w	$a0, $a0, $t7
	st.w	$a0, $t0, 20
	ld.w	$a0, $a1, 0
	bnez	$a0, .LBB10_45
.LBB10_53:
	move	$a0, $zero
	st.w	$a0, $t0, 32
	ld.w	$a0, $a1, 0
	bnez	$a0, .LBB10_46
.LBB10_54:
	ori	$a0, $zero, 12
	srl.w	$a0, $a0, $t4
	st.w	$a0, $t0, 36
	ld.w	$a0, $a2, 0
	beqz	$a0, .LBB10_59
.LBB10_55:
	ld.w	$a0, $a2, 20
	slli.d	$a0, $a0, 3
	ld.w	$a1, $a2, 16
	ldx.d	$a0, $t1, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t5, 2
	ldx.w	$a1, $a6, $a1
	ld.h	$a0, $a0, 0
	mul.d	$a0, $a1, $a0
	addi.d	$a1, $a7, -1
	ori	$t7, $zero, 1
	sll.w	$a1, $t7, $a1
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $t3
	st.w	$a0, $t0, 48
	ld.w	$a0, $a2, 0
	beqz	$a0, .LBB10_60
.LBB10_56:
	ld.w	$a0, $a2, 20
	ldptr.d	$a1, $t6, 14224
	ld.w	$t7, $a2, 4
	ori	$t8, $zero, 536
	slli.d	$a0, $a0, 3
	ld.w	$a2, $a2, 16
	ldx.d	$a0, $t1, $a0
	mul.d	$t7, $t7, $t8
	add.d	$a1, $a1, $t7
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a1, $a1, 424
	slli.d	$a2, $t5, 2
	ldx.w	$a2, $a6, $a2
	ld.h	$a0, $a0, 2
	mul.d	$a0, $a2, $a0
	beqz	$a1, .LBB10_62
# %bb.57:
	addi.d	$a1, $a7, -1
	ori	$a2, $zero, 1
	sll.w	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a7
	st.w	$a0, $t0, 52
	ld.w	$a0, $a3, 0
	bnez	$a0, .LBB10_61
	b	.LBB10_63
.LBB10_58:
	addi.d	$a1, $a7, 1
	ori	$t7, $zero, 1
	sll.w	$t7, $t7, $a7
	add.d	$a0, $a0, $t7
	sra.w	$a0, $a0, $a1
	st.w	$a0, $t0, 36
	ld.w	$a0, $a2, 0
	bnez	$a0, .LBB10_55
.LBB10_59:
	ori	$a0, $zero, 12
	srl.w	$a0, $a0, $t4
	sub.d	$a0, $zero, $a0
	st.w	$a0, $t0, 48
	ld.w	$a0, $a2, 0
	bnez	$a0, .LBB10_56
.LBB10_60:
	move	$a0, $zero
	st.w	$a0, $t0, 52
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB10_63
.LBB10_61:
	ld.w	$a0, $a3, 20
	slli.d	$a0, $a0, 3
	ld.w	$a1, $a3, 16
	ldx.d	$a0, $t1, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a4, 2
	ldx.w	$a1, $a6, $a1
	ld.h	$a0, $a0, 0
	mul.d	$a0, $a1, $a0
	addi.d	$a1, $a7, -1
	ori	$a2, $zero, 1
	sll.w	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $t3
	st.w	$a0, $t0, 64
	ld.w	$a0, $a3, 0
	bnez	$a0, .LBB10_64
	b	.LBB10_87
.LBB10_62:
	addi.d	$a1, $a7, 1
	ori	$a2, $zero, 1
	sll.w	$a2, $a2, $a7
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	st.w	$a0, $t0, 52
	ld.w	$a0, $a3, 0
	bnez	$a0, .LBB10_61
.LBB10_63:
	move	$a0, $zero
	st.w	$a0, $t0, 64
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB10_87
.LBB10_64:
	ld.w	$a0, $a3, 20
	ldptr.d	$a1, $t6, 14224
	ld.w	$a2, $a3, 4
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $t1, $a0
	ld.w	$a3, $a3, 16
	ori	$t1, $zero, 536
	mul.d	$a2, $a2, $t1
	add.d	$a1, $a1, $a2
	slli.d	$a2, $a3, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a1, $a1, 424
	slli.d	$a2, $a4, 2
	ldx.w	$a2, $a6, $a2
	ld.h	$a0, $a0, 2
	mul.d	$a0, $a2, $a0
	beqz	$a1, .LBB10_66
# %bb.65:
	addi.d	$a1, $a7, -1
	ori	$a2, $zero, 1
	sll.w	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	sra.w	$a1, $a0, $a7
	b	.LBB10_88
.LBB10_66:
	addi.d	$a1, $a7, 1
	ori	$a2, $zero, 1
	sll.w	$a2, $a2, $a7
	b	.LBB10_84
.LBB10_67:
	ori	$t7, $zero, 12
	srl.w	$t7, $t7, $t4
	st.w	$t7, $t0, 16
	ld.w	$t7, $a0, 0
	bnez	$t7, .LBB10_41
.LBB10_68:
	move	$a0, $zero
	st.w	$a0, $t0, 20
	ld.w	$a7, $a1, 0
	slli.d	$a0, $t2, 2
	beqz	$a7, .LBB10_73
.LBB10_69:
	ld.w	$a7, $a1, 20
	slli.d	$a7, $a7, 3
	ld.w	$t7, $a1, 16
	ldx.d	$a7, $t1, $a7
	slli.d	$t7, $t7, 3
	ldx.d	$a7, $a7, $t7
	ldx.w	$t7, $a6, $a0
	ld.h	$a7, $a7, 0
	mul.d	$a7, $t7, $a7
	bstrpick.d	$t7, $t3, 15, 0
	addi.d	$t7, $t7, -1
	ori	$t8, $zero, 1
	sll.w	$t7, $t8, $t7
	add.d	$a7, $a7, $t7
	sra.w	$a7, $a7, $t3
	st.w	$a7, $t0, 32
	ld.w	$a7, $a1, 0
	beqz	$a7, .LBB10_74
.LBB10_70:
	ld.w	$a7, $a1, 20
	slli.d	$a7, $a7, 3
	ld.w	$t7, $a1, 16
	ldx.d	$a7, $t1, $a7
	ldptr.d	$t8, $t6, 14224
	ld.w	$a1, $a1, 4
	slli.d	$t7, $t7, 3
	ldx.d	$a7, $a7, $t7
	ori	$t7, $zero, 536
	mul.d	$a1, $a1, $t7
	ldx.w	$a0, $a6, $a0
	ld.h	$a7, $a7, 2
	add.d	$a1, $t8, $a1
	ld.w	$t7, $a1, 424
	mul.d	$a0, $a0, $a7
	bstrpick.d	$a7, $t3, 15, 0
	addi.d	$a1, $a7, -1
	beqz	$t7, .LBB10_78
# %bb.71:
	addi.d	$a7, $a7, -2
	ori	$t7, $zero, 1
	sll.w	$a7, $t7, $a7
	add.d	$a0, $a0, $a7
	sra.w	$a0, $a0, $a1
	st.w	$a0, $t0, 36
	ld.w	$a1, $a2, 0
	slli.d	$a0, $t5, 2
	bnez	$a1, .LBB10_75
	b	.LBB10_79
.LBB10_72:
	ori	$t8, $zero, 1
	sll.w	$a7, $t8, $a7
	add.d	$a0, $a0, $a7
	sra.w	$a0, $a0, $t7
	st.w	$a0, $t0, 20
	ld.w	$a7, $a1, 0
	slli.d	$a0, $t2, 2
	bnez	$a7, .LBB10_69
.LBB10_73:
	move	$a7, $zero
	st.w	$a7, $t0, 32
	ld.w	$a7, $a1, 0
	bnez	$a7, .LBB10_70
.LBB10_74:
	ori	$a0, $zero, 12
	srl.w	$a0, $a0, $t4
	st.w	$a0, $t0, 36
	ld.w	$a1, $a2, 0
	slli.d	$a0, $t5, 2
	beqz	$a1, .LBB10_79
.LBB10_75:
	ld.w	$a1, $a2, 20
	slli.d	$a1, $a1, 3
	ld.w	$a7, $a2, 16
	ldx.d	$a1, $t1, $a1
	slli.d	$a7, $a7, 3
	ldx.d	$a1, $a1, $a7
	ldx.w	$a7, $a6, $a0
	ld.h	$a1, $a1, 0
	mul.d	$a1, $a7, $a1
	bstrpick.d	$a7, $t3, 15, 0
	addi.d	$a7, $a7, -1
	ori	$t7, $zero, 1
	sll.w	$a7, $t7, $a7
	add.d	$a1, $a1, $a7
	sra.w	$a1, $a1, $t3
	st.w	$a1, $t0, 48
	ld.w	$a1, $a2, 0
	beqz	$a1, .LBB10_80
.LBB10_76:
	ld.w	$a1, $a2, 20
	slli.d	$a1, $a1, 3
	ld.w	$a7, $a2, 16
	ldx.d	$a1, $t1, $a1
	ldptr.d	$t7, $t6, 14224
	ld.w	$a2, $a2, 4
	slli.d	$a7, $a7, 3
	ldx.d	$a1, $a1, $a7
	ori	$a7, $zero, 536
	mul.d	$a2, $a2, $a7
	ldx.w	$a0, $a6, $a0
	ld.h	$a1, $a1, 2
	add.d	$a2, $t7, $a2
	ld.w	$a7, $a2, 424
	mul.d	$a0, $a0, $a1
	bstrpick.d	$a2, $t3, 15, 0
	addi.d	$a1, $a2, -1
	beqz	$a7, .LBB10_85
# %bb.77:
	addi.d	$a2, $a2, -2
	ori	$a7, $zero, 1
	sll.w	$a2, $a7, $a2
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	st.w	$a0, $t0, 52
	ld.w	$a1, $a3, 0
	slli.d	$a0, $a4, 2
	bnez	$a1, .LBB10_81
	b	.LBB10_86
.LBB10_78:
	ori	$t7, $zero, 1
	sll.w	$a1, $t7, $a1
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a7
	st.w	$a0, $t0, 36
	ld.w	$a1, $a2, 0
	slli.d	$a0, $t5, 2
	bnez	$a1, .LBB10_75
.LBB10_79:
	ori	$a1, $zero, 12
	srl.w	$a1, $a1, $t4
	sub.d	$a1, $zero, $a1
	st.w	$a1, $t0, 48
	ld.w	$a1, $a2, 0
	bnez	$a1, .LBB10_76
.LBB10_80:
	move	$a0, $zero
	st.w	$a0, $t0, 52
	ld.w	$a1, $a3, 0
	slli.d	$a0, $a4, 2
	beqz	$a1, .LBB10_86
.LBB10_81:
	ld.w	$a1, $a3, 20
	slli.d	$a1, $a1, 3
	ld.w	$a2, $a3, 16
	ldx.d	$a1, $t1, $a1
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ldx.w	$a2, $a6, $a0
	ld.h	$a1, $a1, 0
	mul.d	$a1, $a2, $a1
	bstrpick.d	$a2, $t3, 15, 0
	addi.d	$a2, $a2, -1
	ori	$a7, $zero, 1
	sll.w	$a2, $a7, $a2
	add.d	$a1, $a1, $a2
	sra.w	$a1, $a1, $t3
	st.w	$a1, $t0, 64
	ld.w	$a1, $a3, 0
	beqz	$a1, .LBB10_87
.LBB10_82:
	ld.w	$a1, $a3, 20
	slli.d	$a1, $a1, 3
	ld.w	$a2, $a3, 16
	ldx.d	$a1, $t1, $a1
	ldptr.d	$a7, $t6, 14224
	ld.w	$a3, $a3, 4
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ori	$a2, $zero, 536
	mul.d	$a2, $a3, $a2
	ldx.w	$a0, $a6, $a0
	ld.h	$a1, $a1, 2
	add.d	$a2, $a7, $a2
	ld.w	$a3, $a2, 424
	mul.d	$a0, $a0, $a1
	bstrpick.d	$a2, $t3, 15, 0
	addi.d	$a1, $a2, -1
	beqz	$a3, .LBB10_89
# %bb.83:
	addi.d	$a2, $a2, -2
	ori	$a3, $zero, 1
	sll.w	$a2, $a3, $a2
.LBB10_84:
	add.d	$a0, $a0, $a2
	sra.w	$a1, $a0, $a1
	b	.LBB10_88
.LBB10_85:
	ori	$a7, $zero, 1
	sll.w	$a1, $a7, $a1
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a2
	st.w	$a0, $t0, 52
	ld.w	$a1, $a3, 0
	slli.d	$a0, $a4, 2
	bnez	$a1, .LBB10_81
.LBB10_86:
	move	$a1, $zero
	st.w	$a1, $t0, 64
	ld.w	$a1, $a3, 0
	bnez	$a1, .LBB10_82
.LBB10_87:
	ori	$a0, $zero, 12
	srl.w	$a0, $a0, $t4
	sub.d	$a1, $zero, $a0
.LBB10_88:
	addi.w	$a0, $a5, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	addi.w	$a2, $t2, 0
	addi.d	$a2, $a2, 1
	sltui	$a2, $a2, 1
	and	$a3, $t5, $a4
	addi.w	$a3, $a3, 0
	addi.d	$a3, $a3, 1
	sltui	$a3, $a3, 1
	add.d	$a2, $a3, $a2
	add.d	$a0, $a2, $a0
	st.w	$a1, $t0, 68
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_89:
	ori	$a3, $zero, 1
	sll.w	$a1, $a3, $a1
	add.d	$a0, $a0, $a1
	sra.w	$a1, $a0, $a2
	b	.LBB10_88
.Lfunc_end10:
	.size	EPZSSpatialPredictors, .Lfunc_end10-EPZSSpatialPredictors
                                        # -- End function
	.globl	EPZSBiPredBlockMotionSearch     # -- Begin function EPZSBiPredBlockMotionSearch
	.p2align	5
	.type	EPZSBiPredBlockMotionSearch,@function
EPZSBiPredBlockMotionSearch:            # @EPZSBiPredBlockMotionSearch
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 616
	ld.d	$t3, $sp, 592
	ld.d	$t2, $sp, 624
	ld.d	$t0, $sp, 608
	ld.d	$t6, $sp, 600
	move	$s3, $a2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	alsl.d	$s2, $t3, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s5, $a2, %got_pc_lo12(img)
	lu12i.w	$t8, 1
	ori	$a2, $t8, 24
	ldx.w	$a0, $a0, $a2
	ld.d	$t4, $s5, 0
	slli.d	$a0, $a0, 1
	ld.h	$a2, $t5, 0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a0, 31, 1
	slli.d	$s4, $a2, 1
	st.d	$a6, $sp, 288                   # 8-byte Folded Spill
	sll.w	$t1, $a6, $s4
	pcalau12i	$a2, %pc_hi20(medthres)
	addi.d	$s6, $a2, %pc_lo12(medthres)
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a2, $t3, 2
	add.w	$a6, $a3, $s3
	slli.d	$t3, $a6, 3
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	ldx.d	$fp, $a6, $t3
	xori	$t3, $s3, 1
	add.w	$t3, $t3, $a3
	slli.d	$t7, $t3, 3
	pcalau12i	$t3, %pc_hi20(active_pps)
	ld.d	$t3, $t3, %pc_lo12(active_pps)
	ldx.d	$a6, $a6, $t7
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	slli.d	$t7, $a1, 3
	ldx.d	$s0, $fp, $t7
	ld.w	$fp, $t3, 196
	ld.d	$s1, $a6, 0
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	beqz	$fp, .LBB11_3
# %bb.1:
	pcalau12i	$a1, %pc_hi20(wp_offset)
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	alsl.d	$a1, $a3, $a1, 3
	beqz	$s3, .LBB11_4
# %bb.2:
	ld.d	$a6, $a1, 8
	ld.d	$a5, $a1, 0
	b	.LBB11_5
.LBB11_3:
	move	$t3, $zero
	ori	$s5, $zero, 1
	b	.LBB11_6
.LBB11_4:
	ld.d	$a6, $a1, 0
	ld.d	$a5, $a1, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $a6, 3
	alsl.d	$a5, $a1, $a5, 3
.LBB11_5:                               # %.sink.split
	ld.d	$a6, $a6, 0
	ld.d	$a5, $a5, 0
	ld.h	$a6, $a6, 0
	ld.h	$t3, $a5, 0
	addi.d	$s5, $a6, 1
.LBB11_6:
	ld.w	$a1, $t4, 192
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a1, $t4, 196
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a7, $sp, 304                   # 8-byte Folded Spill
	sll.w	$t4, $a7, $s4
	st.d	$t5, $sp, 208                   # 8-byte Folded Spill
	ld.h	$a3, $t5, 2
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	ld.h	$s3, $t2, 0
	ld.h	$t5, $t2, 2
	ld.h	$a1, $t6, 0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.h	$a1, $t6, 2
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.h	$a1, $t0, 0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.h	$a1, $t0, 2
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.w	$a3, $s2, 76
	ld.w	$a4, $s2, 72
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	ldx.w	$a1, $s6, $a2
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(searchPattern)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s7, $a1, %pc_lo12(searchPattern)
	pcalau12i	$a6, %pc_hi20(EPZSBlkCount)
	ld.h	$a2, $a6, %pc_lo12(EPZSBlkCount)
	pcalau12i	$a1, %pc_hi20(mv_rescale)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.w	$s2, $a1, %pc_lo12(mv_rescale)
	ldptr.d	$a5, $s0, 6448
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.w	$t0, $t1, $a1
	addi.d	$a7, $a2, 1
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	st.h	$a7, $a6, %pc_lo12(EPZSBlkCount)
	pcalau12i	$t2, %got_pc_hi20(ref_pic1_sub)
	ld.d	$ra, $t2, %got_pc_lo12(ref_pic1_sub)
	ldptr.d	$t2, $s1, 6448
	st.d	$a5, $ra, 0
	pcalau12i	$a5, %got_pc_hi20(ref_pic2_sub)
	ld.d	$s6, $a5, %got_pc_lo12(ref_pic2_sub)
	ori	$a5, $t8, 2296
	ldx.w	$t6, $s0, $a5
	st.d	$t2, $s6, 0
	pcalau12i	$a5, %got_pc_hi20(img_width)
	ld.d	$a5, $a5, %got_pc_lo12(img_width)
	ori	$t2, $t8, 2300
	ldx.w	$t2, $s0, $t2
	st.h	$t6, $a5, 0
	pcalau12i	$a5, %got_pc_hi20(img_height)
	ld.d	$a5, $a5, %got_pc_lo12(img_height)
	st.h	$t2, $a5, 0
	ori	$a5, $t8, 2312
	ldx.w	$a5, $s0, $a5
	ori	$s4, $t8, 2316
	ldx.w	$s4, $s0, $s4
	pcalau12i	$s8, %pc_hi20(width_pad)
	st.w	$a5, $s8, %pc_lo12(width_pad)
	pcalau12i	$a5, %pc_hi20(height_pad)
	st.w	$s4, $a5, %pc_lo12(height_pad)
	pcalau12i	$s4, %pc_hi20(wbp_weight)
	beqz	$fp, .LBB11_9
# %bb.7:
	ld.d	$a5, $s4, %pc_lo12(wbp_weight)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a5, $a1, $a5, 3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beqz	$a1, .LBB11_10
# %bb.8:
	ld.d	$s8, $a5, 8
	ld.d	$a5, $a5, 0
	ld.d	$s8, $s8, 0
	ld.d	$a5, $a5, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s8, $a2, $s8, 3
	alsl.d	$a5, $a2, $a5, 3
	b	.LBB11_11
.LBB11_9:
	pcalau12i	$a5, %pc_hi20(luma_log_weight_denom)
	ld.wu	$a5, $a5, %pc_lo12(luma_log_weight_denom)
	ori	$a6, $zero, 1
	sll.w	$a5, $a6, $a5
	pcalau12i	$a6, %got_pc_hi20(weight1)
	ld.d	$a6, $a6, %got_pc_lo12(weight1)
	st.h	$a5, $a6, 0
	pcalau12i	$a6, %got_pc_hi20(weight2)
	ld.d	$a6, $a6, %got_pc_lo12(weight2)
	st.h	$a5, $a6, 0
	pcalau12i	$a5, %got_pc_hi20(computeBiPred1)
	ld.d	$a5, $a5, %got_pc_lo12(computeBiPred1)
	move	$s8, $zero
	b	.LBB11_12
.LBB11_10:
	ld.d	$s8, $a5, 0
	ld.d	$a5, $a5, 8
	ldx.d	$s8, $s8, $t7
	ldx.d	$a5, $a5, $t7
.LBB11_11:
	ld.d	$s8, $s8, 0
	ld.h	$s8, $s8, 0
	pcalau12i	$a6, %got_pc_hi20(weight1)
	ld.d	$a6, $a6, %got_pc_lo12(weight1)
	ld.d	$a5, $a5, 0
	ld.h	$a5, $a5, 0
	st.h	$s8, $a6, 0
	pcalau12i	$a6, %got_pc_hi20(weight2)
	ld.d	$a6, $a6, %got_pc_lo12(weight2)
	st.h	$a5, $a6, 0
	add.d	$a5, $s5, $t3
	bstrpick.d	$s8, $a5, 31, 1
	pcalau12i	$a5, %got_pc_hi20(computeBiPred2)
	ld.d	$a5, $a5, %got_pc_lo12(computeBiPred2)
.LBB11_12:
	ld.d	$s5, $sp, 632
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	add.w	$t3, $t4, $a6
	add.w	$a6, $t1, $s3
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(offsetBi)
	ld.d	$a6, $a6, %got_pc_lo12(offsetBi)
	ld.d	$t1, $a5, 0
	st.h	$s8, $a6, 0
	pcalau12i	$a5, %got_pc_hi20(computeBiPred)
	ld.d	$a5, $a5, %got_pc_lo12(computeBiPred)
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	st.d	$t1, $a5, 0
	pcalau12i	$a5, %got_pc_hi20(ChromaMEEnable)
	ld.d	$a5, $a5, %got_pc_lo12(ChromaMEEnable)
	ld.w	$a5, $a5, 0
	beqz	$a5, .LBB11_20
# %bb.13:
	ldptr.d	$a5, $s0, 6464
	ld.d	$a6, $a5, 0
	st.d	$a6, $ra, 8
	ld.d	$a5, $a5, 8
	ldptr.d	$a6, $s1, 6464
	st.d	$a5, $ra, 16
	ld.d	$a5, $a6, 0
	st.d	$a5, $s6, 8
	ld.d	$a5, $a6, 8
	st.d	$a5, $s6, 16
	ori	$a5, $t8, 2320
	ldx.w	$a5, $s0, $a5
	ori	$a6, $t8, 2324
	ldx.w	$a6, $s0, $a6
	pcalau12i	$t8, %pc_hi20(width_pad_cr)
	st.w	$a5, $t8, %pc_lo12(width_pad_cr)
	pcalau12i	$a5, %pc_hi20(height_pad_cr)
	st.w	$a6, $a5, %pc_lo12(height_pad_cr)
	beqz	$fp, .LBB11_16
# %bb.14:
	ld.d	$a5, $s4, %pc_lo12(wbp_weight)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$t8, $a1, $a5, 3
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beqz	$a2, .LBB11_17
# %bb.15:
	ld.d	$a5, $t8, 8
	ld.d	$a5, $a5, 0
	ldx.d	$a5, $a5, $t7
	ld.h	$a6, $a5, 4
	pcalau12i	$t7, %got_pc_hi20(weight1_cr)
	ld.d	$t7, $t7, %got_pc_lo12(weight1_cr)
	ld.d	$t8, $t8, 0
	pcalau12i	$fp, %pc_hi20(wp_offset)
	ld.d	$fp, $fp, %pc_lo12(wp_offset)
	ld.h	$s0, $a5, 8
	ld.d	$s1, $t8, 0
	alsl.d	$a5, $a1, $fp, 3
	slli.d	$s3, $a1, 3
	ld.d	$t8, $a5, 8
	ldx.d	$a5, $fp, $s3
	st.h	$a6, $t7, 0
	st.h	$s0, $t7, 2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$t7, $a2, $s1, 3
	b	.LBB11_18
.LBB11_16:
	pcalau12i	$a5, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a5, $a5, %pc_lo12(chroma_log_weight_denom)
	ori	$a6, $zero, 1
	sll.w	$a5, $a6, $a5
	pcalau12i	$a6, %got_pc_hi20(weight1_cr)
	ld.d	$a6, $a6, %got_pc_lo12(weight1_cr)
	st.h	$a5, $a6, 0
	st.h	$a5, $a6, 2
	pcalau12i	$a6, %got_pc_hi20(weight2_cr)
	ld.d	$a6, $a6, %got_pc_lo12(weight2_cr)
	st.h	$a5, $a6, 0
	st.h	$a5, $a6, 2
	pcalau12i	$a5, %got_pc_hi20(offsetBi_cr)
	ld.d	$a6, $a5, %got_pc_lo12(offsetBi_cr)
	move	$a5, $zero
	st.h	$zero, $a6, 0
	b	.LBB11_19
.LBB11_17:
	ld.d	$a5, $t8, 0
	ldx.d	$a5, $a5, $t7
	ld.d	$a5, $a5, 0
	ld.h	$a6, $a5, 4
	pcalau12i	$fp, %got_pc_hi20(weight1_cr)
	ld.d	$fp, $fp, %got_pc_lo12(weight1_cr)
	pcalau12i	$s0, %pc_hi20(wp_offset)
	ld.d	$s0, $s0, %pc_lo12(wp_offset)
	st.h	$a6, $fp, 0
	ld.h	$a5, $a5, 8
	ld.d	$a6, $t8, 8
	alsl.d	$t8, $a1, $s0, 3
	slli.d	$s1, $a1, 3
	ldx.d	$s0, $s0, $s1
	ld.d	$s1, $t8, 8
	ldx.d	$t7, $a6, $t7
	st.h	$a5, $fp, 2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$t8, $a2, $s0, 3
	alsl.d	$a5, $a2, $s1, 3
.LBB11_18:
	ld.d	$a6, $t8, 0
	ld.d	$a5, $a5, 0
	ld.w	$t8, $a6, 4
	ld.w	$fp, $a5, 4
	ld.d	$t7, $t7, 0
	add.d	$t8, $t8, $fp
	ld.w	$a6, $a6, 8
	ld.w	$a5, $a5, 8
	ld.h	$fp, $t7, 8
	ld.h	$t7, $t7, 4
	addi.d	$t8, $t8, 1
	add.d	$a5, $a5, $a6
	srli.d	$a6, $t8, 1
	pcalau12i	$t8, %got_pc_hi20(weight2_cr)
	ld.d	$t8, $t8, %got_pc_lo12(weight2_cr)
	st.h	$t7, $t8, 0
	st.h	$fp, $t8, 2
	pcalau12i	$t7, %got_pc_hi20(offsetBi_cr)
	ld.d	$t7, $t7, %got_pc_lo12(offsetBi_cr)
	st.h	$a6, $t7, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 1
.LBB11_19:                              # %.sink.split583
	pcalau12i	$a6, %got_pc_hi20(offsetBi_cr)
	ld.d	$a6, $a6, %got_pc_lo12(offsetBi_cr)
	st.h	$a5, $a6, 2
.LBB11_20:
	add.w	$t7, $t4, $t5
	ext.w.h	$t4, $t6
	bge	$s5, $t0, .LBB11_25
# %bb.21:
	ext.w.h	$a5, $a4
	sub.d	$a5, $t4, $a5
	sll.w	$a5, $a5, $a0
	sub.w	$a5, $a5, $s5
	bge	$t0, $a5, .LBB11_25
# %bb.22:
	bge	$s5, $t3, .LBB11_25
# %bb.23:
	ext.w.h	$a5, $t2
	ext.w.h	$a6, $a3
	sub.d	$a5, $a5, $a6
	sll.w	$a5, $a5, $a0
	sub.w	$a5, $a5, $s5
	bge	$t3, $a5, .LBB11_25
# %bb.24:
	move	$a5, $zero
	b	.LBB11_26
.LBB11_25:
	ori	$a5, $zero, 1
.LBB11_26:
	ld.d	$t5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 648
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	alsl.w	$a6, $a1, $a2, 2
	st.d	$a6, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	alsl.w	$a6, $s6, $a2, 2
	st.d	$a6, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	alsl.w	$a6, $a1, $a2, 2
	st.d	$a6, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.w	$a6, $s6, $a1, 2
	st.d	$a6, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(bipred2_access_method)
	ld.d	$a6, $a6, %got_pc_lo12(bipred2_access_method)
	st.w	$a5, $a6, 0
	ext.w.h	$a2, $a4
	bge	$s5, $t5, .LBB11_31
# %bb.27:
	sub.d	$a5, $t4, $a2
	sll.w	$a5, $a5, $a0
	sub.w	$a5, $a5, $s5
	slli.w	$s4, $a4, 16
	bge	$t5, $a5, .LBB11_32
# %bb.28:
	bge	$s5, $t7, .LBB11_32
# %bb.29:
	ext.w.h	$a4, $t2
	ext.w.h	$a1, $a3
	sub.d	$a4, $a4, $a1
	sll.w	$a0, $a4, $a0
	sub.w	$a0, $a0, $s5
	bge	$t7, $a0, .LBB11_32
# %bb.30:
	move	$a0, $zero
	b	.LBB11_33
.LBB11_31:                              # %._crit_edge
	slli.w	$s4, $a4, 16
.LBB11_32:
	ext.w.h	$a1, $a3
	ori	$a0, $zero, 1
.LBB11_33:
	pcalau12i	$a3, %got_pc_hi20(bipred1_access_method)
	ld.d	$a3, $a3, %got_pc_lo12(bipred1_access_method)
	pcalau12i	$s8, %pc_hi20(EPZSMap)
	ld.d	$a4, $s8, %pc_lo12(EPZSMap)
	slli.d	$a5, $s5, 3
	ldx.d	$a4, $a4, $a5
	st.w	$a0, $a3, 0
	slli.d	$a0, $s5, 1
	stx.h	$a7, $a4, $a0
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$a0, $a0, %got_pc_lo12(mvbits)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	sll.w	$t2, $t5, $s2
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	sub.w	$a3, $t2, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	st.d	$t7, $sp, 184                   # 8-byte Folded Spill
	sll.w	$a5, $t7, $s2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a4, $a5, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	sll.w	$t4, $t0, $s2
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	sub.w	$a6, $t4, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a0, $a6
	sll.w	$a7, $t3, $s2
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	sub.w	$t0, $a7, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$a0, $a0, $t0
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t6
	srli.d	$s0, $a3, 16
	add.d	$a0, $a0, $a6
	st.d	$t6, $sp, 176                   # 8-byte Folded Spill
	mul.w	$a0, $a0, $t6
	srli.d	$s1, $a0, 16
	addi.w	$a4, $t2, 80
	addi.w	$a5, $a5, 80
	addi.w	$a6, $t4, 80
	addi.w	$a7, $a7, 80
	lu12i.w	$a0, 524287
	ori	$fp, $a0, 4095
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	move	$a3, $fp
	move	$s3, $a2
	jirl	$ra, $t1, 0
	add.d	$a0, $a0, $s0
	add.w	$t2, $a0, $s1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bge	$a0, $t2, .LBB11_38
# %bb.34:
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a4, $s6, $a2
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $fp, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a3, $s5, $a3
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a3, $s5, $a3
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $s2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $a2, 12
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ext.w.h	$s2, $a1
	addi.d	$s4, $s2, -1
	st.d	$a4, $sp, 232                   # 8-byte Folded Spill
	ext.w.h	$s1, $a4
	addi.d	$a3, $sp, 480
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 12
	addi.d	$s0, $s1, -1
	addi.d	$a3, $sp, 456
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 12
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	add.d	$s3, $s2, $s3
	addi.d	$a3, $sp, 432
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 12
	addi.d	$a3, $sp, 408
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB11_41
# %bb.35:
	ori	$a0, $zero, 7
	blt	$a0, $s2, .LBB11_39
# %bb.36:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	slli.w	$a0, $a0, 16
	lu12i.w	$a1, 128
	bne	$a0, $a1, .LBB11_60
# %bb.37:
	lu12i.w	$a0, 256
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB11_40
	b	.LBB11_41
.LBB11_38:
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 15, 0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$s1, $s1, 15, 0
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	b	.LBB11_98
.LBB11_39:
	ori	$a0, $zero, 16
	bne	$s3, $a0, .LBB11_41
.LBB11_40:                              # %.sink.split585
	st.w	$zero, $sp, 432
.LBB11_41:
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sll.w	$a0, $a0, $a1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	sll.w	$a0, $s6, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a0, $a4, 3
	vld	$vr0, $sp, 480
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a7, $a1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a5, $a1, $a0
	pcalau12i	$fp, %pc_hi20(predictor)
	vst	$vr0, $sp, 384
	vld	$vr0, $sp, 456
	ld.d	$a0, $fp, %pc_lo12(predictor)
	ld.d	$a1, $sp, 496
	ld.d	$a2, $sp, 472
	vst	$vr0, $sp, 360
	vld	$vr0, $sp, 432
	st.d	$a1, $sp, 400
	st.d	$a2, $sp, 376
	ld.d	$a1, $sp, 448
	vst	$vr0, $sp, 336
	ld.d	$a2, $sp, 424
	vld	$vr0, $sp, 408
	ld.d	$a0, $a0, 8
	st.d	$a1, $sp, 352
	st.d	$a2, $sp, 328
	vst	$vr0, $sp, 312
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 336
	addi.d	$a3, $sp, 312
	st.d	$a5, $sp, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(EPZSSpatialPredictors)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a1, $fp, %pc_lo12(predictor)
	move	$s0, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$fp, $zero, 80
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	b	.LBB11_45
.LBB11_42:                              #   in Loop: Header=BB11_45 Depth=1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$s2, $t2
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	move	$t2, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
.LBB11_43:                              #   in Loop: Header=BB11_45 Depth=1
	ld.d	$t7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 176                   # 8-byte Folded Reload
.LBB11_44:                              #   in Loop: Header=BB11_45 Depth=1
	addi.d	$s0, $s0, 16
	beq	$s0, $fp, .LBB11_54
.LBB11_45:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	ldx.w	$s6, $a0, $s0
	ld.h	$a2, $t5, 0
	add.d	$a0, $a0, $s0
	ld.w	$s1, $a0, 4
	sub.w	$a0, $s6, $a2
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	blt	$s5, $a0, .LBB11_47
# %bb.46:                               #   in Loop: Header=BB11_45 Depth=1
	ld.h	$a0, $t5, 2
	sub.w	$a0, $s1, $a0
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	bgeu	$s5, $a0, .LBB11_48
.LBB11_47:                              #   in Loop: Header=BB11_45 Depth=1
	or	$a0, $s6, $s1
	bnez	$a0, .LBB11_44
	b	.LBB11_50
	.p2align	4, , 16
.LBB11_48:                              # %.thread499
                                        #   in Loop: Header=BB11_45 Depth=1
	ld.d	$a0, $s8, %pc_lo12(EPZSMap)
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	add.w	$a2, $s1, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	add.w	$a2, $s6, $a2
	slli.d	$a3, $a2, 1
	ldx.hu	$a4, $a0, $a3
	ld.hu	$a3, $t6, %pc_lo12(EPZSBlkCount)
	beq	$a4, $a3, .LBB11_44
# %bb.49:                               #   in Loop: Header=BB11_45 Depth=1
	alsl.d	$a0, $a2, $a0, 1
	st.h	$a3, $a0, 0
.LBB11_50:                              # %.thread499.thread
                                        #   in Loop: Header=BB11_45 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.wu	$a3, $a0, %pc_lo12(mv_rescale)
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $s6, $a0
	sll.w	$a0, $a0, $a3
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	add.d	$a2, $s1, $a2
	sll.w	$a2, $a2, $a3
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $a4, 0
	sll.w	$a4, $t7, $a3
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	sub.w	$a5, $a4, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a7, $a6, $a5
	sll.w	$a5, $t8, $a3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a3, $a5, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a6, $a3
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	sub.w	$t0, $a0, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a6, $t0
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	sub.w	$t1, $a2, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$a6, $a6, $t1
	add.d	$a3, $a3, $a7
	mul.w	$a3, $a3, $ra
	srai.d	$a3, $a3, 16
	add.d	$a6, $a6, $t0
	mul.w	$a6, $a6, $ra
	srai.d	$a6, $a6, 16
	add.d	$s3, $a6, $a3
	bge	$s3, $s2, .LBB11_44
# %bb.51:                               #   in Loop: Header=BB11_45 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s2, $s3
	addi.w	$a4, $a4, 80
	addi.w	$a5, $a5, 80
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a2, 80
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	move	$s4, $t2
	jirl	$ra, $t0, 0
	move	$t2, $s4
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(predictor)
	add.w	$a0, $a0, $s3
	blt	$a0, $s4, .LBB11_42
# %bb.52:                               #   in Loop: Header=BB11_45 Depth=1
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $s2, .LBB11_43
# %bb.53:                               #   in Loop: Header=BB11_45 Depth=1
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	move	$s2, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB11_43
.LBB11_54:
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.w	$a0, $a1, $a1, 2
	alsl.w	$a0, $a0, $a1, 1
	srai.d	$a0, $a0, 3
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$a0, $t2, .LBB11_59
# %bb.55:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4088
	pcalau12i	$a1, %pc_hi20(square)
	addi.d	$a1, $a1, %pc_lo12(square)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(sdiamond)
	addi.d	$a1, $a1, %pc_lo12(sdiamond)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB11_69
# %bb.56:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	srli.d	$a1, $a0, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	add.w	$a0, $a0, $a1
	bge	$t2, $a0, .LBB11_61
# %bb.57:
	or	$a0, $fp, $s1
	bnez	$a0, .LBB11_65
.LBB11_58:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB11_68
.LBB11_59:
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	b	.LBB11_98
.LBB11_60:
	ori	$a0, $zero, 8
	beq	$s3, $a0, .LBB11_40
	b	.LBB11_41
.LBB11_61:
	ori	$a0, $zero, 5
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB11_67
# %bb.62:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blez	$a0, .LBB11_64
# %bb.63:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB11_67
.LBB11_64:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(searchPattern)
	b	.LBB11_69
.LBB11_65:
	ld.h	$a0, $t5, 0
	sub.w	$a0, $fp, $a0
	srai.d	$a1, $a0, 31
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(mv_rescale)
	xor	$a0, $a0, $a1
	sub.w	$a1, $a0, $a1
	ori	$a0, $zero, 2
	sub.d	$a2, $a0, $a2
	sll.w	$a0, $a0, $a2
	bgeu	$a1, $a0, .LBB11_67
# %bb.66:
	ld.h	$a1, $t5, 2
	sub.w	$a1, $s1, $a1
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$a1, $a1, $a2
	bltu	$a1, $a0, .LBB11_58
.LBB11_67:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
.LBB11_68:
	ld.d	$s7, $a0, 0
.LBB11_69:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(mv_rescale)
	ori	$a5, $zero, 1
	ori	$a0, $zero, 4
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slt	$a0, $a0, $a2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB11_72
	.p2align	4, , 16
.LBB11_70:                              #   in Loop: Header=BB11_72 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
.LBB11_71:                              #   in Loop: Header=BB11_72 Depth=1
	ld.d	$s7, $a0, 0
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
.LBB11_72:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_75 Depth 2
                                        #       Child Loop BB11_80 Depth 3
	move	$a2, $zero
	move	$s0, $zero
	move	$a3, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	move	$a0, $s7
	b	.LBB11_75
	.p2align	4, , 16
.LBB11_73:                              #   in Loop: Header=BB11_75 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB11_86
.LBB11_74:                              #   in Loop: Header=BB11_75 Depth=2
	ld.w	$a2, $s7, 16
	ld.d	$s7, $s7, 24
	ld.w	$a3, $s7, 20
	move	$s0, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	move	$a0, $s7
	beq	$a2, $a5, .LBB11_89
.LBB11_75:                              #   Parent Loop BB11_72 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_80 Depth 3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	addi.d	$s6, $a0, 1
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	b	.LBB11_80
.LBB11_76:                              #   in Loop: Header=BB11_80 Depth=3
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	move	$t2, $a0
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
.LBB11_77:                              #   in Loop: Header=BB11_80 Depth=3
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 176                   # 8-byte Folded Reload
.LBB11_78:                              #   in Loop: Header=BB11_80 Depth=3
	move	$s8, $s2
	move	$s5, $s1
	ori	$a5, $zero, 1
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_79:                              #   in Loop: Header=BB11_80 Depth=3
	ld.w	$a0, $s7, 0
	addi.w	$a2, $s0, 1
	slt	$a3, $a2, $a0
	masknez	$a0, $a0, $a3
	addi.w	$s6, $s6, -1
	sub.w	$s0, $a2, $a0
	bge	$a5, $s6, .LBB11_73
.LBB11_80:                              #   Parent Loop BB11_72 Depth=1
                                        #     Parent Loop BB11_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s7, 8
	slli.d	$a2, $s0, 4
	ldx.w	$a2, $a0, $a2
	ld.h	$a3, $t5, 0
	add.w	$s4, $a2, $fp
	sub.w	$a2, $s4, $a3
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$a2, $a2, $a3
	blt	$s5, $a2, .LBB11_79
# %bb.81:                               #   in Loop: Header=BB11_80 Depth=3
	alsl.d	$a0, $s0, $a0, 4
	ld.w	$a0, $a0, 4
	ld.h	$a2, $t5, 2
	add.w	$s3, $a0, $s1
	sub.w	$a0, $s3, $a2
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	bltu	$s5, $a0, .LBB11_79
# %bb.82:                               #   in Loop: Header=BB11_80 Depth=3
	ld.d	$a0, $s8, %pc_lo12(EPZSMap)
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	add.w	$a2, $s3, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a0, $a2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.w	$a6, $s4, $a0
	slli.d	$a0, $a6, 1
	ldx.hu	$a0, $a4, $a0
	ld.hu	$a3, $t6, %pc_lo12(EPZSBlkCount)
	beq	$a0, $a3, .LBB11_79
# %bb.83:                               #   in Loop: Header=BB11_80 Depth=3
	move	$s1, $s5
	move	$s2, $s8
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $s4, $a0
	sll.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	add.d	$a2, $s3, $a2
	sll.w	$a2, $a2, $a1
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $a5, 0
	sll.w	$a5, $t7, $a1
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	sub.w	$a7, $a5, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$t1, $t0, $a7
	sll.w	$a7, $t8, $a1
	move	$s5, $t2
	ld.d	$t2, $sp, 272                   # 8-byte Folded Reload
	sub.w	$t2, $a7, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t0, $t2
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	sub.w	$t3, $a0, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $t0, $t3
	ld.d	$t4, $sp, 256                   # 8-byte Folded Reload
	sub.w	$t4, $a2, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t0, $t0, $t4
	alsl.d	$a4, $a6, $a4, 1
	add.d	$a6, $t2, $t1
	move	$t2, $s5
	add.d	$t0, $t0, $t3
	mul.w	$a6, $a6, $ra
	srai.d	$a6, $a6, 16
	mul.w	$t0, $t0, $ra
	srai.d	$t0, $t0, 16
	add.d	$s8, $t0, $a6
	st.h	$a3, $a4, 0
	bge	$s8, $s5, .LBB11_78
# %bb.84:                               #   in Loop: Header=BB11_80 Depth=3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t2, $s8
	addi.w	$a4, $a5, 80
	addi.w	$a5, $a7, 80
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a2, 80
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(mv_rescale)
	add.w	$a0, $a0, $s8
	blt	$a0, $s5, .LBB11_76
# %bb.85:                               #   in Loop: Header=BB11_80 Depth=3
	move	$t2, $s5
	b	.LBB11_77
	.p2align	4, , 16
.LBB11_86:                              #   in Loop: Header=BB11_75 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bne	$a0, $fp, .LBB11_88
# %bb.87:                               #   in Loop: Header=BB11_75 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $s1, .LBB11_74
.LBB11_88:                              #   in Loop: Header=BB11_75 Depth=2
	ld.d	$a0, $s7, 8
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 4
	ld.w	$s0, $a0, 8
	move	$a3, $zero
	addi.d	$a0, $a0, 12
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	bne	$a2, $a5, .LBB11_75
	.p2align	4, , 16
.LBB11_89:                              #   in Loop: Header=BB11_72 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	orn	$a0, $a0, $a2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB11_97
# %bb.90:                               #   in Loop: Header=BB11_72 Depth=1
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$a0, $t2, .LBB11_98
# %bb.91:                               #   in Loop: Header=BB11_72 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4092
	blez	$a0, .LBB11_98
# %bb.92:                               #   in Loop: Header=BB11_72 Depth=1
	ld.h	$a2, $t5, 0
	or	$a0, $a4, $s1
	bnez	$a0, .LBB11_95
.LBB11_93:                              # %._crit_edge543
                                        #   in Loop: Header=BB11_72 Depth=1
	sub.w	$a0, $a4, $a2
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	ori	$a3, $zero, 2
	sub.d	$a2, $a3, $a1
	sll.w	$a2, $a3, $a2
	bgeu	$a0, $a2, .LBB11_70
# %bb.94:                               #   in Loop: Header=BB11_72 Depth=1
	ld.h	$a0, $t5, 2
	sub.w	$a0, $s1, $a0
	srai.d	$a3, $a0, 31
	xor	$a0, $a0, $a3
	sub.w	$a3, $a0, $a3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB11_70
	b	.LBB11_71
	.p2align	4, , 16
.LBB11_95:                              #   in Loop: Header=BB11_72 Depth=1
	pcalau12i	$a0, %pc_hi20(searchPatternD)
	addi.d	$a0, $a0, %pc_lo12(searchPatternD)
	bne	$a4, $a2, .LBB11_71
# %bb.96:                               #   in Loop: Header=BB11_72 Depth=1
	ld.h	$a3, $t5, 2
	bne	$s1, $a3, .LBB11_71
	b	.LBB11_93
.LBB11_97:
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
.LBB11_98:
	st.h	$a4, $t5, 0
	st.h	$s1, $t5, 2
	move	$a0, $t2
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.Lfunc_end11:
	.size	EPZSBiPredBlockMotionSearch, .Lfunc_end11-EPZSBiPredBlockMotionSearch
                                        # -- End function
	.globl	EPZSOutputStats                 # -- Begin function EPZSOutputStats
	.p2align	5
	.type	EPZSOutputStats,@function
EPZSOutputStats:                        # @EPZSOutputStats
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
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$s7, $a1, %got_pc_lo12(input)
	ld.d	$a1, $s7, 0
	ldptr.w	$a1, $a1, 4088
	ori	$s8, $zero, 20
	mul.d	$a1, $a1, $s8
	pcalau12i	$a2, %pc_hi20(c_EPZSPattern)
	addi.d	$a2, $a2, %pc_lo12(c_EPZSPattern)
	add.d	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	masknez	$a1, $a1, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.2)
	addi.d	$a3, $a3, %pc_lo12(.L.str.2)
	maskeqz	$a3, $a3, $a0
	or	$a1, $a3, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.11)
	addi.d	$a3, $a3, %pc_lo12(.L.str.11)
	masknez	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(.L.str.3)
	addi.d	$a4, $a4, %pc_lo12(.L.str.3)
	maskeqz	$a4, $a4, $a0
	or	$s6, $a4, $a3
	pcalau12i	$a3, %pc_hi20(.L.str.12)
	addi.d	$a3, $a3, %pc_lo12(.L.str.12)
	masknez	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(.L.str.4)
	addi.d	$a4, $a4, %pc_lo12(.L.str.4)
	maskeqz	$a4, $a4, $a0
	or	$s5, $a4, $a3
	pcalau12i	$a3, %pc_hi20(.L.str.13)
	addi.d	$a3, $a3, %pc_lo12(.L.str.13)
	masknez	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(.L.str.5)
	addi.d	$a4, $a4, %pc_lo12(.L.str.5)
	maskeqz	$a4, $a4, $a0
	or	$s4, $a4, $a3
	pcalau12i	$a3, %pc_hi20(.L.str.14)
	addi.d	$a3, $a3, %pc_lo12(.L.str.14)
	masknez	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(.L.str.6)
	addi.d	$a4, $a4, %pc_lo12(.L.str.6)
	maskeqz	$a4, $a4, $a0
	or	$s3, $a4, $a3
	pcalau12i	$a3, %pc_hi20(.L.str.15)
	addi.d	$a3, $a3, %pc_lo12(.L.str.15)
	masknez	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(.L.str.7)
	addi.d	$a4, $a4, %pc_lo12(.L.str.7)
	maskeqz	$a4, $a4, $a0
	or	$s2, $a4, $a3
	pcalau12i	$a3, %pc_hi20(.L.str.16)
	addi.d	$a3, $a3, %pc_lo12(.L.str.16)
	masknez	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(.L.str.8)
	addi.d	$a4, $a4, %pc_lo12(.L.str.8)
	maskeqz	$a4, $a4, $a0
	or	$s1, $a4, $a3
	pcalau12i	$a3, %pc_hi20(.L.str.17)
	addi.d	$a3, $a3, %pc_lo12(.L.str.17)
	masknez	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(.L.str.9)
	addi.d	$a4, $a4, %pc_lo12(.L.str.9)
	maskeqz	$a0, $a4, $a0
	or	$s0, $a0, $a3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 4092
	mul.d	$a0, $a0, $s8
	pcalau12i	$a1, %pc_hi20(c_EPZSDualPattern)
	addi.d	$a1, $a1, %pc_lo12(c_EPZSDualPattern)
	add.d	$a2, $a1, $a0
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 4096
	mul.d	$a0, $a0, $s8
	pcalau12i	$a1, %pc_hi20(c_EPZSFixed)
	addi.d	$a1, $a1, %pc_lo12(c_EPZSFixed)
	add.d	$a2, $a1, $a0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 4100
	mul.d	$a0, $a0, $s8
	pcalau12i	$a1, %pc_hi20(c_EPZSOther)
	addi.d	$s5, $a1, %pc_lo12(c_EPZSOther)
	add.d	$a2, $s5, $a0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 4104
	mul.d	$a0, $a0, $s8
	add.d	$a2, $s5, $a0
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(medthres+4)
	ld.w	$a2, $a0, %pc_lo12(medthres+4)
	pcalau12i	$a0, %pc_hi20(minthres+4)
	ld.w	$a3, $a0, %pc_lo12(minthres+4)
	pcalau12i	$a0, %pc_hi20(maxthres+4)
	ld.w	$a4, $a0, %pc_lo12(maxthres+4)
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 4124
	mul.d	$a0, $a0, $s8
	add.d	$a2, $s5, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 4128
	mul.d	$a0, $a0, $s8
	add.d	$a2, $s5, $a0
	move	$a0, $fp
	move	$a1, $s0
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
.Lfunc_end12:
	.size	EPZSOutputStats, .Lfunc_end12-EPZSOutputStats
                                        # -- End function
	.globl	EPZSSubPelBlockMotionSearch     # -- Begin function EPZSSubPelBlockMotionSearch
	.p2align	5
	.type	EPZSSubPelBlockMotionSearch,@function
EPZSSubPelBlockMotionSearch:            # @EPZSSubPelBlockMotionSearch
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
	ld.d	$s8, $sp, 264
	ld.d	$t0, $sp, 240
	move	$fp, $a7
	move	$s7, $a6
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$t7, $a0, 0
	pcalau12i	$t8, %pc_hi20(start_me_refinement_qp)
	ld.w	$a0, $t8, %pc_lo12(start_me_refinement_qp)
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a7, $a5, $t7, 3
	pcalau12i	$t1, %pc_hi20(start_me_refinement_hp)
	sltu	$a6, $zero, $a0
	ori	$a0, $zero, 1
	slt	$t2, $a0, $t0
	masknez	$a0, $a0, $t2
	maskeqz	$t2, $t0, $t2
	or	$a0, $t2, $a0
	pcalau12i	$t2, %got_pc_hi20(img)
	ld.d	$t2, $t2, %got_pc_lo12(img)
	ld.d	$t2, $t2, 0
	ldptr.d	$t4, $t2, 14224
	ld.w	$t5, $t2, 12
	pcalau12i	$t3, %pc_hi20(active_pps)
	ld.d	$t3, $t3, %pc_lo12(active_pps)
	ori	$t6, $zero, 536
	mul.d	$t5, $t5, $t6
	add.d	$t4, $t4, $t5
	ld.w	$t5, $t3, 192
	ld.w	$t4, $t4, 432
	st.d	$t8, $sp, 72                    # 8-byte Folded Spill
	beqz	$t5, .LBB13_3
# %bb.1:
	ld.w	$t5, $t2, 20
	beqz	$t5, .LBB13_5
# %bb.2:
	ori	$t6, $zero, 3
	beq	$t5, $t6, .LBB13_5
.LBB13_3:
	ld.w	$t3, $t3, 196
	beqz	$t3, .LBB13_6
# %bb.4:
	ld.w	$t2, $t2, 20
	ori	$t3, $zero, 1
	bne	$t2, $t3, .LBB13_6
.LBB13_5:
	ldptr.w	$a5, $t7, 2936
	sltu	$a5, $zero, $a5
	b	.LBB13_7
.LBB13_6:
	move	$a5, $zero
.LBB13_7:
	ld.w	$t2, $a7, 72
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a7, $a7, 76
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	ld.w	$s1, $t1, %pc_lo12(start_me_refinement_hp)
	masknez	$t2, $a0, $a6
	maskeqz	$t3, $t0, $a6
	ori	$a6, $zero, 80
	add.w	$a2, $t4, $a2
	slli.d	$a2, $a2, 3
	pcalau12i	$a7, %got_pc_hi20(listX)
	ld.d	$a7, $a7, %got_pc_lo12(listX)
	ldx.d	$a7, $a7, $a2
	slli.d	$t0, $a1, 3
	ldx.d	$a7, $a7, $t0
	lu12i.w	$t0, 1
	ori	$t1, $t0, 2296
	ldx.w	$t1, $a7, $t1
	ori	$t4, $t0, 2300
	ldx.w	$t5, $a7, $t4
	ld.w	$t4, $s8, 4
	st.d	$t4, $sp, 96                    # 8-byte Folded Spill
	ldptr.d	$t6, $a7, 6448
	pcalau12i	$t4, %got_pc_hi20(ref_pic_sub)
	ld.d	$t4, $t4, %got_pc_lo12(ref_pic_sub)
	st.d	$t6, $t4, 0
	ori	$t6, $t0, 2312
	ldx.w	$t6, $a7, $t6
	ori	$t7, $t0, 2316
	ldx.w	$t7, $a7, $t7
	pcalau12i	$t8, %pc_hi20(width_pad)
	st.w	$t6, $t8, %pc_lo12(width_pad)
	pcalau12i	$t6, %pc_hi20(height_pad)
	st.w	$t7, $t6, %pc_lo12(height_pad)
	beqz	$a5, .LBB13_9
# %bb.8:
	pcalau12i	$t6, %pc_hi20(wp_weight)
	ld.d	$t6, $t6, %pc_lo12(wp_weight)
	ldx.d	$t6, $t6, $a2
	slli.d	$t7, $a1, 3
	ldx.d	$t6, $t6, $t7
	ld.w	$t6, $t6, 0
	pcalau12i	$t8, %got_pc_hi20(weight_luma)
	ld.d	$t8, $t8, %got_pc_lo12(weight_luma)
	pcalau12i	$s0, %pc_hi20(wp_offset)
	ld.d	$s0, $s0, %pc_lo12(wp_offset)
	ldx.d	$s0, $s0, $a2
	ldx.d	$t7, $s0, $t7
	st.w	$t6, $t8, 0
	ld.w	$t6, $t7, 0
	pcalau12i	$t7, %got_pc_hi20(offset_luma)
	ld.d	$t7, $t7, %got_pc_lo12(offset_luma)
	st.w	$t6, $t7, 0
.LBB13_9:
	ld.d	$t6, $sp, 136                   # 8-byte Folded Reload
	sub.d	$t7, $t1, $t6
	sltu	$t1, $zero, $s1
	or	$t2, $t3, $t2
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	sub.d	$t6, $t5, $t3
	ori	$t3, $zero, 3
	alsl.w	$a3, $a3, $a6, 2
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(ChromaMEEnable)
	ld.d	$a3, $a3, %got_pc_lo12(ChromaMEEnable)
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB13_12
# %bb.10:
	ldptr.d	$a3, $a7, 6464
	ld.d	$t5, $a3, 0
	st.d	$t5, $t4, 8
	ld.d	$a3, $a3, 8
	st.d	$a3, $t4, 16
	ori	$a3, $t0, 2320
	ldx.w	$a3, $a7, $a3
	ori	$t0, $t0, 2324
	ldx.w	$a7, $a7, $t0
	pcalau12i	$t0, %pc_hi20(width_pad_cr)
	st.w	$a3, $t0, %pc_lo12(width_pad_cr)
	pcalau12i	$a3, %pc_hi20(height_pad_cr)
	st.w	$a7, $a3, %pc_lo12(height_pad_cr)
	beqz	$a5, .LBB13_12
# %bb.11:
	pcalau12i	$a3, %pc_hi20(wp_weight)
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ldx.d	$a3, $a3, $a2
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ld.d	$a3, $a3, 4
	pcalau12i	$a7, %got_pc_hi20(weight_cr)
	ld.d	$a7, $a7, %got_pc_lo12(weight_cr)
	pcalau12i	$t0, %pc_hi20(wp_offset)
	ld.d	$t0, $t0, %pc_lo12(wp_offset)
	st.d	$a3, $a7, 0
	ldx.d	$a2, $t0, $a2
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 4
	pcalau12i	$a3, %got_pc_hi20(offset_cr)
	ld.d	$a3, $a3, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a2, $a3, 0
	st.w	$a1, $a3, 4
.LBB13_12:
	ld.h	$a2, $fp, 0
	masknez	$a0, $a0, $t1
	maskeqz	$a1, $t2, $t1
	maskeqz	$a5, $t3, $a5
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	ori	$a3, $zero, 2
	alsl.w	$a4, $a4, $a6, 2
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	blt	$a2, $a3, .LBB13_17
# %bb.13:
	slli.d	$a3, $t7, 2
	addi.w	$a3, $a3, 159
	bge	$a2, $a3, .LBB13_17
# %bb.14:
	ld.h	$a2, $fp, 2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB13_17
# %bb.15:
	slli.d	$a3, $t6, 2
	addi.w	$a3, $a3, 159
	bge	$a2, $a3, .LBB13_17
# %bb.16:
	move	$a2, $zero
	b	.LBB13_18
.LBB13_17:
	ori	$a2, $zero, 1
.LBB13_18:
	ld.w	$s0, $sp, 256
	or	$t0, $a1, $a0
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a7, $a5, 1
	pcalau12i	$a0, %got_pc_hi20(ref_access_method)
	ld.d	$a0, $a0, %got_pc_lo12(ref_access_method)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.w	$a2, $a0, 0
	ori	$a0, $zero, 4
	lu12i.w	$a1, 524287
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	blt	$a0, $s1, .LBB13_24
# %bb.19:                               # %.lr.ph
	st.d	$t0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	ld.d	$a0, $a0, %got_pc_lo12(computeUniPred)
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$s7, $a7, $a0, 3
	pcalau12i	$a0, %pc_hi20(search_point_hp)
	addi.d	$a0, $a0, %pc_lo12(search_point_hp)
	alsl.d	$a0, $s1, $a0, 2
	addi.d	$s8, $a0, 2
	addi.d	$s5, $s1, 1
	ori	$s6, $a1, 4095
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$s3, $a0, %got_pc_lo12(mvbits)
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	move	$s2, $zero
	move	$s4, $s6
	b	.LBB13_22
	.p2align	4, , 16
.LBB13_20:                              #   in Loop: Header=BB13_22 Depth=1
	slt	$a1, $a0, $s4
	masknez	$a2, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$s4, $a0, $a2
	masknez	$a0, $s2, $a1
	maskeqz	$a1, $s1, $a1
	or	$s2, $a1, $a0
.LBB13_21:                              #   in Loop: Header=BB13_22 Depth=1
	bstrpick.d	$a0, $s5, 31, 0
	addi.d	$s8, $s8, 4
	addi.w	$s1, $s1, 1
	addi.d	$s5, $s5, 1
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB13_25
.LBB13_22:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $fp, 0
	ld.h	$a1, $s8, -2
	ld.h	$a2, $fp, 2
	ld.h	$a3, $s8, 0
	add.d	$a0, $a1, $a0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.h	$a1, $a4, 0
	add.d	$a2, $a3, $a2
	ld.d	$a3, $s3, 0
	ld.h	$a4, $a4, 2
	sub.d	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	sub.d	$a4, $a2, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	add.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	mul.w	$a1, $a1, $a3
	ld.d	$a6, $s7, 0
	srli.d	$fp, $a1, 16
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a2, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s6
	jirl	$ra, $a6, 0
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB13_20
# %bb.23:                               #   in Loop: Header=BB13_22 Depth=1
	move	$s4, $s0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a0
	b	.LBB13_21
.LBB13_24:
	move	$s2, $zero
	ld.hu	$a0, $s7, 0
	ld.hu	$a2, $fp, 0
	ori	$a1, $zero, 1
	beq	$a0, $a2, .LBB13_31
	b	.LBB13_33
.LBB13_25:                              # %._crit_edge
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	beqz	$a6, .LBB13_30
# %bb.26:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	beqz	$s2, .LBB13_45
# %bb.27:
	xor	$a0, $a6, $s2
	ori	$s1, $zero, 6
	addi.d	$a2, $a0, -1
	ori	$a0, $zero, 5
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	bltu	$s1, $a2, .LBB13_50
# %bb.28:
	ori	$a1, $zero, 7
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI13_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB13_29:
	ori	$a1, $zero, 6
	ori	$s1, $zero, 5
	b	.LBB13_93
.LBB13_30:
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	ld.hu	$a0, $s7, 0
	ld.hu	$a2, $fp, 0
	ori	$a1, $zero, 1
	bne	$a0, $a2, .LBB13_33
.LBB13_31:
	ld.hu	$a0, $s7, 2
	ld.hu	$a2, $fp, 2
	bne	$a0, $a2, .LBB13_33
# %bb.32:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(subthres)
	addi.d	$a2, $a2, %pc_lo12(subthres)
	ldx.w	$a0, $a2, $a0
	blt	$s0, $a0, .LBB13_89
.LBB13_33:
	move	$a6, $zero
	add.w	$a0, $a6, $s2
	ori	$a2, $zero, 7
	bltu	$a2, $a0, .LBB13_46
.LBB13_34:                              # %.thread
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI13_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI13_1)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB13_35:
	ori	$t0, $zero, 5
	ori	$a0, $zero, 5
	bnez	$a1, .LBB13_47
# %bb.36:
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	b	.LBB13_51
.LBB13_37:
	ori	$a0, $zero, 5
	ori	$t0, $zero, 7
	bnez	$a1, .LBB13_47
# %bb.38:
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	ori	$s1, $zero, 5
	ori	$a1, $zero, 7
	b	.LBB13_93
.LBB13_39:
	ori	$a0, $zero, 8
	ori	$t0, $zero, 10
	bnez	$a1, .LBB13_47
# %bb.40:
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	ori	$s1, $zero, 8
	ori	$a1, $zero, 10
	b	.LBB13_93
.LBB13_41:
	ori	$a0, $zero, 6
	ori	$t0, $zero, 8
	bnez	$a1, .LBB13_47
# %bb.42:
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	ori	$s1, $zero, 6
	ori	$a1, $zero, 8
	b	.LBB13_93
.LBB13_43:
	ori	$a0, $zero, 7
	ori	$t0, $zero, 9
	bnez	$a1, .LBB13_47
# %bb.44:
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	ori	$s1, $zero, 7
	ori	$a1, $zero, 9
	b	.LBB13_93
.LBB13_45:
	move	$a1, $zero
	move	$s2, $zero
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	add.w	$a0, $a6, $s2
	ori	$a2, $zero, 7
	bgeu	$a2, $a0, .LBB13_34
.LBB13_46:
	ori	$a0, $zero, 5
	beqz	$a1, .LBB13_49
.LBB13_47:
	ld.h	$a2, $s7, 0
	ld.h	$a1, $fp, 0
	sub.d	$a2, $a2, $a1
	ld.h	$a3, $s7, 2
	ld.h	$a4, $fp, 2
	srai.d	$a5, $a2, 63
	xor	$a2, $a2, $a5
	sub.d	$a2, $a2, $a5
	sub.w	$a3, $a3, $a4
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.w	$a3, $a4, $a3
	bne	$a2, $a3, .LBB13_49
# %bb.48:
	bstrpick.d	$a0, $a1, 15, 0
	b	.LBB13_53
.LBB13_49:
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
.LBB13_50:                              # %.critedge
	move	$s1, $a0
	move	$a1, $t0
	blt	$a0, $t0, .LBB13_93
.LBB13_51:                              # %._crit_edge345
	ld.hu	$a0, $fp, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	beqz	$a3, .LBB13_53
# %bb.52:
	pcalau12i	$a1, %pc_hi20(search_point_hp)
	addi.d	$a1, $a1, %pc_lo12(search_point_hp)
	slli.d	$a2, $a3, 2
	ldx.h	$a2, $a1, $a2
	alsl.d	$a1, $a3, $a1, 2
	add.d	$a0, $a0, $a2
	st.h	$a0, $fp, 0
	ld.h	$a1, $a1, 2
	ld.h	$a2, $fp, 2
	add.d	$a1, $a2, $a1
	st.h	$a1, $fp, 2
.LBB13_53:                              # %.thread309
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s2, $a1, %pc_lo12(start_me_refinement_qp)
	sltui	$a2, $s2, 1
	masknez	$a1, $s0, $a2
	lu12i.w	$a3, 524287
	ori	$s6, $a3, 4095
	ext.w.h	$a0, $a0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	maskeqz	$a0, $s6, $a2
	blez	$a3, .LBB13_57
# %bb.54:                               # %.thread309
	ori	$a2, $zero, 160
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	alsl.w	$a4, $a4, $a2, 2
	bge	$a3, $a4, .LBB13_57
# %bb.55:
	ld.h	$a3, $fp, 2
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	blez	$a3, .LBB13_57
# %bb.56:
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	alsl.w	$a4, $a4, $a2, 2
	move	$a2, $zero
	blt	$a3, $a4, .LBB13_58
.LBB13_57:
	ori	$a2, $zero, 1
.LBB13_58:
	ld.d	$a6, $sp, 248
	or	$s0, $a0, $a1
	ld.w	$a0, $s8, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.w	$a2, $a5, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a5, $a0, 2
	ori	$a0, $zero, 4
	pcalau12i	$a1, %pc_hi20(search_point_qp)
	addi.d	$s8, $a1, %pc_lo12(search_point_qp)
	blt	$a0, $s2, .LBB13_64
# %bb.59:                               # %.lr.ph354
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	ld.d	$a0, $a0, %got_pc_lo12(computeUniPred)
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$s7, $a5, $a0, 3
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$a0, $s2, $s8, 2
	addi.d	$s8, $a0, 2
	addi.d	$s5, $s2, 1
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$s1, $a0, %got_pc_lo12(mvbits)
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	move	$s3, $zero
	move	$s4, $s6
	b	.LBB13_62
	.p2align	4, , 16
.LBB13_60:                              #   in Loop: Header=BB13_62 Depth=1
	slt	$a1, $a0, $s4
	masknez	$a2, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$s4, $a0, $a2
	masknez	$a0, $s3, $a1
	maskeqz	$a1, $s2, $a1
	or	$s3, $a1, $a0
.LBB13_61:                              #   in Loop: Header=BB13_62 Depth=1
	bstrpick.d	$a0, $s5, 31, 0
	addi.d	$s8, $s8, 4
	addi.w	$s2, $s2, 1
	addi.d	$s5, $s5, 1
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB13_65
.LBB13_62:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $fp, 0
	ld.h	$a1, $s8, -2
	ld.h	$a2, $fp, 2
	ld.h	$a3, $s8, 0
	add.d	$a0, $a1, $a0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.h	$a1, $a4, 0
	add.d	$a2, $a3, $a2
	ld.d	$a3, $s1, 0
	ld.h	$a4, $a4, 2
	sub.d	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	sub.d	$a4, $a2, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	add.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	mul.w	$a1, $a1, $a3
	ld.d	$a6, $s7, 0
	srli.d	$fp, $a1, 16
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a2, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s6
	jirl	$ra, $a6, 0
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB13_60
# %bb.63:                               #   in Loop: Header=BB13_62 Depth=1
	move	$s4, $s0
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a0
	b	.LBB13_61
.LBB13_64:
	move	$s3, $zero
	ld.hu	$a0, $s7, 0
	ld.hu	$a2, $fp, 0
	ori	$a1, $zero, 1
	beq	$a0, $a2, .LBB13_71
	b	.LBB13_73
.LBB13_65:                              # %._crit_edge355
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	beqz	$a3, .LBB13_70
# %bb.66:
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	beqz	$s3, .LBB13_90
# %bb.67:
	xor	$a0, $a3, $s3
	ori	$s2, $zero, 6
	addi.d	$a2, $a0, -1
	ori	$a0, $zero, 5
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	bltu	$s2, $a2, .LBB13_86
# %bb.68:
	ori	$a1, $zero, 7
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI13_2)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_2)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB13_69:
	ori	$a1, $zero, 6
	ori	$s2, $zero, 5
	b	.LBB13_99
.LBB13_70:
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ld.hu	$a0, $s7, 0
	ld.hu	$a2, $fp, 0
	ori	$a1, $zero, 1
	bne	$a0, $a2, .LBB13_73
.LBB13_71:
	ld.hu	$a0, $s7, 2
	ld.hu	$a2, $fp, 2
	bne	$a0, $a2, .LBB13_73
# %bb.72:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(subthres)
	addi.d	$a2, $a2, %pc_lo12(subthres)
	ldx.w	$a0, $a2, $a0
	blt	$s0, $a0, .LBB13_89
.LBB13_73:
	move	$a3, $zero
.LBB13_74:                              # %.thread315
	add.w	$a0, $a3, $s3
	addi.d	$a0, $a0, -1
	ori	$a2, $zero, 6
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	bltu	$a2, $a0, .LBB13_84
# %bb.75:                               # %.thread315
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI13_3)
	addi.d	$a2, $a2, %pc_lo12(.LJTI13_3)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB13_76:
	ori	$a0, $zero, 8
	ori	$a6, $zero, 10
	bnez	$a1, .LBB13_85
# %bb.77:
	ori	$s2, $zero, 8
	ori	$a1, $zero, 10
	b	.LBB13_99
.LBB13_78:
	ori	$a0, $zero, 6
	ori	$a6, $zero, 8
	bnez	$a1, .LBB13_85
# %bb.79:
	ori	$s2, $zero, 6
	ori	$a1, $zero, 8
	b	.LBB13_99
.LBB13_80:
	ori	$a0, $zero, 5
	ori	$a6, $zero, 7
	bnez	$a1, .LBB13_85
# %bb.81:
	ori	$s2, $zero, 5
	ori	$a1, $zero, 7
	b	.LBB13_99
.LBB13_82:
	ori	$a0, $zero, 7
	ori	$a6, $zero, 9
	bnez	$a1, .LBB13_85
# %bb.83:
	ori	$s2, $zero, 7
	ori	$a1, $zero, 9
	b	.LBB13_99
.LBB13_84:
	ori	$a0, $zero, 5
	beqz	$a1, .LBB13_86
.LBB13_85:
	ld.h	$a1, $s7, 0
	ld.h	$a2, $fp, 0
	sub.d	$a1, $a1, $a2
	ld.h	$a2, $s7, 2
	ld.h	$a3, $fp, 2
	srai.d	$a4, $a1, 63
	xor	$a1, $a1, $a4
	sub.d	$a1, $a1, $a4
	sub.w	$a2, $a2, $a3
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$a2, $a3, $a2
	beq	$a1, $a2, .LBB13_89
.LBB13_86:                              # %.critedge328
	move	$s2, $a0
	move	$a1, $a6
	blt	$a0, $a6, .LBB13_99
.LBB13_87:                              # %._crit_edge364
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beqz	$a2, .LBB13_89
# %bb.88:
	slli.d	$a0, $a2, 2
	ldx.h	$a0, $s8, $a0
	ld.h	$a1, $fp, 0
	alsl.d	$a2, $a2, $s8, 2
	add.d	$a0, $a1, $a0
	st.h	$a0, $fp, 0
	ld.h	$a0, $a2, 2
	ld.h	$a1, $fp, 2
	add.d	$a0, $a1, $a0
	st.h	$a0, $fp, 2
.LBB13_89:                              # %.thread321
	move	$a0, $s0
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
.LBB13_90:
	move	$a1, $zero
	move	$s3, $zero
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	b	.LBB13_74
.LBB13_91:
	ori	$a1, $zero, 9
	ori	$s1, $zero, 8
	b	.LBB13_93
.LBB13_92:
	ori	$a1, $zero, 8
	ori	$s1, $zero, 7
.LBB13_93:                              # %.lr.ph344
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	ld.d	$a0, $a0, %got_pc_lo12(computeUniPred)
	alsl.d	$s2, $a7, $a0, 3
	bstrpick.d	$a1, $a1, 31, 0
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$s5, $a0, %got_pc_lo12(mvbits)
	ld.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(search_point_hp)
	addi.d	$a2, $a2, %pc_lo12(search_point_hp)
	alsl.d	$a2, $s1, $a2, 2
	addi.d	$s3, $a2, 2
	sub.d	$s6, $a1, $s1
	b	.LBB13_95
	.p2align	4, , 16
.LBB13_94:                              #   in Loop: Header=BB13_95 Depth=1
	addi.d	$s3, $s3, 4
	addi.d	$s6, $s6, -1
	addi.w	$s1, $s1, 1
	beqz	$s6, .LBB13_51
.LBB13_95:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $fp, 0
	ld.h	$a2, $s3, -2
	ld.h	$a3, $fp, 2
	ld.h	$a4, $s3, 0
	ld.h	$a5, $s7, 0
	add.d	$a1, $a2, $a1
	add.d	$a2, $a4, $a3
	ld.h	$a3, $s7, 2
	sub.d	$a4, $a1, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	sub.d	$a3, $a2, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	add.d	$a3, $a3, $a4
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$s4, $a3, 16
	bge	$s4, $s0, .LBB13_94
# %bb.96:                               #   in Loop: Header=BB13_95 Depth=1
	ld.d	$a6, $s2, 0
	sub.w	$a3, $s0, $s4
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a2, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	add.w	$a1, $a0, $s4
	slt	$a2, $a1, $s0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	masknez	$a0, $a0, $a2
	maskeqz	$a3, $s1, $a2
	or	$a0, $a3, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s0, $a2
	or	$s0, $a1, $a2
	b	.LBB13_94
.LBB13_97:
	ori	$a1, $zero, 9
	ori	$s2, $zero, 8
	b	.LBB13_99
.LBB13_98:
	ori	$a1, $zero, 8
	ori	$s2, $zero, 7
.LBB13_99:                              # %.lr.ph363
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	ld.d	$a0, $a0, %got_pc_lo12(computeUniPred)
	alsl.d	$s3, $a5, $a0, 3
	bstrpick.d	$a1, $a1, 31, 0
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$s1, $a0, %got_pc_lo12(mvbits)
	ld.d	$a0, $s1, 0
	alsl.d	$a2, $s2, $s8, 2
	addi.d	$s5, $a2, 2
	sub.d	$s6, $a1, $s2
	b	.LBB13_101
	.p2align	4, , 16
.LBB13_100:                             #   in Loop: Header=BB13_101 Depth=1
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, -1
	addi.w	$s2, $s2, 1
	beqz	$s6, .LBB13_87
.LBB13_101:                             # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $fp, 0
	ld.h	$a2, $s5, -2
	ld.h	$a3, $fp, 2
	ld.h	$a4, $s5, 0
	ld.h	$a5, $s7, 0
	add.d	$a1, $a2, $a1
	add.d	$a2, $a4, $a3
	ld.h	$a3, $s7, 2
	sub.d	$a4, $a1, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	sub.d	$a3, $a2, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	add.d	$a3, $a3, $a4
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$s4, $a3, 16
	bge	$s4, $s0, .LBB13_100
# %bb.102:                              #   in Loop: Header=BB13_101 Depth=1
	ld.d	$a6, $s3, 0
	sub.w	$a3, $s0, $s4
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a2, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	add.w	$a1, $a0, $s4
	slt	$a2, $a1, $s0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	masknez	$a0, $a0, $a2
	maskeqz	$a3, $s2, $a2
	or	$a0, $a3, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s0, $a2
	or	$s0, $a1, $a2
	b	.LBB13_100
.Lfunc_end13:
	.size	EPZSSubPelBlockMotionSearch, .Lfunc_end13-EPZSSubPelBlockMotionSearch
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.word	.LBB13_93-.LJTI13_0
	.word	.LBB13_50-.LJTI13_0
	.word	.LBB13_29-.LJTI13_0
	.word	.LBB13_50-.LJTI13_0
	.word	.LBB13_91-.LJTI13_0
	.word	.LBB13_50-.LJTI13_0
	.word	.LBB13_92-.LJTI13_0
.LJTI13_1:
	.word	.LBB13_35-.LJTI13_1
	.word	.LBB13_39-.LJTI13_1
	.word	.LBB13_37-.LJTI13_1
	.word	.LBB13_46-.LJTI13_1
	.word	.LBB13_46-.LJTI13_1
	.word	.LBB13_41-.LJTI13_1
	.word	.LBB13_46-.LJTI13_1
	.word	.LBB13_43-.LJTI13_1
.LJTI13_2:
	.word	.LBB13_99-.LJTI13_2
	.word	.LBB13_86-.LJTI13_2
	.word	.LBB13_69-.LJTI13_2
	.word	.LBB13_86-.LJTI13_2
	.word	.LBB13_97-.LJTI13_2
	.word	.LBB13_86-.LJTI13_2
	.word	.LBB13_98-.LJTI13_2
.LJTI13_3:
	.word	.LBB13_76-.LJTI13_3
	.word	.LBB13_80-.LJTI13_3
	.word	.LBB13_84-.LJTI13_3
	.word	.LBB13_84-.LJTI13_3
	.word	.LBB13_78-.LJTI13_3
	.word	.LBB13_84-.LJTI13_3
	.word	.LBB13_82-.LJTI13_3
                                        # -- End function
	.text
	.globl	EPZSSubPelBlockSearchBiPred     # -- Begin function EPZSSubPelBlockSearchBiPred
	.p2align	5
	.type	EPZSSubPelBlockSearchBiPred,@function
EPZSSubPelBlockSearchBiPred:            # @EPZSSubPelBlockSearchBiPred
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(active_pps)
	ld.d	$t0, $t0, %pc_lo12(active_pps)
	ld.d	$s0, $sp, 344
	ld.d	$t3, $sp, 320
	ld.d	$t8, $sp, 312
	ld.w	$s6, $t0, 196
	move	$s8, $a7
	st.d	$a6, $sp, 208                   # 8-byte Folded Spill
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a6, $a0, 12
	ldptr.d	$a0, $a0, 14224
	ori	$a7, $zero, 536
	mul.d	$a6, $a6, $a7
	add.d	$a0, $a0, $a6
	ld.w	$t2, $a0, 432
	ori	$a6, $zero, 1
	beqz	$s6, .LBB14_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(wp_offset)
	ld.d	$a0, $a0, %pc_lo12(wp_offset)
	alsl.d	$a0, $t2, $a0, 3
	beqz	$a2, .LBB14_4
# %bb.2:
	ld.d	$a7, $a0, 8
	ld.d	$a0, $a0, 0
	b	.LBB14_5
.LBB14_3:
	move	$t4, $zero
	ori	$t5, $zero, 1
	b	.LBB14_6
.LBB14_4:
	ld.d	$a7, $a0, 0
	ld.d	$a0, $a0, 8
	alsl.d	$a7, $a1, $a7, 3
	alsl.d	$a0, $a1, $a0, 3
.LBB14_5:                               # %.sink.split
	ld.d	$a7, $a7, 0
	ld.d	$a0, $a0, 0
	ld.h	$a7, $a7, 0
	ld.h	$t4, $a0, 0
	addi.d	$t5, $a7, 1
.LBB14_6:
	ld.d	$a0, $sp, 336
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	alsl.d	$a0, $a5, $a0, 3
	ld.w	$s1, $a0, 72
	ld.w	$s2, $a0, 76
	ori	$t1, $zero, 80
	lu12i.w	$a0, 524287
	pcalau12i	$a5, %pc_hi20(start_me_refinement_qp)
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a7, $a5, %pc_lo12(start_me_refinement_qp)
	ori	$a5, $a0, 4095
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(start_me_refinement_hp)
	ld.w	$a5, $a5, %pc_lo12(start_me_refinement_hp)
	sltu	$t7, $zero, $a7
	slt	$a7, $a6, $t3
	masknez	$t0, $a6, $a7
	maskeqz	$t6, $t3, $a7
	ld.h	$a6, $t8, 0
	st.d	$t8, $sp, 88                    # 8-byte Folded Spill
	ld.h	$a7, $t8, 2
	or	$t0, $t6, $t0
	add.w	$t6, $t2, $a2
	slli.d	$t6, $t6, 3
	pcalau12i	$t8, %got_pc_hi20(listX)
	ld.d	$t8, $t8, %got_pc_lo12(listX)
	ldx.d	$t6, $t8, $t6
	xori	$fp, $a2, 1
	add.w	$fp, $t2, $fp
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $t8, $fp
	slli.d	$t8, $a1, 3
	ldx.d	$t8, $t6, $t8
	ld.d	$s5, $fp, 0
	lu12i.w	$s3, 1
	ori	$t6, $s3, 2296
	ldx.w	$t6, $t8, $t6
	ori	$fp, $s3, 2300
	ldx.w	$fp, $t8, $fp
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s0, $s0, 4
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	ldptr.d	$s0, $t8, 6448
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	sub.d	$s1, $t6, $s1
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	sub.d	$s1, $fp, $s2
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s1, %got_pc_hi20(ref_pic1_sub)
	ld.d	$s1, $s1, %got_pc_lo12(ref_pic1_sub)
	ldptr.d	$s4, $s5, 6448
	st.d	$s0, $s1, 0
	pcalau12i	$s0, %got_pc_hi20(ref_pic2_sub)
	ld.d	$s2, $s0, %got_pc_lo12(ref_pic2_sub)
	st.d	$s4, $s2, 0
	pcalau12i	$s0, %got_pc_hi20(img_width)
	ld.d	$s0, $s0, %got_pc_lo12(img_width)
	st.h	$t6, $s0, 0
	pcalau12i	$t6, %got_pc_hi20(img_height)
	ld.d	$t6, $t6, %got_pc_lo12(img_height)
	st.h	$fp, $t6, 0
	ori	$t6, $s3, 2312
	ldx.w	$t6, $t8, $t6
	ori	$fp, $s3, 2316
	ldx.w	$fp, $t8, $fp
	pcalau12i	$s0, %pc_hi20(width_pad)
	st.w	$t6, $s0, %pc_lo12(width_pad)
	pcalau12i	$t6, %pc_hi20(height_pad)
	st.w	$fp, $t6, %pc_lo12(height_pad)
	pcalau12i	$fp, %pc_hi20(wbp_weight)
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	beqz	$s6, .LBB14_9
# %bb.7:
	ld.d	$t6, $fp, %pc_lo12(wbp_weight)
	alsl.d	$t6, $t2, $t6, 3
	beqz	$a2, .LBB14_10
# %bb.8:
	ld.d	$s0, $t6, 8
	ld.d	$t6, $t6, 0
	ld.d	$s0, $s0, 0
	ld.d	$t6, $t6, 0
	alsl.d	$s0, $a1, $s0, 3
	alsl.d	$t6, $a1, $t6, 3
	b	.LBB14_11
.LBB14_9:
	pcalau12i	$t4, %pc_hi20(luma_log_weight_denom)
	ld.wu	$t4, $t4, %pc_lo12(luma_log_weight_denom)
	ori	$t5, $zero, 1
	sll.w	$t4, $t5, $t4
	pcalau12i	$t5, %got_pc_hi20(weight1)
	ld.d	$t5, $t5, %got_pc_lo12(weight1)
	st.h	$t4, $t5, 0
	pcalau12i	$t5, %got_pc_hi20(weight2)
	ld.d	$t5, $t5, %got_pc_lo12(weight2)
	st.h	$t4, $t5, 0
	pcalau12i	$t4, %got_pc_hi20(computeBiPred1)
	ld.d	$t4, $t4, %got_pc_lo12(computeBiPred1)
	move	$s0, $zero
	b	.LBB14_12
.LBB14_10:
	ld.d	$s0, $t6, 0
	ld.d	$t6, $t6, 8
	slli.d	$s4, $a1, 3
	ldx.d	$s0, $s0, $s4
	ldx.d	$t6, $t6, $s4
.LBB14_11:
	ld.d	$s0, $s0, 0
	ld.h	$s0, $s0, 0
	pcalau12i	$s4, %got_pc_hi20(weight1)
	ld.d	$s4, $s4, %got_pc_lo12(weight1)
	ld.d	$t6, $t6, 0
	ld.h	$t6, $t6, 0
	st.h	$s0, $s4, 0
	pcalau12i	$s0, %got_pc_hi20(weight2)
	ld.d	$s0, $s0, %got_pc_lo12(weight2)
	st.h	$t6, $s0, 0
	add.d	$t4, $t5, $t4
	bstrpick.d	$s0, $t4, 31, 1
	pcalau12i	$t4, %got_pc_hi20(computeBiPred2)
	ld.d	$t4, $t4, %got_pc_lo12(computeBiPred2)
.LBB14_12:
	addi.d	$s6, $t4, 8
	slli.d	$t5, $a3, 2
	slli.d	$t6, $a4, 2
	masknez	$t4, $t0, $t7
	maskeqz	$t7, $t3, $t7
	ld.d	$ra, $sp, 304
	ld.d	$t3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	xor	$t3, $s4, $t3
	alsl.w	$a3, $a3, $t1, 2
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	pcalau12i	$s7, %got_pc_hi20(offsetBi)
	ld.d	$s7, $s7, %got_pc_lo12(offsetBi)
	ld.d	$s6, $s6, 0
	st.h	$s0, $s7, 0
	pcalau12i	$s0, %got_pc_hi20(computeBiPred)
	ld.d	$s0, $s0, %got_pc_lo12(computeBiPred)
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s6, $s0, 0
	pcalau12i	$s0, %got_pc_hi20(ChromaMEEnable)
	ld.d	$s0, $s0, %got_pc_lo12(ChromaMEEnable)
	ld.w	$s0, $s0, 0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	beqz	$s0, .LBB14_20
# %bb.13:
	ldptr.d	$s0, $t8, 6464
	ld.d	$s6, $s0, 0
	st.d	$s6, $s1, 8
	ld.d	$s0, $s0, 8
	ldptr.d	$s5, $s5, 6464
	st.d	$s0, $s1, 16
	ld.d	$s0, $s5, 0
	st.d	$s0, $s2, 8
	ld.d	$s0, $s5, 8
	st.d	$s0, $s2, 16
	ori	$s0, $s3, 2320
	ldx.w	$s0, $t8, $s0
	ori	$s1, $s3, 2324
	ldx.w	$t8, $t8, $s1
	pcalau12i	$s1, %pc_hi20(width_pad_cr)
	st.w	$s0, $s1, %pc_lo12(width_pad_cr)
	pcalau12i	$s0, %pc_hi20(height_pad_cr)
	st.w	$t8, $s0, %pc_lo12(height_pad_cr)
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	beqz	$t8, .LBB14_16
# %bb.14:
	ld.d	$t8, $fp, %pc_lo12(wbp_weight)
	alsl.d	$t8, $t2, $t8, 3
	beqz	$a2, .LBB14_17
# %bb.15:
	ld.d	$a2, $t8, 8
	ld.d	$a2, $a2, 0
	slli.d	$fp, $a1, 3
	ldx.d	$a2, $a2, $fp
	ld.h	$fp, $a2, 4
	pcalau12i	$s0, %got_pc_hi20(weight1_cr)
	ld.d	$s0, $s0, %got_pc_lo12(weight1_cr)
	ld.d	$t8, $t8, 0
	pcalau12i	$s1, %pc_hi20(wp_offset)
	ld.d	$s1, $s1, %pc_lo12(wp_offset)
	ld.h	$a2, $a2, 8
	ld.d	$s2, $t8, 0
	alsl.d	$t8, $t2, $s1, 3
	slli.d	$t2, $t2, 3
	ld.d	$t8, $t8, 8
	ldx.d	$t2, $s1, $t2
	st.h	$fp, $s0, 0
	st.h	$a2, $s0, 2
	alsl.d	$a2, $a1, $s2, 3
	b	.LBB14_18
.LBB14_16:
	pcalau12i	$a1, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a1, $a1, %pc_lo12(chroma_log_weight_denom)
	ori	$a2, $zero, 1
	sll.w	$a1, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(weight1_cr)
	ld.d	$a2, $a2, %got_pc_lo12(weight1_cr)
	st.h	$a1, $a2, 0
	st.h	$a1, $a2, 2
	pcalau12i	$a2, %got_pc_hi20(weight2_cr)
	ld.d	$a2, $a2, %got_pc_lo12(weight2_cr)
	st.h	$a1, $a2, 0
	st.h	$a1, $a2, 2
	pcalau12i	$a1, %got_pc_hi20(offsetBi_cr)
	ld.d	$a2, $a1, %got_pc_lo12(offsetBi_cr)
	move	$a1, $zero
	st.h	$zero, $a2, 0
	b	.LBB14_19
.LBB14_17:
	ld.d	$a2, $t8, 0
	slli.d	$fp, $a1, 3
	ldx.d	$a2, $a2, $fp
	ld.d	$a2, $a2, 0
	ld.h	$s0, $a2, 4
	pcalau12i	$s1, %got_pc_hi20(weight1_cr)
	ld.d	$s1, $s1, %got_pc_lo12(weight1_cr)
	pcalau12i	$s2, %pc_hi20(wp_offset)
	ld.d	$s2, $s2, %pc_lo12(wp_offset)
	st.h	$s0, $s1, 0
	ld.h	$s0, $a2, 8
	ld.d	$a2, $t8, 8
	alsl.d	$t8, $t2, $s2, 3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $s2, $t2
	ld.d	$s2, $t8, 8
	ldx.d	$a2, $a2, $fp
	st.h	$s0, $s1, 2
	alsl.d	$t8, $a1, $t2, 3
	alsl.d	$t2, $a1, $s2, 3
.LBB14_18:
	ld.d	$a1, $t8, 0
	ld.d	$t2, $t2, 0
	ld.w	$t8, $a1, 4
	ld.w	$fp, $t2, 4
	ld.d	$a2, $a2, 0
	add.d	$t8, $t8, $fp
	ld.w	$a1, $a1, 8
	ld.w	$t2, $t2, 8
	ld.h	$fp, $a2, 8
	ld.h	$a2, $a2, 4
	addi.d	$t8, $t8, 1
	add.d	$a1, $t2, $a1
	srli.d	$t2, $t8, 1
	pcalau12i	$t8, %got_pc_hi20(weight2_cr)
	ld.d	$t8, $t8, %got_pc_lo12(weight2_cr)
	st.h	$a2, $t8, 0
	st.h	$fp, $t8, 2
	pcalau12i	$a2, %got_pc_hi20(offsetBi_cr)
	ld.d	$a2, $a2, %got_pc_lo12(offsetBi_cr)
	st.h	$t2, $a2, 0
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 1
.LBB14_19:                              # %.sink.split563
	pcalau12i	$a2, %got_pc_hi20(offsetBi_cr)
	ld.d	$a2, $a2, %got_pc_lo12(offsetBi_cr)
	st.h	$a1, $a2, 2
.LBB14_20:
	addi.d	$a2, $t5, 80
	addi.d	$t2, $t6, 80
	sltu	$t5, $zero, $a5
	or	$t4, $t7, $t4
	ld.h	$t6, $ra, 0
	sltui	$t3, $t3, 1
	alsl.w	$a1, $a4, $t1, 2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	add.w	$a4, $a4, $t6
	ori	$t1, $zero, 2
	addi.w	$a3, $a3, 159
	blt	$a4, $t1, .LBB14_25
# %bb.21:
	bge	$a4, $a3, .LBB14_25
# %bb.22:
	ld.h	$a4, $ra, 2
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	add.w	$a4, $t1, $a4
	ori	$t1, $zero, 2
	blt	$a4, $t1, .LBB14_25
# %bb.23:
	addi.w	$t1, $a1, 159
	bge	$a4, $t1, .LBB14_25
# %bb.24:
	move	$t1, $zero
	b	.LBB14_26
.LBB14_25:
	ori	$t1, $zero, 1
.LBB14_26:
	masknez	$a4, $t0, $t5
	maskeqz	$t0, $t4, $t5
	add.w	$a2, $a2, $a6
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	add.w	$a2, $t2, $a7
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	masknez	$s3, $a5, $t3
	pcalau12i	$a2, %got_pc_hi20(bipred2_access_method)
	ld.d	$s6, $a2, %got_pc_lo12(bipred2_access_method)
	ld.h	$a2, $s4, 0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	add.w	$a2, $a5, $a2
	ori	$a5, $zero, 2
	st.w	$t1, $s6, 0
	blt	$a2, $a5, .LBB14_31
# %bb.27:
	bge	$a2, $a3, .LBB14_31
# %bb.28:
	ld.h	$a2, $s4, 2
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB14_31
# %bb.29:
	addi.w	$a1, $a1, 159
	bge	$a2, $a1, .LBB14_31
# %bb.30:
	move	$a1, $zero
	b	.LBB14_32
.LBB14_31:
	ori	$a1, $zero, 1
.LBB14_32:
	or	$a6, $t0, $a4
	pcalau12i	$a2, %got_pc_hi20(bipred1_access_method)
	ld.d	$a2, $a2, %got_pc_lo12(bipred1_access_method)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	ori	$a1, $zero, 4
	pcalau12i	$a2, %pc_hi20(search_point_hp)
	addi.d	$a2, $a2, %pc_lo12(search_point_hp)
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	blt	$a1, $s3, .LBB14_38
# %bb.33:                               # %.lr.ph
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$a1, $s3, $a2, 2
	addi.d	$s2, $a1, 2
	addi.d	$s1, $s3, 1
	ori	$fp, $a0, 4095
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$s6, $a0, %got_pc_lo12(mvbits)
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	move	$s5, $zero
	move	$s7, $fp
	b	.LBB14_36
	.p2align	4, , 16
.LBB14_34:                              #   in Loop: Header=BB14_36 Depth=1
	addi.w	$a1, $s7, 0
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s7, $a0, $a1
	masknez	$a0, $s5, $a2
	maskeqz	$a1, $s3, $a2
	or	$s5, $a1, $a0
.LBB14_35:                              #   in Loop: Header=BB14_36 Depth=1
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s2, $s2, 4
	addi.w	$s3, $s3, 1
	addi.d	$s1, $s1, 1
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB14_45
.LBB14_36:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $ra, 0
	ld.h	$a1, $s2, -2
	ld.h	$a2, $ra, 2
	ld.h	$a3, $s2, 0
	add.d	$a0, $a1, $a0
	add.d	$a1, $a3, $a2
	ld.h	$a2, $s4, 0
	ld.h	$a3, $s8, 0
	ld.h	$a4, $s4, 2
	ld.h	$a5, $s8, 2
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.h	$a6, $a7, 0
	sub.d	$a2, $a2, $a3
	ld.d	$a3, $s6, 0
	sub.d	$a4, $a4, $a5
	ld.h	$a5, $a7, 2
	sub.d	$a6, $a0, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	sub.d	$a5, $a1, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	add.d	$a4, $a5, $a6
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	mul.w	$a4, $a4, $a5
	srli.d	$s0, $a4, 16
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $a5
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t0, $a3, 0
	srli.d	$s8, $a2, 16
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.w	$a7, $a1, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	add.d	$a0, $a0, $s0
	add.w	$a0, $a0, $s8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a1, $a2, 0
	bge	$a0, $a1, .LBB14_34
# %bb.37:                               #   in Loop: Header=BB14_36 Depth=1
	move	$s7, $a2
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB14_35
.LBB14_38:
	move	$a1, $zero
	move	$a4, $zero
	move	$s5, $zero
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
.LBB14_39:                              # %._crit_edge.thread
	add.w	$a2, $a4, $s5
	ori	$a3, $zero, 7
	ori	$a0, $zero, 5
	bltu	$a3, $a2, .LBB14_50
# %bb.40:                               # %._crit_edge.thread
	ori	$a3, $zero, 167
	srl.d	$a3, $a3, $a2
	andi	$a3, $a3, 1
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	beqz	$a3, .LBB14_42
# %bb.41:                               # %switch.lookup
	slli.d	$a2, $a2, 2
	pcalau12i	$a0, %pc_hi20(.Lswitch.table.EPZSSubPelBlockSearchBiPred)
	addi.d	$a0, $a0, %pc_lo12(.Lswitch.table.EPZSSubPelBlockSearchBiPred)
	ldx.w	$a0, $a0, $a2
	pcalau12i	$a3, %pc_hi20(.Lswitch.table.EPZSSubPelBlockSearchBiPred.5)
	addi.d	$a3, $a3, %pc_lo12(.Lswitch.table.EPZSSubPelBlockSearchBiPred.5)
	ldx.w	$a6, $a3, $a2
.LBB14_42:
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	bnez	$a1, .LBB14_51
.LBB14_43:
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.h	$a2, $a3, 0
	ld.h	$a1, $ra, 0
	sub.d	$a2, $a2, $a1
	ld.h	$a3, $a3, 2
	ld.h	$a4, $ra, 2
	srai.d	$a5, $a2, 63
	xor	$a2, $a2, $a5
	sub.d	$a2, $a2, $a5
	sub.w	$a3, $a3, $a4
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.w	$a3, $a4, $a3
	bne	$a2, $a3, .LBB14_51
# %bb.44:
	bstrpick.d	$a2, $a1, 15, 0
	b	.LBB14_62
.LBB14_45:                              # %._crit_edge
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sltu	$a1, $zero, $a4
	beqz	$a4, .LBB14_56
# %bb.46:                               # %._crit_edge
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	beqz	$s5, .LBB14_39
# %bb.47:
	xor	$a0, $a4, $s5
	ori	$s7, $zero, 6
	addi.d	$a2, $a0, -1
	ori	$a0, $zero, 5
	bltu	$s7, $a2, .LBB14_59
# %bb.48:
	ori	$a1, $zero, 7
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI14_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI14_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	jr	$a2
.LBB14_49:
	ori	$a1, $zero, 6
	ori	$s7, $zero, 5
	b	.LBB14_52
.LBB14_50:
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	beqz	$a1, .LBB14_43
.LBB14_51:                              # %.thread433
	addi.w	$a2, $a6, 0
	move	$s7, $a0
	move	$a1, $a6
	bge	$a0, $a2, .LBB14_60
.LBB14_52:                              # %.lr.ph465
	bstrpick.d	$a2, $s7, 31, 0
	bstrpick.d	$a1, $a1, 31, 0
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$fp, $a0, %got_pc_lo12(mvbits)
	ld.d	$a0, $fp, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	addi.d	$s1, $a3, 2
	sub.d	$s2, $a1, $a2
	b	.LBB14_54
	.p2align	4, , 16
.LBB14_53:                              #   in Loop: Header=BB14_54 Depth=1
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, -1
	addi.w	$s7, $s7, 1
	beqz	$s2, .LBB14_60
.LBB14_54:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $ra, 0
	ld.h	$a2, $s1, -2
	add.d	$a1, $a2, $a1
	ld.h	$a2, $ra, 2
	ld.h	$a3, $s1, 0
	ld.h	$a4, $s4, 0
	ld.h	$a5, $s8, 0
	ld.h	$a6, $s4, 2
	ld.h	$a7, $s8, 2
	add.d	$a2, $a3, $a2
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.h	$a3, $t0, 0
	sub.d	$a4, $a4, $a5
	sub.d	$a5, $a6, $a7
	ld.h	$a6, $t0, 2
	sub.d	$a3, $a1, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	sub.d	$a6, $a2, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	add.d	$a3, $a6, $a3
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a6
	srai.d	$a3, $a3, 16
	add.d	$a4, $a5, $a4
	mul.w	$a4, $a4, $a6
	srai.d	$a4, $a4, 16
	add.d	$s3, $a4, $a3
	addi.w	$s0, $t1, 0
	bge	$s3, $s0, .LBB14_53
# %bb.55:                               #   in Loop: Header=BB14_54 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t1, $s3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.w	$a6, $a1, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.w	$a7, $a2, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	add.w	$a1, $a0, $s3
	slt	$a2, $a1, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	masknez	$a0, $a0, $a2
	maskeqz	$a3, $s7, $a2
	or	$a0, $a3, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s0, $a2
	or	$t1, $a1, $a2
	b	.LBB14_53
.LBB14_56:
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB14_39
.LBB14_57:
	ori	$a1, $zero, 9
	ori	$s7, $zero, 8
	b	.LBB14_52
.LBB14_58:
	ori	$a1, $zero, 8
	ori	$s7, $zero, 7
	b	.LBB14_52
.LBB14_59:
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a6, 0
	move	$s7, $a0
	move	$a1, $a6
	blt	$a0, $a2, .LBB14_52
.LBB14_60:                              # %._crit_edge466
	ld.hu	$a2, $ra, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	beqz	$a3, .LBB14_62
# %bb.61:
	slli.d	$a0, $a3, 2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.h	$a0, $a1, $a0
	alsl.d	$a1, $a3, $a1, 2
	add.d	$a2, $a2, $a0
	st.h	$a2, $ra, 0
	ld.h	$a0, $a1, 2
	ld.h	$a1, $ra, 2
	add.d	$a0, $a1, $a0
	st.h	$a0, $ra, 2
.LBB14_62:                              # %.thread438
	ori	$a3, $zero, 160
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.w	$a1, $a0, $a3, 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.w	$a0, $a0, $a3, 2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	sltui	$a3, $a3, 1
	pcalau12i	$a4, %got_pc_hi20(computeBiPred2)
	ld.d	$a4, $a4, %got_pc_lo12(computeBiPred2)
	pcalau12i	$a5, %got_pc_hi20(computeBiPred1)
	ld.d	$a5, $a5, %got_pc_lo12(computeBiPred1)
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	ld.d	$a3, $a3, 16
	ext.w.h	$a2, $a2
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	add.w	$a2, $a4, $a2
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	st.d	$a3, $a4, 0
	blez	$a2, .LBB14_66
# %bb.63:                               # %.thread438
	bge	$a2, $a1, .LBB14_66
# %bb.64:
	ld.h	$a2, $ra, 2
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a2
	blez	$a3, .LBB14_66
# %bb.65:
	move	$a2, $zero
	blt	$a3, $a0, .LBB14_67
.LBB14_66:
	ori	$a2, $zero, 1
.LBB14_67:
	ld.h	$a3, $s4, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	st.w	$a2, $s6, 0
	blez	$a3, .LBB14_71
# %bb.68:
	bge	$a3, $a1, .LBB14_71
# %bb.69:
	ld.h	$a1, $s4, 2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	blez	$a2, .LBB14_71
# %bb.70:
	move	$a1, $zero
	blt	$a2, $a0, .LBB14_72
.LBB14_71:
	ori	$a1, $zero, 1
.LBB14_72:
	ld.w	$s3, $s5, %pc_lo12(start_me_refinement_qp)
	ld.d	$a5, $sp, 328
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	sltui	$a0, $s3, 1
	masknez	$a1, $t1, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s2, $a2, 8
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	maskeqz	$a0, $s7, $a0
	or	$s0, $a0, $a1
	ori	$a0, $zero, 4
	pcalau12i	$a1, %pc_hi20(search_point_qp)
	addi.d	$a1, $a1, %pc_lo12(search_point_qp)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	blt	$a0, $s3, .LBB14_78
# %bb.73:                               # %.lr.ph475
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a0, $s3, $a1, 2
	addi.d	$s6, $a0, 2
	addi.d	$s1, $s3, 1
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$fp, $a0, %got_pc_lo12(mvbits)
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	move	$s5, $zero
	b	.LBB14_76
	.p2align	4, , 16
.LBB14_74:                              #   in Loop: Header=BB14_76 Depth=1
	addi.w	$a1, $s7, 0
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s7, $a0, $a1
	masknez	$a0, $s5, $a2
	maskeqz	$a1, $s3, $a2
	or	$s5, $a1, $a0
.LBB14_75:                              #   in Loop: Header=BB14_76 Depth=1
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s6, $s6, 4
	addi.w	$s3, $s3, 1
	addi.d	$s1, $s1, 1
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB14_92
.LBB14_76:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $ra, 0
	ld.h	$a1, $s6, -2
	ld.h	$a2, $ra, 2
	ld.h	$a3, $s6, 0
	add.d	$a0, $a1, $a0
	add.d	$a1, $a3, $a2
	ld.h	$a2, $s4, 0
	ld.h	$a3, $s8, 0
	ld.h	$a4, $s4, 2
	ld.h	$a5, $s8, 2
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.h	$a6, $a7, 0
	sub.d	$a2, $a2, $a3
	ld.d	$a3, $fp, 0
	sub.d	$a4, $a4, $a5
	ld.h	$a5, $a7, 2
	sub.d	$a6, $a0, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	sub.d	$a5, $a1, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	add.d	$a4, $a5, $a6
	mul.w	$a4, $a4, $s2
	srli.d	$s8, $a4, 16
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $s2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t0, $a3, 0
	srli.d	$s4, $a2, 16
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.w	$a7, $a1, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	add.d	$a0, $a0, $s8
	add.w	$a0, $a0, $s4
	addi.w	$a1, $s0, 0
	bge	$a0, $a1, .LBB14_74
# %bb.77:                               #   in Loop: Header=BB14_76 Depth=1
	move	$s7, $s0
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	move	$s0, $a0
	b	.LBB14_75
.LBB14_78:
	move	$a1, $zero
	move	$a4, $zero
	move	$s5, $zero
.LBB14_79:                              # %._crit_edge476.thread
	add.d	$a0, $a4, $s5
	addi.w	$a2, $a0, -1
	ori	$a3, $zero, 6
	ori	$a0, $zero, 5
	bltu	$a3, $a2, .LBB14_82
# %bb.80:                               # %._crit_edge476.thread
	ori	$a3, $zero, 83
	srl.d	$a3, $a3, $a2
	andi	$a3, $a3, 1
	beqz	$a3, .LBB14_82
# %bb.81:                               # %switch.lookup570
	slli.d	$a2, $a2, 2
	pcalau12i	$a0, %pc_hi20(.Lswitch.table.EPZSSubPelBlockSearchBiPred.6)
	addi.d	$a0, $a0, %pc_lo12(.Lswitch.table.EPZSSubPelBlockSearchBiPred.6)
	ldx.w	$a0, $a0, $a2
	pcalau12i	$a3, %pc_hi20(.Lswitch.table.EPZSSubPelBlockSearchBiPred.7)
	addi.d	$a3, $a3, %pc_lo12(.Lswitch.table.EPZSSubPelBlockSearchBiPred.7)
	ldx.w	$a5, $a3, $a2
.LBB14_82:
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	bnez	$a1, .LBB14_84
# %bb.83:
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.h	$a1, $a3, 0
	ld.h	$a2, $ra, 0
	sub.d	$a1, $a1, $a2
	ld.h	$a2, $a3, 2
	ld.h	$a3, $ra, 2
	srai.d	$a4, $a1, 63
	xor	$a1, $a1, $a4
	sub.d	$a1, $a1, $a4
	sub.w	$a2, $a2, $a3
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$a2, $a3, $a2
	beq	$a1, $a2, .LBB14_91
.LBB14_84:                              # %.thread444
	addi.w	$a2, $a5, 0
	move	$s3, $a0
	move	$a1, $a5
	bge	$a0, $a2, .LBB14_89
.LBB14_85:                              # %.lr.ph483
	bstrpick.d	$a2, $s3, 31, 0
	bstrpick.d	$a1, $a1, 31, 0
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$fp, $a0, %got_pc_lo12(mvbits)
	ld.d	$a0, $fp, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	addi.d	$s1, $a3, 2
	sub.d	$s5, $a1, $a2
	b	.LBB14_87
	.p2align	4, , 16
.LBB14_86:                              #   in Loop: Header=BB14_87 Depth=1
	addi.d	$s1, $s1, 4
	addi.d	$s5, $s5, -1
	addi.w	$s3, $s3, 1
	beqz	$s5, .LBB14_89
.LBB14_87:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $ra, 0
	ld.h	$a2, $s1, -2
	add.d	$a1, $a2, $a1
	ld.h	$a2, $ra, 2
	ld.h	$a3, $s1, 0
	ld.h	$a4, $s4, 0
	ld.h	$a5, $s8, 0
	ld.h	$a6, $s4, 2
	ld.h	$a7, $s8, 2
	add.d	$a2, $a3, $a2
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.h	$a3, $t0, 0
	sub.d	$a4, $a4, $a5
	sub.d	$a5, $a6, $a7
	ld.h	$a6, $t0, 2
	sub.d	$a3, $a1, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	sub.d	$a6, $a2, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	add.d	$a3, $a6, $a3
	mul.w	$a3, $a3, $s2
	srai.d	$a3, $a3, 16
	add.d	$a4, $a5, $a4
	mul.w	$a4, $a4, $s2
	srai.d	$a4, $a4, 16
	add.d	$s7, $a4, $a3
	addi.w	$s6, $s0, 0
	bge	$s7, $s6, .LBB14_86
# %bb.88:                               #   in Loop: Header=BB14_87 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $s0, $s7
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.w	$a6, $a1, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.w	$a7, $a2, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	add.w	$a1, $a0, $s7
	slt	$a2, $a1, $s6
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	masknez	$a0, $a0, $a2
	maskeqz	$a3, $s3, $a2
	or	$a0, $a3, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s6, $a2
	or	$s0, $a1, $a2
	b	.LBB14_86
.LBB14_89:                              # %._crit_edge484
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	beqz	$a3, .LBB14_91
# %bb.90:
	slli.d	$a0, $a3, 2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.h	$a0, $a2, $a0
	ld.h	$a1, $ra, 0
	alsl.d	$a2, $a3, $a2, 2
	add.d	$a0, $a1, $a0
	st.h	$a0, $ra, 0
	ld.h	$a0, $a2, 2
	ld.h	$a1, $ra, 2
	add.d	$a0, $a1, $a0
	st.h	$a0, $ra, 2
.LBB14_91:                              # %.thread449
	addi.w	$a0, $s0, 0
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB14_92:                              # %._crit_edge476
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sltu	$a1, $zero, $a4
	beqz	$a4, .LBB14_97
# %bb.93:                               # %._crit_edge476
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	beqz	$s5, .LBB14_79
# %bb.94:
	xor	$a0, $a4, $s5
	ori	$s3, $zero, 6
	addi.d	$a2, $a0, -1
	ori	$a0, $zero, 5
	bltu	$s3, $a2, .LBB14_84
# %bb.95:
	ori	$a1, $zero, 7
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI14_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI14_1)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB14_96:
	ori	$a1, $zero, 6
	ori	$s3, $zero, 5
	b	.LBB14_85
.LBB14_97:
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	b	.LBB14_79
.LBB14_98:
	ori	$a1, $zero, 9
	ori	$s3, $zero, 8
	b	.LBB14_85
.LBB14_99:
	ori	$a1, $zero, 8
	ori	$s3, $zero, 7
	b	.LBB14_85
.Lfunc_end14:
	.size	EPZSSubPelBlockSearchBiPred, .Lfunc_end14-EPZSSubPelBlockSearchBiPred
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI14_0:
	.word	.LBB14_52-.LJTI14_0
	.word	.LBB14_51-.LJTI14_0
	.word	.LBB14_49-.LJTI14_0
	.word	.LBB14_51-.LJTI14_0
	.word	.LBB14_57-.LJTI14_0
	.word	.LBB14_51-.LJTI14_0
	.word	.LBB14_58-.LJTI14_0
.LJTI14_1:
	.word	.LBB14_85-.LJTI14_1
	.word	.LBB14_84-.LJTI14_1
	.word	.LBB14_96-.LJTI14_1
	.word	.LBB14_84-.LJTI14_1
	.word	.LBB14_98-.LJTI14_1
	.word	.LBB14_84-.LJTI14_1
	.word	.LBB14_99-.LJTI14_1
                                        # -- End function
	.type	c_EPZSPattern,@object           # @c_EPZSPattern
	.globl	c_EPZSPattern
c_EPZSPattern:
	.asciz	"Diamond\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Square\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Extended Diamond\000\000\000"
	.asciz	"Large Diamond\000\000\000\000\000\000"
	.asciz	"SBP Large Diamond\000\000"
	.asciz	"PMVFAST\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	c_EPZSPattern, 120

	.type	c_EPZSDualPattern,@object       # @c_EPZSDualPattern
	.globl	c_EPZSDualPattern
c_EPZSDualPattern:
	.asciz	"Disabled\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Diamond\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Square\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Extended Diamond\000\000\000"
	.asciz	"Large Diamond\000\000\000\000\000\000"
	.asciz	"SBP Large Diamond\000\000"
	.asciz	"PMVFAST\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	c_EPZSDualPattern, 140

	.type	c_EPZSFixed,@object             # @c_EPZSFixed
	.globl	c_EPZSFixed
c_EPZSFixed:
	.asciz	"Disabled\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"All P\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"All P + B\000\000\000\000\000\000\000\000\000\000"
	.size	c_EPZSFixed, 60

	.type	c_EPZSOther,@object             # @c_EPZSOther
	.globl	c_EPZSOther
c_EPZSOther:
	.asciz	"Disabled\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Enabled\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	c_EPZSOther, 40

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloc_EPZScolocated: s"
	.size	.L.str, 23

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"alloc_EPZSpattern: s"
	.size	.L.str.1, 21

	.type	mv_rescale,@object              # @mv_rescale
	.local	mv_rescale
	.comm	mv_rescale,4,4
	.type	searcharray,@object             # @searcharray
	.local	searcharray
	.comm	searcharray,4,4
	.type	medthres,@object                # @medthres
	.local	medthres
	.comm	medthres,32,4
	.type	maxthres,@object                # @maxthres
	.local	maxthres
	.comm	maxthres,32,4
	.type	minthres,@object                # @minthres
	.local	minthres
	.comm	minthres,32,4
	.type	subthres,@object                # @subthres
	.local	subthres
	.comm	subthres,32,4
	.type	sdiamond,@object                # @sdiamond
	.comm	sdiamond,8,8
	.type	square,@object                  # @square
	.comm	square,8,8
	.type	ediamond,@object                # @ediamond
	.comm	ediamond,8,8
	.type	ldiamond,@object                # @ldiamond
	.comm	ldiamond,8,8
	.type	sbdiamond,@object               # @sbdiamond
	.comm	sbdiamond,8,8
	.type	pmvfast,@object                 # @pmvfast
	.comm	pmvfast,8,8
	.type	window_predictor,@object        # @window_predictor
	.comm	window_predictor,8,8
	.type	window_predictor_extended,@object # @window_predictor_extended
	.comm	window_predictor_extended,8,8
	.type	predictor,@object               # @predictor
	.comm	predictor,8,8
	.type	EPZSDistortion,@object          # @EPZSDistortion
	.comm	EPZSDistortion,8,8
	.type	EPZSMap,@object                 # @EPZSMap
	.local	EPZSMap
	.comm	EPZSMap,8,8
	.type	EPZSMotion,@object              # @EPZSMotion
	.comm	EPZSMotion,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	EPZSCo_located,@object          # @EPZSCo_located
	.comm	EPZSCo_located,8,8
	.type	searchPattern,@object           # @searchPattern
	.comm	searchPattern,8,8
	.type	searchPatternD,@object          # @searchPatternD
	.comm	searchPatternD,8,8
	.type	mv_scale,@object                # @mv_scale
	.local	mv_scale
	.comm	mv_scale,24576,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	EPZSBlkCount,@object            # @EPZSBlkCount
	.local	EPZSBlkCount
	.comm	EPZSBlkCount,2,2
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" EPZS Pattern                 : %s\n"
	.size	.L.str.2, 36

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" EPZS Dual Pattern            : %s\n"
	.size	.L.str.3, 36

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" EPZS Fixed Predictors        : %s\n"
	.size	.L.str.4, 36

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" EPZS Temporal Predictors     : %s\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" EPZS Spatial Predictors      : %s\n"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" EPZS Thresholds (16x16)      : (%d %d %d)\n"
	.size	.L.str.7, 44

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" EPZS Subpel ME               : %s\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" EPZS Subpel ME BiPred        : %s\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" EPZS Pattern                      : %s\n"
	.size	.L.str.10, 41

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" EPZS Dual Pattern                 : %s\n"
	.size	.L.str.11, 41

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" EPZS Fixed Predictors             : %s\n"
	.size	.L.str.12, 41

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" EPZS Temporal Predictors          : %s\n"
	.size	.L.str.13, 41

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	" EPZS Spatial Predictors           : %s\n"
	.size	.L.str.14, 41

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" EPZS Thresholds (16x16)           : (%d %d %d)\n"
	.size	.L.str.15, 49

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	" EPZS Subpel ME                    : %s\n"
	.size	.L.str.16, 41

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" EPZS Subpel ME BiPred             : %s\n"
	.size	.L.str.17, 41

	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	search_point_hp,@object         # @search_point_hp
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
search_point_hp:
	.space	4
	.half	65534                           # 0xfffe
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.size	search_point_hp, 40

	.type	search_point_qp,@object         # @search_point_qp
	.p2align	1, 0x0
search_point_qp:
	.space	4
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.space	4,255
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.size	search_point_qp, 40

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
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
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
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	pattern_data,@object            # @pattern_data
	.p2align	2, 0x0
pattern_data:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	4294967292                      # 0xfffffffc
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	4294967292                      # 0xfffffffc
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	128
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4294967292                      # 0xfffffffc
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	4294967292                      # 0xfffffffc
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	4294967292                      # 0xfffffffc
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	4294967292                      # 0xfffffffc
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.space	16
	.space	16
	.space	16
	.space	16
	.word	4294967292                      # 0xfffffffc
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	4294967292                      # 0xfffffffc
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	4294967288                      # 0xfffffff8
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	4294967292                      # 0xfffffffc
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	4294967288                      # 0xfffffff8
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	4294967292                      # 0xfffffffc
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	4294967292                      # 0xfffffffc
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	4294967288                      # 0xfffffff8
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4294967288                      # 0xfffffff8
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4294967292                      # 0xfffffffc
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	3                               # 0x3
	.space	16
	.space	16
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	12                              # 0xc
	.word	4                               # 0x4
	.word	4294967292                      # 0xfffffffc
	.word	2                               # 0x2
	.word	12                              # 0xc
	.word	0                               # 0x0
	.word	4294967288                      # 0xfffffff8
	.word	2                               # 0x2
	.word	12                              # 0xc
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4                               # 0x4
	.word	12                              # 0xc
	.word	4294967288                      # 0xfffffff8
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	12                              # 0xc
	.word	4294967292                      # 0xfffffffc
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	12                              # 0xc
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	2                               # 0x2
	.word	12                              # 0xc
	.word	4294967294                      # 0xfffffffe
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	12                              # 0xc
	.size	pattern_data, 960

	.type	blk_parent,@object              # @blk_parent
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	1, 0x0
blk_parent:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	5                               # 0x5
	.size	blk_parent, 16

	.type	.Lswitch.table.EPZSInit.4,@object # @switch.table.EPZSInit.4
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.EPZSInit.4:
	.dword	square
	.dword	ediamond
	.dword	ldiamond
	.dword	sbdiamond
	.dword	pmvfast
	.size	.Lswitch.table.EPZSInit.4, 40

	.type	.Lswitch.table.EPZSSubPelBlockSearchBiPred,@object # @switch.table.EPZSSubPelBlockSearchBiPred
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.Lswitch.table.EPZSSubPelBlockSearchBiPred:
	.word	5                               # 0x5
	.word	8                               # 0x8
	.word	5                               # 0x5
	.space	4
	.space	4
	.word	6                               # 0x6
	.space	4
	.word	7                               # 0x7
	.size	.Lswitch.table.EPZSSubPelBlockSearchBiPred, 32

	.type	.Lswitch.table.EPZSSubPelBlockSearchBiPred.5,@object # @switch.table.EPZSSubPelBlockSearchBiPred.5
	.p2align	2, 0x0
.Lswitch.table.EPZSSubPelBlockSearchBiPred.5:
	.word	5                               # 0x5
	.word	10                              # 0xa
	.word	7                               # 0x7
	.space	4
	.space	4
	.word	8                               # 0x8
	.space	4
	.word	9                               # 0x9
	.size	.Lswitch.table.EPZSSubPelBlockSearchBiPred.5, 32

	.type	.Lswitch.table.EPZSSubPelBlockSearchBiPred.6,@object # @switch.table.EPZSSubPelBlockSearchBiPred.6
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.EPZSSubPelBlockSearchBiPred.6:
	.word	8                               # 0x8
	.word	5                               # 0x5
	.space	4
	.space	4
	.word	6                               # 0x6
	.space	4
	.word	7                               # 0x7
	.size	.Lswitch.table.EPZSSubPelBlockSearchBiPred.6, 28

	.type	.Lswitch.table.EPZSSubPelBlockSearchBiPred.7,@object # @switch.table.EPZSSubPelBlockSearchBiPred.7
	.p2align	2, 0x0
.Lswitch.table.EPZSSubPelBlockSearchBiPred.7:
	.word	10                              # 0xa
	.word	7                               # 0x7
	.space	4
	.space	4
	.word	8                               # 0x8
	.space	4
	.word	9                               # 0x9
	.size	.Lswitch.table.EPZSSubPelBlockSearchBiPred.7, 28

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym c_EPZSPattern
	.addrsig_sym c_EPZSDualPattern
	.addrsig_sym c_EPZSFixed
	.addrsig_sym c_EPZSOther
	.addrsig_sym EPZSDistortion
	.addrsig_sym EPZSMap
	.addrsig_sym EPZSMotion
