	.file	"builtin-bitops-1.c"
	.text
	.globl	my_ffs                          # -- Begin function my_ffs
	.p2align	5
	.type	my_ffs,@function
my_ffs:                                 # @my_ffs
# %bb.0:
	beqz	$a0, .LBB0_33
# %bb.1:                                # %.preheader.preheader
	andi	$a2, $a0, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB0_32
# %bb.2:                                # %.preheader.1
	andi	$a2, $a0, 2
	ori	$a1, $zero, 2
	bnez	$a2, .LBB0_32
# %bb.3:                                # %.preheader.2
	andi	$a2, $a0, 4
	ori	$a1, $zero, 3
	bnez	$a2, .LBB0_32
# %bb.4:                                # %.preheader.3
	andi	$a2, $a0, 8
	ori	$a1, $zero, 4
	bnez	$a2, .LBB0_32
# %bb.5:                                # %.preheader.4
	andi	$a2, $a0, 16
	ori	$a1, $zero, 5
	bnez	$a2, .LBB0_32
# %bb.6:                                # %.preheader.5
	andi	$a2, $a0, 32
	ori	$a1, $zero, 6
	bnez	$a2, .LBB0_32
# %bb.7:                                # %.preheader.6
	andi	$a2, $a0, 64
	ori	$a1, $zero, 7
	bnez	$a2, .LBB0_32
# %bb.8:                                # %.preheader.7
	andi	$a2, $a0, 128
	ori	$a1, $zero, 8
	bnez	$a2, .LBB0_32
# %bb.9:                                # %.preheader.8
	andi	$a2, $a0, 256
	ori	$a1, $zero, 9
	bnez	$a2, .LBB0_32
# %bb.10:                               # %.preheader.9
	andi	$a2, $a0, 512
	ori	$a1, $zero, 10
	bnez	$a2, .LBB0_32
# %bb.11:                               # %.preheader.10
	andi	$a2, $a0, 1024
	ori	$a1, $zero, 11
	bnez	$a2, .LBB0_32
# %bb.12:                               # %.preheader.11
	slli.d	$a2, $a0, 52
	ori	$a1, $zero, 12
	bltz	$a2, .LBB0_32
# %bb.13:                               # %.preheader.12
	slli.d	$a2, $a0, 51
	ori	$a1, $zero, 13
	bltz	$a2, .LBB0_32
# %bb.14:                               # %.preheader.13
	slli.d	$a2, $a0, 50
	ori	$a1, $zero, 14
	bltz	$a2, .LBB0_32
# %bb.15:                               # %.preheader.14
	slli.d	$a2, $a0, 49
	ori	$a1, $zero, 15
	bltz	$a2, .LBB0_32
# %bb.16:                               # %.preheader.15
	slli.d	$a2, $a0, 48
	ori	$a1, $zero, 16
	bltz	$a2, .LBB0_32
# %bb.17:                               # %.preheader.16
	slli.d	$a2, $a0, 47
	ori	$a1, $zero, 17
	bltz	$a2, .LBB0_32
# %bb.18:                               # %.preheader.17
	slli.d	$a2, $a0, 46
	ori	$a1, $zero, 18
	bltz	$a2, .LBB0_32
# %bb.19:                               # %.preheader.18
	slli.d	$a2, $a0, 45
	ori	$a1, $zero, 19
	bltz	$a2, .LBB0_32
# %bb.20:                               # %.preheader.19
	slli.d	$a2, $a0, 44
	ori	$a1, $zero, 20
	bltz	$a2, .LBB0_32
# %bb.21:                               # %.preheader.20
	slli.d	$a2, $a0, 43
	ori	$a1, $zero, 21
	bltz	$a2, .LBB0_32
# %bb.22:                               # %.preheader.21
	slli.d	$a2, $a0, 42
	ori	$a1, $zero, 22
	bltz	$a2, .LBB0_32
# %bb.23:                               # %.preheader.22
	slli.d	$a2, $a0, 41
	ori	$a1, $zero, 23
	bltz	$a2, .LBB0_32
# %bb.24:                               # %.preheader.23
	slli.d	$a2, $a0, 40
	ori	$a1, $zero, 24
	bltz	$a2, .LBB0_32
# %bb.25:                               # %.preheader.24
	slli.d	$a2, $a0, 39
	ori	$a1, $zero, 25
	bltz	$a2, .LBB0_32
# %bb.26:                               # %.preheader.25
	slli.d	$a2, $a0, 38
	ori	$a1, $zero, 26
	bltz	$a2, .LBB0_32
# %bb.27:                               # %.preheader.26
	slli.d	$a2, $a0, 37
	ori	$a1, $zero, 27
	bltz	$a2, .LBB0_32
# %bb.28:                               # %.preheader.27
	slli.d	$a2, $a0, 36
	ori	$a1, $zero, 28
	bltz	$a2, .LBB0_32
# %bb.29:                               # %.preheader.28
	slli.d	$a2, $a0, 35
	ori	$a1, $zero, 29
	bltz	$a2, .LBB0_32
# %bb.30:                               # %.preheader.29
	slli.d	$a2, $a0, 34
	ori	$a1, $zero, 30
	bltz	$a2, .LBB0_32
# %bb.31:                               # %.preheader.30
	lu12i.w	$a1, 262144
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 31
.LBB0_32:                               # %.preheader.31
	move	$a0, $a1
	ret
.LBB0_33:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	my_ffs, .Lfunc_end0-my_ffs
                                        # -- End function
	.globl	my_ctz                          # -- Begin function my_ctz
	.p2align	5
	.type	my_ctz,@function
my_ctz:                                 # @my_ctz
# %bb.0:
	andi	$a1, $a0, 1
	bnez	$a1, .LBB1_33
# %bb.1:
	andi	$a2, $a0, 2
	ori	$a1, $zero, 1
	bnez	$a2, .LBB1_32
# %bb.2:
	andi	$a2, $a0, 4
	ori	$a1, $zero, 2
	bnez	$a2, .LBB1_32
# %bb.3:
	andi	$a2, $a0, 8
	ori	$a1, $zero, 3
	bnez	$a2, .LBB1_32
# %bb.4:
	andi	$a2, $a0, 16
	ori	$a1, $zero, 4
	bnez	$a2, .LBB1_32
# %bb.5:
	andi	$a2, $a0, 32
	ori	$a1, $zero, 5
	bnez	$a2, .LBB1_32
# %bb.6:
	andi	$a2, $a0, 64
	ori	$a1, $zero, 6
	bnez	$a2, .LBB1_32
# %bb.7:
	andi	$a2, $a0, 128
	ori	$a1, $zero, 7
	bnez	$a2, .LBB1_32
# %bb.8:
	andi	$a2, $a0, 256
	ori	$a1, $zero, 8
	bnez	$a2, .LBB1_32
# %bb.9:
	andi	$a2, $a0, 512
	ori	$a1, $zero, 9
	bnez	$a2, .LBB1_32
# %bb.10:
	andi	$a2, $a0, 1024
	ori	$a1, $zero, 10
	bnez	$a2, .LBB1_32
# %bb.11:
	slli.d	$a2, $a0, 52
	ori	$a1, $zero, 11
	bltz	$a2, .LBB1_32
# %bb.12:
	slli.d	$a2, $a0, 51
	ori	$a1, $zero, 12
	bltz	$a2, .LBB1_32
# %bb.13:
	slli.d	$a2, $a0, 50
	ori	$a1, $zero, 13
	bltz	$a2, .LBB1_32
# %bb.14:
	slli.d	$a2, $a0, 49
	ori	$a1, $zero, 14
	bltz	$a2, .LBB1_32
# %bb.15:
	slli.d	$a2, $a0, 48
	ori	$a1, $zero, 15
	bltz	$a2, .LBB1_32
# %bb.16:
	slli.d	$a2, $a0, 47
	ori	$a1, $zero, 16
	bltz	$a2, .LBB1_32
# %bb.17:
	slli.d	$a2, $a0, 46
	ori	$a1, $zero, 17
	bltz	$a2, .LBB1_32
# %bb.18:
	slli.d	$a2, $a0, 45
	ori	$a1, $zero, 18
	bltz	$a2, .LBB1_32
# %bb.19:
	slli.d	$a2, $a0, 44
	ori	$a1, $zero, 19
	bltz	$a2, .LBB1_32
# %bb.20:
	slli.d	$a2, $a0, 43
	ori	$a1, $zero, 20
	bltz	$a2, .LBB1_32
# %bb.21:
	slli.d	$a2, $a0, 42
	ori	$a1, $zero, 21
	bltz	$a2, .LBB1_32
# %bb.22:
	slli.d	$a2, $a0, 41
	ori	$a1, $zero, 22
	bltz	$a2, .LBB1_32
# %bb.23:
	slli.d	$a2, $a0, 40
	ori	$a1, $zero, 23
	bltz	$a2, .LBB1_32
# %bb.24:
	slli.d	$a2, $a0, 39
	ori	$a1, $zero, 24
	bltz	$a2, .LBB1_32
# %bb.25:
	slli.d	$a2, $a0, 38
	ori	$a1, $zero, 25
	bltz	$a2, .LBB1_32
# %bb.26:
	slli.d	$a2, $a0, 37
	ori	$a1, $zero, 26
	bltz	$a2, .LBB1_32
# %bb.27:
	slli.d	$a2, $a0, 36
	ori	$a1, $zero, 27
	bltz	$a2, .LBB1_32
# %bb.28:
	slli.d	$a2, $a0, 35
	ori	$a1, $zero, 28
	bltz	$a2, .LBB1_32
# %bb.29:
	slli.d	$a2, $a0, 34
	ori	$a1, $zero, 29
	bltz	$a2, .LBB1_32
# %bb.30:
	slli.d	$a2, $a0, 33
	ori	$a1, $zero, 30
	bltz	$a2, .LBB1_32
# %bb.31:
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 31
.LBB1_32:
	move	$a0, $a1
	ret
.LBB1_33:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	my_ctz, .Lfunc_end1-my_ctz
                                        # -- End function
	.globl	my_clz                          # -- Begin function my_clz
	.p2align	5
	.type	my_clz,@function
my_clz:                                 # @my_clz
# %bb.0:
	bltz	$a0, .LBB2_33
# %bb.1:
	bstrpick.d	$a2, $a0, 31, 30
	ori	$a1, $zero, 1
	bnez	$a2, .LBB2_32
# %bb.2:
	bstrpick.d	$a2, $a0, 31, 29
	ori	$a1, $zero, 2
	bnez	$a2, .LBB2_32
# %bb.3:
	bstrpick.d	$a2, $a0, 31, 28
	ori	$a1, $zero, 3
	bnez	$a2, .LBB2_32
# %bb.4:
	bstrpick.d	$a2, $a0, 31, 27
	ori	$a1, $zero, 4
	bnez	$a2, .LBB2_32
# %bb.5:
	bstrpick.d	$a2, $a0, 31, 26
	ori	$a1, $zero, 5
	bnez	$a2, .LBB2_32
# %bb.6:
	bstrpick.d	$a2, $a0, 31, 25
	ori	$a1, $zero, 6
	bnez	$a2, .LBB2_32
# %bb.7:
	bstrpick.d	$a2, $a0, 31, 24
	ori	$a1, $zero, 7
	bnez	$a2, .LBB2_32
# %bb.8:
	bstrpick.d	$a2, $a0, 31, 23
	ori	$a1, $zero, 8
	bnez	$a2, .LBB2_32
# %bb.9:
	bstrpick.d	$a2, $a0, 31, 22
	ori	$a1, $zero, 9
	bnez	$a2, .LBB2_32
# %bb.10:
	bstrpick.d	$a2, $a0, 31, 21
	ori	$a1, $zero, 10
	bnez	$a2, .LBB2_32
# %bb.11:
	bstrpick.d	$a2, $a0, 31, 20
	ori	$a1, $zero, 11
	bnez	$a2, .LBB2_32
# %bb.12:
	bstrpick.d	$a2, $a0, 31, 19
	ori	$a1, $zero, 12
	bnez	$a2, .LBB2_32
# %bb.13:
	bstrpick.d	$a2, $a0, 31, 18
	ori	$a1, $zero, 13
	bnez	$a2, .LBB2_32
# %bb.14:
	bstrpick.d	$a2, $a0, 31, 17
	ori	$a1, $zero, 14
	bnez	$a2, .LBB2_32
# %bb.15:
	bstrpick.d	$a2, $a0, 31, 16
	ori	$a1, $zero, 15
	bnez	$a2, .LBB2_32
# %bb.16:
	bstrpick.d	$a2, $a0, 31, 15
	ori	$a1, $zero, 16
	bnez	$a2, .LBB2_32
# %bb.17:
	bstrpick.d	$a2, $a0, 31, 14
	ori	$a1, $zero, 17
	bnez	$a2, .LBB2_32
# %bb.18:
	bstrpick.d	$a2, $a0, 31, 13
	ori	$a1, $zero, 18
	bnez	$a2, .LBB2_32
# %bb.19:
	bstrpick.d	$a2, $a0, 31, 12
	ori	$a1, $zero, 19
	bnez	$a2, .LBB2_32
# %bb.20:
	ori	$a2, $zero, 2047
	ori	$a1, $zero, 20
	bltu	$a2, $a0, .LBB2_32
# %bb.21:
	ori	$a2, $zero, 1023
	ori	$a1, $zero, 21
	bltu	$a2, $a0, .LBB2_32
# %bb.22:
	ori	$a2, $zero, 511
	ori	$a1, $zero, 22
	bltu	$a2, $a0, .LBB2_32
# %bb.23:
	ori	$a2, $zero, 255
	ori	$a1, $zero, 23
	bltu	$a2, $a0, .LBB2_32
# %bb.24:
	ori	$a2, $zero, 127
	ori	$a1, $zero, 24
	bltu	$a2, $a0, .LBB2_32
# %bb.25:
	ori	$a2, $zero, 63
	ori	$a1, $zero, 25
	bltu	$a2, $a0, .LBB2_32
# %bb.26:
	ori	$a2, $zero, 31
	ori	$a1, $zero, 26
	bltu	$a2, $a0, .LBB2_32
# %bb.27:
	ori	$a2, $zero, 15
	ori	$a1, $zero, 27
	bltu	$a2, $a0, .LBB2_32
# %bb.28:
	ori	$a2, $zero, 7
	ori	$a1, $zero, 28
	bltu	$a2, $a0, .LBB2_32
# %bb.29:
	ori	$a2, $zero, 3
	ori	$a1, $zero, 29
	bltu	$a2, $a0, .LBB2_32
# %bb.30:
	ori	$a2, $zero, 1
	ori	$a1, $zero, 30
	bltu	$a2, $a0, .LBB2_32
# %bb.31:
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 31
.LBB2_32:
	move	$a0, $a1
	ret
.LBB2_33:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	my_clz, .Lfunc_end2-my_clz
                                        # -- End function
	.globl	my_clrsb                        # -- Begin function my_clrsb
	.p2align	5
	.type	my_clrsb,@function
my_clrsb:                               # @my_clrsb
# %bb.0:
	bstrpick.d	$a1, $a0, 31, 31
	bstrpick.d	$a2, $a0, 30, 30
	bne	$a2, $a1, .LBB3_32
# %bb.1:
	bstrpick.d	$a3, $a0, 29, 29
	addi.w	$a2, $a1, 0
	ori	$a1, $zero, 1
	bne	$a3, $a2, .LBB3_31
# %bb.2:
	bstrpick.d	$a3, $a0, 28, 28
	ori	$a1, $zero, 2
	bne	$a3, $a2, .LBB3_31
# %bb.3:
	bstrpick.d	$a3, $a0, 27, 27
	ori	$a1, $zero, 3
	bne	$a3, $a2, .LBB3_31
# %bb.4:
	bstrpick.d	$a3, $a0, 26, 26
	ori	$a1, $zero, 4
	bne	$a3, $a2, .LBB3_31
# %bb.5:
	bstrpick.d	$a3, $a0, 25, 25
	ori	$a1, $zero, 5
	bne	$a3, $a2, .LBB3_31
# %bb.6:
	bstrpick.d	$a3, $a0, 24, 24
	ori	$a1, $zero, 6
	bne	$a3, $a2, .LBB3_31
# %bb.7:
	bstrpick.d	$a3, $a0, 23, 23
	ori	$a1, $zero, 7
	bne	$a3, $a2, .LBB3_31
# %bb.8:
	bstrpick.d	$a3, $a0, 22, 22
	ori	$a1, $zero, 8
	bne	$a3, $a2, .LBB3_31
# %bb.9:
	bstrpick.d	$a3, $a0, 21, 21
	ori	$a1, $zero, 9
	bne	$a3, $a2, .LBB3_31
# %bb.10:
	bstrpick.d	$a3, $a0, 20, 20
	ori	$a1, $zero, 10
	bne	$a3, $a2, .LBB3_31
# %bb.11:
	bstrpick.d	$a3, $a0, 19, 19
	ori	$a1, $zero, 11
	bne	$a3, $a2, .LBB3_31
# %bb.12:
	bstrpick.d	$a3, $a0, 18, 18
	ori	$a1, $zero, 12
	bne	$a3, $a2, .LBB3_31
# %bb.13:
	bstrpick.d	$a3, $a0, 17, 17
	ori	$a1, $zero, 13
	bne	$a3, $a2, .LBB3_31
# %bb.14:
	bstrpick.d	$a3, $a0, 16, 16
	ori	$a1, $zero, 14
	bne	$a3, $a2, .LBB3_31
# %bb.15:
	bstrpick.d	$a3, $a0, 15, 15
	ori	$a1, $zero, 15
	bne	$a3, $a2, .LBB3_31
# %bb.16:
	bstrpick.d	$a3, $a0, 14, 14
	ori	$a1, $zero, 16
	bne	$a3, $a2, .LBB3_31
# %bb.17:
	bstrpick.d	$a3, $a0, 13, 13
	ori	$a1, $zero, 17
	bne	$a3, $a2, .LBB3_31
# %bb.18:
	bstrpick.d	$a3, $a0, 12, 12
	ori	$a1, $zero, 18
	bne	$a3, $a2, .LBB3_31
# %bb.19:
	bstrpick.d	$a3, $a0, 11, 11
	ori	$a1, $zero, 19
	bne	$a3, $a2, .LBB3_31
