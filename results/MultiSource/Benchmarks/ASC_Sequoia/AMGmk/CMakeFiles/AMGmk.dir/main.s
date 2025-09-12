	.file	"main.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.19)
	addi.d	$fp, $a0, %pc_lo12(.Lstr.19)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.18)
	addi.d	$s0, $a0, %pc_lo12(.Lstr.18)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(totalWallTime)
	st.d	$zero, $s1, %pc_lo12(totalWallTime)
	pcalau12i	$s2, %pc_hi20(totalCPUTime)
	st.d	$zero, $s2, %pc_lo12(totalCPUTime)
	pcaddu18i	$ra, %call36(test_Matvec)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, %pc_lo12(totalWallTime)
	st.d	$zero, $s2, %pc_lo12(totalCPUTime)
	pcaddu18i	$ra, %call36(test_Relax)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, %pc_lo12(totalWallTime)
	st.d	$zero, $s2, %pc_lo12(totalCPUTime)
	pcaddu18i	$ra, %call36(test_Axpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.17)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.17)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function test_Matvec
.LCPI1_0:
	.dword	0x4018000000000000              # double 6
	.dword	0xbff0000000000000              # double -1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_1:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	test_Matvec
	.p2align	5
	.type	test_Matvec,@function
test_Matvec:                            # @test_Matvec
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	move	$fp, $a0
	vst	$vr0, $a0, 0
	lu52i.d	$a0, $zero, -1025
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, 16
	ori	$a0, $zero, 50
	ori	$a1, $zero, 50
	ori	$a2, $zero, 50
	addi.d	$a4, $sp, 16
	addi.d	$a5, $sp, 24
	addi.d	$a6, $sp, 8
	move	$a3, $fp
	pcaddu18i	$ra, %call36(GenerateSeqLaplacian)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	move	$s0, $a0
	vldi	$vr0, -912
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_SeqVectorSetConstantValues)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	movgr2fr.d	$fs0, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(hypre_SeqVectorSetConstantValues)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 2000
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 24
	ld.d	$a2, $sp, 16
	vldi	$vr0, -912
	move	$a0, $s0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(hypre_CSRMatrixMatvec)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB1_1
# %bb.2:
	addi.d	$a0, $sp, 32
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	ld.d	$a2, $sp, 48
	ld.d	$a3, $sp, 40
	ld.d	$a4, $sp, 56
	sub.d	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	sub.d	$a1, $a3, $a4
	movgr2fr.d	$fa1, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_1)
	pcalau12i	$a1, %pc_hi20(totalWallTime)
	fld.d	$fa3, $a1, %pc_lo12(totalWallTime)
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a1, %pc_lo12(totalWallTime)
	sub.d	$a0, $a0, $s1
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a2, %pc_hi20(totalCPUTime)
	fld.d	$fa1, $a2, %pc_lo12(totalCPUTime)
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 8
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa1
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	fst.d	$fa0, $a2, %pc_lo12(totalCPUTime)
	lu12i.w	$a2, 30
	ori	$a2, $a2, 2120
	.p2align	4, , 16
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fsub.d	$fa0, $fa0, $fa1
	fabs.d	$fa0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB1_3
