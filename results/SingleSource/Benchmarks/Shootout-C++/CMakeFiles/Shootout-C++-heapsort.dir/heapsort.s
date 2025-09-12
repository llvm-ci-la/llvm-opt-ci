	.file	"heapsort.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z10gen_randomd
.LCPI0_0:
	.dword	0x4101160000000000              # double 139968
	.text
	.globl	_Z10gen_randomd
	.p2align	5
	.type	_Z10gen_randomd,@function
_Z10gen_randomd:                        # @_Z10gen_randomd
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZZ10gen_randomdE4last)
	ld.d	$a1, $a0, %pc_lo12(_ZZ10gen_randomdE4last)
	ori	$a2, $zero, 3877
	mul.d	$a1, $a1, $a2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 901
	add.d	$a1, $a1, $a2
	lu12i.w	$a2, -10549
	ori	$a2, $a2, 3729
	lu32i.d	$a2, -86783
	lu52i.d	$a2, $a2, 958
	mulh.du	$a2, $a1, $a2
	srli.d	$a2, $a2, 15
	lu12i.w	$a3, 34
	ori	$a3, $a3, 704
	mul.d	$a2, $a2, $a3
	sub.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_0)
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	st.d	$a1, $a0, %pc_lo12(_ZZ10gen_randomdE4last)
	ret
.Lfunc_end0:
	.size	_Z10gen_randomd, .Lfunc_end0-_Z10gen_randomd
                                        # -- End function
	.globl	_Z8heapsortiPd                  # -- Begin function _Z8heapsortiPd
	.p2align	5
	.type	_Z8heapsortiPd,@function
_Z8heapsortiPd:                         # @_Z8heapsortiPd
# %bb.0:
	srai.d	$a2, $a0, 1
	addi.w	$a2, $a2, 1
	ori	$a3, $zero, 2
	ori	$a4, $zero, 1
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_3 Depth=1
	move	$a7, $a6
.LBB1_2:                                # %._crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a5, $a7, 3
	fstx.d	$fa0, $a1, $a5
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	blt	$a2, $a3, .LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	fldx.d	$fa0, $a1, $a5
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a5, $a0, 3
	fld.d	$fa1, $a1, 8
	fldx.d	$fa0, $a1, $a5
	addi.w	$a0, $a0, -1
	fstx.d	$fa1, $a1, $a5
	beq	$a0, $a4, .LBB1_14
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	slli.w	$a5, $a2, 1
	move	$a7, $a2
	blt	$a0, $a5, .LBB1_2
# %bb.7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bge	$a5, $a0, .LBB1_11
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	slli.d	$a7, $a5, 3
	fldx.d	$fa1, $a1, $a7
	ori	$t0, $a5, 1
	slli.d	$a7, $t0, 3
	fldx.d	$fa2, $a1, $a7
	fcmp.cule.d	$fcc0, $fa2, $fa1
	move	$a7, $a5
	bcnez	$fcc0, .LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_11:                               #   in Loop: Header=BB1_8 Depth=2
	move	$a7, $a5
.LBB1_12:                               # %._crit_edge49
                                        #   in Loop: Header=BB1_8 Depth=2
	slli.d	$a5, $a5, 3
	fldx.d	$fa1, $a1, $a5
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_1
# %bb.13:                               #   in Loop: Header=BB1_8 Depth=2
	slli.d	$a6, $a6, 3
	slli.w	$a5, $a7, 1
	fstx.d	$fa1, $a1, $a6
	move	$a6, $a7
	bge	$a0, $a5, .LBB1_8
	b	.LBB1_2
.LBB1_14:
	fst.d	$fa0, $a1, 8
	ret
.Lfunc_end1:
	.size	_Z8heapsortiPd, .Lfunc_end1-_Z8heapsortiPd
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	0x4101160000000000              # double 139968
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB2_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB2_3
.LBB2_2:
	lu12i.w	$a0, 1953
	ori	$fp, $a0, 512