# %bb.20:
	bstrpick.d	$a3, $a0, 10, 10
	ori	$a1, $zero, 20
	bne	$a3, $a2, .LBB3_31
# %bb.21:
	bstrpick.d	$a3, $a0, 9, 9
	ori	$a1, $zero, 21
	bne	$a3, $a2, .LBB3_31
# %bb.22:
	bstrpick.d	$a3, $a0, 8, 8
	ori	$a1, $zero, 22
	bne	$a3, $a2, .LBB3_31
# %bb.23:
	bstrpick.d	$a3, $a0, 7, 7
	ori	$a1, $zero, 23
	bne	$a3, $a2, .LBB3_31
# %bb.24:
	bstrpick.d	$a3, $a0, 6, 6
	ori	$a1, $zero, 24
	bne	$a3, $a2, .LBB3_31
# %bb.25:
	bstrpick.d	$a3, $a0, 5, 5
	ori	$a1, $zero, 25
	bne	$a3, $a2, .LBB3_31
# %bb.26:
	bstrpick.d	$a3, $a0, 4, 4
	ori	$a1, $zero, 26
	bne	$a3, $a2, .LBB3_31
# %bb.27:
	bstrpick.d	$a3, $a0, 3, 3
	ori	$a1, $zero, 27
	bne	$a3, $a2, .LBB3_31
# %bb.28:
	bstrpick.d	$a3, $a0, 2, 2
	ori	$a1, $zero, 28
	bne	$a3, $a2, .LBB3_31
# %bb.29:
	bstrpick.d	$a3, $a0, 1, 1
	ori	$a1, $zero, 29
	bne	$a3, $a2, .LBB3_31
# %bb.30:
	andi	$a0, $a0, 1
	xor	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 30
.LBB3_31:
	move	$a0, $a1
	ret
.LBB3_32:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	my_clrsb, .Lfunc_end3-my_clrsb
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_popcount
.LCPI4_0:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
.LCPI4_1:
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
.LCPI4_2:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI4_3:
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
.LCPI4_4:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI4_5:
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
.LCPI4_6:
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.text
	.globl	my_popcount
	.p2align	5
	.type	my_popcount,@function
my_popcount:                            # @my_popcount
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_1)
	pcalau12i	$a1, %pc_hi20(.LCPI4_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI4_2)
	vreplgr2vr.w	$vr3, $a0
	vsrl.w	$vr0, $vr3, $vr0
	vsrl.w	$vr1, $vr3, $vr1
	vsrl.w	$vr2, $vr3, $vr2
	pcalau12i	$a1, %pc_hi20(.LCPI4_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI4_3)
	pcalau12i	$a1, %pc_hi20(.LCPI4_4)
	vld	$vr5, $a1, %pc_lo12(.LCPI4_4)
	pcalau12i	$a1, %pc_hi20(.LCPI4_5)
	vld	$vr6, $a1, %pc_lo12(.LCPI4_5)
	pcalau12i	$a1, %pc_hi20(.LCPI4_6)
	vld	$vr7, $a1, %pc_lo12(.LCPI4_6)
	vsrl.w	$vr4, $vr3, $vr4
	vsrl.w	$vr5, $vr3, $vr5
	vsrl.w	$vr6, $vr3, $vr6
	vsrl.w	$vr3, $vr3, $vr7
	vrepli.w	$vr7, 1
	vand.v	$vr3, $vr3, $vr7
	vand.v	$vr6, $vr6, $vr7
	vand.v	$vr5, $vr5, $vr7
	vand.v	$vr4, $vr4, $vr7
	vand.v	$vr2, $vr2, $vr7
	vand.v	$vr1, $vr1, $vr7
	vand.v	$vr0, $vr0, $vr7
	bstrpick.d	$a1, $a0, 28, 28
	bstrpick.d	$a2, $a0, 29, 29
	bstrpick.d	$a3, $a0, 30, 30
	bstrpick.d	$a0, $a0, 31, 31
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr1, $vr2, $vr4
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr1, $vr5, $vr6
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	add.d	$a1, $a4, $a1
	add.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end4:
	.size	my_popcount, .Lfunc_end4-my_popcount
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_parity
.LCPI5_0:
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
.LCPI5_1:
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
.LCPI5_2:
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI5_3:
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
.LCPI5_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI5_5:
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
.LCPI5_6:
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.text
	.globl	my_parity
	.p2align	5
	.type	my_parity,@function
my_parity:                              # @my_parity
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI5_1)
	pcalau12i	$a1, %pc_hi20(.LCPI5_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI5_2)
	vreplgr2vr.w	$vr3, $a0
	vsrl.w	$vr0, $vr3, $vr0
	vsrl.w	$vr1, $vr3, $vr1
	vsrl.w	$vr2, $vr3, $vr2
	pcalau12i	$a1, %pc_hi20(.LCPI5_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI5_3)
	pcalau12i	$a1, %pc_hi20(.LCPI5_4)
	vld	$vr5, $a1, %pc_lo12(.LCPI5_4)
	pcalau12i	$a1, %pc_hi20(.LCPI5_5)
	vld	$vr6, $a1, %pc_lo12(.LCPI5_5)
	pcalau12i	$a1, %pc_hi20(.LCPI5_6)
	vld	$vr7, $a1, %pc_lo12(.LCPI5_6)
	vsrl.w	$vr4, $vr3, $vr4
	vsrl.w	$vr5, $vr3, $vr5
	vsrl.w	$vr6, $vr3, $vr6
	vsrl.w	$vr3, $vr3, $vr7
	srli.d	$a1, $a0, 29
	srli.d	$a2, $a0, 30
	srli.d	$a3, $a0, 31
	vadd.w	$vr3, $vr3, $vr6
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	add.d	$a1, $a4, $a1
	add.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ret
.Lfunc_end5:
	.size	my_parity, .Lfunc_end5-my_parity
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ffsl
.LCPI6_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI6_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI6_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI6_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI6_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI6_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI6_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI6_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ffsl
	.p2align	5
	.type	my_ffsl,@function
my_ffsl:                                # @my_ffsl
# %bb.0:
	beqz	$a0, .LBB6_6
# %bb.1:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI6_1)
	pcalau12i	$a1, %pc_hi20(.LCPI6_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI6_2)
	pcalau12i	$a1, %pc_hi20(.LCPI6_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI6_3)
	pcalau12i	$a1, %pc_hi20(.LCPI6_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI6_4)
	pcalau12i	$a1, %pc_hi20(.LCPI6_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI6_5)
	pcalau12i	$a1, %pc_hi20(.LCPI6_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI6_6)
	pcalau12i	$a1, %pc_hi20(.LCPI6_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI6_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 15
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB6_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB6_4
# %bb.3:                                # %vector.body
                                        #   in Loop: Header=BB6_2 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB6_2
.LBB6_4:                                # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB6_7
# %bb.5:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI6_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB6_6:
	move	$a0, $zero
	ret
.LBB6_7:
	ori	$a0, $zero, 65
	ret
.Lfunc_end6:
	.size	my_ffsl, .Lfunc_end6-my_ffsl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ctzl
.LCPI7_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI7_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI7_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI7_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI7_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI7_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI7_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI7_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI7_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ctzl
	.p2align	5
	.type	my_ctzl,@function
my_ctzl:                                # @my_ctzl
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_0)
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_1)
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI7_2)
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI7_3)
	pcalau12i	$a1, %pc_hi20(.LCPI7_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI7_4)
	pcalau12i	$a1, %pc_hi20(.LCPI7_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI7_5)
	pcalau12i	$a1, %pc_hi20(.LCPI7_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI7_6)
	pcalau12i	$a1, %pc_hi20(.LCPI7_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI7_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB7_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB7_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB7_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB7_1
.LBB7_3:                                # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB7_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI7_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB7_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end7:
	.size	my_ctzl, .Lfunc_end7-my_ctzl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clzl
.LCPI8_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI8_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI8_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI8_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI8_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI8_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI8_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI8_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI8_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_clzl
	.p2align	5
	.type	my_clzl,@function
my_clzl:                                # @my_clzl
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI8_0)
	pcalau12i	$a1, %pc_hi20(.LCPI8_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI8_1)
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI8_2)
	pcalau12i	$a1, %pc_hi20(.LCPI8_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI8_3)
	pcalau12i	$a1, %pc_hi20(.LCPI8_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI8_4)
	pcalau12i	$a1, %pc_hi20(.LCPI8_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI8_5)
	pcalau12i	$a1, %pc_hi20(.LCPI8_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI8_6)
	pcalau12i	$a1, %pc_hi20(.LCPI8_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI8_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	lu52i.d	$a1, $zero, -2048
	vreplgr2vr.d	$vr9, $a1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB8_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsrl.d	$vr11, $vr9, $vr0
	vsrl.d	$vr12, $vr9, $vr1
	vsrl.d	$vr13, $vr9, $vr2
	vsrl.d	$vr14, $vr9, $vr3
	vsrl.d	$vr15, $vr9, $vr4
	vsrl.d	$vr16, $vr9, $vr5
	vsrl.d	$vr17, $vr9, $vr6
	vsrl.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB8_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB8_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB8_1
.LBB8_3:                                # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB8_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI8_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI8_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB8_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end8:
	.size	my_clzl, .Lfunc_end8-my_clzl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clrsbl
.LCPI9_0:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI9_1:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI9_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI9_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.text
	.globl	my_clrsbl
	.p2align	5
	.type	my_clrsbl,@function
my_clrsbl:                              # @my_clrsbl
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	srli.d	$a2, $a0, 63
	vreplgr2vr.d	$vr0, $a2
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI9_0)
	pcalau12i	$a1, %pc_hi20(.LCPI9_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI9_1)
	pcalau12i	$a1, %pc_hi20(.LCPI9_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI9_2)
	pcalau12i	$a1, %pc_hi20(.LCPI9_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI9_3)
	vreplgr2vr.d	$vr5, $a0
	addi.w	$a1, $zero, -7
	vrepli.d	$vr6, 63
	vrepli.d	$vr7, 1
	vrepli.b	$vr8, -1
	ori	$a3, $zero, 41
	.p2align	4, , 16
.LBB9_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	vsub.d	$vr9, $vr6, $vr4
	vsub.d	$vr10, $vr6, $vr3
	vsub.d	$vr11, $vr6, $vr2
	vsub.d	$vr12, $vr6, $vr1
	vsrl.d	$vr12, $vr5, $vr12
	vsrl.d	$vr11, $vr5, $vr11
	vsrl.d	$vr10, $vr5, $vr10
	vsrl.d	$vr9, $vr5, $vr9
	vand.v	$vr13, $vr12, $vr7
	vand.v	$vr11, $vr11, $vr7
	vand.v	$vr12, $vr10, $vr7
	vand.v	$vr9, $vr9, $vr7
	vseq.d	$vr9, $vr9, $vr0
	vxor.v	$vr10, $vr9, $vr8
	vseq.d	$vr9, $vr12, $vr0
	vxor.v	$vr9, $vr9, $vr8
	vpickev.w	$vr12, $vr9, $vr10
	vpickve2gr.h	$a1, $vr12, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a5, $vr10, 0
	bstrins.d	$a5, $a1, 63, 1
	vpickve2gr.h	$a1, $vr12, 4
	bstrins.d	$a5, $a1, 2, 2
	vpickve2gr.h	$a1, $vr12, 6
	bstrins.d	$a5, $a1, 3, 3
	vseq.d	$vr11, $vr11, $vr0
	vxor.v	$vr12, $vr11, $vr8
	vseq.d	$vr11, $vr13, $vr0
	vxor.v	$vr11, $vr11, $vr8
	vpickev.w	$vr13, $vr11, $vr12
	vpickve2gr.h	$a1, $vr13, 0
	bstrins.d	$a5, $a1, 4, 4
	vpickve2gr.h	$a1, $vr13, 2
	bstrins.d	$a5, $a1, 5, 5
	vpickve2gr.h	$a1, $vr13, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a5, $a1
	vpickve2gr.h	$a5, $vr13, 6
	slli.d	$a5, $a5, 7
	or	$a1, $a1, $a5
	andi	$a5, $a1, 255
	addi.d	$a1, $a4, 8
	bnez	$a5, .LBB9_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB9_1 Depth=1
	vaddi.du	$vr4, $vr4, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	bne	$a4, $a3, .LBB9_1
.LBB9_3:                                # %middle.split
	beqz	$a5, .LBB9_5
# %bb.4:                                # %vector.early.exit
	vpickve2gr.d	$a0, $vr10, 0
	vinsgr2vr.b	$vr0, $a0, 0
	vpickve2gr.d	$a0, $vr10, 1
	vinsgr2vr.b	$vr0, $a0, 1
	vpickve2gr.d	$a0, $vr9, 0
	vinsgr2vr.b	$vr0, $a0, 2
	vpickve2gr.d	$a0, $vr9, 1
	vinsgr2vr.b	$vr0, $a0, 3
	vpickve2gr.d	$a0, $vr12, 0
	vinsgr2vr.b	$vr0, $a0, 4
	vpickve2gr.d	$a0, $vr12, 1
	vinsgr2vr.b	$vr0, $a0, 5
	vpickve2gr.d	$a0, $vr11, 0
	vinsgr2vr.b	$vr0, $a0, 6
	vpickve2gr.d	$a0, $vr11, 1
	vinsgr2vr.b	$vr0, $a0, 7
	lu12i.w	$a0, 20576
	ori	$a0, $a0, 1800
	lu32i.d	$a0, 131844
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr1, $a0
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a0, $vr0, 0
	ori	$a2, $zero, 8
	sub.d	$a0, $a2, $a0
	andi	$a0, $a0, 255
	add.d	$a1, $a0, $a1
	b	.LBB9_12
.LBB9_5:                                # %scalar.ph
	bstrpick.d	$a3, $a0, 6, 6
	ori	$a1, $zero, 57
	bne	$a3, $a2, .LBB9_12
# %bb.6:                                # %scalar.ph.1
	bstrpick.d	$a3, $a0, 5, 5
	ori	$a1, $zero, 58
	bne	$a3, $a2, .LBB9_12
# %bb.7:                                # %scalar.ph.2
	bstrpick.d	$a3, $a0, 4, 4
	ori	$a1, $zero, 59
	bne	$a3, $a2, .LBB9_12
# %bb.8:                                # %scalar.ph.3
	bstrpick.d	$a3, $a0, 3, 3
	ori	$a1, $zero, 60
	bne	$a3, $a2, .LBB9_12
# %bb.9:                                # %scalar.ph.4
	bstrpick.d	$a3, $a0, 2, 2
	ori	$a1, $zero, 61
	bne	$a3, $a2, .LBB9_12
# %bb.10:                               # %scalar.ph.5
	bstrpick.d	$a3, $a0, 1, 1
	ori	$a1, $zero, 62
	bne	$a3, $a2, .LBB9_12
# %bb.11:                               # %scalar.ph.6
	andi	$a0, $a0, 1
	ori	$a1, $zero, 63
	beq	$a0, $a2, .LBB9_13
.LBB9_12:                               # %.split.loop.exit
	addi.w	$a1, $a1, -1
.LBB9_13:                               # %.split.loop.exit10
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	my_clrsbl, .Lfunc_end9-my_clrsbl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_popcountl
.LCPI10_0:
	.dword	0                               # 0x0
	.dword	32                              # 0x20
.LCPI10_1:
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	0                               # 0x0
.LCPI10_2:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
.LCPI10_3:
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI10_4:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI10_5:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI10_6:
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
.LCPI10_7:
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
.LCPI10_8:
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
.LCPI10_9:
	.dword	37                              # 0x25
	.dword	38                              # 0x26
.LCPI10_10:
	.dword	39                              # 0x27
	.dword	40                              # 0x28
.LCPI10_11:
	.dword	33                              # 0x21
	.dword	34                              # 0x22
.LCPI10_12:
	.dword	35                              # 0x23
	.dword	36                              # 0x24
.LCPI10_13:
	.dword	45                              # 0x2d
	.dword	46                              # 0x2e
.LCPI10_14:
	.dword	47                              # 0x2f
	.dword	48                              # 0x30
.LCPI10_15:
	.dword	41                              # 0x29
	.dword	42                              # 0x2a
.LCPI10_16:
	.dword	43                              # 0x2b
	.dword	44                              # 0x2c
.LCPI10_17:
	.dword	49                              # 0x31
	.dword	50                              # 0x32
.LCPI10_18:
	.dword	51                              # 0x33
	.dword	52                              # 0x34
.LCPI10_19:
	.dword	53                              # 0x35
	.dword	54                              # 0x36
.LCPI10_20:
	.dword	55                              # 0x37
	.dword	56                              # 0x38
.LCPI10_21:
	.dword	57                              # 0x39
	.dword	58                              # 0x3a
.LCPI10_22:
	.dword	59                              # 0x3b
	.dword	60                              # 0x3c
	.text
	.globl	my_popcountl
	.p2align	5
	.type	my_popcountl,@function
