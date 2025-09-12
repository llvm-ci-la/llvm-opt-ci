	.file	"main.c"
	.text
	.globl	compute_tran_temp               # -- Begin function compute_tran_temp
	.p2align	5
	.type	compute_tran_temp,@function
compute_tran_temp:                      # @compute_tran_temp
# %bb.0:
	pcalau12i	$a3, %pc_hi20(chip_height)
	fld.d	$fa0, $a3, %pc_lo12(chip_height)
	pcalau12i	$a3, %pc_hi20(chip_width)
	fld.d	$fa1, $a3, %pc_lo12(chip_width)
	lu52i.d	$a3, $zero, 1014
	movgr2fr.d	$fa2, $a3
	fmul.d	$fa3, $fa0, $fa2
	fmul.d	$fa4, $fa1, $fa2
	pcalau12i	$a3, %pc_hi20(t_chip)
	fld.d	$fa5, $a3, %pc_lo12(t_chip)
	ori	$a3, $zero, 0
	ori	$a4, $zero, 0
	lu32i.d	$a4, -347152
	lu52i.d	$a5, $a4, 1042
	movgr2fr.d	$fa0, $a5
	fmul.d	$fa0, $fa5, $fa0
	fmul.d	$fa0, $fa4, $fa0
	fmul.d	$fa0, $fa3, $fa0
	ori	$a5, $zero, 0
	lu32i.d	$a5, -458752
	lu52i.d	$a6, $a5, 1030
	movgr2fr.d	$fa1, $a6
	fmul.d	$fa2, $fa5, $fa1
	fmul.d	$fa1, $fa3, $fa2
	fdiv.d	$fa1, $fa4, $fa1
	fmul.d	$fa2, $fa4, $fa2
	fdiv.d	$fa2, $fa3, $fa2
	lu52i.d	$a5, $a5, 1029
	movgr2fr.d	$fa6, $a5
	fmul.d	$fa3, $fa3, $fa6
	fmul.d	$fa3, $fa3, $fa4
	fdiv.d	$fa3, $fa5, $fa3
	vldi	$vr4, -928
	fmul.d	$fa4, $fa5, $fa4
	lu52i.d	$a4, $a4, 1043
	movgr2fr.d	$fa5, $a4
	fmul.d	$fa4, $fa4, $fa5
	lu32i.d	$a3, 451424
	lu52i.d	$a3, $a3, 1044
	movgr2fr.d	$fa5, $a3
	fdiv.d	$fa4, $fa5, $fa4
	lu12i.w	$a3, -184550
	ori	$a3, $a3, 2556
	lu32i.d	$a3, 25165
	pcalau12i	$a4, %pc_hi20(amb_temp)
	fld.d	$fa5, $a4, %pc_lo12(amb_temp)
	lu52i.d	$a3, $a3, 1013
	movgr2fr.d	$fa6, $a3
	fdiv.d	$fa4, $fa6, $fa4
	pcaddu18i	$t8, %call36(hotspotKernel)
	jr	$t8
.Lfunc_end0:
	.size	compute_tran_temp, .Lfunc_end0-compute_tran_temp
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	lu12i.w	$s1, 512
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s8, .LBB1_14
# %bb.1:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_14
# %bb.2:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_14
.LBB1_3:
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(glibc_compat_srand)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	move	$s4, $zero
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fs1, $a0
	lu12i.w	$s5, -1
	lu12i.w	$a0, -184550
	ori	$a0, $a0, 2556
	lu32i.d	$a0, 25165
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fs0, $a0
	lu12i.w	$s3, 1
	ori	$s6, $zero, 512
	.p2align	4, , 16
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 54
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 9
	slli.d	$a1, $a1, 9
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 56
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 7
	slli.d	$a1, $a1, 7
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs3, $fa0, $fs1
	add.d	$fp, $s8, $s2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$s0, $a0, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$s1, $a0, $s2
	move	$s7, $s5
	.p2align	4, , 16
.LBB1_5:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 56
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 7
	slli.d	$a1, $a1, 7
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmadd.d	$fa0, $fa0, $fs0, $fs2
	add.d	$a0, $fp, $s7
	fstx.d	$fa0, $a0, $s3
	add.d	$a0, $s0, $s7
	fstx.d	$fs3, $a0, $s3
	add.d	$a0, $s1, $s7
	addi.d	$s7, $s7, 8
	stptr.d	$zero, $a0, 4096
	bnez	$s7, .LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	addi.d	$s4, $s4, 1
	add.d	$s2, $s2, $s3
	bne	$s4, $s6, .LBB1_4
