	.file	"mandel.c"
	.text
	.globl	emit                            # -- Begin function emit
	.p2align	5
	.type	emit,@function
emit:                                   # @emit
# %bb.0:
	pcalau12i	$a0, %pc_hi20(accum)
	addi.d	$a0, $a0, %pc_lo12(accum)
	fld.d	$fa2, $a0, 0
	fld.d	$fa3, $a0, 8
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fst.d	$fa0, $a0, 0
	fst.d	$fa1, $a0, 8
	ret
.Lfunc_end0:
	.size	emit, .Lfunc_end0-emit
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mandel
.LCPI1_0:
	.dword	0x40b3880000000000              # double 5000
.LCPI1_1:
	.dword	0xc0b3880000000000              # double -5000
	.text
	.globl	mandel
	.p2align	5
	.type	mandel,@function
mandel:                                 # @mandel
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_1)
	movgr2fr.d	$fs4, $zero
	ori	$fp, $zero, 9
	pcalau12i	$a0, %pc_hi20(accum)
	addi.d	$s0, $a0, %pc_lo12(accum)
	move	$s1, $zero
	lu12i.w	$a0, 1
	ori	$s2, $a0, 904
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi.w	$s1, $s1, 1
	beq	$s1, $s2, .LBB1_10
.LBB1_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_5 Depth 3
	move	$s3, $zero
	slli.d	$a0, $s1, 2
	bstrpick.d	$a0, $a0, 31, 2
	slli.d	$a0, $a0, 2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs2
	vldi	$vr1, -896
	fadd.d	$fs5, $fa0, $fa1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=2
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s0, 8
	fadd.d	$fa0, $fs0, $fa0
	fadd.d	$fa1, $fs1, $fa1
	fst.d	$fa0, $s0, 0
	addi.w	$s3, $s3, 1
	fst.d	$fa1, $s0, 8
	beq	$s3, $s2, .LBB1_1
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
	move	$a0, $zero
	slli.d	$a1, $s3, 2
	bstrpick.d	$a1, $a1, 31, 2
	slli.d	$a1, $a1, 2
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs3
	vldi	$vr1, -896
	fadd.d	$fs6, $fa0, $fa1
	fmul.d	$fa0, $fs6, $fs4
	fadd.d	$fs7, $fs5, $fa0
	fmov.d	$fs0, $fs4
	fmov.d	$fs1, $fs4
	.p2align	4, , 16
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s4, $a0
	fmul.d	$fa0, $fs0, $fs0
	fmul.d	$fa1, $fs1, $fs1
	fmul.d	$fa2, $fs1, $fs0
	fsub.d	$fa0, $fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fadd.d	$fa1, $fa2, $fa2
	bceqz	$fcc0, .LBB1_8
.LBB1_6:                                #   in Loop: Header=BB1_5 Depth=3
	fadd.d	$fs0, $fs7, $fa0
	fadd.d	$fs1, $fs6, $fa1
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(hypot)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1024
	fcmp.cle.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_3
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=3
	addi.w	$a0, $s4, 1
	bltu	$s4, $fp, .LBB1_5
	b	.LBB1_3
.LBB1_8:                                #   in Loop: Header=BB1_5 Depth=3
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB1_6
# %bb.9:                                #   in Loop: Header=BB1_5 Depth=3
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs0
	fmov.d	$fa3, $fs1
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	b	.LBB1_6
.LBB1_10:
	fld.d	$fs7, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs6, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end1:
	.size	mandel, .Lfunc_end1-mandel
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(mandel)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(accum)
	addi.d	$a0, $a0, %pc_lo12(accum)
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, 8
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	accum,@object                   # @accum
	.bss
	.globl	accum
	.p2align	3, 0x0
accum:
	.space	16
	.size	accum, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym accum