my_popcountl:                           # @my_popcountl
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI10_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI10_0)
	bstrpick.d	$a1, $a0, 31, 31
	vreplgr2vr.d	$vr0, $a0
	vsrl.d	$vr1, $vr0, $vr1
	vreplvei.d	$vr2, $vr1, 0
	vpickev.w	$vr1, $vr1, $vr2
	vshuf4i.w	$vr2, $vr2, 136
	pcalau12i	$a2, %pc_hi20(.LCPI10_1)
	vld	$vr3, $a2, %pc_lo12(.LCPI10_1)
	pcalau12i	$a2, %pc_hi20(.LCPI10_2)
	vld	$vr4, $a2, %pc_lo12(.LCPI10_2)
	pcalau12i	$a2, %pc_hi20(.LCPI10_3)
	vld	$vr5, $a2, %pc_lo12(.LCPI10_3)
	pcalau12i	$a2, %pc_hi20(.LCPI10_4)
	vld	$vr6, $a2, %pc_lo12(.LCPI10_4)
	vsrl.w	$vr1, $vr1, $vr3
	vsrl.w	$vr9, $vr2, $vr4
	vsrl.w	$vr8, $vr2, $vr5
	vsrl.w	$vr7, $vr2, $vr6
	pcalau12i	$a2, %pc_hi20(.LCPI10_5)
	vld	$vr3, $a2, %pc_lo12(.LCPI10_5)
	pcalau12i	$a2, %pc_hi20(.LCPI10_6)
	vld	$vr4, $a2, %pc_lo12(.LCPI10_6)
	pcalau12i	$a2, %pc_hi20(.LCPI10_7)
	vld	$vr5, $a2, %pc_lo12(.LCPI10_7)
	pcalau12i	$a2, %pc_hi20(.LCPI10_8)
	vld	$vr6, $a2, %pc_lo12(.LCPI10_8)
	vsrl.w	$vr10, $vr2, $vr3
	vsrl.w	$vr4, $vr2, $vr4
	vsrl.w	$vr5, $vr2, $vr5
	vsrl.w	$vr2, $vr2, $vr6
	vrepli.w	$vr6, 1
	vand.v	$vr3, $vr1, $vr6
	vand.v	$vr1, $vr2, $vr6
	vand.v	$vr2, $vr5, $vr6
	vand.v	$vr4, $vr4, $vr6
	vand.v	$vr5, $vr10, $vr6
	vand.v	$vr7, $vr7, $vr6
	vand.v	$vr8, $vr8, $vr6
	vand.v	$vr9, $vr9, $vr6
	pcalau12i	$a2, %pc_hi20(.LCPI10_9)
	vld	$vr10, $a2, %pc_lo12(.LCPI10_9)
	pcalau12i	$a2, %pc_hi20(.LCPI10_10)
	vld	$vr11, $a2, %pc_lo12(.LCPI10_10)
	pcalau12i	$a2, %pc_hi20(.LCPI10_11)
	vld	$vr12, $a2, %pc_lo12(.LCPI10_11)
	pcalau12i	$a2, %pc_hi20(.LCPI10_12)
	vld	$vr13, $a2, %pc_lo12(.LCPI10_12)
	vsrl.d	$vr10, $vr0, $vr10
	vsrl.d	$vr11, $vr0, $vr11
	vsrl.d	$vr12, $vr0, $vr12
	vsrl.d	$vr13, $vr0, $vr13
	pcalau12i	$a2, %pc_hi20(.LCPI10_13)
	vld	$vr14, $a2, %pc_lo12(.LCPI10_13)
	pcalau12i	$a2, %pc_hi20(.LCPI10_14)
	vld	$vr15, $a2, %pc_lo12(.LCPI10_14)
	pcalau12i	$a2, %pc_hi20(.LCPI10_15)
	vld	$vr16, $a2, %pc_lo12(.LCPI10_15)
	pcalau12i	$a2, %pc_hi20(.LCPI10_16)
	vld	$vr17, $a2, %pc_lo12(.LCPI10_16)
	vsrl.d	$vr14, $vr0, $vr14
	vsrl.d	$vr15, $vr0, $vr15
	vsrl.d	$vr16, $vr0, $vr16
	vsrl.d	$vr17, $vr0, $vr17
	vpickev.w	$vr16, $vr17, $vr16
	vpickev.w	$vr14, $vr15, $vr14
	vpickev.w	$vr12, $vr13, $vr12
	vpickev.w	$vr10, $vr11, $vr10
	vand.v	$vr10, $vr10, $vr6
	vand.v	$vr11, $vr12, $vr6
	vand.v	$vr12, $vr14, $vr6
	vand.v	$vr13, $vr16, $vr6
	pcalau12i	$a2, %pc_hi20(.LCPI10_17)
	vld	$vr14, $a2, %pc_lo12(.LCPI10_17)
	pcalau12i	$a2, %pc_hi20(.LCPI10_18)
	vld	$vr15, $a2, %pc_lo12(.LCPI10_18)
	pcalau12i	$a2, %pc_hi20(.LCPI10_19)
	vld	$vr16, $a2, %pc_lo12(.LCPI10_19)
	pcalau12i	$a2, %pc_hi20(.LCPI10_20)
	vld	$vr17, $a2, %pc_lo12(.LCPI10_20)
	vsrl.d	$vr14, $vr0, $vr14
	vsrl.d	$vr15, $vr0, $vr15
	vsrl.d	$vr16, $vr0, $vr16
	vsrl.d	$vr17, $vr0, $vr17
	vpickev.w	$vr16, $vr17, $vr16
	vpickev.w	$vr14, $vr15, $vr14
	pcalau12i	$a2, %pc_hi20(.LCPI10_21)
	vld	$vr15, $a2, %pc_lo12(.LCPI10_21)
	pcalau12i	$a2, %pc_hi20(.LCPI10_22)
	vld	$vr17, $a2, %pc_lo12(.LCPI10_22)
	vand.v	$vr14, $vr14, $vr6
	vand.v	$vr16, $vr16, $vr6
	vsrl.d	$vr15, $vr0, $vr15
	vsrl.d	$vr0, $vr0, $vr17
	vpickev.w	$vr0, $vr0, $vr15
	vand.v	$vr0, $vr0, $vr6
	bstrpick.d	$a2, $a0, 61, 61
	bstrpick.d	$a3, $a0, 62, 62
	srli.d	$a0, $a0, 63
	vadd.w	$vr6, $vr9, $vr13
	vadd.w	$vr8, $vr8, $vr12
	vadd.w	$vr7, $vr7, $vr11
	vadd.w	$vr5, $vr5, $vr10
	vadd.w	$vr5, $vr5, $vr16
	vadd.w	$vr7, $vr7, $vr14
	vadd.w	$vr0, $vr7, $vr0
	vadd.w	$vr3, $vr8, $vr3
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr6, $vr1
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr0, $vr0, $vr3
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	add.d	$a2, $a4, $a2
	add.d	$a0, $a3, $a0
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a1
	ret
.Lfunc_end10:
	.size	my_popcountl, .Lfunc_end10-my_popcountl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_parityl
.LCPI11_0:
	.dword	9                               # 0x9
	.dword	10                              # 0xa
.LCPI11_1:
	.dword	11                              # 0xb
	.dword	12                              # 0xc
.LCPI11_2:
	.dword	13                              # 0xd
	.dword	14                              # 0xe
.LCPI11_3:
	.dword	15                              # 0xf
	.dword	16                              # 0x10
.LCPI11_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI11_5:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI11_6:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI11_7:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI11_8:
	.dword	29                              # 0x1d
	.dword	30                              # 0x1e
.LCPI11_9:
	.dword	31                              # 0x1f
	.dword	32                              # 0x20
.LCPI11_10:
	.dword	21                              # 0x15
	.dword	22                              # 0x16
.LCPI11_11:
	.dword	23                              # 0x17
	.dword	24                              # 0x18
.LCPI11_12:
	.dword	25                              # 0x19
	.dword	26                              # 0x1a
.LCPI11_13:
	.dword	27                              # 0x1b
	.dword	28                              # 0x1c
.LCPI11_14:
	.dword	17                              # 0x11
	.dword	18                              # 0x12
.LCPI11_15:
	.dword	19                              # 0x13
	.dword	20                              # 0x14
.LCPI11_16:
	.dword	41                              # 0x29
	.dword	42                              # 0x2a
.LCPI11_17:
	.dword	43                              # 0x2b
	.dword	44                              # 0x2c
.LCPI11_18:
	.dword	45                              # 0x2d
	.dword	46                              # 0x2e
.LCPI11_19:
	.dword	47                              # 0x2f
	.dword	48                              # 0x30
.LCPI11_20:
	.dword	33                              # 0x21
	.dword	34                              # 0x22
.LCPI11_21:
	.dword	35                              # 0x23
	.dword	36                              # 0x24
.LCPI11_22:
	.dword	37                              # 0x25
	.dword	38                              # 0x26
.LCPI11_23:
	.dword	39                              # 0x27
	.dword	40                              # 0x28
.LCPI11_24:
	.dword	53                              # 0x35
	.dword	54                              # 0x36
.LCPI11_25:
	.dword	55                              # 0x37
	.dword	56                              # 0x38
.LCPI11_26:
	.dword	49                              # 0x31
	.dword	50                              # 0x32
.LCPI11_27:
	.dword	51                              # 0x33
	.dword	52                              # 0x34
.LCPI11_28:
	.dword	57                              # 0x39
	.dword	58                              # 0x3a
.LCPI11_29:
	.dword	59                              # 0x3b
	.dword	60                              # 0x3c
	.text
	.globl	my_parityl
	.p2align	5
	.type	my_parityl,@function
my_parityl:                             # @my_parityl
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI11_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI11_0)
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI11_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI11_1)
	pcalau12i	$a1, %pc_hi20(.LCPI11_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI11_2)
	pcalau12i	$a1, %pc_hi20(.LCPI11_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI11_3)
	vsrl.d	$vr8, $vr0, $vr1
	vsrl.d	$vr9, $vr0, $vr2
	vsrl.d	$vr7, $vr0, $vr3
	vsrl.d	$vr10, $vr0, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI11_4)
	vld	$vr1, $a1, %pc_lo12(.LCPI11_4)
	pcalau12i	$a1, %pc_hi20(.LCPI11_5)
	vld	$vr2, $a1, %pc_lo12(.LCPI11_5)
	pcalau12i	$a1, %pc_hi20(.LCPI11_6)
	vld	$vr3, $a1, %pc_lo12(.LCPI11_6)
	pcalau12i	$a1, %pc_hi20(.LCPI11_7)
	vld	$vr4, $a1, %pc_lo12(.LCPI11_7)
	vsrl.d	$vr6, $vr0, $vr1
	vsrl.d	$vr11, $vr0, $vr2
	vsrl.d	$vr5, $vr0, $vr3
	vsrl.d	$vr12, $vr0, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI11_8)
	vld	$vr1, $a1, %pc_lo12(.LCPI11_8)
	pcalau12i	$a1, %pc_hi20(.LCPI11_9)
	vld	$vr2, $a1, %pc_lo12(.LCPI11_9)
	pcalau12i	$a1, %pc_hi20(.LCPI11_10)
	vld	$vr3, $a1, %pc_lo12(.LCPI11_10)
	pcalau12i	$a1, %pc_hi20(.LCPI11_11)
	vld	$vr4, $a1, %pc_lo12(.LCPI11_11)
	vsrl.d	$vr13, $vr0, $vr1
	vsrl.d	$vr14, $vr0, $vr2
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI11_12)
	vld	$vr1, $a1, %pc_lo12(.LCPI11_12)
	pcalau12i	$a1, %pc_hi20(.LCPI11_13)
	vld	$vr2, $a1, %pc_lo12(.LCPI11_13)
	pcalau12i	$a1, %pc_hi20(.LCPI11_14)
	vld	$vr15, $a1, %pc_lo12(.LCPI11_14)
	pcalau12i	$a1, %pc_hi20(.LCPI11_15)
	vld	$vr16, $a1, %pc_lo12(.LCPI11_15)
	vsrl.d	$vr17, $vr0, $vr1
	vsrl.d	$vr2, $vr0, $vr2
	vsrl.d	$vr1, $vr0, $vr15
	vsrl.d	$vr15, $vr0, $vr16
	vpickev.w	$vr1, $vr15, $vr1
	vpickev.w	$vr2, $vr2, $vr17
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr14, $vr13
	vpickev.w	$vr5, $vr12, $vr5
	vpickev.w	$vr6, $vr11, $vr6
	vpickev.w	$vr7, $vr10, $vr7
	vpickev.w	$vr8, $vr9, $vr8
	pcalau12i	$a1, %pc_hi20(.LCPI11_16)
	vld	$vr9, $a1, %pc_lo12(.LCPI11_16)
	pcalau12i	$a1, %pc_hi20(.LCPI11_17)
	vld	$vr10, $a1, %pc_lo12(.LCPI11_17)
	pcalau12i	$a1, %pc_hi20(.LCPI11_18)
	vld	$vr11, $a1, %pc_lo12(.LCPI11_18)
	pcalau12i	$a1, %pc_hi20(.LCPI11_19)
	vld	$vr12, $a1, %pc_lo12(.LCPI11_19)
	vsrl.d	$vr9, $vr0, $vr9
	vsrl.d	$vr10, $vr0, $vr10
	vsrl.d	$vr11, $vr0, $vr11
	vsrl.d	$vr12, $vr0, $vr12
	pcalau12i	$a1, %pc_hi20(.LCPI11_20)
	vld	$vr13, $a1, %pc_lo12(.LCPI11_20)
	pcalau12i	$a1, %pc_hi20(.LCPI11_21)
	vld	$vr14, $a1, %pc_lo12(.LCPI11_21)
	pcalau12i	$a1, %pc_hi20(.LCPI11_22)
	vld	$vr15, $a1, %pc_lo12(.LCPI11_22)
	pcalau12i	$a1, %pc_hi20(.LCPI11_23)
	vld	$vr16, $a1, %pc_lo12(.LCPI11_23)
	vsrl.d	$vr13, $vr0, $vr13
	vsrl.d	$vr14, $vr0, $vr14
	vsrl.d	$vr15, $vr0, $vr15
	vsrl.d	$vr16, $vr0, $vr16
	vpickev.w	$vr15, $vr16, $vr15
	pcalau12i	$a1, %pc_hi20(.LCPI11_24)
	vld	$vr16, $a1, %pc_lo12(.LCPI11_24)
	vpickev.w	$vr13, $vr14, $vr13
	vpickev.w	$vr11, $vr12, $vr11
	vpickev.w	$vr9, $vr10, $vr9
	vsrl.d	$vr10, $vr0, $vr16
	pcalau12i	$a1, %pc_hi20(.LCPI11_26)
	vld	$vr12, $a1, %pc_lo12(.LCPI11_26)
	pcalau12i	$a1, %pc_hi20(.LCPI11_27)
	vld	$vr14, $a1, %pc_lo12(.LCPI11_27)
	pcalau12i	$a1, %pc_hi20(.LCPI11_25)
	vld	$vr16, $a1, %pc_lo12(.LCPI11_25)
	vsrl.d	$vr12, $vr0, $vr12
	vsrl.d	$vr14, $vr0, $vr14
	vpickev.w	$vr12, $vr14, $vr12
	pcalau12i	$a1, %pc_hi20(.LCPI11_28)
	vld	$vr14, $a1, %pc_lo12(.LCPI11_28)
	pcalau12i	$a1, %pc_hi20(.LCPI11_29)
	vld	$vr17, $a1, %pc_lo12(.LCPI11_29)
	vsrl.d	$vr16, $vr0, $vr16
	vpickev.w	$vr10, $vr16, $vr10
	vsrl.d	$vr14, $vr0, $vr14
	vsrl.d	$vr0, $vr0, $vr17
	vpickev.w	$vr0, $vr0, $vr14
	srli.d	$a1, $a0, 61
	srli.d	$a2, $a0, 62
	srli.d	$a3, $a0, 63
	vadd.w	$vr8, $vr8, $vr9
	vadd.w	$vr7, $vr7, $vr11
	vadd.w	$vr6, $vr6, $vr13
	vadd.w	$vr5, $vr5, $vr15
	vadd.w	$vr5, $vr5, $vr10
	vadd.w	$vr6, $vr6, $vr12
	vadd.w	$vr0, $vr6, $vr0
	vadd.w	$vr4, $vr7, $vr4
	vadd.w	$vr3, $vr5, $vr3
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr2, $vr8, $vr2
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr0, $vr0, $vr3
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	add.d	$a1, $a4, $a1
	add.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ret
.Lfunc_end11:
	.size	my_parityl, .Lfunc_end11-my_parityl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ffsll
.LCPI12_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI12_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI12_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI12_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI12_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI12_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI12_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI12_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI12_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ffsll
	.p2align	5
	.type	my_ffsll,@function
my_ffsll:                               # @my_ffsll
# %bb.0:
	beqz	$a0, .LBB12_6
# %bb.1:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_0)
	pcalau12i	$a1, %pc_hi20(.LCPI12_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI12_1)
	pcalau12i	$a1, %pc_hi20(.LCPI12_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI12_2)
	pcalau12i	$a1, %pc_hi20(.LCPI12_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI12_3)
	pcalau12i	$a1, %pc_hi20(.LCPI12_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI12_4)
	pcalau12i	$a1, %pc_hi20(.LCPI12_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI12_5)
	pcalau12i	$a1, %pc_hi20(.LCPI12_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI12_6)
	pcalau12i	$a1, %pc_hi20(.LCPI12_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI12_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 15
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB12_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB12_4
# %bb.3:                                # %vector.body
                                        #   in Loop: Header=BB12_2 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB12_2
.LBB12_4:                               # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB12_7
# %bb.5:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI12_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB12_6:
	move	$a0, $zero
	ret
.LBB12_7:
	ori	$a0, $zero, 65
	ret
.Lfunc_end12:
	.size	my_ffsll, .Lfunc_end12-my_ffsll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ctzll
.LCPI13_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI13_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI13_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI13_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI13_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI13_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI13_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI13_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI13_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ctzll
	.p2align	5
	.type	my_ctzll,@function
my_ctzll:                               # @my_ctzll
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI13_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI13_0)
	pcalau12i	$a1, %pc_hi20(.LCPI13_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI13_1)
	pcalau12i	$a1, %pc_hi20(.LCPI13_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI13_2)
	pcalau12i	$a1, %pc_hi20(.LCPI13_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI13_3)
	pcalau12i	$a1, %pc_hi20(.LCPI13_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI13_4)
	pcalau12i	$a1, %pc_hi20(.LCPI13_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI13_5)
	pcalau12i	$a1, %pc_hi20(.LCPI13_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI13_6)
	pcalau12i	$a1, %pc_hi20(.LCPI13_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI13_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB13_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB13_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB13_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB13_1
.LBB13_3:                               # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB13_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI13_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI13_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB13_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end13:
	.size	my_ctzll, .Lfunc_end13-my_ctzll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clzll
.LCPI14_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI14_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI14_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI14_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI14_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI14_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI14_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI14_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI14_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_clzll
	.p2align	5
	.type	my_clzll,@function
my_clzll:                               # @my_clzll
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI14_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI14_0)
	pcalau12i	$a1, %pc_hi20(.LCPI14_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI14_1)
	pcalau12i	$a1, %pc_hi20(.LCPI14_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI14_2)
	pcalau12i	$a1, %pc_hi20(.LCPI14_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI14_3)
	pcalau12i	$a1, %pc_hi20(.LCPI14_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI14_4)
	pcalau12i	$a1, %pc_hi20(.LCPI14_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI14_5)
	pcalau12i	$a1, %pc_hi20(.LCPI14_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI14_6)
	pcalau12i	$a1, %pc_hi20(.LCPI14_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI14_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	lu52i.d	$a1, $zero, -2048
	vreplgr2vr.d	$vr9, $a1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB14_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsrl.d	$vr11, $vr9, $vr0
	vsrl.d	$vr12, $vr9, $vr1
	vsrl.d	$vr13, $vr9, $vr2
	vsrl.d	$vr14, $vr9, $vr3
	vsrl.d	$vr15, $vr9, $vr4
	vsrl.d	$vr16, $vr9, $vr5
	vsrl.d	$vr17, $vr9, $vr6
	vsrl.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB14_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB14_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB14_1
.LBB14_3:                               # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB14_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI14_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI14_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB14_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end14:
	.size	my_clzll, .Lfunc_end14-my_clzll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clrsbll
.LCPI15_0:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI15_1:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI15_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI15_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.text
	.globl	my_clrsbll
	.p2align	5
	.type	my_clrsbll,@function
my_clrsbll:                             # @my_clrsbll
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	srli.d	$a2, $a0, 63
	vreplgr2vr.d	$vr0, $a2
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI15_0)
	pcalau12i	$a1, %pc_hi20(.LCPI15_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI15_1)
	pcalau12i	$a1, %pc_hi20(.LCPI15_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI15_2)
	pcalau12i	$a1, %pc_hi20(.LCPI15_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI15_3)
	vreplgr2vr.d	$vr5, $a0
	addi.w	$a1, $zero, -7
	vrepli.d	$vr6, 63
	vrepli.d	$vr7, 1
	vrepli.b	$vr8, -1
	ori	$a3, $zero, 41
	.p2align	4, , 16
