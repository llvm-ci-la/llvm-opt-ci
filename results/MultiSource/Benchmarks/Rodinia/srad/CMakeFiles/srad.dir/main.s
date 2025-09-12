	.file	"main.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	0x30000000                      # float 4.65661287E-10
	.text
	.globl	main
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	lu12i.w	$s5, 2048
	ori	$a0, $zero, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ori	$a0, $zero, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(glibc_compat_srand)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI0_0)
	lu12i.w	$s0, -1
	lu12i.w	$s7, 1
	ori	$s1, $zero, 2048
	move	$s2, $s8
	.p2align	4, , 16
.LBB0_1:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	move	$s3, $s0
	.p2align	4, , 16
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	add.d	$a0, $s2, $s3
	addi.d	$s3, $s3, 4
	fstx.s	$fa0, $a0, $s7
	bnez	$s3, .LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addi.d	$fp, $fp, 1
	add.d	$s2, $s2, $s7
	bne	$fp, $s1, .LBB0_1
# %bb.4:                                # %.preheader71.preheader
	move	$fp, $zero
	move	$s0, $zero
	lu12i.w	$s1, -1
	ori	$s2, $zero, 2048
	.p2align	4, , 16
.LBB0_5:                                # %.preheader71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	add.d	$s3, $s8, $fp
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$s4, $a0, $fp
	move	$s5, $s1
	.p2align	4, , 16
.LBB0_6:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s3, $s5
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	add.d	$a0, $s4, $s5
	addi.d	$s5, $s5, 4
	fstx.s	$fa0, $a0, $s7
	bnez	$s5, .LBB0_6
# %bb.7:                                # %random_matrix.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s0, $s0, 1
	add.d	$fp, $fp, $s7
	bne	$s0, $s2, .LBB0_5
# %bb.8:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$a4, $s8
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	move	$a5, $s1
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	move	$a6, $s6
	pcaddu18i	$ra, %call36(srad_kernel)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 335544
	ori	$fp, $a0, 1311
	ori	$s2, $zero, 200
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	move	$s3, $zero
	move	$s0, $zero
	move	$s5, $zero
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	addi.d	$s5, $s5, 1
	add.d	$s1, $s1, $s7
	addi.d	$s0, $s0, -1024
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	addi.w	$s3, $s3, 1024
	ori	$a0, $zero, 2048
	beq	$s5, $a0, .LBB0_14
.LBB0_10:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $s0
	lu12i.w	$s8, -1
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=2
	addi.d	$s8, $s8, 4
	addi.d	$s4, $s4, -1
	addi.w	$s3, $s3, 1
	beqz	$s8, .LBB0_9
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s3, 31, 0
	mul.d	$a0, $a0, $fp
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	add.w	$a0, $s4, $a0
	bnez	$a0, .LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	add.d	$a0, $s1, $s8
	fldx.s	$fa0, $a0, $s7
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_14:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function random_matrix
.LCPI1_0:
	.word	0x30000000                      # float 4.65661287E-10
	.text
	.globl	random_matrix
	.p2align	5
	.type	random_matrix,@function
random_matrix:                          # @random_matrix
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(glibc_compat_srand)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI1_0)
	lu12i.w	$s1, -1
	lu12i.w	$s2, 1
	ori	$s3, $zero, 2048
	.p2align	4, , 16
.LBB1_1:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	move	$s4, $s1
	.p2align	4, , 16
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	add.d	$a0, $fp, $s4
	addi.d	$s4, $s4, 4
	fstx.s	$fa0, $a0, $s2
	bnez	$s4, .LBB1_2
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	addi.d	$s0, $s0, 1
	add.d	$fp, $fp, $s2
	bne	$s0, $s3, .LBB1_1
# %bb.4:
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	random_matrix, .Lfunc_end1-random_matrix
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.5f\n"
	.size	.L.str, 6

	.section	".note.GNU-stack","",@progbits
	.addrsig