# %bb.7:
	pcalau12i	$a0, %pc_hi20(chip_height)
	fld.d	$fa0, $a0, %pc_lo12(chip_height)
	pcalau12i	$a0, %pc_hi20(chip_width)
	fld.d	$fa1, $a0, %pc_lo12(chip_width)
	lu52i.d	$a0, $zero, 1014
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa3, $fa0, $fa2
	fmul.d	$fa4, $fa1, $fa2
	pcalau12i	$a0, %pc_hi20(t_chip)
	fld.d	$fa5, $a0, %pc_lo12(t_chip)
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -347152
	lu52i.d	$a2, $a1, 1042
	movgr2fr.d	$fa0, $a2
	fmul.d	$fa0, $fa5, $fa0
	fmul.d	$fa0, $fa4, $fa0
	fmul.d	$fa0, $fa3, $fa0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -458752
	lu52i.d	$a3, $a2, 1030
	movgr2fr.d	$fa1, $a3
	fmul.d	$fa2, $fa5, $fa1
	fmul.d	$fa1, $fa3, $fa2
	fdiv.d	$fa1, $fa4, $fa1
	fmul.d	$fa2, $fa4, $fa2
	fdiv.d	$fa2, $fa3, $fa2
	lu52i.d	$a2, $a2, 1029
	movgr2fr.d	$fa6, $a2
	fmul.d	$fa3, $fa3, $fa6
	fmul.d	$fa3, $fa3, $fa4
	fdiv.d	$fa3, $fa5, $fa3
	vldi	$vr4, -928
	fmul.d	$fa4, $fa5, $fa4
	lu52i.d	$a1, $a1, 1043
	movgr2fr.d	$fa5, $a1
	fmul.d	$fa4, $fa4, $fa5
	lu32i.d	$a0, 451424
	lu52i.d	$a0, $a0, 1044
	pcalau12i	$a1, %pc_hi20(amb_temp)
	fld.d	$fa5, $a1, %pc_lo12(amb_temp)
	movgr2fr.d	$fa6, $a0
	fdiv.d	$fa4, $fa6, $fa4
	fdiv.d	$fa4, $fs0, $fa4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $s8
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hotspotKernel)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 335544
	ori	$s5, $a0, 1311
	ori	$s6, $zero, 100
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s7, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	move	$s8, $zero
	move	$s1, $zero
	move	$s0, $zero
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_8:                                #   in Loop: Header=BB1_9 Depth=1
	addi.d	$s0, $s0, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s1, $s1, -512
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	addi.w	$s8, $s8, 512
	ori	$a0, $zero, 512
	beq	$s0, $a0, .LBB1_13
.LBB1_9:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $s1
	lu12i.w	$s4, -1
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=2
	addi.d	$s4, $s4, 8
	addi.d	$fp, $fp, -1
	addi.w	$s8, $s8, 1
	beqz	$s4, .LBB1_8
.LBB1_11:                               #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s8, 31, 0
	mul.d	$a0, $a0, $s5
	srli.d	$a0, $a0, 37
	mul.d	$a0, $a0, $s6
	add.w	$a0, $fp, $a0
	bnez	$a0, .LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=2
	ld.d	$a0, $s7, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s4
	ldptr.d	$a2, $a1, 4096
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_10
.LBB1_13:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB1_14:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB1_3
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	t_chip,@object                  # @t_chip
	.data
	.globl	t_chip
	.p2align	3, 0x0
t_chip:
	.dword	0x3f40624dd2f1a9fc              # double 5.0000000000000001E-4
	.size	t_chip, 8

	.type	chip_height,@object             # @chip_height
	.globl	chip_height
	.p2align	3, 0x0
chip_height:
	.dword	0x3f90624dd2f1a9fc              # double 0.016
	.size	chip_height, 8

	.type	chip_width,@object              # @chip_width
	.globl	chip_width
	.p2align	3, 0x0
chip_width:
	.dword	0x3f90624dd2f1a9fc              # double 0.016
	.size	chip_width, 8

	.type	amb_temp,@object                # @amb_temp
	.globl	amb_temp
	.p2align	3, 0x0
amb_temp:
	.dword	0x4054000000000000              # double 80
	.size	amb_temp, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unable to allocate memory"
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%g\n"
	.size	.L.str.1, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