.LBB15_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	vsub.d	$vr9, $vr6, $vr4
	vsub.d	$vr10, $vr6, $vr3
	vsub.d	$vr11, $vr6, $vr2
	vsub.d	$vr12, $vr6, $vr1
	vsrl.d	$vr12, $vr5, $vr12
	vsrl.d	$vr11, $vr5, $vr11
	vsrl.d	$vr10, $vr5, $vr10
	vsrl.d	$vr9, $vr5, $vr9
	vand.v	$vr13, $vr12, $vr7
	vand.v	$vr11, $vr11, $vr7
	vand.v	$vr12, $vr10, $vr7
	vand.v	$vr9, $vr9, $vr7
	vseq.d	$vr9, $vr9, $vr0
	vxor.v	$vr10, $vr9, $vr8
	vseq.d	$vr9, $vr12, $vr0
	vxor.v	$vr9, $vr9, $vr8
	vpickev.w	$vr12, $vr9, $vr10
	vpickve2gr.h	$a1, $vr12, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a5, $vr10, 0
	bstrins.d	$a5, $a1, 63, 1
	vpickve2gr.h	$a1, $vr12, 4
	bstrins.d	$a5, $a1, 2, 2
	vpickve2gr.h	$a1, $vr12, 6
	bstrins.d	$a5, $a1, 3, 3
	vseq.d	$vr11, $vr11, $vr0
	vxor.v	$vr12, $vr11, $vr8
	vseq.d	$vr11, $vr13, $vr0
	vxor.v	$vr11, $vr11, $vr8
	vpickev.w	$vr13, $vr11, $vr12
	vpickve2gr.h	$a1, $vr13, 0
	bstrins.d	$a5, $a1, 4, 4
	vpickve2gr.h	$a1, $vr13, 2
	bstrins.d	$a5, $a1, 5, 5
	vpickve2gr.h	$a1, $vr13, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a5, $a1
	vpickve2gr.h	$a5, $vr13, 6
	slli.d	$a5, $a5, 7
	or	$a1, $a1, $a5
	andi	$a5, $a1, 255
	addi.d	$a1, $a4, 8
	bnez	$a5, .LBB15_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB15_1 Depth=1
	vaddi.du	$vr4, $vr4, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	bne	$a4, $a3, .LBB15_1
.LBB15_3:                               # %middle.split
	beqz	$a5, .LBB15_5
# %bb.4:                                # %vector.early.exit
	vpickve2gr.d	$a0, $vr10, 0
	vinsgr2vr.b	$vr0, $a0, 0
	vpickve2gr.d	$a0, $vr10, 1
	vinsgr2vr.b	$vr0, $a0, 1
	vpickve2gr.d	$a0, $vr9, 0
	vinsgr2vr.b	$vr0, $a0, 2
	vpickve2gr.d	$a0, $vr9, 1
	vinsgr2vr.b	$vr0, $a0, 3
	vpickve2gr.d	$a0, $vr12, 0
	vinsgr2vr.b	$vr0, $a0, 4
	vpickve2gr.d	$a0, $vr12, 1
	vinsgr2vr.b	$vr0, $a0, 5
	vpickve2gr.d	$a0, $vr11, 0
	vinsgr2vr.b	$vr0, $a0, 6
	vpickve2gr.d	$a0, $vr11, 1
	vinsgr2vr.b	$vr0, $a0, 7
	lu12i.w	$a0, 20576
	ori	$a0, $a0, 1800
	lu32i.d	$a0, 131844
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr1, $a0
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a0, $vr0, 0
	ori	$a2, $zero, 8
	sub.d	$a0, $a2, $a0
	andi	$a0, $a0, 255
	add.d	$a1, $a0, $a1
	b	.LBB15_12
.LBB15_5:                               # %scalar.ph
	bstrpick.d	$a3, $a0, 6, 6
	ori	$a1, $zero, 57
	bne	$a3, $a2, .LBB15_12
# %bb.6:                                # %scalar.ph.1
	bstrpick.d	$a3, $a0, 5, 5
	ori	$a1, $zero, 58
	bne	$a3, $a2, .LBB15_12
# %bb.7:                                # %scalar.ph.2
	bstrpick.d	$a3, $a0, 4, 4
	ori	$a1, $zero, 59
	bne	$a3, $a2, .LBB15_12
# %bb.8:                                # %scalar.ph.3
	bstrpick.d	$a3, $a0, 3, 3
	ori	$a1, $zero, 60
	bne	$a3, $a2, .LBB15_12
# %bb.9:                                # %scalar.ph.4
	bstrpick.d	$a3, $a0, 2, 2
	ori	$a1, $zero, 61
	bne	$a3, $a2, .LBB15_12
# %bb.10:                               # %scalar.ph.5
	bstrpick.d	$a3, $a0, 1, 1
	ori	$a1, $zero, 62
	bne	$a3, $a2, .LBB15_12
# %bb.11:                               # %scalar.ph.6
	andi	$a0, $a0, 1
	ori	$a1, $zero, 63
	beq	$a0, $a2, .LBB15_13
.LBB15_12:                              # %.split.loop.exit
	addi.w	$a1, $a1, -1
.LBB15_13:                              # %.split.loop.exit10
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	my_clrsbll, .Lfunc_end15-my_clrsbll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_popcountll
.LCPI16_0:
	.dword	0                               # 0x0
	.dword	32                              # 0x20
.LCPI16_1:
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	0                               # 0x0
.LCPI16_2:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
.LCPI16_3:
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI16_4:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI16_5:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI16_6:
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
.LCPI16_7:
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
.LCPI16_8:
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
.LCPI16_9:
	.dword	37                              # 0x25
	.dword	38                              # 0x26
.LCPI16_10:
	.dword	39                              # 0x27
	.dword	40                              # 0x28
.LCPI16_11:
	.dword	33                              # 0x21
	.dword	34                              # 0x22
.LCPI16_12:
	.dword	35                              # 0x23
	.dword	36                              # 0x24
.LCPI16_13:
	.dword	45                              # 0x2d
	.dword	46                              # 0x2e
.LCPI16_14:
	.dword	47                              # 0x2f
	.dword	48                              # 0x30
.LCPI16_15:
	.dword	41                              # 0x29
	.dword	42                              # 0x2a
.LCPI16_16:
	.dword	43                              # 0x2b
	.dword	44                              # 0x2c
.LCPI16_17:
	.dword	49                              # 0x31
	.dword	50                              # 0x32
.LCPI16_18:
	.dword	51                              # 0x33
	.dword	52                              # 0x34
.LCPI16_19:
	.dword	53                              # 0x35
	.dword	54                              # 0x36
.LCPI16_20:
	.dword	55                              # 0x37
	.dword	56                              # 0x38
.LCPI16_21:
	.dword	57                              # 0x39
	.dword	58                              # 0x3a
.LCPI16_22:
	.dword	59                              # 0x3b
	.dword	60                              # 0x3c
	.text
	.globl	my_popcountll
	.p2align	5
	.type	my_popcountll,@function
my_popcountll:                          # @my_popcountll
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI16_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI16_0)
	bstrpick.d	$a1, $a0, 31, 31
	vreplgr2vr.d	$vr0, $a0
	vsrl.d	$vr1, $vr0, $vr1
	vreplvei.d	$vr2, $vr1, 0
	vpickev.w	$vr1, $vr1, $vr2
	vshuf4i.w	$vr2, $vr2, 136
	pcalau12i	$a2, %pc_hi20(.LCPI16_1)
	vld	$vr3, $a2, %pc_lo12(.LCPI16_1)
	pcalau12i	$a2, %pc_hi20(.LCPI16_2)
	vld	$vr4, $a2, %pc_lo12(.LCPI16_2)
	pcalau12i	$a2, %pc_hi20(.LCPI16_3)
	vld	$vr5, $a2, %pc_lo12(.LCPI16_3)
	pcalau12i	$a2, %pc_hi20(.LCPI16_4)
	vld	$vr6, $a2, %pc_lo12(.LCPI16_4)
	vsrl.w	$vr1, $vr1, $vr3
	vsrl.w	$vr9, $vr2, $vr4
	vsrl.w	$vr8, $vr2, $vr5
	vsrl.w	$vr7, $vr2, $vr6
	pcalau12i	$a2, %pc_hi20(.LCPI16_5)
	vld	$vr3, $a2, %pc_lo12(.LCPI16_5)
	pcalau12i	$a2, %pc_hi20(.LCPI16_6)
	vld	$vr4, $a2, %pc_lo12(.LCPI16_6)
	pcalau12i	$a2, %pc_hi20(.LCPI16_7)
	vld	$vr5, $a2, %pc_lo12(.LCPI16_7)
	pcalau12i	$a2, %pc_hi20(.LCPI16_8)
	vld	$vr6, $a2, %pc_lo12(.LCPI16_8)
	vsrl.w	$vr10, $vr2, $vr3
	vsrl.w	$vr4, $vr2, $vr4
	vsrl.w	$vr5, $vr2, $vr5
	vsrl.w	$vr2, $vr2, $vr6
	vrepli.w	$vr6, 1
	vand.v	$vr3, $vr1, $vr6
	vand.v	$vr1, $vr2, $vr6
	vand.v	$vr2, $vr5, $vr6
	vand.v	$vr4, $vr4, $vr6
	vand.v	$vr5, $vr10, $vr6
	vand.v	$vr7, $vr7, $vr6
	vand.v	$vr8, $vr8, $vr6
	vand.v	$vr9, $vr9, $vr6
	pcalau12i	$a2, %pc_hi20(.LCPI16_9)
	vld	$vr10, $a2, %pc_lo12(.LCPI16_9)
	pcalau12i	$a2, %pc_hi20(.LCPI16_10)
	vld	$vr11, $a2, %pc_lo12(.LCPI16_10)
	pcalau12i	$a2, %pc_hi20(.LCPI16_11)
	vld	$vr12, $a2, %pc_lo12(.LCPI16_11)
	pcalau12i	$a2, %pc_hi20(.LCPI16_12)
	vld	$vr13, $a2, %pc_lo12(.LCPI16_12)
	vsrl.d	$vr10, $vr0, $vr10
	vsrl.d	$vr11, $vr0, $vr11
	vsrl.d	$vr12, $vr0, $vr12
	vsrl.d	$vr13, $vr0, $vr13
	pcalau12i	$a2, %pc_hi20(.LCPI16_13)
	vld	$vr14, $a2, %pc_lo12(.LCPI16_13)
	pcalau12i	$a2, %pc_hi20(.LCPI16_14)
	vld	$vr15, $a2, %pc_lo12(.LCPI16_14)
	pcalau12i	$a2, %pc_hi20(.LCPI16_15)
	vld	$vr16, $a2, %pc_lo12(.LCPI16_15)
	pcalau12i	$a2, %pc_hi20(.LCPI16_16)
	vld	$vr17, $a2, %pc_lo12(.LCPI16_16)
	vsrl.d	$vr14, $vr0, $vr14
	vsrl.d	$vr15, $vr0, $vr15
	vsrl.d	$vr16, $vr0, $vr16
	vsrl.d	$vr17, $vr0, $vr17
	vpickev.w	$vr16, $vr17, $vr16
	vpickev.w	$vr14, $vr15, $vr14
	vpickev.w	$vr12, $vr13, $vr12
	vpickev.w	$vr10, $vr11, $vr10
	vand.v	$vr10, $vr10, $vr6
	vand.v	$vr11, $vr12, $vr6
	vand.v	$vr12, $vr14, $vr6
	vand.v	$vr13, $vr16, $vr6
	pcalau12i	$a2, %pc_hi20(.LCPI16_17)
	vld	$vr14, $a2, %pc_lo12(.LCPI16_17)
	pcalau12i	$a2, %pc_hi20(.LCPI16_18)
	vld	$vr15, $a2, %pc_lo12(.LCPI16_18)
	pcalau12i	$a2, %pc_hi20(.LCPI16_19)
	vld	$vr16, $a2, %pc_lo12(.LCPI16_19)
	pcalau12i	$a2, %pc_hi20(.LCPI16_20)
	vld	$vr17, $a2, %pc_lo12(.LCPI16_20)
	vsrl.d	$vr14, $vr0, $vr14
	vsrl.d	$vr15, $vr0, $vr15
	vsrl.d	$vr16, $vr0, $vr16
	vsrl.d	$vr17, $vr0, $vr17
	vpickev.w	$vr16, $vr17, $vr16
	vpickev.w	$vr14, $vr15, $vr14
	pcalau12i	$a2, %pc_hi20(.LCPI16_21)
	vld	$vr15, $a2, %pc_lo12(.LCPI16_21)
	pcalau12i	$a2, %pc_hi20(.LCPI16_22)
	vld	$vr17, $a2, %pc_lo12(.LCPI16_22)
	vand.v	$vr14, $vr14, $vr6
	vand.v	$vr16, $vr16, $vr6
	vsrl.d	$vr15, $vr0, $vr15
	vsrl.d	$vr0, $vr0, $vr17
	vpickev.w	$vr0, $vr0, $vr15
	vand.v	$vr0, $vr0, $vr6
	bstrpick.d	$a2, $a0, 61, 61
	bstrpick.d	$a3, $a0, 62, 62
	srli.d	$a0, $a0, 63
	vadd.w	$vr6, $vr9, $vr13
	vadd.w	$vr8, $vr8, $vr12
	vadd.w	$vr7, $vr7, $vr11
	vadd.w	$vr5, $vr5, $vr10
	vadd.w	$vr5, $vr5, $vr16
	vadd.w	$vr7, $vr7, $vr14
	vadd.w	$vr0, $vr7, $vr0
	vadd.w	$vr3, $vr8, $vr3
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr6, $vr1
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr0, $vr0, $vr3
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	add.d	$a2, $a4, $a2
	add.d	$a0, $a3, $a0
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a1
	ret
.Lfunc_end16:
	.size	my_popcountll, .Lfunc_end16-my_popcountll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_parityll
.LCPI17_0:
	.dword	9                               # 0x9
	.dword	10                              # 0xa
.LCPI17_1:
	.dword	11                              # 0xb
	.dword	12                              # 0xc
.LCPI17_2:
	.dword	13                              # 0xd
	.dword	14                              # 0xe
.LCPI17_3:
	.dword	15                              # 0xf
	.dword	16                              # 0x10
.LCPI17_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI17_5:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI17_6:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI17_7:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI17_8:
	.dword	29                              # 0x1d
	.dword	30                              # 0x1e
.LCPI17_9:
	.dword	31                              # 0x1f
	.dword	32                              # 0x20
.LCPI17_10:
	.dword	21                              # 0x15
	.dword	22                              # 0x16
.LCPI17_11:
	.dword	23                              # 0x17
	.dword	24                              # 0x18
.LCPI17_12:
	.dword	25                              # 0x19
	.dword	26                              # 0x1a
.LCPI17_13:
	.dword	27                              # 0x1b
	.dword	28                              # 0x1c
.LCPI17_14:
	.dword	17                              # 0x11
	.dword	18                              # 0x12
.LCPI17_15:
	.dword	19                              # 0x13
	.dword	20                              # 0x14
.LCPI17_16:
	.dword	41                              # 0x29
	.dword	42                              # 0x2a
.LCPI17_17:
	.dword	43                              # 0x2b
	.dword	44                              # 0x2c
.LCPI17_18:
	.dword	45                              # 0x2d
	.dword	46                              # 0x2e
.LCPI17_19:
	.dword	47                              # 0x2f
	.dword	48                              # 0x30
.LCPI17_20:
	.dword	33                              # 0x21
	.dword	34                              # 0x22
.LCPI17_21:
	.dword	35                              # 0x23
	.dword	36                              # 0x24
.LCPI17_22:
	.dword	37                              # 0x25
	.dword	38                              # 0x26
.LCPI17_23:
	.dword	39                              # 0x27
	.dword	40                              # 0x28
.LCPI17_24:
	.dword	53                              # 0x35
	.dword	54                              # 0x36
.LCPI17_25:
	.dword	55                              # 0x37
	.dword	56                              # 0x38
.LCPI17_26:
	.dword	49                              # 0x31
	.dword	50                              # 0x32
.LCPI17_27:
	.dword	51                              # 0x33
	.dword	52                              # 0x34
.LCPI17_28:
	.dword	57                              # 0x39
	.dword	58                              # 0x3a
.LCPI17_29:
	.dword	59                              # 0x3b
	.dword	60                              # 0x3c
	.text
	.globl	my_parityll
	.p2align	5
	.type	my_parityll,@function
