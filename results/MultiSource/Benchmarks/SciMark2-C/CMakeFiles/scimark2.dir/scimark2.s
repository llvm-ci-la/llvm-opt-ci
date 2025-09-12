	.file	"scimark2.c"
	.text
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
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 40                   # 8-byte Folded Spill
	move	$s4, $a1
	move	$s5, $a0
	lu12i.w	$s1, 24
	ori	$a0, $s1, 2706
	pcaddu18i	$ra, %call36(new_Random_seed)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 2
	lu12i.w	$s2, 1
	blt	$s5, $a0, .LBB0_8
# %bb.1:
	ld.d	$s0, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.2:                                # %sub_0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB0_5
# %bb.3:                                # %sub_1
	ld.bu	$a0, $s0, 1
	ori	$a1, $zero, 104
	bne	$a0, $a1, .LBB0_5
# %bb.4:                                # %.tail
	ld.bu	$a0, $s0, 2
	beqz	$a0, .LBB0_13
.LBB0_5:                                # %.tail.thread
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_9
# %bb.6:
	ori	$a0, $zero, 1
	ori	$s3, $zero, 1024
	ori	$s0, $zero, 100
	ori	$s1, $zero, 1000
	ori	$s2, $s2, 904
	bgeu	$a0, $s5, .LBB0_10
.LBB0_7:
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s4, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_11
.LBB0_8:
	ori	$s3, $zero, 1024
	ori	$s0, $zero, 100
	ori	$s1, $zero, 1000
	vldi	$vr0, -1024
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$s2, $s2, 904
	b	.LBB0_12
.LBB0_9:
	ori	$a0, $zero, 2
	lu12i.w	$s3, 256
	ori	$s0, $zero, 1000
	lu12i.w	$a1, 244
	ori	$s2, $a1, 576
	ori	$s1, $s1, 1696
	bltu	$a0, $s5, .LBB0_7
.LBB0_10:
	vldi	$vr0, -1024
.LBB0_11:
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
.LBB0_12:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$s4, $a0, %pc_lo12(.Lstr.4)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(kernel_measureFFT)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	move	$a0, $s0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(kernel_measureSOR)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(kernel_measureMonteCarlo)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	move	$a0, $s1
	move	$a1, $s2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(kernel_measureSparseMatMult)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	move	$a0, $s0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(kernel_measureLU)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fadd.d	$fa0, $fs2, $fs3
	fadd.d	$fa0, $fa0, $fs4
	fadd.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa0, $fs0
	vldi	$vr1, -1004
	fdiv.d	$fs5, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 201424
	lu52i.d	$a0, $a0, 1046
	movgr2fr.d	$fs6, $a0
	fdiv.d	$fa0, $fs5, $fs6
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs2, $fs6
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs3, $fs6
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a2, $s0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs4, $fs6
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs1, $fs6
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs0, $fs6
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a2, $s0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Random_delete)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
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
.LBB0_13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	print_banner                    # -- Begin function print_banner
	.p2align	5
	.type	print_banner,@function
