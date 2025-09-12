	.file	"random.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x4101160000000000              # double 139968
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 2
	lu12i.w	$s2, 7
	lu12i.w	$s1, -10549
	lu12i.w	$s0, 34
	pcalau12i	$fp, %pc_hi20(gen_random.last)
	bne	$a0, $a2, .LBB0_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(gen_random.last)
	addi.w	$a0, $a0, -1
	bnez	$a0, .LBB0_3
	b	.LBB0_5
.LBB0_2:                                # %.thread
	ld.d	$a1, $fp, %pc_lo12(gen_random.last)
	lu12i.w	$a0, 97656
	ori	$a0, $a0, 1023
.LBB0_3:                                # %.lr.ph.preheader
	ori	$a2, $zero, 3877
	ori	$a3, $s2, 901
	ori	$a4, $s1, 3729
	lu32i.d	$a4, -86783
	lu52i.d	$a4, $a4, 958
	ori	$a5, $s0, 704
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, -1
	mul.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	mulh.du	$a6, $a1, $a4
	srli.d	$a6, $a6, 15
	mul.d	$a6, $a6, $a5
	sub.d	$a1, $a1, $a6
	bnez	$a0, .LBB0_4
.LBB0_5:                                # %._crit_edge
	ori	$a0, $zero, 3877
	mul.d	$a0, $a1, $a0
	ori	$a1, $s2, 901
	add.d	$a0, $a0, $a1
	ori	$a1, $s1, 3729
	lu32i.d	$a1, -86783
	lu52i.d	$a1, $a1, 958
	mulh.du	$a1, $a0, $a1
	srli.d	$a1, $a1, 15
	ori	$a2, $s0, 704
	mul.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, %pc_lo12(gen_random.last)
	ori	$a1, $zero, 100
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	mul.d	$a0, $a0, $a1
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.9f\n"
	.size	.L.str, 6

	.type	gen_random.last,@object         # @gen_random.last
	.data
	.p2align	3, 0x0
gen_random.last:
	.dword	42                              # 0x2a
	.size	gen_random.last, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