my_parityll:                            # @my_parityll
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI17_0)
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI17_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI17_1)
	pcalau12i	$a1, %pc_hi20(.LCPI17_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI17_2)
	pcalau12i	$a1, %pc_hi20(.LCPI17_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI17_3)
	vsrl.d	$vr8, $vr0, $vr1
	vsrl.d	$vr9, $vr0, $vr2
	vsrl.d	$vr7, $vr0, $vr3
	vsrl.d	$vr10, $vr0, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI17_4)
	vld	$vr1, $a1, %pc_lo12(.LCPI17_4)
	pcalau12i	$a1, %pc_hi20(.LCPI17_5)
	vld	$vr2, $a1, %pc_lo12(.LCPI17_5)
	pcalau12i	$a1, %pc_hi20(.LCPI17_6)
	vld	$vr3, $a1, %pc_lo12(.LCPI17_6)
	pcalau12i	$a1, %pc_hi20(.LCPI17_7)
	vld	$vr4, $a1, %pc_lo12(.LCPI17_7)
	vsrl.d	$vr6, $vr0, $vr1
	vsrl.d	$vr11, $vr0, $vr2
	vsrl.d	$vr5, $vr0, $vr3
	vsrl.d	$vr12, $vr0, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI17_8)
	vld	$vr1, $a1, %pc_lo12(.LCPI17_8)
	pcalau12i	$a1, %pc_hi20(.LCPI17_9)
	vld	$vr2, $a1, %pc_lo12(.LCPI17_9)
	pcalau12i	$a1, %pc_hi20(.LCPI17_10)
	vld	$vr3, $a1, %pc_lo12(.LCPI17_10)
	pcalau12i	$a1, %pc_hi20(.LCPI17_11)
	vld	$vr4, $a1, %pc_lo12(.LCPI17_11)
	vsrl.d	$vr13, $vr0, $vr1
	vsrl.d	$vr14, $vr0, $vr2
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI17_12)
	vld	$vr1, $a1, %pc_lo12(.LCPI17_12)
	pcalau12i	$a1, %pc_hi20(.LCPI17_13)
	vld	$vr2, $a1, %pc_lo12(.LCPI17_13)
	pcalau12i	$a1, %pc_hi20(.LCPI17_14)
	vld	$vr15, $a1, %pc_lo12(.LCPI17_14)
	pcalau12i	$a1, %pc_hi20(.LCPI17_15)
	vld	$vr16, $a1, %pc_lo12(.LCPI17_15)
	vsrl.d	$vr17, $vr0, $vr1
	vsrl.d	$vr2, $vr0, $vr2
	vsrl.d	$vr1, $vr0, $vr15
	vsrl.d	$vr15, $vr0, $vr16
	vpickev.w	$vr1, $vr15, $vr1
	vpickev.w	$vr2, $vr2, $vr17
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr14, $vr13
	vpickev.w	$vr5, $vr12, $vr5
	vpickev.w	$vr6, $vr11, $vr6
	vpickev.w	$vr7, $vr10, $vr7
	vpickev.w	$vr8, $vr9, $vr8
	pcalau12i	$a1, %pc_hi20(.LCPI17_16)
	vld	$vr9, $a1, %pc_lo12(.LCPI17_16)
	pcalau12i	$a1, %pc_hi20(.LCPI17_17)
	vld	$vr10, $a1, %pc_lo12(.LCPI17_17)
	pcalau12i	$a1, %pc_hi20(.LCPI17_18)
	vld	$vr11, $a1, %pc_lo12(.LCPI17_18)
	pcalau12i	$a1, %pc_hi20(.LCPI17_19)
	vld	$vr12, $a1, %pc_lo12(.LCPI17_19)
	vsrl.d	$vr9, $vr0, $vr9
	vsrl.d	$vr10, $vr0, $vr10
	vsrl.d	$vr11, $vr0, $vr11
	vsrl.d	$vr12, $vr0, $vr12
	pcalau12i	$a1, %pc_hi20(.LCPI17_20)
	vld	$vr13, $a1, %pc_lo12(.LCPI17_20)
	pcalau12i	$a1, %pc_hi20(.LCPI17_21)
	vld	$vr14, $a1, %pc_lo12(.LCPI17_21)
	pcalau12i	$a1, %pc_hi20(.LCPI17_22)
	vld	$vr15, $a1, %pc_lo12(.LCPI17_22)
	pcalau12i	$a1, %pc_hi20(.LCPI17_23)
	vld	$vr16, $a1, %pc_lo12(.LCPI17_23)
	vsrl.d	$vr13, $vr0, $vr13
	vsrl.d	$vr14, $vr0, $vr14
	vsrl.d	$vr15, $vr0, $vr15
	vsrl.d	$vr16, $vr0, $vr16
	vpickev.w	$vr15, $vr16, $vr15
	pcalau12i	$a1, %pc_hi20(.LCPI17_24)
	vld	$vr16, $a1, %pc_lo12(.LCPI17_24)
	vpickev.w	$vr13, $vr14, $vr13
	vpickev.w	$vr11, $vr12, $vr11
	vpickev.w	$vr9, $vr10, $vr9
	vsrl.d	$vr10, $vr0, $vr16
	pcalau12i	$a1, %pc_hi20(.LCPI17_26)
	vld	$vr12, $a1, %pc_lo12(.LCPI17_26)
	pcalau12i	$a1, %pc_hi20(.LCPI17_27)
	vld	$vr14, $a1, %pc_lo12(.LCPI17_27)
	pcalau12i	$a1, %pc_hi20(.LCPI17_25)
	vld	$vr16, $a1, %pc_lo12(.LCPI17_25)
	vsrl.d	$vr12, $vr0, $vr12
	vsrl.d	$vr14, $vr0, $vr14
	vpickev.w	$vr12, $vr14, $vr12
	pcalau12i	$a1, %pc_hi20(.LCPI17_28)
	vld	$vr14, $a1, %pc_lo12(.LCPI17_28)
	pcalau12i	$a1, %pc_hi20(.LCPI17_29)
	vld	$vr17, $a1, %pc_lo12(.LCPI17_29)
	vsrl.d	$vr16, $vr0, $vr16
	vpickev.w	$vr10, $vr16, $vr10
	vsrl.d	$vr14, $vr0, $vr14
	vsrl.d	$vr0, $vr0, $vr17
	vpickev.w	$vr0, $vr0, $vr14
	srli.d	$a1, $a0, 61
	srli.d	$a2, $a0, 62
	srli.d	$a3, $a0, 63
	vadd.w	$vr8, $vr8, $vr9
	vadd.w	$vr7, $vr7, $vr11
	vadd.w	$vr6, $vr6, $vr13
	vadd.w	$vr5, $vr5, $vr15
	vadd.w	$vr5, $vr5, $vr10
	vadd.w	$vr6, $vr6, $vr12
	vadd.w	$vr0, $vr6, $vr0
	vadd.w	$vr4, $vr7, $vr4
	vadd.w	$vr3, $vr5, $vr3
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr2, $vr8, $vr2
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr0, $vr0, $vr3
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	add.d	$a1, $a4, $a1
	add.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ret
.Lfunc_end17:
	.size	my_parityll, .Lfunc_end17-my_parityll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI18_0:
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
.LCPI18_1:
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
.LCPI18_2:
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI18_3:
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
.LCPI18_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI18_5:
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
.LCPI18_6:
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
.LCPI18_7:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI18_8:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI18_9:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI18_10:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI18_11:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI18_12:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI18_13:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI18_14:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI18_15:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
.LCPI18_16:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI18_17:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI18_18:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI18_19:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI18_20:
	.dword	9                               # 0x9
	.dword	10                              # 0xa
.LCPI18_21:
	.dword	11                              # 0xb
	.dword	12                              # 0xc
.LCPI18_22:
	.dword	13                              # 0xd
	.dword	14                              # 0xe
.LCPI18_23:
	.dword	15                              # 0xf
	.dword	16                              # 0x10
.LCPI18_24:
	.dword	29                              # 0x1d
	.dword	30                              # 0x1e
.LCPI18_25:
	.dword	31                              # 0x1f
	.dword	32                              # 0x20
.LCPI18_26:
	.dword	21                              # 0x15
	.dword	22                              # 0x16
.LCPI18_27:
	.dword	23                              # 0x17
	.dword	24                              # 0x18
.LCPI18_28:
	.dword	25                              # 0x19
	.dword	26                              # 0x1a
.LCPI18_29:
	.dword	27                              # 0x1b
	.dword	28                              # 0x1c
.LCPI18_30:
	.dword	17                              # 0x11
	.dword	18                              # 0x12
.LCPI18_31:
	.dword	19                              # 0x13
	.dword	20                              # 0x14
.LCPI18_32:
	.dword	41                              # 0x29
	.dword	42                              # 0x2a
.LCPI18_33:
	.dword	43                              # 0x2b
	.dword	44                              # 0x2c
.LCPI18_34:
	.dword	45                              # 0x2d
	.dword	46                              # 0x2e
.LCPI18_35:
	.dword	47                              # 0x2f
	.dword	48                              # 0x30
.LCPI18_36:
	.dword	33                              # 0x21
	.dword	34                              # 0x22
.LCPI18_37:
	.dword	35                              # 0x23
	.dword	36                              # 0x24
.LCPI18_38:
	.dword	37                              # 0x25
	.dword	38                              # 0x26
.LCPI18_39:
	.dword	39                              # 0x27
	.dword	40                              # 0x28
.LCPI18_40:
	.dword	53                              # 0x35
	.dword	54                              # 0x36
.LCPI18_41:
	.dword	55                              # 0x37
	.dword	56                              # 0x38
.LCPI18_42:
	.dword	49                              # 0x31
	.dword	50                              # 0x32
.LCPI18_43:
	.dword	51                              # 0x33
	.dword	52                              # 0x34
.LCPI18_44:
	.dword	57                              # 0x39
	.dword	58                              # 0x3a
.LCPI18_45:
	.dword	59                              # 0x3b
	.dword	60                              # 0x3c
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -832
	st.d	$ra, $sp, 824                   # 8-byte Folded Spill
	st.d	$fp, $sp, 816                   # 8-byte Folded Spill
	st.d	$s0, $sp, 808                   # 8-byte Folded Spill
	st.d	$s1, $sp, 800                   # 8-byte Folded Spill
	st.d	$s2, $sp, 792                   # 8-byte Folded Spill
	st.d	$s3, $sp, 784                   # 8-byte Folded Spill
	st.d	$s4, $sp, 776                   # 8-byte Folded Spill
	st.d	$s5, $sp, 768                   # 8-byte Folded Spill
	st.d	$s6, $sp, 760                   # 8-byte Folded Spill
	st.d	$s7, $sp, 752                   # 8-byte Folded Spill
	st.d	$s8, $sp, 744                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 736                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 728                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 720                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 712                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 704                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 696                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 688                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 680                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ints)
	addi.d	$s0, $a0, %pc_lo12(ints)
	pcalau12i	$a0, %pc_hi20(.LCPI18_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI18_0)
	vst	$vr0, $sp, 640                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI18_1)
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI18_2)
	vst	$vr0, $sp, 608                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI18_3)
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI18_4)
	vst	$vr0, $sp, 576                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI18_5)
	vst	$vr0, $sp, 560                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI18_6)
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	move	$s1, $zero
	ori	$s2, $zero, 52
	.p2align	4, , 16
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$fp, $s0, $s1
	ctz.d	$s3, $fp
	addi.d	$a0, $s3, 1
	sltui	$a1, $fp, 1
	masknez	$s4, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_ffs)
	jirl	$ra, $ra, 0
	bne	$s4, $a0, .LBB18_80
# %bb.2:                                #   in Loop: Header=BB18_1 Depth=1
	beqz	$fp, .LBB18_5
# %bb.3:                                #   in Loop: Header=BB18_1 Depth=1
	slli.d	$a0, $fp, 32
	clz.d	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_clz)
	jirl	$ra, $ra, 0
	bne	$s4, $a0, .LBB18_80
# %bb.4:                                #   in Loop: Header=BB18_1 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_ctz)
	jirl	$ra, $ra, 0
	bne	$s3, $a0, .LBB18_80
.LBB18_5:                               # %.thread
                                        #   in Loop: Header=BB18_1 Depth=1
	srai.d	$a0, $fp, 31
	xor	$a0, $a0, $fp
	clz.w	$a0, $a0
	addi.w	$s3, $a0, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_clrsb)
	jirl	$ra, $ra, 0
	bne	$s3, $a0, .LBB18_80
# %bb.6:                                #   in Loop: Header=BB18_1 Depth=1
	bstrpick.d	$a0, $fp, 31, 0
	vldi	$vr0, 0
	vinsgr2vr.d	$vr0, $a0, 0
	vpcnt.d	$vr0, $vr0
	vpickve2gr.d	$s3, $vr0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_popcount)
	jirl	$ra, $ra, 0
	bne	$s3, $a0, .LBB18_80
# %bb.7:                                #   in Loop: Header=BB18_1 Depth=1
	vreplgr2vr.w	$vr0, $fp
	vld	$vr1, $sp, 640                  # 16-byte Folded Reload
	vsrl.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 624                  # 16-byte Folded Reload
	vsrl.w	$vr2, $vr0, $vr2
	vld	$vr3, $sp, 608                  # 16-byte Folded Reload
	vsrl.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 592                  # 16-byte Folded Reload
	vsrl.w	$vr4, $vr0, $vr4
	vld	$vr5, $sp, 576                  # 16-byte Folded Reload
	vsrl.w	$vr5, $vr0, $vr5
	vld	$vr6, $sp, 560                  # 16-byte Folded Reload
	vsrl.w	$vr6, $vr0, $vr6
	vld	$vr7, $sp, 544                  # 16-byte Folded Reload
	vsrl.w	$vr0, $vr0, $vr7
	bstrpick.d	$a0, $fp, 31, 29
	bstrpick.d	$a1, $fp, 31, 30
	bstrpick.d	$a2, $fp, 31, 31
	vadd.w	$vr0, $vr0, $vr6
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr0, $vr4, $vr0
	vadd.w	$vr2, $vr3, $vr2
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	add.d	$a0, $a3, $a0
	add.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $fp
	xor	$a0, $a0, $s3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB18_80
# %bb.8:                                #   in Loop: Header=BB18_1 Depth=1
	addi.d	$s1, $s1, 4
	bne	$s1, $s2, .LBB18_1
# %bb.9:                                # %.preheader956.preheader
	pcalau12i	$a0, %pc_hi20(longs)
	addi.d	$a0, $a0, %pc_lo12(longs)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI18_16)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_16)
	vst	$vr0, $sp, 640                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_17)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_17)
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_18)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_18)
	vst	$vr0, $sp, 608                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_19)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_19)
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	addi.w	$a0, $zero, -7
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	vrepli.d	$vr18, 63
	vrepli.d	$vr19, 1
	vrepli.b	$vr20, -1
	lu12i.w	$a0, 20576
	ori	$a0, $a0, 1800
	lu32i.d	$a0, 131844
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_20)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_21)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_22)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_23)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_24)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_25)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_26)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_27)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_28)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_29)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_30)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_31)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_32)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(.LCPI18_33)
	pcalau12i	$s2, %pc_hi20(.LCPI18_34)
	pcalau12i	$s3, %pc_hi20(.LCPI18_35)
	ori	$s4, $zero, 41
	lu52i.d	$s0, $zero, -2048
	ori	$s5, $zero, 32
	vst	$vr18, $sp, 560                 # 16-byte Folded Spill
	vst	$vr19, $sp, 544                 # 16-byte Folded Spill
	vst	$vr20, $sp, 528                 # 16-byte Folded Spill
	.p2align	4, , 16
.LBB18_10:                              # %.preheader956
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_12 Depth 2
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_23 Depth 2
                                        #     Child Loop BB18_28 Depth 2
	slli.d	$a0, $s6, 3
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ldx.d	$fp, $a1, $a0
	vreplgr2vr.d	$vr21, $fp
	beqz	$fp, .LBB18_27
# %bb.11:                               # %vector.ph1085
                                        #   in Loop: Header=BB18_10 Depth=1
	ctz.d	$a0, $fp
	pcalau12i	$a1, %pc_hi20(.LCPI18_7)
	vld	$vr0, $a1, %pc_lo12(.LCPI18_7)
	pcalau12i	$a2, %pc_hi20(.LCPI18_8)
	vld	$vr1, $a2, %pc_lo12(.LCPI18_8)
	pcalau12i	$a3, %pc_hi20(.LCPI18_9)
	vld	$vr2, $a3, %pc_lo12(.LCPI18_9)
	pcalau12i	$a4, %pc_hi20(.LCPI18_10)
	vld	$vr3, $a4, %pc_lo12(.LCPI18_10)
	pcalau12i	$a5, %pc_hi20(.LCPI18_11)
	vld	$vr4, $a5, %pc_lo12(.LCPI18_11)
	pcalau12i	$a6, %pc_hi20(.LCPI18_12)
	vld	$vr5, $a6, %pc_lo12(.LCPI18_12)
	pcalau12i	$a7, %pc_hi20(.LCPI18_13)
	vld	$vr6, $a7, %pc_lo12(.LCPI18_13)
	pcalau12i	$t0, %pc_hi20(.LCPI18_14)
	vld	$vr7, $t0, %pc_lo12(.LCPI18_14)
	addi.d	$t2, $a0, 1
	ori	$t3, $zero, 15
	ori	$t4, $zero, 48
	.p2align	4, , 16