print_banner:                           # @print_banner
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$fp, $a0, %pc_lo12(.Lstr.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end1:
	.size	print_banner, .Lfunc_end1-print_banner
                                        # -- End function
	.type	RESOLUTION_DEFAULT,@object      # @RESOLUTION_DEFAULT
	.section	.rodata,"a",@progbits
	.globl	RESOLUTION_DEFAULT
	.p2align	3, 0x0
RESOLUTION_DEFAULT:
	.dword	0x4000000000000000              # double 2
	.size	RESOLUTION_DEFAULT, 8

	.type	RANDOM_SEED,@object             # @RANDOM_SEED
	.globl	RANDOM_SEED
	.p2align	2, 0x0
RANDOM_SEED:
	.word	101010                          # 0x18a92
	.size	RANDOM_SEED, 4

	.type	FFT_SIZE,@object                # @FFT_SIZE
	.globl	FFT_SIZE
	.p2align	2, 0x0
FFT_SIZE:
	.word	1024                            # 0x400
	.size	FFT_SIZE, 4

	.type	SOR_SIZE,@object                # @SOR_SIZE
	.globl	SOR_SIZE
	.p2align	2, 0x0
SOR_SIZE:
	.word	100                             # 0x64
	.size	SOR_SIZE, 4

	.type	SPARSE_SIZE_M,@object           # @SPARSE_SIZE_M
	.globl	SPARSE_SIZE_M
	.p2align	2, 0x0
SPARSE_SIZE_M:
	.word	1000                            # 0x3e8
	.size	SPARSE_SIZE_M, 4

	.type	SPARSE_SIZE_nz,@object          # @SPARSE_SIZE_nz
	.globl	SPARSE_SIZE_nz
	.p2align	2, 0x0
SPARSE_SIZE_nz:
	.word	5000                            # 0x1388
	.size	SPARSE_SIZE_nz, 4

	.type	LU_SIZE,@object                 # @LU_SIZE
	.globl	LU_SIZE
	.p2align	2, 0x0
LU_SIZE:
	.word	100                             # 0x64
	.size	LU_SIZE, 4

	.type	LG_FFT_SIZE,@object             # @LG_FFT_SIZE
	.globl	LG_FFT_SIZE
	.p2align	2, 0x0
LG_FFT_SIZE:
	.word	1048576                         # 0x100000
	.size	LG_FFT_SIZE, 4

	.type	LG_SOR_SIZE,@object             # @LG_SOR_SIZE
	.globl	LG_SOR_SIZE
	.p2align	2, 0x0
LG_SOR_SIZE:
	.word	1000                            # 0x3e8
	.size	LG_SOR_SIZE, 4

	.type	LG_SPARSE_SIZE_M,@object        # @LG_SPARSE_SIZE_M
	.globl	LG_SPARSE_SIZE_M
	.p2align	2, 0x0
LG_SPARSE_SIZE_M:
	.word	100000                          # 0x186a0
	.size	LG_SPARSE_SIZE_M, 4

	.type	LG_SPARSE_SIZE_nz,@object       # @LG_SPARSE_SIZE_nz
	.globl	LG_SPARSE_SIZE_nz
	.p2align	2, 0x0
LG_SPARSE_SIZE_nz:
	.word	1000000                         # 0xf4240
	.size	LG_SPARSE_SIZE_nz, 4

	.type	LG_LU_SIZE,@object              # @LG_LU_SIZE
	.globl	LG_LU_SIZE
	.p2align	2, 0x0
LG_LU_SIZE:
	.word	1000                            # 0x3e8
	.size	LG_LU_SIZE, 4

	.type	TINY_FFT_SIZE,@object           # @TINY_FFT_SIZE
	.globl	TINY_FFT_SIZE
	.p2align	2, 0x0
TINY_FFT_SIZE:
	.word	16                              # 0x10
	.size	TINY_FFT_SIZE, 4

	.type	TINY_SOR_SIZE,@object           # @TINY_SOR_SIZE
	.globl	TINY_SOR_SIZE
	.p2align	2, 0x0
TINY_SOR_SIZE:
	.word	10                              # 0xa
	.size	TINY_SOR_SIZE, 4

	.type	TINY_SPARSE_SIZE_M,@object      # @TINY_SPARSE_SIZE_M
	.globl	TINY_SPARSE_SIZE_M
	.p2align	2, 0x0
TINY_SPARSE_SIZE_M:
	.word	10                              # 0xa
	.size	TINY_SPARSE_SIZE_M, 4

	.type	TINY_SPARSE_SIZE_N,@object      # @TINY_SPARSE_SIZE_N
	.globl	TINY_SPARSE_SIZE_N
	.p2align	2, 0x0
TINY_SPARSE_SIZE_N:
	.word	10                              # 0xa
	.size	TINY_SPARSE_SIZE_N, 4

	.type	TINY_SPARSE_SIZE_nz,@object     # @TINY_SPARSE_SIZE_nz
	.globl	TINY_SPARSE_SIZE_nz
	.p2align	2, 0x0
TINY_SPARSE_SIZE_nz:
	.word	50                              # 0x32
	.size	TINY_SPARSE_SIZE_nz, 4

	.type	TINY_LU_SIZE,@object            # @TINY_LU_SIZE
	.globl	TINY_LU_SIZE
	.p2align	2, 0x0
TINY_LU_SIZE:
	.word	10                              # 0xa
	.size	TINY_LU_SIZE, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-help"
	.size	.L.str, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Usage: [-large] [minimum_time]\n"
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"-large"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Using %10.2f seconds min time per kenel.\n"
	.size	.L.str.4, 42

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Composite Score:        %8.2f\n"
	.size	.L.str.6, 31

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"FFT             Mflops: %8.2f    (N=%d)\n"
	.size	.L.str.7, 41

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"SOR             Mflops: %8.2f    (%d x %d)\n"
	.size	.L.str.8, 44

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"MonteCarlo:     Mflops: %8.2f\n"
	.size	.L.str.9, 31

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Sparse matmult  Mflops: %8.2f    (N=%d, nz=%d)\n"
	.size	.L.str.10, 48

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"LU              Mflops: %8.2f    (M=%d, N=%d)\n"
	.size	.L.str.11, 47

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"NOTE!!! All Mflops disabled to prevent diffs from failing!"
	.size	.Lstr, 59

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"** SciMark2 Numeric Benchmark, see http://math.nist.gov/scimark **"
	.size	.Lstr.2, 67

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"** for details. (Results can be submitted to pozo@nist.gov)     **"
	.size	.Lstr.3, 67

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"**                                                              **"
	.size	.Lstr.4, 67

	.section	".note.GNU-stack","",@progbits
	.addrsig