# %bb.4:
	movgr2fr.d	$fa0, $zero
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB1_6
# %bb.5:
	movfr2gr.d	$a1, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_CSRMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(hypre_SeqVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(hypre_SeqVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(hypre_SeqVectorDestroy)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end1:
	.size	test_Matvec, .Lfunc_end1-test_Matvec
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function test_Relax
.LCPI2_0:
	.dword	0x4018000000000000              # double 6
	.dword	0xbff0000000000000              # double -1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_1:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	test_Relax
	.p2align	5
	.type	test_Relax,@function
test_Relax:                             # @test_Relax
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_0)
	move	$fp, $a0
	vst	$vr0, $a0, 0
	lu52i.d	$a0, $zero, -1025
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, 16
	ori	$a0, $zero, 50
	ori	$a1, $zero, 50
	ori	$a2, $zero, 50
	addi.d	$a4, $sp, 24
	addi.d	$a5, $sp, 32
	addi.d	$a6, $sp, 16
	move	$a3, $fp
	pcaddu18i	$ra, %call36(GenerateSeqLaplacian)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	move	$s0, $a0
	vldi	$vr0, -912
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_SeqVectorSetConstantValues)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 2000
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoomerAMGSeqRelax)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB2_1
# %bb.2:
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 56
	ld.d	$a3, $sp, 48
	ld.d	$a4, $sp, 64
	sub.d	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	sub.d	$a1, $a3, $a4
	movgr2fr.d	$fa1, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI2_1)
	pcalau12i	$a1, %pc_hi20(totalWallTime)
	fld.d	$fa3, $a1, %pc_lo12(totalWallTime)
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a1, %pc_lo12(totalWallTime)
	sub.d	$a0, $a0, $s1
	movgr2fr.d	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(totalCPUTime)
	fld.d	$fa1, $a0, %pc_lo12(totalCPUTime)
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 32
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, %pc_lo12(totalCPUTime)
	ld.d	$a0, $a1, 0
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a1, 30
	ori	$a1, $a1, 2120
	vldi	$vr1, -784
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $a0, 0
	fadd.d	$fa2, $fa2, $fa1
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_3
# %bb.4:
	movgr2fr.d	$fa1, $zero
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_6
# %bb.5:
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_CSRMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(hypre_SeqVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(hypre_SeqVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(hypre_SeqVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	test_Relax, .Lfunc_end2-test_Relax
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_Axpy
.LCPI3_0:
	.dword	0xc08f400000000000              # double -1000
.LCPI3_1:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	test_Axpy
	.p2align	5
	.type	test_Axpy,@function
test_Axpy:                              # @test_Axpy
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 30
	ori	$s1, $a0, 2120
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_SeqVectorCreate)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_SeqVectorCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_SeqVectorInitialize)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_SeqVectorInitialize)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_SeqVectorSetConstantValues)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_SeqVectorSetConstantValues)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 2000
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	vldi	$vr0, -928
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_SeqVectorAxpy)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	bnez	$s3, .LBB3_1
# %bb.2:
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI3_0)
	move	$s3, $a0
	movgr2fr.d	$fa0, $zero
	vldi	$vr2, -784
	.p2align	4, , 16
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a1, 0
	fadd.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa3, $fa1
	fabs.d	$fa3, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa0, $fa3, $fcc0
	addi.d	$s1, $s1, -1
	addi.d	$a1, $a1, 8
	bnez	$s1, .LBB3_3
# %bb.4:
	movgr2fr.d	$fa1, $zero
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_6
# %bb.5:
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_6:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 32
	ld.d	$a2, $sp, 24
	ld.d	$a3, $sp, 40
	sub.d	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	sub.d	$a0, $a2, $a3
	movgr2fr.d	$fa1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI3_1)
	pcalau12i	$a0, %pc_hi20(totalWallTime)
	fld.d	$fa3, $a0, %pc_lo12(totalWallTime)
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a0, %pc_lo12(totalWallTime)
	sub.d	$a0, $s3, $s2
	pcalau12i	$a1, %pc_hi20(totalCPUTime)
	fld.d	$fa0, $a1, %pc_lo12(totalCPUTime)
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, %pc_lo12(totalCPUTime)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_SeqVectorDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(hypre_SeqVectorDestroy)
	jr	$t8
.Lfunc_end3:
	.size	test_Axpy, .Lfunc_end3-test_Axpy
                                        # -- End function
	.type	testIter,@object                # @testIter
	.section	.rodata,"a",@progbits
	.globl	testIter
	.p2align	2, 0x0
testIter:
	.word	2000                            # 0x7d0
	.size	testIter, 4

	.type	totalWallTime,@object           # @totalWallTime
	.bss
	.globl	totalWallTime
	.p2align	3, 0x0
totalWallTime:
	.dword	0x0000000000000000              # double 0
	.size	totalWallTime, 8

	.type	totalCPUTime,@object            # @totalCPUTime
	.globl	totalCPUTime
	.p2align	3, 0x0
totalCPUTime:
	.dword	0x0000000000000000              # double 0
	.size	totalCPUTime, 8

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	" \n Matvec: error: %e\n"
	.size	.L.str.7, 22

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" \n Relax: error: %e\n"
	.size	.L.str.8, 21

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" \n Axpy: error: %e\n"
	.size	.L.str.9, 20

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"//  Sequoia Benchmark Version 1.0 "
	.size	.Lstr.2, 35

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"//   MATVEC"
	.size	.Lstr.7, 12

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"//   Relax"
	.size	.Lstr.12, 11

	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	"//   Axpy"
	.size	.Lstr.17, 10

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	"// "
	.size	.Lstr.18, 4

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"//------------ "
	.size	.Lstr.19, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