.LBB18_12:                              # %vector.body1088
                                        #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t1, $t4
	vsll.d	$vr8, $vr19, $vr0
	vsll.d	$vr9, $vr19, $vr1
	vsll.d	$vr10, $vr19, $vr2
	vsll.d	$vr11, $vr19, $vr3
	vsll.d	$vr12, $vr19, $vr4
	vsll.d	$vr13, $vr19, $vr5
	vsll.d	$vr14, $vr19, $vr6
	vsll.d	$vr15, $vr19, $vr7
	vand.v	$vr16, $vr8, $vr21
	vand.v	$vr9, $vr9, $vr21
	vand.v	$vr10, $vr10, $vr21
	vand.v	$vr11, $vr11, $vr21
	vand.v	$vr8, $vr12, $vr21
	vand.v	$vr12, $vr13, $vr21
	vand.v	$vr13, $vr14, $vr21
	vand.v	$vr14, $vr15, $vr21
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vseqi.d	$vr8, $vr8, 0
	vxor.v	$vr8, $vr8, $vr20
	vpickev.w	$vr8, $vr8, $vr12
	vpickev.h	$vr8, $vr8, $vr13
	vpickve2gr.b	$t4, $vr8, 2
	andi	$t4, $t4, 1
	vpickve2gr.b	$t5, $vr14, 0
	bstrins.d	$t5, $t4, 63, 1
	vpickve2gr.b	$t4, $vr8, 4
	bstrins.d	$t5, $t4, 2, 2
	vpickve2gr.b	$t4, $vr8, 6
	bstrins.d	$t5, $t4, 3, 3
	vpickve2gr.b	$t4, $vr8, 8
	bstrins.d	$t5, $t4, 4, 4
	vpickve2gr.b	$t4, $vr8, 10
	bstrins.d	$t5, $t4, 5, 5
	vpickve2gr.b	$t4, $vr8, 12
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 6
	or	$t4, $t5, $t4
	vpickve2gr.b	$t5, $vr8, 14
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 7
	or	$t4, $t4, $t5
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickve2gr.b	$t5, $vr11, 0
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 8
	or	$t4, $t4, $t5
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vpickev.w	$vr10, $vr10, $vr11
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr9, $vr9, $vr20
	vseqi.d	$vr11, $vr16, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickev.w	$vr9, $vr11, $vr9
	vpickev.h	$vr9, $vr9, $vr10
	vpickve2gr.b	$t5, $vr9, 2
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 9
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 4
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 10
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 6
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 11
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 8
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 12
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 10
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 13
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 12
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 14
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 14
	slli.d	$t5, $t5, 15
	or	$t4, $t4, $t5
	bstrpick.d	$t5, $t4, 15, 0
	addi.d	$t3, $t3, -16
	bnez	$t5, .LBB18_14
# %bb.13:                               # %vector.body1088
                                        #   in Loop: Header=BB18_12 Depth=2
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$t4, $t1, -16
	bnez	$t1, .LBB18_12
.LBB18_14:                              # %middle.split1093
                                        #   in Loop: Header=BB18_10 Depth=1
	slli.d	$t4, $t5, 48
	pcalau12i	$t1, %pc_hi20(.LCPI18_15)
	beqz	$t4, .LBB18_16
# %bb.15:                               # %vector.early.exit1095
                                        #   in Loop: Header=BB18_10 Depth=1
	vld	$vr0, $t1, %pc_lo12(.LCPI18_15)
	vpickev.b	$vr1, $vr9, $vr8
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$t4, $vr0, 0
	ori	$t5, $zero, 16
	sub.d	$t4, $t5, $t4
	andi	$t4, $t4, 255
	sub.w	$t3, $t4, $t3
	beq	$t2, $t3, .LBB18_17
	b	.LBB18_80
	.p2align	4, , 16
.LBB18_16:                              #   in Loop: Header=BB18_10 Depth=1
	ori	$t3, $zero, 65
	bne	$t2, $t3, .LBB18_80
.LBB18_17:                              # %vector.ph1073
                                        #   in Loop: Header=BB18_10 Depth=1
	vld	$vr0, $a1, %pc_lo12(.LCPI18_7)
	vld	$vr1, $a2, %pc_lo12(.LCPI18_8)
	vld	$vr2, $a3, %pc_lo12(.LCPI18_9)
	vld	$vr3, $a4, %pc_lo12(.LCPI18_10)
	vld	$vr4, $a5, %pc_lo12(.LCPI18_11)
	vld	$vr5, $a6, %pc_lo12(.LCPI18_12)
	vld	$vr6, $a7, %pc_lo12(.LCPI18_13)
	vld	$vr7, $t0, %pc_lo12(.LCPI18_14)
	clz.d	$t2, $fp
	addi.w	$t4, $zero, -16
	.p2align	4, , 16
.LBB18_18:                              # %vector.body1076
                                        #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t3, $t4
	vreplgr2vr.d	$vr8, $s0
	vsrl.d	$vr9, $vr8, $vr0
	vsrl.d	$vr10, $vr8, $vr1
	vsrl.d	$vr11, $vr8, $vr2
	vsrl.d	$vr12, $vr8, $vr3
	vsrl.d	$vr13, $vr8, $vr4
	vsrl.d	$vr14, $vr8, $vr5
	vsrl.d	$vr15, $vr8, $vr6
	vsrl.d	$vr8, $vr8, $vr7
	vand.v	$vr9, $vr9, $vr21
	vand.v	$vr10, $vr10, $vr21
	vand.v	$vr11, $vr11, $vr21
	vand.v	$vr12, $vr12, $vr21
	vand.v	$vr13, $vr13, $vr21
	vand.v	$vr14, $vr14, $vr21
	vand.v	$vr15, $vr15, $vr21
	vand.v	$vr8, $vr8, $vr21
	vseqi.d	$vr8, $vr8, 0
	vxor.v	$vr16, $vr8, $vr20
	vseqi.d	$vr8, $vr15, 0
	vxor.v	$vr8, $vr8, $vr20
	vpickev.w	$vr8, $vr8, $vr16
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vpickev.w	$vr13, $vr13, $vr14
	vpickev.h	$vr8, $vr13, $vr8
	vpickve2gr.b	$t4, $vr8, 2
	andi	$t4, $t4, 1
	vpickve2gr.b	$t5, $vr16, 0
	bstrins.d	$t5, $t4, 63, 1
	vpickve2gr.b	$t4, $vr8, 4
	bstrins.d	$t5, $t4, 2, 2
	vpickve2gr.b	$t4, $vr8, 6
	bstrins.d	$t5, $t4, 3, 3
	vpickve2gr.b	$t4, $vr8, 8
	bstrins.d	$t5, $t4, 4, 4
	vpickve2gr.b	$t4, $vr8, 10
	bstrins.d	$t5, $t4, 5, 5
	vpickve2gr.b	$t4, $vr8, 12
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 6
	or	$t4, $t5, $t4
	vpickve2gr.b	$t5, $vr8, 14
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 7
	or	$t4, $t4, $t5
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickve2gr.b	$t5, $vr12, 0
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 8
	or	$t4, $t4, $t5
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickev.w	$vr11, $vr11, $vr12
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr9, $vr9, $vr20
	vpickev.w	$vr9, $vr9, $vr10
	vpickev.h	$vr9, $vr9, $vr11
	vpickve2gr.b	$t5, $vr9, 2
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 9
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 4
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 10
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 6
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 11
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 8
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 12
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 10
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 13
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 12
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 14
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 14
	slli.d	$t5, $t5, 15
	or	$t4, $t4, $t5
	bstrpick.d	$t5, $t4, 15, 0
	addi.d	$t4, $t3, 16
	bnez	$t5, .LBB18_20
# %bb.19:                               # %vector.body1076
                                        #   in Loop: Header=BB18_18 Depth=2
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	bne	$t3, $s5, .LBB18_18
.LBB18_20:                              # %middle.split1081
                                        #   in Loop: Header=BB18_10 Depth=1
	slli.d	$t3, $t5, 48
	beqz	$t3, .LBB18_80
# %bb.21:                               # %vector.early.exit1083
                                        #   in Loop: Header=BB18_10 Depth=1
	vld	$vr0, $t1, %pc_lo12(.LCPI18_15)
	vpickev.b	$vr1, $vr9, $vr8
	vand.v	$vr1, $vr1, $vr0
	vbsrl.v	$vr2, $vr1, 8
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 4
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 2
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 1
	vmax.bu	$vr1, $vr2, $vr1
	vpickve2gr.b	$t1, $vr1, 0
	ori	$t3, $zero, 16
	sub.d	$t1, $t3, $t1
	andi	$t1, $t1, 255
	sub.d	$t1, $t2, $t1
	bne	$t1, $t4, .LBB18_80
# %bb.22:                               # %vector.ph1061
                                        #   in Loop: Header=BB18_10 Depth=1
	vld	$vr1, $a1, %pc_lo12(.LCPI18_7)
	vld	$vr2, $a2, %pc_lo12(.LCPI18_8)
	vld	$vr3, $a3, %pc_lo12(.LCPI18_9)
	vld	$vr4, $a4, %pc_lo12(.LCPI18_10)
	vld	$vr5, $a5, %pc_lo12(.LCPI18_11)
	vld	$vr6, $a6, %pc_lo12(.LCPI18_12)
	vld	$vr7, $a7, %pc_lo12(.LCPI18_13)
	vld	$vr8, $t0, %pc_lo12(.LCPI18_14)
	addi.w	$a2, $zero, -16
	.p2align	4, , 16
.LBB18_23:                              # %vector.body1064
                                        #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	vsll.d	$vr9, $vr19, $vr1
	vsll.d	$vr10, $vr19, $vr2
	vsll.d	$vr11, $vr19, $vr3
	vsll.d	$vr12, $vr19, $vr4
	vsll.d	$vr13, $vr19, $vr5
	vsll.d	$vr14, $vr19, $vr6
	vsll.d	$vr15, $vr19, $vr7
	vsll.d	$vr16, $vr19, $vr8
	vand.v	$vr17, $vr9, $vr21
	vand.v	$vr10, $vr10, $vr21
	vand.v	$vr11, $vr11, $vr21
	vand.v	$vr12, $vr12, $vr21
	vand.v	$vr9, $vr13, $vr21
	vand.v	$vr13, $vr14, $vr21
	vand.v	$vr14, $vr15, $vr21
	vand.v	$vr15, $vr16, $vr21
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr20
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vpickev.w	$vr14, $vr14, $vr15
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr9, $vr9, $vr20
	vpickev.w	$vr9, $vr9, $vr13
	vpickev.h	$vr9, $vr9, $vr14
	vpickve2gr.b	$a2, $vr9, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr15, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr9, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr9, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr9, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr9, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr9, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr9, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickve2gr.b	$a3, $vr12, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickev.w	$vr11, $vr11, $vr12
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vseqi.d	$vr12, $vr17, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickev.w	$vr10, $vr12, $vr10
	vpickev.h	$vr10, $vr10, $vr11
	vpickve2gr.b	$a3, $vr10, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a2, $a1, 16
	bnez	$a3, .LBB18_25
# %bb.24:                               # %vector.body1064
                                        #   in Loop: Header=BB18_23 Depth=2
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	bne	$a1, $s5, .LBB18_23
.LBB18_25:                              # %middle.split1069
                                        #   in Loop: Header=BB18_10 Depth=1
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB18_80
# %bb.26:                               # %vector.early.exit1071
                                        #   in Loop: Header=BB18_10 Depth=1
	vpickev.b	$vr1, $vr10, $vr9
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a3, $zero, 16
	sub.d	$a1, $a3, $a1
	andi	$a1, $a1, 255
	sub.d	$a0, $a0, $a1
	bne	$a0, $a2, .LBB18_80
.LBB18_27:                              # %.thread810
                                        #   in Loop: Header=BB18_10 Depth=1
	srai.d	$a0, $fp, 63
	xor	$a0, $a0, $fp
	clz.d	$a0, $a0
	addi.d	$a0, $a0, -1
	srli.d	$s8, $fp, 63
	vreplgr2vr.d	$vr0, $s8
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	vld	$vr1, $sp, 592                  # 16-byte Folded Reload
	vld	$vr2, $sp, 608                  # 16-byte Folded Reload
	vld	$vr3, $sp, 624                  # 16-byte Folded Reload
	vld	$vr4, $sp, 640                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB18_28:                              # %vector.body
                                        #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a1
	vsub.d	$vr5, $vr18, $vr4
	vsub.d	$vr6, $vr18, $vr3
	vsub.d	$vr7, $vr18, $vr2
	vsub.d	$vr8, $vr18, $vr1
	vsrl.d	$vr8, $vr21, $vr8
	vsrl.d	$vr7, $vr21, $vr7
	vsrl.d	$vr6, $vr21, $vr6
	vsrl.d	$vr5, $vr21, $vr5
	vand.v	$vr9, $vr5, $vr19
	vand.v	$vr10, $vr6, $vr19
	vand.v	$vr5, $vr7, $vr19
	vand.v	$vr6, $vr8, $vr19
	vseq.d	$vr6, $vr6, $vr0
	vxor.v	$vr6, $vr6, $vr20
	vseq.d	$vr5, $vr5, $vr0
	vxor.v	$vr5, $vr5, $vr20
	vpickev.w	$vr7, $vr5, $vr6
	vpickve2gr.h	$a1, $vr7, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a3, $vr6, 0
	bstrins.d	$a3, $a1, 63, 1
	vpickve2gr.h	$a1, $vr7, 4
	bstrins.d	$a3, $a1, 2, 2
	vpickve2gr.h	$a1, $vr7, 6
	bstrins.d	$a3, $a1, 3, 3
	vseq.d	$vr7, $vr10, $vr0
	vxor.v	$vr8, $vr7, $vr20
	vseq.d	$vr7, $vr9, $vr0
	vxor.v	$vr7, $vr7, $vr20
	vpickev.w	$vr9, $vr7, $vr8
	vpickve2gr.h	$a1, $vr9, 0
	bstrins.d	$a3, $a1, 4, 4
	vpickve2gr.h	$a1, $vr9, 2
	bstrins.d	$a3, $a1, 5, 5
	vpickve2gr.h	$a1, $vr9, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a3, $a1
	vpickve2gr.h	$a3, $vr9, 6
	slli.d	$a3, $a3, 7
	or	$a1, $a1, $a3
	andi	$a3, $a1, 255
	addi.d	$a1, $a2, 8
	bnez	$a3, .LBB18_30
# %bb.29:                               # %vector.body
                                        #   in Loop: Header=BB18_28 Depth=2
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr4, $vr4, 8
	bne	$a2, $s4, .LBB18_28
.LBB18_30:                              # %middle.split
                                        #   in Loop: Header=BB18_10 Depth=1
	beqz	$a3, .LBB18_32
# %bb.31:                               # %vector.early.exit
                                        #   in Loop: Header=BB18_10 Depth=1
	vpickve2gr.d	$a2, $vr6, 0
	vinsgr2vr.b	$vr0, $a2, 0
	vpickve2gr.d	$a2, $vr6, 1
	vinsgr2vr.b	$vr0, $a2, 1
	vpickve2gr.d	$a2, $vr5, 0
	vinsgr2vr.b	$vr0, $a2, 2
	vpickve2gr.d	$a2, $vr5, 1
	vinsgr2vr.b	$vr0, $a2, 3
	vpickve2gr.d	$a2, $vr8, 0
	vinsgr2vr.b	$vr0, $a2, 4
	vpickve2gr.d	$a2, $vr8, 1
	vinsgr2vr.b	$vr0, $a2, 5
	vpickve2gr.d	$a2, $vr7, 0
	vinsgr2vr.b	$vr0, $a2, 6
	vpickve2gr.d	$a2, $vr7, 1
	vinsgr2vr.b	$vr0, $a2, 7
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a2, $vr0, 0
	ori	$a3, $zero, 8
	sub.d	$a2, $a3, $a2
	andi	$a2, $a2, 255
	add.d	$a1, $a2, $a1
	b	.LBB18_39
	.p2align	4, , 16
.LBB18_32:                              # %scalar.ph
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 6, 6
	ori	$a1, $zero, 57
	bne	$a2, $s8, .LBB18_39
# %bb.33:                               # %scalar.ph.1
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 5, 5
	ori	$a1, $zero, 58
	bne	$a2, $s8, .LBB18_39
# %bb.34:                               # %scalar.ph.2
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 4, 4
	ori	$a1, $zero, 59
	bne	$a2, $s8, .LBB18_39
# %bb.35:                               # %scalar.ph.3
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 3, 3
	ori	$a1, $zero, 60
	bne	$a2, $s8, .LBB18_39
# %bb.36:                               # %scalar.ph.4
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 2, 2
	ori	$a1, $zero, 61
	bne	$a2, $s8, .LBB18_39
# %bb.37:                               # %scalar.ph.5
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 1, 1
	ori	$a1, $zero, 62
	bne	$a2, $s8, .LBB18_39
# %bb.38:                               # %scalar.ph.6
                                        #   in Loop: Header=BB18_10 Depth=1
	andi	$a2, $fp, 1
	ori	$a1, $zero, 63
	beq	$a2, $s8, .LBB18_40
	.p2align	4, , 16
.LBB18_39:                              # %.split.loop.exit.i242
                                        #   in Loop: Header=BB18_10 Depth=1
	addi.w	$a1, $a1, -1
.LBB18_40:                              # %my_clrsbl.exit
                                        #   in Loop: Header=BB18_10 Depth=1
	bne	$a0, $a1, .LBB18_80
# %bb.41:                               #   in Loop: Header=BB18_10 Depth=1
	vst	$vr21, $sp, 576                 # 16-byte Folded Spill
	vldi	$vr0, 0
	vinsgr2vr.d	$vr0, $fp, 0
	vpcnt.d	$vr0, $vr0
	vpickve2gr.d	$s1, $vr0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_popcountl)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB18_80
