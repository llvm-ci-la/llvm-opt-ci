	.file	"mandel-2.c"
	.text
	.globl	sqr                             # -- Begin function sqr
	.p2align	5
	.type	sqr,@function
sqr:                                    # @sqr
# %bb.0:
	fmul.d	$fa0, $fa0, $fa0
	ret
.Lfunc_end0:
	.size	sqr, .Lfunc_end0-sqr
                                        # -- End function
	.globl	cnorm2                          # -- Begin function cnorm2
	.p2align	5
	.type	cnorm2,@function
cnorm2:                                 # @cnorm2
# %bb.0:
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end1:
	.size	cnorm2, .Lfunc_end1-cnorm2
                                        # -- End function
	.globl	loop                            # -- Begin function loop
	.p2align	5
	.type	loop,@function
loop:                                   # @loop
# %bb.0:
	fmul.d	$fa4, $fa0, $fa0
	fmul.d	$fa5, $fa1, $fa1
	fadd.d	$fa2, $fa4, $fa5
	vldi	$vr3, -1008
	fcmp.cult.d	$fcc0, $fa3, $fa2
	ori	$a0, $zero, 1
	bcnez	$fcc0, .LBB2_8
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(max_i)
	ld.w	$a1, $fp, %pc_lo12(max_i)
	ori	$a2, $zero, 2
	vldi	$vr7, -1008
	fmov.d	$fa3, $fa1
	fmov.d	$fa2, $fa0
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a2
	addi.w	$a2, $a2, -1
	bge	$a2, $a1, .LBB2_7
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	fmul.d	$fa6, $fa2, $fa3
	fsub.d	$fa4, $fa4, $fa5
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa5, $fa6, $fa6
	bceqz	$fcc0, .LBB2_5
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	fadd.d	$fa2, $fa0, $fa4
	fadd.d	$fa3, $fa1, $fa5
	fmul.d	$fa4, $fa2, $fa2
	fmul.d	$fa5, $fa3, $fa3
	fadd.d	$fa6, $fa4, $fa5
	fcmp.cle.d	$fcc0, $fa6, $fa7
	addi.w	$a2, $a0, 1
	bcnez	$fcc0, .LBB2_2
	b	.LBB2_7
.LBB2_5:                                #   in Loop: Header=BB2_2 Depth=1
	fcmp.cor.d	$fcc0, $fa5, $fa5
	bcnez	$fcc0, .LBB2_4
# %bb.6:                                #   in Loop: Header=BB2_2 Depth=1
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fa2
	fmov.d	$fs0, $fa1
	fmov.d	$fa1, $fa3
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	vldi	$vr7, -1008
	move	$a0, $s0
	ld.w	$a1, $fp, %pc_lo12(max_i)
	fmov.d	$fa4, $fa0
	fmov.d	$fa0, $fs1
	fmov.d	$fa5, $fa1
	fmov.d	$fa1, $fs0
	b	.LBB2_4
.LBB2_7:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB2_8:                                # %.critedge
	ret
.Lfunc_end2:
	.size	loop, .Lfunc_end2-loop
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI3_0:
	.dword	0xc043800000000000              # double -39
.LCPI3_1:
	.dword	0x4044000000000000              # double 40
	.text
	.globl	main
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
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 16                   # 8-byte Folded Spill
	addi.d	$fp, $zero, -39
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI3_0)
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI3_1)
	movgr2fr.d	$fs2, $zero
	pcalau12i	$s0, %pc_hi20(max_i)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	ori	$s3, $zero, 39
	fmov.d	$fs3, $fs0
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                #   in Loop: Header=BB3_2 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	vldi	$vr0, -912
	fadd.d	$fs3, $fs3, $fa0
	beq	$fp, $s3, .LBB3_11
.LBB3_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #       Child Loop BB3_6 Depth 3
	fdiv.d	$fa0, $fs3, $fs1
	vldi	$vr1, -800
	fadd.d	$fs4, $fa0, $fa1
	fmov.d	$fs5, $fs0
	addi.d	$s4, $zero, -39
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %loop.exit
                                        #   in Loop: Header=BB3_4 Depth=2
	slt	$a0, $a0, $s5
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	vldi	$vr0, -912
	fadd.d	$fs5, $fs5, $fa0
	beq	$s4, $s3, .LBB3_1
.LBB3_4:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_6 Depth 3
	fdiv.d	$fs6, $fs5, $fs1
	fmul.d	$fa0, $fs6, $fs2
	fadd.d	$fs7, $fs4, $fa0
	fmul.d	$fa2, $fs7, $fs7
	fmul.d	$fa3, $fs6, $fs6
	ld.w	$a0, $s0, %pc_lo12(max_i)
	fadd.d	$fa0, $fa3, $fa2
	vldi	$vr5, -1008
	fcmp.cult.d	$fcc0, $fa5, $fa0
	ori	$s5, $zero, 1
	bcnez	$fcc0, .LBB3_3
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=2
	ori	$s5, $zero, 1
	fmov.d	$fa1, $fs6
	fmov.d	$fa0, $fs7
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s5
	addi.w	$s5, $s5, 1
	bge	$a1, $a0, .LBB3_3
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=3
	fmul.d	$fa4, $fa1, $fa0
	fsub.d	$fa2, $fa2, $fa3
	fcmp.cor.d	$fcc0, $fa2, $fa2
	fadd.d	$fa3, $fa4, $fa4
	bceqz	$fcc0, .LBB3_9
.LBB3_8:                                #   in Loop: Header=BB3_6 Depth=3
	fadd.d	$fa0, $fs7, $fa2
	fadd.d	$fa1, $fs6, $fa3
	fmul.d	$fa2, $fa0, $fa0
	fmul.d	$fa3, $fa1, $fa1
	fadd.d	$fa4, $fa2, $fa3
	fcmp.cle.d	$fcc0, $fa4, $fa5
	bcnez	$fcc0, .LBB3_6
	b	.LBB3_3
.LBB3_9:                                #   in Loop: Header=BB3_6 Depth=3
	fcmp.cor.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB3_8
# %bb.10:                               #   in Loop: Header=BB3_6 Depth=3
	fmov.d	$fa2, $fa0
	fmov.d	$fa3, $fa1
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	vldi	$vr5, -1008
	ld.w	$a0, $s0, %pc_lo12(max_i)
	fmov.d	$fa2, $fa0
	fmov.d	$fa3, $fa1
	b	.LBB3_8
.LBB3_11:
	move	$a0, $zero
	fld.d	$fs7, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.type	max_i,@object                   # @max_i
	.data
	.globl	max_i
	.p2align	2, 0x0
max_i:
	.word	65536                           # 0x10000
	.size	max_i, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"*"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" "
	.size	.L.str.1, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