.LBB2_3:
	addi.w	$s0, $fp, 0
	addi.w	$s1, $fp, 1
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB2_7
# %bb.4:                                # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(_ZZ10gen_randomdE4last)
	ld.d	$a4, $a1, %pc_lo12(_ZZ10gen_randomdE4last)
	bstrpick.d	$a3, $s1, 31, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a3, -1
	ori	$a5, $zero, 3877
	lu12i.w	$a6, 7
	ori	$a6, $a6, 901
	lu12i.w	$a7, -10549
	ori	$a7, $a7, 3729
	lu32i.d	$a7, -86783
	pcalau12i	$t0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $t0, %pc_lo12(.LCPI2_0)
	lu52i.d	$a7, $a7, 958
	lu12i.w	$t0, 34
	ori	$t0, $t0, 704
	.p2align	4, , 16
.LBB2_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	mulh.du	$t1, $a4, $a7
	srli.d	$t1, $t1, 15
	mul.d	$t1, $t1, $t0
	sub.d	$a4, $a4, $t1
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB2_5
# %bb.6:                                # %._crit_edge
	st.d	$a4, $a1, %pc_lo12(_ZZ10gen_randomdE4last)
.LBB2_7:
	srai.d	$a1, $s0, 1
	addi.w	$a1, $a1, 1
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_8:                                #   in Loop: Header=BB2_10 Depth=1
	move	$a7, $a6
.LBB2_9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB2_10 Depth=1
	slli.d	$a4, $a7, 3
	fstx.d	$fa0, $a0, $a4
.LBB2_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	blt	$a1, $a2, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	addi.w	$a1, $a1, -1
	slli.d	$a4, $a1, 3
	fldx.d	$fa0, $a0, $a4
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               #   in Loop: Header=BB2_10 Depth=1
	addi.w	$a4, $fp, 0
	slli.d	$a4, $a4, 3
	fld.d	$fa1, $a0, 8
	fldx.d	$fa0, $a0, $a4
	addi.w	$fp, $fp, -1
	fstx.d	$fa1, $a0, $a4
	beq	$fp, $a3, .LBB2_21
.LBB2_13:                               #   in Loop: Header=BB2_10 Depth=1
	slli.w	$a5, $a1, 1
	addi.w	$a4, $fp, 0
	move	$a7, $a1
	blt	$a4, $a5, .LBB2_9
# %bb.14:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB2_10 Depth=1
	move	$a6, $a1
	.p2align	4, , 16
.LBB2_15:                               # %.lr.ph.i
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bge	$a5, $a4, .LBB2_18
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=2
	slli.d	$a7, $a5, 3
	fldx.d	$fa1, $a0, $a7
	ori	$t0, $a5, 1
	slli.d	$a7, $t0, 3
	fldx.d	$fa2, $a0, $a7
	fcmp.cule.d	$fcc0, $fa2, $fa1
	move	$a7, $a5
	bcnez	$fcc0, .LBB2_19
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_18:                               #   in Loop: Header=BB2_15 Depth=2
	move	$a7, $a5
.LBB2_19:                               # %._crit_edge49.i
                                        #   in Loop: Header=BB2_15 Depth=2
	slli.d	$a5, $a5, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_8
# %bb.20:                               #   in Loop: Header=BB2_15 Depth=2
	slli.d	$a6, $a6, 3
	slli.w	$a5, $a7, 1
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	bge	$a4, $a5, .LBB2_15
	b	.LBB2_9
.LBB2_21:                               # %_Z8heapsortiPd.exit
	fst.d	$fa0, $a0, 8
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	_ZZ10gen_randomdE4last,@object  # @_ZZ10gen_randomdE4last
	.data
	.p2align	3, 0x0
_ZZ10gen_randomdE4last:
	.dword	42                              # 0x2a
	.size	_ZZ10gen_randomdE4last, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.10f\n"
	.size	.L.str, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