# %bb.42:                               #   in Loop: Header=BB18_10 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI18_20)
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	vld	$vr22, $a0, %pc_lo12(.LCPI18_21)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	vld	$vr23, $a0, %pc_lo12(.LCPI18_22)
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	vld	$vr24, $a0, %pc_lo12(.LCPI18_23)
	vld	$vr19, $sp, 576                 # 16-byte Folded Reload
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	vsrl.d	$vr7, $vr19, $vr0
	vsrl.d	$vr8, $vr19, $vr22
	vsrl.d	$vr6, $vr19, $vr23
	vsrl.d	$vr9, $vr19, $vr24
	vld	$vr0, $sp, 592                  # 16-byte Folded Reload
	vsrl.d	$vr5, $vr19, $vr0
	vld	$vr0, $sp, 608                  # 16-byte Folded Reload
	vsrl.d	$vr10, $vr19, $vr0
	vld	$vr0, $sp, 624                  # 16-byte Folded Reload
	vsrl.d	$vr4, $vr19, $vr0
	vld	$vr0, $sp, 640                  # 16-byte Folded Reload
	vsrl.d	$vr11, $vr19, $vr0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	vld	$vr25, $a0, %pc_lo12(.LCPI18_24)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	vld	$vr26, $a0, %pc_lo12(.LCPI18_25)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	vld	$vr27, $a0, %pc_lo12(.LCPI18_26)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	vld	$vr28, $a0, %pc_lo12(.LCPI18_27)
	vsrl.d	$vr3, $vr19, $vr25
	vsrl.d	$vr12, $vr19, $vr26
	vsrl.d	$vr2, $vr19, $vr27
	vsrl.d	$vr13, $vr19, $vr28
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	vld	$vr29, $a0, %pc_lo12(.LCPI18_28)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	vld	$vr30, $a0, %pc_lo12(.LCPI18_29)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	vld	$vr31, $a0, %pc_lo12(.LCPI18_30)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	vld	$vr17, $a0, %pc_lo12(.LCPI18_31)
	vsrl.d	$vr1, $vr19, $vr29
	vsrl.d	$vr14, $vr19, $vr30
	vsrl.d	$vr0, $vr19, $vr31
	vsrl.d	$vr15, $vr19, $vr17
	vpickev.w	$vr0, $vr15, $vr0
	vpickev.w	$vr1, $vr14, $vr1
	vpickev.w	$vr2, $vr13, $vr2
	vpickev.w	$vr3, $vr12, $vr3
	vpickev.w	$vr4, $vr11, $vr4
	vpickev.w	$vr5, $vr10, $vr5
	vpickev.w	$vr6, $vr9, $vr6
	vpickev.w	$vr7, $vr8, $vr7
	vld	$vr16, $s2, %pc_lo12(.LCPI18_34)
	pcalau12i	$a0, %pc_hi20(.LCPI18_36)
	vld	$vr9, $a0, %pc_lo12(.LCPI18_36)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	vld	$vr12, $a0, %pc_lo12(.LCPI18_32)
	vsrl.d	$vr8, $vr19, $vr16
	vld	$vr13, $s3, %pc_lo12(.LCPI18_35)
	vst	$vr9, $sp, 496                  # 16-byte Folded Spill
	vsrl.d	$vr9, $vr19, $vr9
	pcalau12i	$a0, %pc_hi20(.LCPI18_38)
	vld	$vr10, $a0, %pc_lo12(.LCPI18_38)
	pcalau12i	$a0, %pc_hi20(.LCPI18_39)
	vld	$vr11, $a0, %pc_lo12(.LCPI18_39)
	pcalau12i	$a0, %pc_hi20(.LCPI18_37)
	vld	$vr14, $a0, %pc_lo12(.LCPI18_37)
	vst	$vr10, $sp, 448                 # 16-byte Folded Spill
	vsrl.d	$vr10, $vr19, $vr10
	vst	$vr11, $sp, 432                 # 16-byte Folded Spill
	vsrl.d	$vr11, $vr19, $vr11
	vpickev.w	$vr10, $vr11, $vr10
	vst	$vr14, $sp, 416                 # 16-byte Folded Spill
	vsrl.d	$vr11, $vr19, $vr14
	vpickev.w	$vr9, $vr11, $vr9
	vst	$vr13, $sp, 464                 # 16-byte Folded Spill
	vsrl.d	$vr11, $vr19, $vr13
	vpickev.w	$vr8, $vr11, $vr8
	vld	$vr13, $s7, %pc_lo12(.LCPI18_33)
	pcalau12i	$a0, %pc_hi20(.LCPI18_42)
	pcalau12i	$a1, %pc_hi20(.LCPI18_43)
	vst	$vr12, $sp, 480                 # 16-byte Folded Spill
	vsrl.d	$vr11, $vr19, $vr12
	vld	$vr14, $a0, %pc_lo12(.LCPI18_42)
	vld	$vr15, $a1, %pc_lo12(.LCPI18_43)
	vst	$vr13, $sp, 400                 # 16-byte Folded Spill
	vsrl.d	$vr12, $vr19, $vr13
	vpickev.w	$vr11, $vr12, $vr11
	vst	$vr14, $sp, 384                 # 16-byte Folded Spill
	vsrl.d	$vr12, $vr19, $vr14
	vst	$vr15, $sp, 368                 # 16-byte Folded Spill
	vsrl.d	$vr13, $vr19, $vr15
	vpickev.w	$vr12, $vr13, $vr12
	pcalau12i	$a0, %pc_hi20(.LCPI18_40)
	pcalau12i	$a1, %pc_hi20(.LCPI18_41)
	vld	$vr13, $a0, %pc_lo12(.LCPI18_40)
	pcalau12i	$a0, %pc_hi20(.LCPI18_44)
	pcalau12i	$a2, %pc_hi20(.LCPI18_45)
	vld	$vr14, $a1, %pc_lo12(.LCPI18_41)
	vst	$vr13, $sp, 352                 # 16-byte Folded Spill
	vsrl.d	$vr13, $vr19, $vr13
	vld	$vr15, $a0, %pc_lo12(.LCPI18_44)
	vld	$vr18, $a2, %pc_lo12(.LCPI18_45)
	vst	$vr14, $sp, 336                 # 16-byte Folded Spill
	vsrl.d	$vr14, $vr19, $vr14
	vpickev.w	$vr13, $vr14, $vr13
	vst	$vr15, $sp, 320                 # 16-byte Folded Spill
	vsrl.d	$vr14, $vr19, $vr15
	vst	$vr18, $sp, 304                 # 16-byte Folded Spill
	vsrl.d	$vr15, $vr19, $vr18
	vpickev.w	$vr14, $vr15, $vr14
	vadd.w	$vr7, $vr7, $vr11
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr5, $vr5, $vr9
	vadd.w	$vr4, $vr4, $vr10
	vadd.w	$vr4, $vr4, $vr13
	vadd.w	$vr5, $vr5, $vr12
	vadd.w	$vr5, $vr5, $vr14
	vadd.w	$vr3, $vr6, $vr3
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr2, $vr2, $vr3
	vadd.w	$vr1, $vr7, $vr1
	vadd.w	$vr0, $vr5, $vr0
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr0, $vr0, $vr2
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	srli.d	$a1, $fp, 61
	srli.d	$a2, $fp, 62
	add.d	$a0, $a0, $a1
	add.d	$a1, $a2, $s8
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $fp
	xor	$a0, $a0, $s1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB18_80
# %bb.43:                               #   in Loop: Header=BB18_10 Depth=1
	addi.d	$s6, $s6, 1
	vld	$vr18, $sp, 560                 # 16-byte Folded Reload
	vld	$vr19, $sp, 544                 # 16-byte Folded Reload
	vld	$vr20, $sp, 528                 # 16-byte Folded Reload
	ori	$a0, $zero, 13
	bne	$s6, $a0, .LBB18_10
# %bb.44:                               # %.preheader952.preheader
	pcalau12i	$a0, %pc_hi20(longlongs)
	addi.d	$s1, $a0, %pc_lo12(longlongs)
	move	$s2, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI18_16)
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI18_17)
	vst	$vr0, $sp, 608                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI18_18)
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI18_19)
	vst	$vr0, $sp, 576                  # 16-byte Folded Spill
	addi.w	$s3, $zero, -7
	ori	$s6, $zero, 41
	ori	$s7, $zero, 16
	ori	$s8, $zero, 32
	.p2align	4, , 16
.LBB18_45:                              # %.preheader952
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_47 Depth 2
                                        #     Child Loop BB18_53 Depth 2
                                        #     Child Loop BB18_58 Depth 2
                                        #     Child Loop BB18_63 Depth 2
	slli.d	$a0, $s2, 3
	ldx.d	$fp, $s1, $a0
	vreplgr2vr.d	$vr0, $fp
	vst	$vr0, $sp, 640                  # 16-byte Folded Spill
	vst	$vr17, $sp, 64                  # 16-byte Folded Spill
	vst	$vr16, $sp, 48                  # 16-byte Folded Spill
	beqz	$fp, .LBB18_62
# %bb.46:                               # %vector.ph1136
                                        #   in Loop: Header=BB18_45 Depth=1
	ctz.d	$a0, $fp
	pcalau12i	$a1, %pc_hi20(.LCPI18_7)
	vld	$vr0, $a1, %pc_lo12(.LCPI18_7)
	pcalau12i	$a2, %pc_hi20(.LCPI18_8)
	vld	$vr1, $a2, %pc_lo12(.LCPI18_8)
	pcalau12i	$a3, %pc_hi20(.LCPI18_9)
	vld	$vr2, $a3, %pc_lo12(.LCPI18_9)
	pcalau12i	$a4, %pc_hi20(.LCPI18_10)
	vld	$vr3, $a4, %pc_lo12(.LCPI18_10)
	pcalau12i	$a5, %pc_hi20(.LCPI18_11)
	vld	$vr4, $a5, %pc_lo12(.LCPI18_11)
	pcalau12i	$a6, %pc_hi20(.LCPI18_12)
	vld	$vr5, $a6, %pc_lo12(.LCPI18_12)
	pcalau12i	$a7, %pc_hi20(.LCPI18_13)
	vld	$vr6, $a7, %pc_lo12(.LCPI18_13)
	pcalau12i	$t0, %pc_hi20(.LCPI18_14)
	vld	$vr7, $t0, %pc_lo12(.LCPI18_14)
	addi.d	$t1, $a0, 1
	ori	$t2, $zero, 15
	ori	$t4, $zero, 48
	.p2align	4, , 16
.LBB18_47:                              # %vector.body1139
                                        #   Parent Loop BB18_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t3, $t4
	vsll.d	$vr8, $vr19, $vr0
	vsll.d	$vr9, $vr19, $vr1
	vsll.d	$vr10, $vr19, $vr2
	vsll.d	$vr11, $vr19, $vr3
	vsll.d	$vr12, $vr19, $vr4
	vsll.d	$vr13, $vr19, $vr5
	vsll.d	$vr14, $vr19, $vr6
	vsll.d	$vr15, $vr19, $vr7
	vld	$vr21, $sp, 640                 # 16-byte Folded Reload
	vand.v	$vr16, $vr8, $vr21
	vand.v	$vr9, $vr9, $vr21
	vand.v	$vr10, $vr10, $vr21
	vand.v	$vr11, $vr11, $vr21
	vand.v	$vr8, $vr12, $vr21
	vand.v	$vr12, $vr13, $vr21
	vand.v	$vr13, $vr14, $vr21
	vand.v	$vr14, $vr15, $vr21
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vseqi.d	$vr8, $vr8, 0
	vxor.v	$vr8, $vr8, $vr20
	vpickev.w	$vr8, $vr8, $vr12
	vpickev.h	$vr8, $vr8, $vr13
	vpickve2gr.b	$t4, $vr8, 2
	andi	$t4, $t4, 1
	vpickve2gr.b	$t5, $vr14, 0
	bstrins.d	$t5, $t4, 63, 1
	vpickve2gr.b	$t4, $vr8, 4
	bstrins.d	$t5, $t4, 2, 2
	vpickve2gr.b	$t4, $vr8, 6
	bstrins.d	$t5, $t4, 3, 3
	vpickve2gr.b	$t4, $vr8, 8
	bstrins.d	$t5, $t4, 4, 4
	vpickve2gr.b	$t4, $vr8, 10
	bstrins.d	$t5, $t4, 5, 5
	vpickve2gr.b	$t4, $vr8, 12
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 6
	or	$t4, $t5, $t4
	vpickve2gr.b	$t5, $vr8, 14
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 7
	or	$t4, $t4, $t5
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickve2gr.b	$t5, $vr11, 0
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 8
	or	$t4, $t4, $t5
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vpickev.w	$vr10, $vr10, $vr11
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr9, $vr9, $vr20
	vseqi.d	$vr11, $vr16, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickev.w	$vr9, $vr11, $vr9
	vpickev.h	$vr9, $vr9, $vr10
	vpickve2gr.b	$t5, $vr9, 2
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 9
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 4
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 10
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 6
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 11
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 8
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 12
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 10
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 13
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 12
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 14
	or	$t4, $t4, $t5
	vpickve2gr.b	$t5, $vr9, 14
	slli.d	$t5, $t5, 15
	or	$t4, $t4, $t5
	bstrpick.d	$t5, $t4, 15, 0
	addi.d	$t2, $t2, -16
	bnez	$t5, .LBB18_49
# %bb.48:                               # %vector.body1139
                                        #   in Loop: Header=BB18_47 Depth=2
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$t4, $t3, -16
	bnez	$t3, .LBB18_47
.LBB18_49:                              # %middle.split1144
                                        #   in Loop: Header=BB18_45 Depth=1
	slli.d	$t3, $t5, 48
	beqz	$t3, .LBB18_51
# %bb.50:                               # %vector.early.exit1146
                                        #   in Loop: Header=BB18_45 Depth=1
	pcalau12i	$t3, %pc_hi20(.LCPI18_15)
	vld	$vr0, $t3, %pc_lo12(.LCPI18_15)
	vpickev.b	$vr1, $vr9, $vr8
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$t3, $vr0, 0
	sub.d	$t3, $s7, $t3
	andi	$t3, $t3, 255
	sub.w	$t2, $t3, $t2
	beq	$t1, $t2, .LBB18_52
	b	.LBB18_80
	.p2align	4, , 16
.LBB18_51:                              #   in Loop: Header=BB18_45 Depth=1
	ori	$t2, $zero, 65
	bne	$t1, $t2, .LBB18_80
.LBB18_52:                              # %vector.ph1124
                                        #   in Loop: Header=BB18_45 Depth=1
	vld	$vr0, $a1, %pc_lo12(.LCPI18_7)
	vld	$vr1, $a2, %pc_lo12(.LCPI18_8)
	vld	$vr2, $a3, %pc_lo12(.LCPI18_9)
	vld	$vr3, $a4, %pc_lo12(.LCPI18_10)
	vld	$vr4, $a5, %pc_lo12(.LCPI18_11)
	vld	$vr5, $a6, %pc_lo12(.LCPI18_12)
	vld	$vr6, $a7, %pc_lo12(.LCPI18_13)
	vld	$vr7, $t0, %pc_lo12(.LCPI18_14)
	clz.d	$t1, $fp
	addi.w	$t3, $zero, -16
	.p2align	4, , 16
.LBB18_53:                              # %vector.body1127
                                        #   Parent Loop BB18_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t2, $t3
	vreplgr2vr.d	$vr8, $s0
	vsrl.d	$vr9, $vr8, $vr0
	vsrl.d	$vr10, $vr8, $vr1
	vsrl.d	$vr11, $vr8, $vr2
	vsrl.d	$vr12, $vr8, $vr3
	vsrl.d	$vr13, $vr8, $vr4
	vsrl.d	$vr14, $vr8, $vr5
	vsrl.d	$vr15, $vr8, $vr6
	vsrl.d	$vr8, $vr8, $vr7
	vld	$vr16, $sp, 640                 # 16-byte Folded Reload
	vand.v	$vr9, $vr9, $vr16
	vand.v	$vr10, $vr10, $vr16
	vand.v	$vr11, $vr11, $vr16
	vand.v	$vr12, $vr12, $vr16
	vand.v	$vr13, $vr13, $vr16
	vand.v	$vr14, $vr14, $vr16
	vand.v	$vr15, $vr15, $vr16
	vand.v	$vr8, $vr8, $vr16
	vseqi.d	$vr8, $vr8, 0
	vxor.v	$vr16, $vr8, $vr20
	vseqi.d	$vr8, $vr15, 0
	vxor.v	$vr8, $vr8, $vr20
	vpickev.w	$vr8, $vr8, $vr16
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vpickev.w	$vr13, $vr13, $vr14
	vpickev.h	$vr8, $vr13, $vr8
	vpickve2gr.b	$t3, $vr8, 2
	andi	$t3, $t3, 1
	vpickve2gr.b	$t4, $vr16, 0
	bstrins.d	$t4, $t3, 63, 1
	vpickve2gr.b	$t3, $vr8, 4
	bstrins.d	$t4, $t3, 2, 2
	vpickve2gr.b	$t3, $vr8, 6
	bstrins.d	$t4, $t3, 3, 3
	vpickve2gr.b	$t3, $vr8, 8
	bstrins.d	$t4, $t3, 4, 4
	vpickve2gr.b	$t3, $vr8, 10
	bstrins.d	$t4, $t3, 5, 5
	vpickve2gr.b	$t3, $vr8, 12
	andi	$t3, $t3, 1
	slli.d	$t3, $t3, 6
	or	$t3, $t4, $t3
	vpickve2gr.b	$t4, $vr8, 14
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 7
	or	$t3, $t3, $t4
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickve2gr.b	$t4, $vr12, 0
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 8
	or	$t3, $t3, $t4
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickev.w	$vr11, $vr11, $vr12
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr9, $vr9, $vr20
	vpickev.w	$vr9, $vr9, $vr10
	vpickev.h	$vr9, $vr9, $vr11
	vpickve2gr.b	$t4, $vr9, 2
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 9
	or	$t3, $t3, $t4
	vpickve2gr.b	$t4, $vr9, 4
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 10
	or	$t3, $t3, $t4
	vpickve2gr.b	$t4, $vr9, 6
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 11
	or	$t3, $t3, $t4
	vpickve2gr.b	$t4, $vr9, 8
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 12
	or	$t3, $t3, $t4
	vpickve2gr.b	$t4, $vr9, 10
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 13
	or	$t3, $t3, $t4
	vpickve2gr.b	$t4, $vr9, 12
	andi	$t4, $t4, 1
	slli.d	$t4, $t4, 14
	or	$t3, $t3, $t4
	vpickve2gr.b	$t4, $vr9, 14
	slli.d	$t4, $t4, 15
	or	$t3, $t3, $t4
	bstrpick.d	$t4, $t3, 15, 0
	addi.d	$t3, $t2, 16
	bnez	$t4, .LBB18_55
# %bb.54:                               # %vector.body1127
                                        #   in Loop: Header=BB18_53 Depth=2
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	bne	$t2, $s8, .LBB18_53
.LBB18_55:                              # %middle.split1132
                                        #   in Loop: Header=BB18_45 Depth=1
	slli.d	$t2, $t4, 48
	beqz	$t2, .LBB18_80
# %bb.56:                               # %vector.early.exit1134
                                        #   in Loop: Header=BB18_45 Depth=1
	pcalau12i	$t2, %pc_hi20(.LCPI18_15)
	vld	$vr0, $t2, %pc_lo12(.LCPI18_15)
	vpickev.b	$vr1, $vr9, $vr8
	vand.v	$vr1, $vr1, $vr0
	vbsrl.v	$vr2, $vr1, 8
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 4
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 2
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 1
	vmax.bu	$vr1, $vr2, $vr1
	vpickve2gr.b	$t2, $vr1, 0
	sub.d	$t2, $s7, $t2
	andi	$t2, $t2, 255
	sub.d	$t1, $t1, $t2
	bne	$t1, $t3, .LBB18_80
