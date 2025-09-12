	.file	"mandel-text.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3fa999999999999a              # double 0.050000000000000003
.LCPI0_1:
	.dword	0xc002666666666666              # double -2.2999999999999998
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
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 8                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI0_1)
	ori	$fp, $zero, 255
	ori	$s0, $zero, 2000
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	move	$s2, $zero
	ori	$s3, $zero, 78
	ori	$s4, $zero, 40
	lu12i.w	$a0, 24
	ori	$s5, $a0, 1696
	ori	$s6, $zero, 46
	ori	$s7, $zero, 88
	fmov.d	$fs3, $fs0
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	vldi	$vr0, -912
	fadd.d	$fs3, $fs3, $fa0
	beq	$s2, $s4, .LBB0_12
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_7 Depth 3
                                        #         Child Loop BB0_8 Depth 4
	move	$s8, $zero
	vldi	$vr0, -784
	fmadd.d	$fs4, $fs3, $fs1, $fa0
	fmov.d	$fs5, $fs0
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=2
	sltu	$a0, $a1, $s5
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
.LBB0_4:                                # %.thread79
                                        #   in Loop: Header=BB0_5 Depth=2
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, 1
	vldi	$vr0, -912
	fadd.d	$fs5, $fs5, $fa0
	beq	$s8, $s3, .LBB0_1
.LBB0_5:                                # %.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
                                        #         Child Loop BB0_8 Depth 4
	move	$a0, $zero
	fmadd.d	$fa0, $fs5, $fs1, $fs2
	vldi	$vr6, -1008
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=3
	addi.w	$a0, $a0, 1
	beq	$a0, $s0, .LBB0_3
.LBB0_7:                                # %.backedge
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_8 Depth 4
	move	$a1, $zero
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $fa0
	.p2align	4, , 16
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fmul.d	$fa3, $fa2, $fa2
	fmul.d	$fa4, $fa1, $fa1
	fadd.d	$fa5, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB0_6
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=4
	fadd.d	$fa2, $fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa1, $fs4
	fsub.d	$fa2, $fa3, $fa4
	addi.w	$a1, $a1, 1
	fadd.d	$fa2, $fa0, $fa2
	bne	$a1, $fp, .LBB0_8
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=3
	addi.w	$a0, $a0, 1
	bne	$a0, $s0, .LBB0_7
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a0, $zero, 88
	b	.LBB0_4
.LBB0_12:
	move	$a0, $zero
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
