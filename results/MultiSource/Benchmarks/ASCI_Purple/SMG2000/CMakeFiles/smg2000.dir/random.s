	.file	"random.c"
	.text
	.globl	hypre_SeedRand                  # -- Begin function hypre_SeedRand
	.p2align	5
	.type	hypre_SeedRand,@function
hypre_SeedRand:                         # @hypre_SeedRand
# %bb.0:
	slli.d	$a1, $a0, 1
	addi.d	$a2, $zero, -1
	alsl.w	$a0, $a0, $a2, 1
	addi.d	$a1, $a1, -1
	bstrpick.d	$a0, $a0, 62, 53
	add.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 10
	slli.d	$a0, $a0, 10
	sub.d	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(Seed)
	st.w	$a0, $a1, %pc_lo12(Seed)
	ret
.Lfunc_end0:
	.size	hypre_SeedRand, .Lfunc_end0-hypre_SeedRand
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function hypre_Rand
.LCPI1_0:
	.dword	0x3f50000000000000              # double 9.765625E-4
	.text
	.globl	hypre_Rand
	.p2align	5
	.type	hypre_Rand,@function
hypre_Rand:                             # @hypre_Rand
# %bb.0:
	pcalau12i	$a0, %pc_hi20(Seed)
	ld.w	$a1, $a0, %pc_lo12(Seed)
	lu12i.w	$a2, 406
	ori	$a2, $a2, 1549
	mul.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI1_0)
	addi.w	$a2, $a1, 0
	bstrpick.d	$a2, $a2, 62, 53
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.d	$a1, $a1, $a2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	st.w	$a1, $a0, %pc_lo12(Seed)
	ret
.Lfunc_end1:
	.size	hypre_Rand, .Lfunc_end1-hypre_Rand
                                        # -- End function
	.type	Seed,@object                    # @Seed
	.data
	.p2align	2, 0x0
Seed:
	.word	13579                           # 0x350b
	.size	Seed, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
