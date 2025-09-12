	.file	"miniGMG.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
.LCPI0_1:
	.dword	0x3cd203af9ee75616              # double 1.0000000000000001E-15
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -1984
	st.d	$ra, $sp, 1976                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1944                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1936                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1928                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1920                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1912                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1904                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1896                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1880                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1872                 # 8-byte Folded Spill
	move	$s4, $a0
	addi.d	$a0, $a0, -1
	ori	$a2, $zero, 7
	bltu	$a2, $a0, .LBB0_10
# %bb.1:
	ori	$fp, $zero, 6
	ori	$s2, $zero, 4
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	move	$s5, $s4
	move	$s3, $s4
	ori	$s1, $zero, 4
	ori	$s0, $zero, 4
	jr	$a0
.LBB0_2:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 256
	srl.w	$s2, $a0, $fp
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	ori	$s3, $zero, 1
	move	$s1, $s2
	move	$s0, $s2
	b	.LBB0_5
.LBB0_3:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$s1, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	move	$fp, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 24
	move	$s0, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 32
	move	$s1, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	ori	$s3, $zero, 1
	b	.LBB0_5
.LBB0_4:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$s4, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 16
	move	$fp, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 24
	move	$s0, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 32
	move	$s1, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 40
	move	$s2, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 48
	move	$s3, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 56
	move	$s5, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB0_5:
	mul.d	$a0, $s5, $s4
	mul.w	$a4, $a0, $s3
	ori	$s8, $zero, 1
	bne	$a4, $s8, .LBB0_8
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	sll.w	$s6, $s8, $fp
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s7, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 80
	st.d	$zero, $sp, 72
	addi.w	$a0, $fp, 0
	st.d	$a0, $sp, 48
	st.d	$s8, $sp, 40
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 72
	st.d	$a0, $sp, 24
	st.d	$zero, $sp, 16
	addi.w	$a0, $s4, 0
	st.d	$a0, $sp, 8
	addi.w	$a1, $s5, 0
	addi.w	$a4, $s0, 0
	addi.w	$a5, $s1, 0
	addi.w	$a6, $s2, 0
	addi.w	$a7, $s3, 0
	addi.d	$a0, $sp, 88
	st.d	$a1, $sp, 0
	move	$a1, $s6
	move	$a2, $s6
	move	$a3, $s6
	pcaddu18i	$ra, %call36(create_domain)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1624
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	frecip.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_0)
	addi.d	$a0, $sp, 88
	move	$a1, $zero
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs1
	pcaddu18i	$ra, %call36(initialize_problem)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs0
	pcaddu18i	$ra, %call36(MGBuild)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(MGResetTimers)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(zero_grid)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI0_1)
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 1
	move	$a1, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs2
	pcaddu18i	$ra, %call36(MGSolve)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(zero_grid)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 1
	move	$a1, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs2
	pcaddu18i	$ra, %call36(MGSolve)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(print_timing)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fs0
	fmul.d	$fs2, $fs0, $fa0
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 11
	vldi	$vr1, -784
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 10
	ori	$a3, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	fsqrt.d	$fs2, $fa0
	fcmp.cor.d	$fcc0, $fs2, $fs2
	bceqz	$fcc0, .LBB0_9
.LBB0_7:                                # %.split
	movfr2gr.d	$fp, $fs0
	movfr2gr.d	$a2, $fs1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fs2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(destroy_domain)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs2, $sp, 1872                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1888                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1896                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1904                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1912                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1920                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1928                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1936                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1976                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1984
	ret
.LBB0_8:
	addi.w	$a1, $s3, 0
	addi.w	$a2, $s5, 0
	addi.w	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a5, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_9:                                # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	b	.LBB0_7
.LBB0_10:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_4-.LJTI0_0
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"error, ranks_in_i*ranks_in_j*ranks_in_k(%d*%d*%d=%d) != MPI_Tasks(%d)\n"
	.size	.L.str.1, 71

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d MPI Tasks of %d threads\n"
	.size	.L.str.2, 28

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"truncating the v-cycle at %d^3 subdomains\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"initializing alpha, beta, RHS for the ``hard problem''..."
	.size	.L.str.4, 58

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Error test: h = %e, max = %e\n"
	.size	.L.str.6, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Error test: h = %e, L2  = %e\n"
	.size	.L.str.7, 30

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"usage: ./a.out [log2_subdomain_dim]   [subdomains per rank in i,j,k]  [ranks in i,j,k]"
	.size	.Lstr, 87

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"done"
	.size	.Lstr.1, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
