	.file	"dt.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3ff000001ad7f29b              # double 1.0000001000000001
.LCPI0_1:
	.dword	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	lu12i.w	$fp, 4
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	lu12i.w	$s0, 32
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 2048
	ori	$s3, $zero, 2048
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 24
	ld.d	$s2, $sp, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_1)
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movgr2fr.d	$fa0, $s3
	ffint.s.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fstx.d	$fa0, $s1, $s4
	movgr2fr.d	$fa0, $s5
	ffint.s.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fa0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fa0, $fs1, $fa1
	fstx.d	$fa0, $s2, $s4
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 8
	bnez	$s3, .LBB0_1
# %bb.2:
	move	$a0, $zero
	lu12i.w	$a1, -4
	ori	$a2, $fp, 16
	.p2align	4, , 16
.LBB0_3:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $s2, $a3
	vldx	$vr0, $a4, $fp
	vldx	$vr1, $a4, $a2
	add.d	$a4, $s1, $a3
	vldx	$vr2, $a4, $fp
	vldx	$vr3, $a4, $a2
	vfdiv.d	$vr0, $vr2, $vr0
	vfdiv.d	$vr1, $vr3, $vr1
	vstx	$vr0, $a4, $fp
	addi.d	$a3, $a3, 32
	vstx	$vr1, $a4, $a2
	bnez	$a3, .LBB0_4
# %bb.5:                                # %middle.block
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s0, .LBB0_3
# %bb.6:                                # %double_array_divs_variable.exit
	ld.d	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %i iterations of each test. "
	.size	.L.str, 30

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" inner loop / array size %i.\n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%f\n"
	.size	.L.str.2, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