# %bb.57:                               # %vector.ph1112
                                        #   in Loop: Header=BB18_45 Depth=1
	vld	$vr1, $a1, %pc_lo12(.LCPI18_7)
	vld	$vr2, $a2, %pc_lo12(.LCPI18_8)
	vld	$vr3, $a3, %pc_lo12(.LCPI18_9)
	vld	$vr4, $a4, %pc_lo12(.LCPI18_10)
	vld	$vr5, $a5, %pc_lo12(.LCPI18_11)
	vld	$vr6, $a6, %pc_lo12(.LCPI18_12)
	vld	$vr7, $a7, %pc_lo12(.LCPI18_13)
	vld	$vr8, $t0, %pc_lo12(.LCPI18_14)
	addi.w	$a2, $zero, -16
	.p2align	4, , 16
.LBB18_58:                              # %vector.body1115
                                        #   Parent Loop BB18_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	vsll.d	$vr9, $vr19, $vr1
	vsll.d	$vr10, $vr19, $vr2
	vsll.d	$vr11, $vr19, $vr3
	vsll.d	$vr12, $vr19, $vr4
	vsll.d	$vr13, $vr19, $vr5
	vsll.d	$vr14, $vr19, $vr6
	vsll.d	$vr15, $vr19, $vr7
	vsll.d	$vr16, $vr19, $vr8
	vld	$vr21, $sp, 640                 # 16-byte Folded Reload
	vand.v	$vr17, $vr9, $vr21
	vand.v	$vr10, $vr10, $vr21
	vand.v	$vr11, $vr11, $vr21
	vand.v	$vr12, $vr12, $vr21
	vand.v	$vr9, $vr13, $vr21
	vand.v	$vr13, $vr14, $vr21
	vand.v	$vr14, $vr15, $vr21
	vand.v	$vr15, $vr16, $vr21
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr20
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vpickev.w	$vr14, $vr14, $vr15
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr9, $vr9, $vr20
	vpickev.w	$vr9, $vr9, $vr13
	vpickev.h	$vr9, $vr9, $vr14
	vpickve2gr.b	$a2, $vr9, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr15, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr9, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr9, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr9, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr9, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr9, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr9, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickve2gr.b	$a3, $vr12, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickev.w	$vr11, $vr11, $vr12
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vseqi.d	$vr12, $vr17, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickev.w	$vr10, $vr12, $vr10
	vpickev.h	$vr10, $vr10, $vr11
	vpickve2gr.b	$a3, $vr10, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a2, $a1, 16
	bnez	$a3, .LBB18_60
# %bb.59:                               # %vector.body1115
                                        #   in Loop: Header=BB18_58 Depth=2
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	bne	$a1, $s8, .LBB18_58
.LBB18_60:                              # %middle.split1120
                                        #   in Loop: Header=BB18_45 Depth=1
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB18_80
# %bb.61:                               # %vector.early.exit1122
                                        #   in Loop: Header=BB18_45 Depth=1
	vpickev.b	$vr1, $vr10, $vr9
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	sub.d	$a1, $s7, $a1
	andi	$a1, $a1, 255
	sub.d	$a0, $a0, $a1
	bne	$a0, $a2, .LBB18_80
.LBB18_62:                              # %.thread819
                                        #   in Loop: Header=BB18_45 Depth=1
	srai.d	$a0, $fp, 63
	xor	$a0, $a0, $fp
	clz.d	$a0, $a0
	addi.d	$a0, $a0, -1
	srli.d	$s4, $fp, 63
	vreplgr2vr.d	$vr0, $s4
	move	$a1, $s3
	vld	$vr1, $sp, 576                  # 16-byte Folded Reload
	vld	$vr2, $sp, 592                  # 16-byte Folded Reload
	vld	$vr3, $sp, 608                  # 16-byte Folded Reload
	vld	$vr4, $sp, 624                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB18_63:                              # %vector.body1102
                                        #   Parent Loop BB18_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a1
	vsub.d	$vr5, $vr18, $vr4
	vsub.d	$vr6, $vr18, $vr3
	vsub.d	$vr7, $vr18, $vr2
	vsub.d	$vr8, $vr18, $vr1
	vld	$vr9, $sp, 640                  # 16-byte Folded Reload
	vsrl.d	$vr8, $vr9, $vr8
	vsrl.d	$vr7, $vr9, $vr7
	vsrl.d	$vr6, $vr9, $vr6
	vsrl.d	$vr5, $vr9, $vr5
	vand.v	$vr9, $vr5, $vr19
	vand.v	$vr10, $vr6, $vr19
	vand.v	$vr5, $vr7, $vr19
	vand.v	$vr6, $vr8, $vr19
	vseq.d	$vr6, $vr6, $vr0
	vxor.v	$vr6, $vr6, $vr20
	vseq.d	$vr5, $vr5, $vr0
	vxor.v	$vr5, $vr5, $vr20
	vpickev.w	$vr7, $vr5, $vr6
	vpickve2gr.h	$a1, $vr7, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a3, $vr6, 0
	bstrins.d	$a3, $a1, 63, 1
	vpickve2gr.h	$a1, $vr7, 4
	bstrins.d	$a3, $a1, 2, 2
	vpickve2gr.h	$a1, $vr7, 6
	bstrins.d	$a3, $a1, 3, 3
	vseq.d	$vr7, $vr10, $vr0
	vxor.v	$vr8, $vr7, $vr20
	vseq.d	$vr7, $vr9, $vr0
	vxor.v	$vr7, $vr7, $vr20
	vpickev.w	$vr9, $vr7, $vr8
	vpickve2gr.h	$a1, $vr9, 0
	bstrins.d	$a3, $a1, 4, 4
	vpickve2gr.h	$a1, $vr9, 2
	bstrins.d	$a3, $a1, 5, 5
	vpickve2gr.h	$a1, $vr9, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a3, $a1
	vpickve2gr.h	$a3, $vr9, 6
	slli.d	$a3, $a3, 7
	or	$a1, $a1, $a3
	andi	$a3, $a1, 255
	addi.d	$a1, $a2, 8
	bnez	$a3, .LBB18_65
# %bb.64:                               # %vector.body1102
                                        #   in Loop: Header=BB18_63 Depth=2
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr4, $vr4, 8
	bne	$a2, $s6, .LBB18_63
.LBB18_65:                              # %middle.split1107
                                        #   in Loop: Header=BB18_45 Depth=1
	beqz	$a3, .LBB18_67
# %bb.66:                               # %vector.early.exit1109
                                        #   in Loop: Header=BB18_45 Depth=1
	vpickve2gr.d	$a2, $vr6, 0
	vinsgr2vr.b	$vr0, $a2, 0
	vpickve2gr.d	$a2, $vr6, 1
	vinsgr2vr.b	$vr0, $a2, 1
	vpickve2gr.d	$a2, $vr5, 0
	vinsgr2vr.b	$vr0, $a2, 2
	vpickve2gr.d	$a2, $vr5, 1
	vinsgr2vr.b	$vr0, $a2, 3
	vpickve2gr.d	$a2, $vr8, 0
	vinsgr2vr.b	$vr0, $a2, 4
	vpickve2gr.d	$a2, $vr8, 1
	vinsgr2vr.b	$vr0, $a2, 5
	vpickve2gr.d	$a2, $vr7, 0
	vinsgr2vr.b	$vr0, $a2, 6
	vpickve2gr.d	$a2, $vr7, 1
	vinsgr2vr.b	$vr0, $a2, 7
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a2, $vr0, 0
	ori	$a3, $zero, 8
	sub.d	$a2, $a3, $a2
	andi	$a2, $a2, 255
	add.d	$a1, $a2, $a1
	b	.LBB18_74
	.p2align	4, , 16
.LBB18_67:                              # %scalar.ph1096
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 6, 6
	ori	$a1, $zero, 57
	bne	$a2, $s4, .LBB18_74
# %bb.68:                               # %scalar.ph1096.1
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 5, 5
	ori	$a1, $zero, 58
	bne	$a2, $s4, .LBB18_74
# %bb.69:                               # %scalar.ph1096.2
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 4, 4
	ori	$a1, $zero, 59
	bne	$a2, $s4, .LBB18_74
# %bb.70:                               # %scalar.ph1096.3
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 3, 3
	ori	$a1, $zero, 60
	bne	$a2, $s4, .LBB18_74
# %bb.71:                               # %scalar.ph1096.4
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 2, 2
	ori	$a1, $zero, 61
	bne	$a2, $s4, .LBB18_74
# %bb.72:                               # %scalar.ph1096.5
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 1, 1
	ori	$a1, $zero, 62
	bne	$a2, $s4, .LBB18_74
# %bb.73:                               # %scalar.ph1096.6
                                        #   in Loop: Header=BB18_45 Depth=1
	andi	$a2, $fp, 1
	ori	$a1, $zero, 63
	beq	$a2, $s4, .LBB18_75
	.p2align	4, , 16
.LBB18_74:                              # %.split.loop.exit.i301
                                        #   in Loop: Header=BB18_45 Depth=1
	addi.w	$a1, $a1, -1
.LBB18_75:                              # %my_clrsbll.exit
                                        #   in Loop: Header=BB18_45 Depth=1
	bne	$a0, $a1, .LBB18_80
# %bb.76:                               #   in Loop: Header=BB18_45 Depth=1
	vst	$vr31, $sp, 144                 # 16-byte Folded Spill
	vst	$vr30, $sp, 160                 # 16-byte Folded Spill
	vst	$vr29, $sp, 176                 # 16-byte Folded Spill
	vst	$vr28, $sp, 192                 # 16-byte Folded Spill
	vst	$vr27, $sp, 208                 # 16-byte Folded Spill
	vst	$vr26, $sp, 224                 # 16-byte Folded Spill
	vst	$vr25, $sp, 240                 # 16-byte Folded Spill
	vst	$vr24, $sp, 256                 # 16-byte Folded Spill
	vst	$vr23, $sp, 272                 # 16-byte Folded Spill
	vst	$vr22, $sp, 288                 # 16-byte Folded Spill
	vldi	$vr0, 0
	vinsgr2vr.d	$vr0, $fp, 0
	vpcnt.d	$vr0, $vr0
	vpickve2gr.d	$s5, $vr0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_popcountll)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB18_80
# %bb.77:                               #   in Loop: Header=BB18_45 Depth=1
	vld	$vr0, $sp, 512                  # 16-byte Folded Reload
	vld	$vr18, $sp, 640                 # 16-byte Folded Reload
	vsrl.d	$vr0, $vr18, $vr0
	vld	$vr22, $sp, 288                 # 16-byte Folded Reload
	vsrl.d	$vr1, $vr18, $vr22
	vld	$vr23, $sp, 272                 # 16-byte Folded Reload
	vsrl.d	$vr2, $vr18, $vr23
	vld	$vr24, $sp, 256                 # 16-byte Folded Reload
	vsrl.d	$vr3, $vr18, $vr24
	vld	$vr4, $sp, 576                  # 16-byte Folded Reload
	vsrl.d	$vr4, $vr18, $vr4
	vld	$vr5, $sp, 592                  # 16-byte Folded Reload
	vsrl.d	$vr5, $vr18, $vr5
	vld	$vr6, $sp, 608                  # 16-byte Folded Reload
	vsrl.d	$vr6, $vr18, $vr6
	vld	$vr7, $sp, 624                  # 16-byte Folded Reload
	vsrl.d	$vr7, $vr18, $vr7
	vld	$vr25, $sp, 240                 # 16-byte Folded Reload
	vsrl.d	$vr8, $vr18, $vr25
	vld	$vr26, $sp, 224                 # 16-byte Folded Reload
	vsrl.d	$vr9, $vr18, $vr26
	vld	$vr27, $sp, 208                 # 16-byte Folded Reload
	vsrl.d	$vr10, $vr18, $vr27
	vld	$vr28, $sp, 192                 # 16-byte Folded Reload
	vsrl.d	$vr11, $vr18, $vr28
	vld	$vr29, $sp, 176                 # 16-byte Folded Reload
	vsrl.d	$vr12, $vr18, $vr29
	vld	$vr31, $sp, 144                 # 16-byte Folded Reload
	vsrl.d	$vr13, $vr18, $vr31
	vld	$vr17, $sp, 64                  # 16-byte Folded Reload
	vsrl.d	$vr14, $vr18, $vr17
	vpickev.w	$vr13, $vr14, $vr13
	vld	$vr30, $sp, 160                 # 16-byte Folded Reload
	vsrl.d	$vr14, $vr18, $vr30
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.w	$vr10, $vr11, $vr10
	vpickev.w	$vr8, $vr9, $vr8
	vpickev.w	$vr6, $vr7, $vr6
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.w	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 480                  # 16-byte Folded Reload
	vsrl.d	$vr1, $vr18, $vr1
	vld	$vr3, $sp, 400                  # 16-byte Folded Reload
	vsrl.d	$vr3, $vr18, $vr3
	vld	$vr16, $sp, 48                  # 16-byte Folded Reload
	vsrl.d	$vr5, $vr18, $vr16
	vld	$vr7, $sp, 464                  # 16-byte Folded Reload
	vsrl.d	$vr7, $vr18, $vr7
	vld	$vr9, $sp, 496                  # 16-byte Folded Reload
	vsrl.d	$vr9, $vr18, $vr9
	vld	$vr11, $sp, 448                 # 16-byte Folded Reload
	vsrl.d	$vr11, $vr18, $vr11
	vld	$vr14, $sp, 432                 # 16-byte Folded Reload
	vsrl.d	$vr14, $vr18, $vr14
	vpickev.w	$vr11, $vr14, $vr11
	vld	$vr14, $sp, 416                 # 16-byte Folded Reload
	vsrl.d	$vr14, $vr18, $vr14
	vpickev.w	$vr9, $vr14, $vr9
	vpickev.w	$vr5, $vr7, $vr5
	vpickev.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 352                  # 16-byte Folded Reload
	vsrl.d	$vr3, $vr18, $vr3
	vld	$vr7, $sp, 384                  # 16-byte Folded Reload
	vsrl.d	$vr7, $vr18, $vr7
	vld	$vr14, $sp, 368                 # 16-byte Folded Reload
	vsrl.d	$vr14, $vr18, $vr14
	vpickev.w	$vr7, $vr14, $vr7
	vld	$vr14, $sp, 336                 # 16-byte Folded Reload
	vsrl.d	$vr14, $vr18, $vr14
	vpickev.w	$vr3, $vr14, $vr3
	vld	$vr14, $sp, 320                 # 16-byte Folded Reload
	vsrl.d	$vr14, $vr18, $vr14
	vld	$vr15, $sp, 304                 # 16-byte Folded Reload
	vsrl.d	$vr15, $vr18, $vr15
	vpickev.w	$vr14, $vr15, $vr14
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr1, $vr2, $vr5
	vadd.w	$vr2, $vr4, $vr9
	vadd.w	$vr4, $vr6, $vr11
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr2, $vr2, $vr7
	vadd.w	$vr2, $vr2, $vr14
	vadd.w	$vr1, $vr1, $vr8
	vadd.w	$vr3, $vr3, $vr10
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr0, $vr0, $vr12
	vadd.w	$vr2, $vr2, $vr13
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	srli.d	$a1, $fp, 61
	srli.d	$a2, $fp, 62
	add.d	$a0, $a0, $a1
	add.d	$a1, $a2, $s4
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $fp
	xor	$a0, $a0, $s5
	andi	$a0, $a0, 1
	bnez	$a0, .LBB18_80
# %bb.78:                               #   in Loop: Header=BB18_45 Depth=1
	addi.d	$s2, $s2, 1
	vld	$vr18, $sp, 560                 # 16-byte Folded Reload
	vld	$vr19, $sp, 544                 # 16-byte Folded Reload
	vld	$vr20, $sp, 528                 # 16-byte Folded Reload
	ori	$a0, $zero, 13
	bne	$s2, $a0, .LBB18_45
# %bb.79:                               # %.preheader.preheader
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB18_80:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
                                        # -- End function
	.type	ints,@object                    # @ints
	.data
	.globl	ints
	.p2align	2, 0x0
ints:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2147483648                      # 0x80000000
	.word	2                               # 0x2
	.word	1073741824                      # 0x40000000
	.word	65536                           # 0x10000
	.word	32768                           # 0x8000
	.word	2779096485                      # 0xa5a5a5a5
	.word	1515870810                      # 0x5a5a5a5a
	.word	3405643776                      # 0xcafe0000
	.word	13303296                        # 0xcafe00
	.word	51966                           # 0xcafe
	.word	4294967295                      # 0xffffffff
	.size	ints, 52

	.type	longs,@object                   # @longs
	.globl	longs
	.p2align	3, 0x0
longs:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	2                               # 0x2
	.dword	4611686018427387904             # 0x4000000000000000
	.dword	4294967296                      # 0x100000000
	.dword	2147483648                      # 0x80000000
	.dword	-6510615555426900571            # 0xa5a5a5a5a5a5a5a5
	.dword	6510615555426900570             # 0x5a5a5a5a5a5a5a5a
	.dword	-3819392241693097984            # 0xcafecafe00000000
	.dword	223195676147712                 # 0xcafecafe0000
	.dword	3405695742                      # 0xcafecafe
	.dword	-1                              # 0xffffffffffffffff
	.size	longs, 104

	.type	longlongs,@object               # @longlongs
	.globl	longlongs
	.p2align	3, 0x0
longlongs:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	2                               # 0x2
	.dword	4611686018427387904             # 0x4000000000000000
	.dword	4294967296                      # 0x100000000
	.dword	2147483648                      # 0x80000000
	.dword	-6510615555426900571            # 0xa5a5a5a5a5a5a5a5
	.dword	6510615555426900570             # 0x5a5a5a5a5a5a5a5a
	.dword	-3819392241693097984            # 0xcafecafe00000000
	.dword	223195676147712                 # 0xcafecafe0000
	.dword	3405695742                      # 0xcafecafe
	.dword	-1                              # 0xffffffffffffffff
	.size	longlongs, 104

	.section	".note.GNU-stack","",@progbits
	.addrsig
